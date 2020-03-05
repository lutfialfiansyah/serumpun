<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

require_once dirname(__FILE__) . '/tcpdf/examples/lang/eng.php';
require_once dirname(__FILE__) . '/tcpdf/tcpdf.php';

class Pdf extends TCPDF
{
    function __construct()
    {
        parent::__construct();
    }

    // public function Footer()
    // {
    //     $logoFileName = $pdf->Image(dirname(__FILE__).'/tcpdf/examples/images/ket_ttde.png', 0, 0, 240, 0, 'PNG');
    //     $pdf->writeHTMLCell(21, '', 0, 29.7 - 4, $logoFileName, 0, 1, false, true, 'L', false);
    // }

    public function create($content, $file_name)
    {
        $pdf = new TCPDF('P', PDF_UNIT, 'F4', true, 'UTF-8', false);
        
    	$pdf->SetTitle($file_name);

    	$pdf->SetAuthor('Diskominfostandi Kota Bogor');
    	$pdf->SetDisplayMode('fullpage', 'SinglePage', 'UseNone');

    	$pdf->setPrintHeader(false);
    	$pdf->setPrintFooter(false);

        $pdf->SetAutoPageBreak(TRUE, 0);

        // set certificate file
        $certificate = 'file://'.realpath('application/libraries/tcpdf/examples/data/cert/tcpdf.crt');
        // $certificate = 'file://'.realpath('application/libraries/tcpdf/examples/data/cert/ttde/tnde.p12');


        // set additional information
        $info = array(
            'Name' => 'Kominfo',
            'Location' => 'Kota Bogor',
            'Reason' => 'Diskominfostandi',
            'ContactInfo' => 'http://www.kominfo.kotabogor.go.id',
            );

        // set document signature
        $pdf->setSignature($certificate, $certificate, 'tcpdfdemo', '', 2, $info);
        $pdf->AddPage();
    	$pdf->writeHTML($content);

        // create content for footer
        // $footer_logo_html = $pdf->Image(dirname(__FILE__).'/tcpdf/examples/images/ket_ttde.png', 0, 309, 240, 0, 'PNG');
        // $pdf->writeHTMLCell(21, '', 0, 29.7 - 4, $footer_logo_html, 0, 1, false, true, 'L', false);

        // define active area for signature appearance
        $pdf->setSignatureAppearance(180, 60, 15, 15);

        // *** set an empty signature appearance ***
        $pdf->addEmptySignatureAppearance(180, 80, 15, 15);

        // set style for barcode
        $style = array(
            // 'border' => 2,
            'vpadding' => 'auto',
            'hpadding' => 'auto',
            'fgcolor' => array(0,0,0),
            'bgcolor' => false, //array(255,255,255)
            'module_width' => 1, // width of a single module in points
            'module_height' => 1 // height of a single module in points
        );

        //$pdf->write2DBarcode($_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'], 'QRCODE,H', 177, 280, 25, 65, $style, 'N');

    	ob_clean();
    	$pdf->Output($file_name.'.pdf', 'I');
    }
}