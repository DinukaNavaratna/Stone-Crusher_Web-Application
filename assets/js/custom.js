var win = navigator.platform.indexOf('Win') > -1;
if (win && document.querySelector('#sidenav-scrollbar')) {
  var options = {
    damping: '0.5'
  }
  Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
}

//--------------------- Inout Box Submit Actions ---------------------------
var m_type, input_size1, input_size2, monthly_output_capacity, working_days_per_month, shifts_per_day, hours_per_shift;
var crushers;
var r1_output_size1, r1_output_size2, r2_output_size1, r2_output_size2, r3_output_size1, r3_output_size2, r4_output_size1, r4_output_size2, r5_output_size1, r5_output_size2;

function open_input2(){
    m_type = document.getElementById("m_type").value;
    input_size1 = document.getElementById("input_size1").value;
    input_size2 = document.getElementById("input_size2").value;
    monthly_output_capacity = document.getElementById("monthly_output_capacity").value;
    working_days_per_month = document.getElementById("working_days_per_month").value;
    shifts_per_day = document.getElementById("shifts_per_day").value;
    hours_per_shift = document.getElementById("hours_per_shift").value;
    zeros = /^0*$/;

    
    if((m_type == "default") || (input_size1 == "") ||  (input_size2 == "") ||  (monthly_output_capacity == "") ||  (working_days_per_month == "") ||  (shifts_per_day == "") ||  (hours_per_shift == "")){
        alert("All the fileds are required to be filled properly!");
        return;
    } else if(zeros.test(input_size1) || zeros.test(input_size2) || zeros.test(monthly_output_capacity) || zeros.test(working_days_per_month) || zeros.test(shifts_per_day) || zeros.test(hours_per_shift)){
        alert("None of the values can be '0'!");
        return;
    }

    document.getElementById("chart-input1").style.display = "none";
    document.getElementById("chart-input2").style.display = "block";
}

function create_diagram(){
    r1_output_size1 = document.getElementById("r1_output_size1").value;
    r1_output_size2 = document.getElementById("r1_output_size2").value;
    r2_output_size1 = document.getElementById("r2_output_size1").value;
    r2_output_size2 = document.getElementById("r2_output_size2").value;
    r3_output_size1 = document.getElementById("r3_output_size1").value;
    r3_output_size2 = document.getElementById("r3_output_size2").value;
    r4_output_size1 = document.getElementById("r4_output_size1").value;
    r4_output_size2 = document.getElementById("r4_output_size2").value;
    r5_output_size1 = document.getElementById("r5_output_size1").value;
    r5_output_size2 = document.getElementById("r5_output_size2").value;

    const rows = [];

    if(r5_output_size1 <= 0 || r5_output_size2 <= 0){
        r5_output_size1 = 0;
        r5_output_size2 = 0;
    } else {
        rows.push([r5_output_size1, r5_output_size2]);
    }
    if(r4_output_size1 <= 0 || r4_output_size2 <= 0){
        r4_output_size1 = 0;
        r4_output_size2 = 0;
    } else {
        rows.push([r4_output_size1, r4_output_size2]);
    }
    if(r3_output_size1 <= 0 || r3_output_size2 <= 0){
        r3_output_size1 = 0;
        r3_output_size2 = 0;
    } else {
        rows.push([r3_output_size1, r3_output_size2]);
    }
    if(r2_output_size1 <= 0 || r2_output_size2 <= 0){
        r2_output_size1 = 0;
        r2_output_size2 = 0;
    } else {
        rows.push([r2_output_size1, r2_output_size2]);
    }
    if(r1_output_size1 < 0 || r1_output_size2 <= 0){
        r1_output_size1 = 0;
        r1_output_size2 = 0;
    } else {
        rows.push([r1_output_size1, r1_output_size2]);
    }
    
    if(rows.length == 0){
        alert("Please enter atleast one output particle size!");
        return;
    }

    output_per_hour = monthly_output_capacity/(working_days_per_month*shifts_per_day*hours_per_shift);
    output_per_hour = Math.ceil(output_per_hour/5)*5;
    required_input_capacity = 100/95*output_per_hour;
    required_input_capacity = Math.round(required_input_capacity * 100) / 100;
    document.getElementById('feeder-jaw').innerHTML = required_input_capacity+" t/h";
    document.getElementById('jaw-cone').innerHTML = required_input_capacity+" t/h";
    document.getElementById('hopper_output').innerHTML = String(required_input_capacity*2)+" t/h";
    document.getElementById('s1-s2').innerHTML = required_input_capacity+" t/h";
    var a = rows[0][1];
    console.log(a);
    var ad = a/((a*0.94)-(7*0.342));
    var efficiency = 0;

    $.ajax({
        url:"http://localhost/Stone%20Crusher/assets/php/functions.php",
        type: "GET",
        data: {"efficiency": ad},
        success:function(response){
            //console.log(response);
            if(response.includes("failed")){
                alert("Efficiency Calculation Failed");
            } else {
                efficiency = response;
                var screen1_return = required_input_capacity*((100-efficiency)/100);
                screen1_return = Math.round(screen1_return * 100) / 100;
                document.getElementById("cone-s1").innerHTML = (required_input_capacity+screen1_return)+" t/h";
                document.getElementById("screen1_return").innerHTML = screen1_return+" t/h";
            }
        },
        error: function (jqXHR, exception) {
            alert("Error");
        }
    });


    $.ajax({
        url:"http://localhost/Stone%20Crusher/assets/php/functions.php",
        type: "GET",
        data: {"max_input_size": "210", "output_size_min": "0", "output_size_max": "0", "capacity": "5"},
        success:function(response){
            //console.log(response);
            if(response.includes("failed")){
                alert("Failed");
            } else {
                obj = JSON.parse(response);
                crushers = obj.crushers;
                for(var crusher in crushers){
                    try{
                        if(crusher == "Feeder"){
                            document.getElementById(crusher).innerHTML = crushers[crusher].Model[0];
                        } else {
                            document.getElementById(crusher+"1").innerHTML = crushers[crusher].Model[0];
                            document.getElementById(crusher+"2").innerHTML = crushers[crusher].Model[1];
                        }
                    } catch(x){}
                }
                console.log(crushers);
                /*
                for(var crusher in crushers){
                    console.log(crusher);
                    for(var i in crushers[crusher]){
                        var key = i;
                        var val = crushers[crusher][i][0];
                        console.log(key+" - "+val);
                    }
                }
                */
            }
        },
        error: function (jqXHR, exception) {
            alert("Error");
        }
    });


    for (let i = 0; i < rows.length; i++) {
        document.getElementById("s"+(i+1)+"_row1").classList.remove("s"+(i+1)+"_row");
        document.getElementById("s"+(i+1)+"_row2").classList.remove("s"+(i+1)+"_row");
        document.getElementById("s"+(i+1)+"_row3").classList.remove("s"+(i+1)+"_row");

        document.getElementById("screen"+(i+1)+"_output").innerHTML = rows[i][0]+" - "+rows[i][1]+" t/h";
    }
    
    document.getElementById("chart-input2").style.display = "none";
    document.getElementById("chart-body").style.display = "block";
}


//--------------------- Model Box Pop-up ---------------------------
function oo(type){
    var modal = document.getElementById("myModal");
    modal.style.display = "block";
    var span = document.getElementsByClassName("close")[0];
    crusher_type = type.replace(/\s/g,'');
    alert(crusher_type);
    // When the user clicks on <span> (x), close the modal
    span.onclick = function() {
        modal.style.display = "none";
    }

    // When the user clicks anywhere outside of the modal, close it
    window.onclick = function(event) {
        if (event.target == modal) {
        modal.style.display = "none";
        }
    }

    document.getElementById("modal-topic").innerHTML = type;

    var table_body_content = "<tr><td></td><th>Low Budget</th><th>High Budget</th></tr>";
    for(var i in crushers[crusher_type]){
        var key = i;
        var value1 = crushers[crusher_type][i][0];
        var value2 = crushers[crusher_type][i][1];
        table_body_content += "<tr><td>&#8226; "+key+"</td><td>"+value1+"</td><td>"+value2+"</td></tr>"
    }
    
    document.getElementById("table_body_content").innerHTML = table_body_content;
}

function parse(){
    console.log("hhhhh");
}