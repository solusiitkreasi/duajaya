<?php namespace App\Pdf;
use Aryatama045\Fpdf\Fpdf\Fpdf;

class Poprint extends Fpdf
{
    private $data;

    public function __construct($data)
    {
        $this->data = $data;
        parent::__construct('P', 'mm', 'A4');
        $this->SetA4();
        $this->SetTitle('Purchase Order', true);
        $this->SetAuthor('None', true);
        $this->AddPage('P');
        $this->Body();
    }

    public function Header()
    {
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
        $this->cell(0,10,'PURCHASE ORDER',0,0,'C');
        $this->Ln(14);
        $this->setFont('Arial','',8);
        $this->Ln(1);
        $this->cell(20,1,'PERIODE',0,0,'L');

        $this->cell(90,1,'',0,0,'L');
        $this->cell(22,1,'Tgl. Print',0,0,'L');
        $this->cell(20,1,': '.date('d M Y H:i:s'),0,0,'L');
        // $this->Ln(0.1);
        $this->Ln(4);
        $this->cell(207,1,'',0,0,'L');
        $this->cell(22,1,'Halaman',0,0,'L');

        $this->HeaderList();
    }

    function HeaderList(){
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(5);
        $this->cell(10,1,'NO.',0,0,'R');
        $this->cell(5,1,'',0,0,'R');
        $this->cell(30,1,'SKU',0,0,'L');
        $this->cell(75,1,'NAMA BARANG',0,0,'L');
        $this->cell(10,1,'QTY.',0,0,'R');
        $this->cell(20,1,'HARGA',0,0,'R');
        $this->cell(20,1,'DISC.',0,0,'R');
        $this->cell(25,1,'TOTAL',0,0,'R');
        $this->Ln(5);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(4);
    }

    public function Body(){
        $this->Ln(4);
        $this->SetFont('Arial', 'B', '24');
        $this->Cell(5, 8, $this->data['title']);
        $this->Ln(4);
        $this->SetFont('Arial', '', '14');
        $this->Cell(5, 8, $this->data['content']);
    }

    public function Footer()
    {
        // fixed all pages
    }
}
