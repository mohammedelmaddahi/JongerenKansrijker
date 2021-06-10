<!DOCTYPE html>
    <html lang="en">
        <head>
             <meta charset="UTF-8">
             <meta http-equiv="X-UA-Compatible" content="IE=edge">
             <meta name="viewport" content="width=device-width, initial-scale=1.0">
             <title>overzicht instituut</title>
        </head>  
        <body>

            <a href="nieuw-instituut.php">Nieuwe instituut toevoegen</a>
            <?php
            require_once 'database.php';
            db = new database();
            $instituten = $db->select("SELECT * FROM instituut");

            if(!empty($instituten)){
                print_r($instituten)
            }
            ?>
            </body>
        </html>    