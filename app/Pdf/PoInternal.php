<?php namespace App\Pdf;
use Aryatama045\Fpdf\Fpdf\Fpdf;

class Pointernal extends Fpdf
{

    private $grand_total;
    private $grand_beli;
    private $grand_kirim;
    private $grand_harga;
    private $total;
    private $halaman;
    private $total_halaman;

    public function __construct($data)
    {
        $this->data     = $data;
        $this->header   = $this->data['header'];
        $this->detail   = $this->data['detail'];
        $this->general_setting = $this->data['general_setting'];


        $this->halaman=0;
        parent::__construct('P', 'mm', 'A4');
        $this->SetA4();
        $this->SetTitle('Purchase Order - '.$this->header[0]->no_po, true);
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
        $this->Image('public/logo/'.$this->general_setting->site_logo, 12, 2, 25, 14);
        $this->setFont('Arial','B',12);
        $this->cell(195,1,'CV. KLALIN SEJAHTERA MANDIRI',0,0, 'C');
        $this->setFont('Arial','B',16);
        $this->Ln(4);
        $this->setFont('Arial','',8);
        $this->cell(195,2,'Jl. S. Mamberamo, Sorong - Papua Barat',0,0,'C');
        $this->cell(0,2,'Page '.$this->halaman." of ".$this->total_halaman,0,0,'R');
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(0.8);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->setFont('Arial','B',10);
        $this->cell(0,10,'PURCHASE ORDER',0,0,'C');
        $this->Ln(14);

        $this->setFont('Arial','',8);
        $this->cell(20,1,'Store',0,0,'L');
        $this->cell(100,1,': '.$this->header[0]->toko,0,0,'L');
        $this->cell(25,1,'No. Po',0,0,'L');
        $this->cell(0,1,': '.$this->header[0]->no_po,0,0,'L');
        $this->Ln(4);

        $this->cell(20,1,'Address',0,0,'L');
        $this->cell(100,1,': '.$this->header[0]->address,0,0,'L');
        $this->cell(25,1,'Supplier.',0,0,'L');
        $this->cell(15,1,': '.$this->header[0]->supplier,0,0,'L');
        $this->Ln(4);

        $this->cell(20,1,'Contact',0,0,'L');
        $this->cell(100,1,': '.$this->header[0]->phone,0,0,'L');
        $this->cell(25,1,'Company',0,0,'L');
        $this->cell(100,1,': '.$this->header[0]->company_name,0,0,'L');
        $this->Ln(4);

        $this->cell(20,1,'',0,0,'L');
        $this->cell(100,1,' ',0,0,'L');
        $this->cell(25,1,'Doc Date',0,0,'L');
        $this->cell(15,1,': '.date('d-m-Y',strtotime($this->header[0]->created_at)),0,0,'L');
        $this->Ln(4);


        $this->HeaderList();
    }

    function HeaderList(){
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(5);
        $this->cell(10,1,'NO.',0,0,'C');
        $this->cell(45,1,'SKU',0,0,'L');
        $this->cell(60,1,'Nama Barang',0,0,'L');
        $this->cell(25,1,'Qty',0,0,'C');
        $this->cell(20,1,'Unit',0,0,'C');
        $this->cell(20,1,'Unit Price',0,0,'C');
        $this->Ln(5);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(4);
    }

    function Body(){
        $baris = 1;
        $row=1;
        // for($x=0; $x < 60; $x++)
            foreach ($this->detail as $value) {
                if($baris==44){
                    $this->FooterSubTotal();
                    $this->AddPage();
                    $baris = 1;
                }
                $this->cell(10,1,$row++,0,0,'C');
                $this->cell(45,1,$value->code,0,0,'L');
                $this->cell(60,1,$value->name,0,0,'L');
                $this->cell(25,1,number_format($value->qty,0,"",'.'),0,0,'C');
                $this->cell(20,1,$value->unit_code,0,0,'C');
                $this->cell(20,1,number_format($value->net_unit_cost,0,"",'.'),0,0,'C');
                $this->grand_kirim += $value->qty;
                $this->grand_harga += $value->net_unit_cost;
                $this->Ln(4);
                $baris++;
            }

        $this->FooterTotal();
        $this->grand_harga = 0;
        $this->grand_kirim = 0;
    }

    function FooterTotal(){
        // Go to 1.5 cm from bottom
        $this->SetY(-60);
        $this->Ln(2);
        $this->Line(11,$this->GetY(),199,$this->GetY());
        $this->Ln(2);
        $this->cell(18,1,'*Note : '.$this->header[0]->note,0,0,'L');
        $this->cell(95,1,'Total',0,0,'R');
        $this->cell(20,1,number_format($this->grand_kirim,0,"",'.'),0,0,'R');
        $this->cell(20,1,'',0,0,'R');
        $this->cell(20,1,number_format($this->grand_harga,0,"",'.'),0,0,'R');

    }

    function FooterSubTotal(){
        // Go to 1.5 cm from bottom
        // $this->SetY(-75);
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(4);
        $this->cell(100,1,'',0,0,'L');
        $this->cell(20,1,'SUB TOTAL',0,0,'L');
        $this->cell(10,1,number_format($this->grand_kirim,0,"",'.'),0,0,'R');
        $this->cell(25,1,'',0,0,'L');
        $this->cell(25,1,number_format($this->grand_harga,0,"",'.'),0,0,'R');
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
    }
}
