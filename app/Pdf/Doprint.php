<?php namespace App\Pdf;
use Aryatama045\Fpdf\Fpdf\Fpdf;

class Doprint extends Fpdf
{

    private $grand_total;
    private $grand_harga;
    private $total;
    private $halaman;
    private $total_halaman;

    public function __construct($data)
    {
        $this->data     = $data;
        $this->header   = $this->data['data']['header'];
        $this->detail   = $this->data['data']['detail'];
        $this->customer = $this->data['customer'];
        $this->halaman=0;
        parent::__construct('P', 'mm', 'A4');
        $this->SetA4();
        $this->SetTitle('Delivery Order'.$this->header['reference_no'], true);
        $this->SetAuthor('None', true);
        $this->AddPage('P');
        $this->Body();
        $this->AliasNbPages();
    }

    function Header()
    {
        //Lebar A4 = 190 + margin 10
        $this->total_halaman =  ceil(count($this->detail)/48);
        $this->halaman++;
        $this->Ln(1);
        $this->setFont('Arial','B',10);
        $this->cell(100,1,'PT. Customer',0,0,'L');
        $this->setFont('Arial','B',16);
        $this->Ln(4);
        $this->setFont('Arial','',8);
        $this->cell(0,2,'Jl. ',0,0,'L');
        $this->Ln(4);
        $this->cell(0,2,'Jakarta',0,0,'L');
        $this->Ln(4);
        $this->Line(11,$this->GetY(),269.4,$this->GetY());
        $this->Ln(0.8);
        $this->Line(11,$this->GetY(),269.4,$this->GetY());
        $this->setFont('Arial','BU',12);
        $this->cell(0,10,'DELIVERY ORDER ',0,0,'C');
        $this->Ln(14);
        $this->setFont('Arial','',8);
        $this->cell(20,1,'No. Do',0,0,'L');
        $this->cell(100,1,': '.$this->header['reference_no'],0,0,'L');
        $this->cell(25,1,'To Customer',0,0,'L');
        $this->cell(0,1,': '.$this->customer['0']->name,0,0,'L');
        $this->Ln(4);
        $this->cell(20,1,'No. Po.',0,0,'L');
        $this->cell(100,1,': '.$this->customer['0']->reference_no,0,0,'L');
        $this->cell(25,1,'Company Name',0,0,'L');
        $this->cell(15,1,': '.$this->customer['0']->company_name,0,0,'L');
        $this->Ln(4);
        $this->cell(20,1,'Tgl. Doc',0,0,'L');
        $this->cell(100,1,': '.date('d-m-Y',strtotime($this->header['created_at']))                                                                                                                                                                                      ,0,0,'L');
        $this->cell(25,1,'Address',0,0,'L');
        $this->cell(100,1,': '.$this->header['address'],0,0,'L');
        $this->HeaderList();
    }

    function HeaderList(){
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(5);
        $this->cell(10,1,'NO.',0,0,'R');
        $this->cell(5,1,'',0,0,'R');
        $this->cell(45,1,'SKU',0,0,'L');
        $this->cell(75,1,'NAMA BARANG',0,0,'L');
        $this->cell(10,1,'QTY.',0,0,'R');
        $this->cell(20,1,'HARGA',0,0,'R');
        $this->cell(20,1,'DISC.',0,0,'R');
        $this->cell(25,1,'TOTAL',0,0,'R');
        $this->Ln(5);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(4);
    }

    function Body(){
        $baris = 1;
        foreach ($this->detail as $value) {
            if($baris==66){
                $this->FooterSubTotal();
                $this->AddPage();
                $baris = 1;
            }
            $this->cell(10,1,'0',0,0,'R');
            $this->cell(5,1,'',0,0,'R');
            $this->cell(45,1,$value->code,0,0,'L');
            $this->cell(75,1,$value->name,0,0,'L');
            $this->cell(10,1,number_format($value->qty_beli,0,"",'.'),0,0,'R');
            $this->cell(20,1,number_format('0',0,"",'.'),0,0,'R');
            $this->cell(20,1,number_format('5',0,"",'.'),0,0,'R');
            $this->cell(25,1,number_format('10',0,"",'.'),0,0,'R');
            $this->grand_total += $value->qty_beli;
            $this->grand_harga += '10';
            $this->Ln(4);
            $baris++;
        }
        $this->FooterTotal();
        $this->grand_total = 0;
    }

    function FooterTotal(){
        // Go to 1.5 cm from bottom
        $this->SetY(-60);
        $this->Ln(2);
        $this->Line(11,$this->GetY(),199,$this->GetY());
        $this->Ln(2);
        $this->cell(18,1,'* = BELUM ADA HARGA',0,0,'L');
        $this->cell(132,1,'Total',0,0,'R');
        $this->cell(10,1,$this->grand_total,0,0,'R');
        $this->cell(15,1,$this->grand_total,0,0,'R');
        $this->cell(15,1,$this->grand_total,0,0,'R');
        $this->Ln(4);
        $this->Line(11,$this->GetY(),199,$this->GetY());
        $this->Ln(4);
        $this->cell(65,1,'Disetujui,',0,0,'C');
        $this->cell(65,1,'Diperiksa,',0,0,'C');
        $this->cell(65,1,'Diterima,',0,0,'C');
        $this->Ln(16);
        $this->cell(155,1,'',0,0,'C');
        $this->Ln(2);
        $this->cell(65,1,'(                                      )',0,0,'C');
        $this->cell(65,1,'(                                      )',0,0,'C');
        $this->cell(65,1,'(                                      )',0,0,'C');
        $this->Ln(2);
        $this->Line(11,$this->GetY(),199,$this->GetY());
        $this->Ln(4);
        $this->cell(18,1,'Distribusi : Acc (Asli) / WH (Copy) / Audit (Copy)',0,0,'L');
    }

    function FooterSubTotal(){
        // Go to 1.5 cm from bottom
        // $this->SetY(-75);
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(4);
        $this->cell(100,1,'',0,0,'L');
        $this->cell(20,1,'SUB TOTAL',0,0,'L');
        $this->cell(10,1,number_format($this->grand_total,0,"",'.'),0,0,'R');
        $this->cell(40,1,'',0,0,'L');
        $this->cell(25,1,number_format($this->grand_harga,0,"",'.'),0,0,'R');
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
    }
}
