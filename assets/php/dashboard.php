<?php

    $about = "This project was done as the final assignment of BEng Civil Engineering, UOM. The main purpose of the project is to create flow charts representing the flow of the process of stone crushing.";

    $jaw_crusher_count = 0;
    $cone_crusher_count = 0;
    $screens_count = 0;
    $flow_chart_count = 0;

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
        
    } catch(PDOException $e) {
        echo "failed : " . $e->getMessage();
    }
    $conn = null;

?>