<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mon pdf</title>

<?php 
    $imageData = file_get_contents('../resultat/fond_pochette_cadeau.jpg');
    $base64 = base64_encode($imageData);
    // var_dump($base64);
?>

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        body {
           color: white
        }
        
        table {
            width: 80%;
            height: 100%;
            margin-left: 2cm;
            margin-right: 3cm;
            border-collapse: collapse;
            border: none;       
        }

        td {
            padding: 10px;
            text-align: center;
            border: 1px solid black;
            /* border: none; */
        }

        span {
            font-size: 20px;
            color: yellow;
        }

        .empty-field {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            width: 4cm;
            color: black;
            font-weight: bold;
        }

        .title {
            font-size: 36px;
            font-weight: bold;
            padding: 30px;
        }

        .receiver {
            font-size: 36px;
            font-weight: bold;
        }

        .contact-us{
            color: yellow;
            font-size: 30px;
            font-weight: bold;
        }

     .footer {
        padding: 0px 13px;
        width: 12cm;
        font-size: 18px;
     }

        .footer-field {
            background-color: white;
            border-radius: 10px;
            padding: 20px;
            width: 5cm;
            display: inline-block;
            text-align: left;  
            color: black; 
            font-weight: bold;
        }

        .number {
            width: 3cm;
        }
    </style>
</head>
<body>
    <table>
        <tr>
            <td style="color:yellow" class="title" colspan="3">Pochette cadeau plongée</td>
        </tr>
        <tr>
            <td class="empty-field" colspan="2"></td>
            <td>offert à</td>
            <td class="empty-field" colspan="1"></td>
        </tr>
        <tr><td></td> </tr>
        <tr>
            <td class="contact-us" colspan="3">Contactez nous pour réserver</td>
        </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr><td></td> </tr>
        <tr>
            <td class="footer-field">validité:</td>
            <td class="footer">
                Centre de plongé ECOSYSTEM<br>
                31 rue Blanche de Castille 34250 PALAVAS<br>
                <span>06 22 90 55 45</span><br>
                mail : ecosystem@wanadoo.fr<br>
                ecosystem-palavas.com
            </td>
            <td class="footer-field number">N° :</td>
        </tr>
    </table>
</body>
</html>

