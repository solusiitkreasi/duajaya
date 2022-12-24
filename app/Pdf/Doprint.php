<?php namespace App\Pdf;
use Aryatama045\Fpdf\Fpdf\Fpdf;

class Doprint extends Fpdf
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

    // Set Setting Logo
        // LogoImage
        const DPI           = 96;
        const MM_IN_INCH    = 25.4;
        const A4_HEIGHT     = 354;
        const A4_WIDTH      = 28;
        // CenterImage
        const DPI_C         = 120;
        const MM_IN_INCH_C  = 45.4;
        const A4_HEIGHT_C   = 220;
        const A4_WIDTH_C    = 230;
        // tweak these values (in pixels)
        const MAX_WIDTH     = 800;
        const MAX_HEIGHT    = 200;

        // 1.Logo Image
        function pixelsToMM($val) {
            return $val * self::MM_IN_INCH / self::DPI;
        }
        function resizeToFit($imgFilename) {
            list($width, $height) = getimagesize($imgFilename);

            $widthScale = self::MAX_WIDTH / $width;
            $heightScale = self::MAX_HEIGHT / $height;
            $scale = min($widthScale, $heightScale);

            return array(
                round($this->pixelsToMM($scale * $width)),
                round($this->pixelsToMM($scale * $height))
            );
        }
        function logoImage($img) {
            list($width, $height) = $this->resizeToFit($img);

            // you will probably want to swap the width/height
            // around depending on the page's orientation
            $this->Image(
                $img, (self::A4_HEIGHT - $width) / 2,
                (self::A4_WIDTH - $height) / 2,
                $width,
                $height
            );
        }
        // 2.Center Image
        function centerToMM($val) {
            return $val * self::MM_IN_INCH_C / self::DPI_C;
        }
        function centerToFit($imgFilename) {
            list($width, $height) = getimagesize($imgFilename);

            $widthScale = self::MAX_WIDTH / $width;
            $heightScale = self::MAX_HEIGHT / $height;
            $scale = min($widthScale, $heightScale);

            return array(
                round($this->centerToMM($scale * $width)),
                round($this->centerToMM($scale * $height))
            );
        }
        function centerImage($img) {
            list($width, $height) = $this->centerToFit($img);

            // you will probably want to swap the width/height
            // around depending on the page's orientation
            $this->Image(
                $img, (self::A4_HEIGHT_C - $width) / 2,
                (self::A4_WIDTH_C - $height) / 2,
                $width,
                $height
            );
        }
    // End Set Setting Logo

    function Header()
    {
        //Lebar A4 = 190 + margin 10
        $this->total_halaman =  ceil(count($this->detail)/48);
        $this->halaman++;
        $this->Ln(1);
        $this->Image('public/logo/ksm.png', 10, 5, 41, 15);

        $this->setFont('Arial','B',12);
        $this->cell(195,1,'CV. KLALIN SEJAHTERA MANDIRI',0,0, 'C');
        $this->setFont('Arial','B',16);
        $this->Ln(4);
        $this->setFont('Arial','',8);
        $this->cell(195,2,'Jl. S. Mamberamo, Sorong - Papua Barat',0,0,'C');
        $this->Ln(4);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->Ln(0.8);
        $this->Line(11,$this->GetY(),206,$this->GetY());
        $this->setFont('Arial','B',10);
        $this->cell(0,10,'DELIVERY ORDER',0,0,'C');
        // $this->Ln(4);
        // $this->setFont('Arial','',9);
        // $this->cell(0,10,$this->header['reference_no'],0,0,'C');
        $this->Ln(14);

        $this->setFont('Arial','',8);
        $this->cell(20,1,'To Customer',0,0,'L');
        $this->cell(100,1,': '.$this->customer['0']->name,0,0,'L');

        $this->cell(25,1,'No. Do',0,0,'L');
        $this->cell(0,1,': '.$this->header['reference_no'],0,0,'L');
        $this->Ln(4);

        $this->cell(20,1,'Company',0,0,'L');
        $this->cell(100,1,': '.$this->customer['0']->company_name,0,0,'L');
        $this->cell(25,1,'No. Po.',0,0,'L');
        $this->cell(15,1,': '.$this->customer['0']->reference_no,0,0,'L');
        $this->Ln(4);

        $this->cell(20,1,'Address',0,0,'L');
        $this->cell(100,1,': '.$this->header['address'],0,0,'L');
        $this->cell(25,1,'Tgl. Doc',0,0,'L');
        $this->cell(100,1,': '.date('d-m-Y',strtotime($this->header['created_at'])),0,0,'L');
        $this->Ln(4);

        $this->cell(20,1,'',0,0,'L');
        $this->cell(100,1,'',0,0,'L');
        $this->cell(25,1,'Expedition',0,0,'L');
        $this->cell(15,1,': '.$this->customer['0']->reference_no,0,0,'L');

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
        foreach ($this->detail as $value) {
            if($baris==66){
                $this->FooterSubTotal();
                $this->AddPage();
                $baris = 1;
            }
            $this->cell(10,1,$row++,0,0,'C');
            $this->cell(45,1,$value->code,0,0,'L');
            $this->cell(60,1,$value->name,0,0,'L');
            $this->cell(25,1,number_format($value->qty_beli,0,"",'.'),0,0,'C');
            $this->cell(20,1,number_format($value->qty_beli,0,"",'.'),0,0,'C');
            $this->cell(20,1,number_format($value->qty_kirim,0,"",'.'),0,0,'C');
            $this->grand_beli += $value->qty_beli;
            $this->grand_kirim += $value->qty_kirim;
            $this->grand_harga += '10';
            $this->Ln(4);
            $baris++;
        }
        $this->FooterTotal();
        $this->grand_beli = 0;
        $this->grand_kirim = 0;
    }

    function FooterTotal(){
        // Go to 1.5 cm from bottom
        $this->SetY(-60);
        $this->Ln(2);
        $this->Line(11,$this->GetY(),199,$this->GetY());
        $this->Ln(2);
        $this->cell(18,1,'*Note : '.$this->header['note'],0,0,'L');
        $this->cell(95,1,'Total',0,0,'R');
        $this->cell(20,1,$this->grand_total,0,0,'R');
        $this->cell(20,1,$this->grand_beli,0,0,'R');
        $this->cell(20,1,$this->grand_kirim,0,0,'R');
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
