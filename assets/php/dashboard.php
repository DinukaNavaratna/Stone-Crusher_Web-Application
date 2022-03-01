<?php

    $about = "This project was done as the final assignment of BEng Civil Engineering, UOM. The main purpose of the project is to create flow charts representing the flow of the process of stone crushing.";

    $jaw_crusher_count = 0;
    $cone_crusher_count = 0;
    $screens_count = 0;
    $flow_chart_count = 0;
    $flow_charts = [];
    $machines = [];

    require_once 'db_con.php';
    try {        
        $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        
        $sql = "select sum(tbl.EachTableCount) as count from ( select count(*) as EachTableCount from jaw_crushers_low UNION ALL select count(*) as EachTableCount from jaw_crushers_high ) tbl;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $jaw_crusher_count = $results[0]['count'];
        
        $sql = "select sum(tbl.EachTableCount) as count from ( select count(*) as EachTableCount from cone_crushers_low UNION ALL select count(*) as EachTableCount from cone_crushers_high ) tbl;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $cone_crusher_count = $results[0]['count'];
        
        $sql = "select sum(tbl.EachTableCount) as count from ( select count(*) as EachTableCount from screens_low UNION ALL select count(*) as EachTableCount from screens_high ) tbl;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $screens_count = $results[0]['count'];
        
        $sql = "select count(id) as count from charts;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        $flow_chart_count = $results[0]['count'];
        
        $sql = "select id, timestamp, name, pdf_body from charts ORDER BY id DESC LIMIT 12;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $flow_charts = $stmt->fetchAll(PDO::FETCH_ASSOC);
        
        $sql = "select model, capacity_min, capacity_max, discharge_size_min, discharge_size_max, motor_power from jaw_crushers_low ORDER BY id DESC LIMIT 2;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        array_push($machines, $results[0], $results[1]);
        
        $sql = "select model, capacity_min, capacity_max, discharge_size_min, discharge_size_max, motor_power from jaw_crushers_high ORDER BY id DESC LIMIT 2;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        array_push($machines, $results[0], $results[1]);
        
        $sql = "select model, capacity_min, capacity_max, discharge_size_min, discharge_size_max, motor_power from cone_crushers_low ORDER BY id DESC LIMIT 2;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        array_push($machines, $results[0], $results[1]);
        
        $sql = "select model, capacity_min, capacity_max, discharge_size_min, discharge_size_max, motor_power from cone_crushers_high ORDER BY id DESC LIMIT 2;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        array_push($machines, $results[0], $results[1]);
        
        $sql = "select model, capacity_min, capacity_max, aperture_min as discharge_size_min, aperture_max as discharge_size_max, power as motor_power from screens_low ORDER BY id DESC LIMIT 2;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        array_push($machines, $results[0], $results[1]);
        
        $sql = "select model, capacity_min, capacity_max, aperture_min as discharge_size_min, aperture_max as discharge_size_max, power as motor_power from screens_high ORDER BY id DESC LIMIT 2;";
        $stmt = $conn->prepare($sql);
        $stmt->execute();
        $results = $stmt->fetchAll(PDO::FETCH_ASSOC);
        array_push($machines, $results[0], $results[1]);
        
    } catch(PDOException $e) {
        echo "failed : " . $e->getMessage();
    }
    $conn = null;

?>