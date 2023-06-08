<?php 
use Dompdf\Dompdf;
use Dompdf\Options;

require_once '../vendor/autoload.php';

// reference the Dompdf namespace



ob_start();
require_once 'pdfCont.php';
$html = ob_get_contents();
ob_end_clean();




// instantiate and use the dompdf class
$dompdf = new Dompdf();
$dompdf->loadHtml($html);

// (Optional) Setup the paper size and orientation
$dompdf->setPaper('A4', 'landscape');

// Render the HTML as PDF
$dompdf->render();

// Output the generated PDF to Browser
header("Content-type:application/pdf");
echo $dompdf->output();
die();

// Output the generated PDF to Browser
$dompdf->stream();

?>




