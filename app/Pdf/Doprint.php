<?php namespace App\Pdf;
use Aryatama045\Fpdf\Fpdf\Fpdf;

class Doprint extends Fpdf
{
    private $data;

    public function __construct($data)
    {
        $this->data = $data;
        parent::__construct('P', 'mm', 'A4');
        $this->SetA4();
        $this->SetTitle('Delivery Order', true);
        $this->SetAuthor('None', true);
        $this->AddPage('P');
        $this->Body();
    }

    public function Header()
    {
        $this->Ln(1);
        $this->setFont('Arial','B',10);
        $this->cell(100,1,'PT. Optik Tunggal Sempurna',0,0,'L');
        $this->setFont('Arial','B',16);
        $this->Ln(4);
        $this->setFont('Arial','',8);
        $this->cell(0,2,'Jl. Pintu Air Raya No. 36 KL',0,0,'L');
        $this->Ln(4);
        $this->cell(0,2,'Jakarta Pusat 10710',0,0,'L');
        $this->Ln(4);
        $this->Line(11,$this->GetY(),269.4,$this->GetY());
        $this->Ln(0.8);
        $this->Line(11,$this->GetY(),269.4,$this->GetY());
        $this->setFont('Arial','BU',12);
        $this->cell(0,10,'DELIVERY ORDER',0,0,'C');
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
