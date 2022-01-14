var win = navigator.platform.indexOf('Win') > -1;
if (win && document.querySelector('#sidenav-scrollbar')) {
  var options = {
    damping: '0.5'
  }
  Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
}

var jaw_max_input1 = 0;
var jaw_max_output1 = 0;
var cone_max_input1 = 0;
var cone_max_output1 = 0;
var jaw_max_input2 = 0;
var jaw_max_output2 = 0;
var cone_max_input2 = 0;
var cone_max_output2 = 0;


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
    output_per_hour = Math.round(output_per_hour*100)/100;
    required_input_capacity = 100/95*output_per_hour;
    required_input_capacity = Math.round(required_input_capacity * 100) / 100;
    document.getElementById('feeder-jaw').innerHTML = required_input_capacity+" t/h";
    document.getElementById('jaw-cone').innerHTML = required_input_capacity+" t/h";
    document.getElementById('hopper_output').innerHTML = String(required_input_capacity*2)+" t/h";
    document.getElementById("s1-s2").innerHTML = required_input_capacity+" t/h";
    var a = rows[0][1];
    //console.log(a);
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
                console.log("Screen efficiency: "+efficiency);
                var screen1_return = required_input_capacity*((100-efficiency)/100);
                console.log("Screen 1 Return: "+screen1_return)
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
        data: {"max_input_size": input_size2, "output_size_min": "0", "output_size_max": "0", "capacity": required_input_capacity, "screen1": r5_output_size2, "screen2": r4_output_size2, "screen3": r3_output_size2, "screen4": r2_output_size2, "screen5": r1_output_size2},
        success:function(response){
            console.log("\n\n"+response+"\n\n");
            if(response.includes("failed")){
                console.log("Crusher data\n"+response);
                alert("Failed");
            } else {
                obj = JSON.parse(response);
                crushers = obj.crushers;
                for(var crusher in crushers){
                    try{
                        if(crusher == "Feeder"){
                            document.getElementById(crusher).innerHTML = crushers[crusher].Model[0]+"<br>"+crushers[crusher].Model[1];
                        } else {
                            if(crusher == "JawCrusher"){
                                jaw_max_input1 = crushers[crusher]['Max Feeding Size (mm)'][0];
                                jaw_max_output1 = crushers[crusher]['Discharge Size (mm)'][0];
                                jaw_max_input2 = crushers[crusher]['Max Feeding Size (mm)'][1];
                                jaw_max_output2 = crushers[crusher]['Discharge Size (mm)'][1];
                            } else if(crusher == "ConeCrusher"){
                                cone_max_input1 = crushers[crusher]['Max Feeding Size (mm)'][0];
                                cone_max_output1 = crushers[crusher]['Discharge Size (mm)'][0];
                                cone_max_input2 = crushers[crusher]['Max Feeding Size (mm)'][1];
                                cone_max_output2 = crushers[crusher]['Discharge Size (mm)'][1];
                            }
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

    try{
        var input_1_1 = rows[0][0];
        var input_1_2 = rows[0][1];
        var input_2_1 = rows[1][0];
        var input_2_2 = rows[1][1];
        var input_3_1 = rows[2][0];
        var input_3_2 = rows[2][1];
        var input_4_1 = rows[3][0];
        var input_4_2 = rows[3][1];
        var input_5_1 = rows[4][0];
        var input_5_2 = rows[4][1];
    } catch (ex) {
    }

    $.ajax({
        url:"http://localhost/Stone%20Crusher/assets/php/functions.php",
        type: "GET",
        data: {"sieve": "true", "input_1_1": input_1_1, "input_1_2": input_1_2, "input_2_1": input_2_1, "input_2_2": input_2_2, "input_3_1": input_3_1, "input_3_2": input_3_2, "input_4_1": input_4_1, "input_4_2": input_4_2, "input_5_1": input_5_1, "input_5_2": input_5_2},
        success:function(response){
            if(response.includes("failed")){
                console.log("Sieve \n"+response);
                alert("Failed");
            } else {
                obj = JSON.parse(response);
                s1_output = Math.round((required_input_capacity*obj.s1/100)*100)/100;
                s2_output = Math.round((required_input_capacity*obj.s2/100)*100)/100;
                s3_output = Math.round((required_input_capacity*obj.s3/100)*100)/100;
                s4_output = Math.round((required_input_capacity*obj.s4/100)*100)/100;
                s5_output = Math.round((required_input_capacity*obj.s5/100)*100)/100;

                /*if(s1_output == 0){
                    s1_output = Math.round((required_input_capacity-s1_output)*100)/100;
                } else if(s2_output == 0){
                    s2_output = Math.round((required_input_capacity-(s1_output+s2_output))*100)/100;
                } else if(s3_output == 0){
                    s3_output = Math.round((required_input_capacity-(s1_output+s2_output+s3_output))*100)/100;
                } else if(s4_output == 0){
                    s4_output = Math.round((required_input_capacity-(s1_output+s2_output+s3_output+s4_output))*100)/100;
                } else if(s5_output == 0){
                    s5_output = Math.round((required_input_capacity-(s1_output+s2_output+s3_output+s4_output+s5_output))*100)/100;
                }*/

                document.getElementById("s2-s3").innerHTML = s1_output+" t/h";
                document.getElementById("s3-s4").innerHTML = s2_output+" t/h";
                document.getElementById("s4-s5").innerHTML = s3_output+" t/h";
                document.getElementById("s5-s6").innerHTML = s4_output+" t/h";
                document.getElementById("s6-output").innerHTML = s5_output+" t/h";

                document.getElementById("output_perc").innerHTML = Math.round((required_input_capacity-(s1_output+s2_output+s3_output+s4_output+s5_output))*100)/100+" t/h";

                document.getElementById("output_size").innerHTML = rows[(rows.length)-1][0]+" - "+rows[(rows.length)-1][1]+" mm";
            }
        },
        error: function (jqXHR, exception) {
            alert("Error");
        }
    });


    for (let i = 0; i < rows.length; i++) {
        if(rows.length != i+1){
            document.getElementById("s"+(i+2)+"_row1").classList.remove("s"+(i+2)+"_row");
            document.getElementById("s"+(i+2)+"_row2").classList.remove("s"+(i+2)+"_row");
            document.getElementById("s"+(i+2)+"_row3").classList.remove("s"+(i+2)+"_row");
        }

        document.getElementById("screen"+(i+2)).innerHTML = "Screen "+(i+2)+"<br>"+rows[i][0]+" mm";
        document.getElementById("screen"+(i+2)+"_output").innerHTML = rows[i][0]+" - "+rows[i][1]+" mm";
    }

    document.getElementById("screen1").innerHTML = "Screen 01<br>"+rows[0][1]+" mm";

    var row_count = rows.length;
    //document.getElementById("output_title").innerHTML = "Output < "+rows[row_count-1][0]+" mm";
    
    document.getElementById("chart-input2").style.display = "none";
    document.getElementById("chart-body").style.display = "block";
}


//--------------------- Model Box Pop-up ---------------------------
function oo(type){
    var modal = document.getElementById("myModal");
    modal.style.display = "block";
    var span = document.getElementsByClassName("close")[0];
    crusher_type = type.replace(/\s/g,'');
    
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
    if (type == "Cone Crusher" || type == "Jaw Crusher"){
        document.getElementById('model_btn_ratio').setAttribute('onclick','oo2("'+type+'")');
        document.getElementById('model_btn_distribution').setAttribute('onclick','oo3("'+type+'")');
        document.getElementById("model_btns").style.display = "initial";
    } else {
        document.getElementById("model_btns").style.display = "none";
    }

    var table_body_content = "<tr><td></td><th>Low Budget</th><th>High Budget</th></tr>";
    for(var i in crushers[crusher_type]){
        var key = i;
        var value1 = crushers[crusher_type][i][0];
        var value2 = crushers[crusher_type][i][1];
        table_body_content += "<tr><td>&#8226; "+key+"</td><td>"+value1+"</td><td>"+value2+"</td></tr>"
    }
    
    document.getElementById("table_body_content").innerHTML = table_body_content;
}


//--------------------- Model Box Pop-up ---------------------------
function oo2(type){
    var modal = document.getElementById("myModal2");
    modal.style.display = "block";
    var span = document.getElementsByClassName("close2")[0];
    crusher_type = type.replace(/\s/g,'');
    
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
    
    document.getElementById("modal-topic2").innerHTML = type;
    
    if(type.includes("Cone")){
        console.log(cone_max_output1);
        console.log(cone_max_input1);
        console.log(cone_max_output2);
        console.log(cone_max_input2);
        
        var cone_max_output_arr = cone_max_output1.split(" - ");
        cone_max_output11 = cone_max_output_arr[1]
        cone_max_output_arr = cone_max_output2.split(" - ");
        cone_max_output22 = cone_max_output_arr[1]

        value1 = cone_max_input1/cone_max_output11;
        value2 = cone_max_input2/cone_max_output22;
    } else if(type.includes("Jaw")){
        var jaw_max_output_arr = jaw_max_output1.split(" - ");
        jaw_max_output11 = jaw_max_output_arr[1]
        jaw_max_output_arr = jaw_max_output2.split(" - ");
        jaw_max_output22 = jaw_max_output_arr[1]

        value1 = jaw_max_input1/jaw_max_output11;
        value2 = jaw_max_input2/jaw_max_output22;
    }
    
    
    var table_body_content = "<tr><td></td><th>Low Budget</th><th>High Budget</th></tr>";
    table_body_content += "<tr><td>&#8226; Reduction Ratio&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td><td>"+Math.round(value1 * 100) / 100+"</td><td>"+Math.round(value2 * 100) / 100+"</td></tr>"
    
    document.getElementById("table_body_content2").innerHTML = table_body_content;
}
//--------------------- Model Box Pop-up ---------------------------
function oo3(type){
    var modal = document.getElementById("myModal2");
    modal.style.display = "block";
    var span = document.getElementsByClassName("close2")[0];
    crusher_type = type.replace(/\s/g,'');
    
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
    
    document.getElementById("modal-topic2").innerHTML = type;
    
    
    var table_body_content = "<tr><td><img style='width:100%;' src='assets/img/particle_size_distribution.png'></td></tr>";
    
    document.getElementById("table_body_content2").innerHTML = table_body_content;
}

function parse(){
    console.log("hhhhh");
}