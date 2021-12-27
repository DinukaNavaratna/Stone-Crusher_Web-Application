<?php

if(isset($_GET['efficiency'])){
    require_once 'db_con.php';
    try {        
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $sql = "select * from screen_efficiency order by abs(ad - ".$_GET['efficiency'].") limit 1;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo $results[0]['e'];
    } catch(PDOException $e) {
        echo "failed : " . $e->getMessage();
    }
    $conn = null;
    exit;
}

if(isset($_GET['sieve'])){
    require_once 'db_con.php';
    try {
        $s1 = 0;
        $s2 = 0;
        $s3 = 0;
        $s4 = 0;
        $s5 = 0;
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

        if(isset($_GET['input_1_1']) && ($_GET['input_1_1'] != "") && ($_GET['input_1_1'] != 0)){
            $input_1_1 = $_GET['input_1_1'];
            $input_1_2 = $_GET['input_1_2'];
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_1_1." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_1 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_1_1." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_1_1." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_1 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_1_1-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_1_2." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_2 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_1_2." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_1_2." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_2 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_1_2-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            $s1 = round($s_1_2,2)-round($s_1_1,2);
        }

        if(isset($_GET['input_2_1']) && ($_GET['input_2_1'] != "") && ($_GET['input_2_1'] != 0)){
            $input_2_1 = $_GET['input_2_1'];
            $input_2_2 = $_GET['input_2_2'];
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_2_1." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_1 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_2_1." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_2_1." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_1 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_2_1-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_2_2." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_2 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_2_2." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_2_2." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_2 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_2_2-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            $s2 = round($s_1_2,2)-round($s_1_1,2);
        }

        if(isset($_GET['input_3_1']) && ($_GET['input_3_1'] != "") && ($_GET['input_3_1'] != 0)){
            $input_3_1 = $_GET['input_3_1'];
            $input_3_2 = $_GET['input_3_2'];
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_3_1." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_1 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_3_1." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_3_1." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_1 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_3_1-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_3_2." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_2 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_3_2." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_3_2." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_2 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_3_2-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            $s3 = round($s_1_2,2)-round($s_1_1,2);
        }

        if(isset($_GET['input_4_1']) && ($_GET['input_4_1'] != "") && ($_GET['input_4_1'] != 0)){
            $input_4_1 = $_GET['input_4_1'];
            $input_4_2 = $_GET['input_4_2'];
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_4_1." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_1 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_4_1." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_4_1." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_1 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_4_1-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_4_2." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_2 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_4_2." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_4_2." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_2 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_4_2-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            $s4 = round($s_1_2,2)-round($s_1_1,2);
        }

        if(isset($_GET['input_5_1']) && ($_GET['input_5_1'] != "") && ($_GET['input_5_1'] != 0)){
            $input_5_1 = $_GET['input_5_1'];
            $input_5_2 = $_GET['input_5_2'];
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_5_1." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_1 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_5_1." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_5_1." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_1 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_5_1-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            
            $sql = "SELECT * FROM sieve_percentage WHERE size=".$input_5_2." LIMIT 1;";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            if(count($results) > 0){
                $s_1_2 = $results[0]['percentage'];
            } else {
                $sql1 = "SELECT * FROM sieve_percentage WHERE size<=".$input_5_2." LIMIT 1;";
                $sql2 = "SELECT * FROM sieve_percentage WHERE size>".$input_5_2." ORDER BY size ASC LIMIT 1;";
                $stmt = $conn->prepare($sql1);
                $stmt->execute();
                $results1 = $stmt->fetchAll(PDO::FETCH_ASSOC);
                $stmt = $conn->prepare($sql2);
                $stmt->execute();
                $results2 = $stmt->fetchAll(PDO::FETCH_ASSOC);
    
                $s_1_2 = (((($results2[0]['percentage']-$results1[0]['percentage'])*($input_5_2-$results1[0]['size']))/($results2[0]['size']-$results1[0]['size'])) + $results1[0]['percentage']);
            }
            $s5 = round($s_1_2,2)-round($s_1_1,2);
        }

        echo '{"s1":"'.$s1.'","s2":"'.$s2.'","s3":"'.$s3.'","s4":"'.$s4.'","s5":"'.$s5.'"}';
    } catch(PDOException $e) {
        echo "failed : " . $e->getMessage();
    }
    $conn = null;
    exit;
}


/*
    $PrimaryCrusher = array(
            "Model"=>array('', ''),
            "Feed Opening Size (mm)"=>array('400 x 600', '400 x 600'),
            "Max Feeding Size (mm)"=>array('250', '250'),
            "Min Capacity (t/h)"=>array('5', '10'),
            "Max Capacity (t/h)"=>array('10', '20'),
            "rotate_speed"=>array('15', '15'),
            "Motor & Power (kw)"=>array('10', '10'),
            "Adjustable Range Of Output Size (mm)"=>array('5-10', '5-10'),
            "Weight (t)"=>array('2.9', '3.5')
        );

    $Crusher2 = array(
            "model"=>array('E200 x 600', 'E400 x 800'),
            "feed_openings"=>array('400 x 600', '400 x 600'),
            "max_feed_size"=>array('250', '250'),
            "capacity_min"=>array('5', '10'),
            "capacity_max"=>array('10', '20'),
            "rotate_speed"=>array('15', '15'),
            "motor_power"=>array('10', '10'),
            "closed_side_settings"=>array('5-10', '5-10'),
            "weight"=>array('2.9', '3.5')
    );
*/

else if(isset($_GET['max_input_size']) && isset($_GET['output_size_min']) && isset($_GET['output_size_max']) && isset($_GET['capacity'])){
    require_once 'db_con.php';
    try {        
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        //Feeder
        $sql0 = "SELECT * FROM `feeder` WHERE max_feed_size >= ".$_GET['max_input_size']." AND capacity >= ".$_GET['capacity']." ;";
        $stmt0 = $conn->prepare($sql0);
        $stmt0->execute();
        $results0 = $stmt0->fetchAll(PDO::FETCH_ASSOC);
        
        //Jaw Crusher
        $sql1 = "SELECT * FROM `jaw_crushers_low` WHERE max_feed_size >= ".$_GET['max_input_size']." AND discharge_size_min <= ".$_GET['output_size_min']." AND discharge_size_max >= ".$_GET['output_size_max']." AND capacity_min <= ".$_GET['capacity']." AND capacity_max >= ".$_GET['capacity']." ;";
        $stmt1 = $conn->prepare($sql1);
        $stmt1->execute();
        $results1 = $stmt1->fetchAll(PDO::FETCH_ASSOC);
        $sql2 = "SELECT * FROM `jaw_crushers_low` WHERE max_feed_size >= ".$_GET['max_input_size']." AND discharge_size_min <= ".$_GET['output_size_min']." AND discharge_size_max >= ".$_GET['output_size_max']." AND capacity_min <= ".$_GET['capacity']." AND capacity_max >= ".$_GET['capacity']." ;";
        $stmt2 = $conn->prepare($sql2);
        $stmt2->execute();
        $results2 = $stmt2->fetchAll(PDO::FETCH_ASSOC);
        
        //Cone Crusher
        $sql3 = "SELECT * FROM `jaw_crushers_low` WHERE max_feed_size >= ".$results1[0]['discharge_size_max']." AND discharge_size_min <= ".$_GET['output_size_min']." AND discharge_size_max >= ".$_GET['output_size_max']." AND capacity_min <= ".$_GET['capacity']." ;";
        $stmt3 = $conn->prepare($sql3);
        $stmt3->execute();
        $results3 = $stmt3->fetchAll(PDO::FETCH_ASSOC);
        $sql4 = "SELECT * FROM `jaw_crushers_low` WHERE max_feed_size >= ".$results2[0]['discharge_size_max']." AND discharge_size_min <= ".$_GET['output_size_min']." AND discharge_size_max >= ".$_GET['output_size_max']." AND capacity_min <= ".$_GET['capacity']." ;";
        $stmt4 = $conn->prepare($sql4);
        $stmt4->execute();
        $results4 = $stmt4->fetchAll(PDO::FETCH_ASSOC);

        $crushers = '{"crushers": {'.
                        '"Hopper": {' .
                            '"Model":["Bin400 x 600", "Bin400 x 800"],' .
                            '"Max Feeding Size (mm)":["250",  "300"],' .
                            '"Capacity (t/h)":["20",  "30"],' .
                            '"Weight (t)":["2.9",  "3.5"]' .
                        '},' .
                        '"Feeder": {' .
                            '"Model":["'.$results0[0]['model'].'", "N/A"],' .
                            '"Max Feeding Size (mm)":["'.$results0[0]['max_feed_size'].'", "N/A"],' .
                            '"Max Capacity (t/h)":["'.$results0[0]['capacity'].'", "N/A"]' .
                        '},' .
                        '"JawCrusher": {' .
                            '"Model":["'.$results1[0]['model'].'", "'.$results2[0]['model'].'"],' .
                            '"Feed Opening Size (mm)":["'.$results1[0]['feed_openings'].'",  "'.$results2[0]['feed_openings'].'"],' .
                            '"Max Feeding Size (mm)":["'.$results1[0]['max_feed_size'].'",  "'.$results2[0]['max_feed_size'].'"],' .
                            '"Min Capacity (t/h)":["'.$results1[0]['capacity_min'].'",  "'.$results2[0]['capacity_min'].'"],' .
                            '"Max Capacity (t/h)":["'.$results1[0]['capacity_max'].'",  "'.$results2[0]['capacity_max'].'"],' .
                            '"Rotate Speed":["'.$results1[0]['rotate_speed'].'",  "'.$results2[0]['rotate_speed'].'"],' .
                            '"Motor & Power (kw)":["'.$results1[0]['motor_power'].'",  "'.$results2[0]['motor_power'].'"],' .
                            '"Adjustable Range Of Output Size (mm)":["'.$results1[0]['discharge_size_min'].' - '.$results1[0]['discharge_size_max'].'",  "'.$results2[0]['discharge_size_min'].' - '.$results2[0]['discharge_size_max'].'"],' .
                            '"Weight (t)":["'.$results1[0]['weight'].'",  "'.$results2[0]['weight'].'"]' .
                        '},' .
                        '"ConeCrusher": {' .
                            '"Model":["'.$results3[0]['model'].'", "'.$results4[0]['model'].'"],' .
                            '"Feed Opening Size (mm)":["'.$results3[0]['feed_openings'].'",  "'.$results4[0]['feed_openings'].'"],' .
                            '"Max Feeding Size (mm)":["'.$results3[0]['max_feed_size'].'",  "'.$results4[0]['max_feed_size'].'"],' .
                            '"Min Capacity (t/h)":["'.$results3[0]['capacity_min'].'",  "'.$results4[0]['capacity_min'].'"],' .
                            '"Max Capacity (t/h)":["'.$results3[0]['capacity_max'].'",  "'.$results4[0]['capacity_max'].'"],' .
                            '"Rotate Speed":["'.$results3[0]['rotate_speed'].'",  "'.$results4[0]['rotate_speed'].'"],' .
                            '"Motor & Power (kw)":["'.$results3[0]['motor_power'].'",  "'.$results4[0]['motor_power'].'"],' .
                            '"Adjustable Range Of Output Size (mm)":["'.$results3[0]['discharge_size_min'].' - '.$results3[0]['discharge_size_max'].'",  "'.$results4[0]['discharge_size_min'].' - '.$results4[0]['discharge_size_max'].'"],' .
                            '"Weight (t)":["'.$results3[0]['weight'].'",  "'.$results4[0]['weight'].'"]' .
                        '},' .
                        '"Crusher3": {' .
                            '"Model":["B400 x 600", "B400 x 800"],' .
                            '"Feed Opening Size (mm)":["100 x 600",  "200 x 600"],' .
                            '"Max Feeding Size (mm)":["250",  "300"],' .
                            '"Min Capacity (t/h)":["5",  "10"],' .
                            '"Max Capacity (t/h)":["20",  "30"],' .
                            '"rotate_speed":["15",  "15"],' .
                            '"Motor & Power (kw)":["10",  "10"],' .
                            '"Adjustable Range Of Output Size (mm)":["5-10",  "10-20"],' .
                            '"Weight (t)":["2.9",  "3.5"]' .
                        '}' .
                    '}}';

        echo $crushers;

        /*
        foreach($results as $result) {
            foreach($result as $key => $value) {
                echo($key." - ".$value."<br>");
                //array_push($shop_products, array($result['img'],$result['id'],$result['price'],$result['name']));
            }
        }
        */
        
        //$sql = "SELECT COUNT(id) AS 'count' FROM products WHERE name LIKE '%".$_SESSION['keyword']."%';";
        //$stmt = $conn->prepare($sql);
        //$stmt->execute();
        //$results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        //$page_count = (int) (($results[0]['count']/9)+1);
    } catch(PDOException $e) {
        echo "failed : " . $e->getMessage();
    }
    $conn = null;
} else {
    die("Access Denied: failed");
}

    $crushers = '{"crushers":' .
        '{"Bin": {' .
            '"Model":["#001", "#002"],' .
            '"Feed Opening Size (mm)":["400 x 600",  "400 x 600"],' .
            '"Max Feeding Size (mm)":["250",  "300"],' .
            '"Min Capacity (t/h)":["5",  "10"],' .
            '"Max Capacity (t/h)":["20",  "30"],' .
            '"rotate_speed":["15",  "15"],' .
            '"Motor & Power (kw)":["10",  "10"],' .
            '"Adjustable Range Of Output Size (mm)":["5-10",  "10-20"],' .
            '"Weight (t)":["2.9",  "3.5"]' .
        '},' .
        '"PrimaryCrusher": {' .
            '"Model":["PE400 x 600", "PE400 x 800"],' .
            '"Feed Opening Size (mm)":["400 x 600",  "400 x 600"],' .
            '"Max Feeding Size (mm)":["250",  "300"],' .
            '"Min Capacity (t/h)":["5",  "10"],' .
            '"Max Capacity (t/h)":["20",  "30"],' .
            '"rotate_speed":["15",  "15"],' .
            '"Motor & Power (kw)":["10",  "10"],' .
            '"Adjustable Range Of Output Size (mm)":["5-10",  "10-20"],' .
            '"Weight (t)":["2.9",  "3.5"]' .
        '},' .
        '"Crusher2": {' .
            '"Model":["E400 x 600", "E400 x 800"],' .
            '"Feed Opening Size (mm)":["400 x 600",  "400 x 600"],' .
            '"Max Feeding Size (mm)":["250",  "300"],' .
            '"Min Capacity (t/h)":["5",  "10"],' .
            '"Max Capacity (t/h)":["20",  "30"],' .
            '"rotate_speed":["15",  "15"],' .
            '"Motor & Power (kw)":["10",  "10"],' .
            '"Adjustable Range Of Output Size (mm)":["5-10",  "10-20"],' .
            '"Weight (t)":["2.9",  "3.5"]' .
        '}}' .
        '}';
        
    //echo $crushers;


    /*
    $crushers = '{"crushers":[' +
        '{"PrimaryCrusher": {'+
            '"Model":["PE400 x 600", "PE400 x 800"],' +
            '"Feed Opening Size (mm)":["400 x 600",  "400 x 600"],' +
            '"Max Feeding Size (mm)":["250",  "300"],' +
            '"Min Capacity (t/h)"":["5",  "10"],' +
            '"Max Capacity (t/h)":["20",  "30"],' +
            '"rotate_speed":["15",  "15"],' +
            '"Motor & Power (kw)":["10",  "10"],' +
            '"Adjustable Range Of Output Size (mm)":["5-10",  "10-20"],' +
            '"Weight (t)":["2.9",  "3.5"]' +
        '}},' +
        '{"Crusher2": {'+
            '"Model":["E400 x 600", "E400 x 800"],' +
            '"Feed Opening Size (mm)":["400 x 600",  "400 x 600"],' +
            '"Max Feeding Size (mm)":["250",  "300"],' +
            '"Min Capacity (t/h)"":["5",  "10"],' +
            '"Max Capacity (t/h)":["20",  "30"],' +
            '"rotate_speed":["15",  "15"],' +
            '"Motor & Power (kw)":["10",  "10"],' +
            '"Adjustable Range Of Output Size (mm)":["5-10",  "10-20"],' +
            '"Weight (t)":["2.9",  "3.5"]' +
        '}},' +
        ']}';
    */



    //$page_count = 5;
    
    /*
    require_once 'db_con.php';
    try {
        if($_GET['cat'] == "search"){
            if(isset($_POST['first']) && $_POST['first'] == "true"){
                echo "<script>console.log('First');</script>";
                if(isset($_POST['keyword']) && $_POST['keyword'] != ''){
                    echo "<script>console.log('Key');</script>";
                    $_SESSION['keyword'] = $_POST['keyword'];
                    $_GET['pg'] = 1;
                    if(isset($_SESSION['image'])){
                        unset($_SESSION['image']);
                    }
                } else if(isset($_FILES['image'])){
                    echo "<script>console.log('Imag');</script>";
                    $_SESSION['image'] = $_FILES['image'];
                    $_GET['pg'] = 1;
                    if(isset($_SESSION['keyword'])){
                        unset($_SESSION['keyword']);
                    }
                }
            }
            if(isset($_SESSION['keyword']) && $_SESSION['keyword'] != ''){
                try {        
                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                    $sql= "SELECT * FROM `products` WHERE name LIKE '%".$_SESSION['keyword']."%' LIMIT ".(($_GET['pg']-1) * 9).", 9;";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute();
                    
                    // set the resulting array to associative
                    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
                    foreach($results as $result) {
                        array_push($shop_products, array($result['img'],$result['id'],$result['price'],$result['name']));
                    }
                    
                    $sql = "SELECT COUNT(id) AS 'count' FROM products WHERE name LIKE '%".$_SESSION['keyword']."%';";
                    $stmt = $conn->prepare($sql);
                    $stmt->execute();
                    $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
                    $page_count = (int) (($results[0]['count']/9)+1);
                } catch(PDOException $e) {
                    echo "Error: " . $e->getMessage();
                }
                $conn = null;
            } else if(isset($_SESSION['image']) && $_SESSION['image'] != ''){
                if($_SESSION['image']['name'] != ''){
                    $image=rand(111111111,999999999).'_'.$_SESSION['image']['name']; 
                    move_uploaded_file($_FILES['image']['tmp_name'],"./img/tmp/".$image);
                    
                    $url = 'http://localhost:5000/';
                    $ch = curl_init($url);
                    $payload = json_encode(array("image_name" "=>array( $image));
                    curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
                    curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
                    curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
                    $result = curl_exec($ch);
                    curl_close($ch);
        
                    if ($result === FALSE) {
                        $results = [];
                        $page_count = 0;
                    }
        
                    $similar_img = preg_split ("/\,/", $result);
                    $data = array();

                    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
                    foreach ($similar_img as $img) {
                        try {
                            $sql= "SELECT * FROM `products` WHERE img LIKE '%".$img."%' LIMIT ".(($_GET['pg']-1) * 9).", 9;";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute();

                            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
                            foreach($results as $result) {
                                array_push($shop_products, array($result['img'],$result['id'],$result['price'],$result['name']));
                            }
                            
                            $sql = "SELECT COUNT(id) AS 'count' FROM products WHERE img LIKE '%".$img."%';";
                            $stmt = $conn->prepare($sql);
                            $stmt->execute();
                            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
                            $page_count = (int) (($results[0]['count']/9)+1);
                        } catch(Exception $e) {
                            
                        }
                    }
                    $conn = null;
                 }
            }
        } else {
            if(isset($_SESSION['keyword'])){
                unset($_SESSION['keyword']);
            }
            if(isset($_SESSION['image'])){
                unset($_SESSION['image']);
            }
            $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
            if(isset($_GET['price'])){
                $sql = "SELECT * FROM `products` WHERE category=".$_GET['cat']." AND price<=".$_GET['price']." LIMIT ".(($_GET['pg']-1) * 9).", 9;";
            } else {
                $sql = "SELECT * FROM `products` WHERE category=".$_GET['cat']." LIMIT ".(($_GET['pg']-1) * 9).", 9;";
            }
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            
            // set the resulting array to associative
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            foreach($results as $result) {
                array_push($shop_products, array($result['img'],$result['id'],$result['price'],$result['name']));
                //echo "<script>console.log('Res: ".implode(" ",array($result['img'],$result['id'],$result['price'],$result['name']))."');</script>";
            }
            if(isset($_GET['price'])){
                $sql = "SELECT COUNT(id) AS 'count' FROM products WHERE category=".$_GET['cat']." AND price<=".$_GET['price'].";";
            } else {
                $sql = "SELECT COUNT(id) AS 'count' FROM products WHERE category=".$_GET['cat'].";";
            }
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
            $page_count = (int) (($results[0]['count']/9)+1);
        }
    } catch(PDOException $e) {
        echo "Error: " . $e->getMessage();
    }
    $conn = null;

    */

    
function calculateSievePercentage(){

}
?>