<?php
    require_once 'db_con.php';
    try {
        if($_GET['option'] == "save_chart"){
            if(isset($_POST['pdf_body']) && isset($_POST['name'])){
                $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                $sql = "INSERT INTO charts (pdf_body, name) VALUES ('".$_POST['pdf_body']."', '".$_POST['name']."');";
                $stmt = $conn->prepare($sql);
                $stmt->execute();
                echo "Your chart details has been saved successfully!";
            }
        }
    } catch(PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
    $conn = null;

?>