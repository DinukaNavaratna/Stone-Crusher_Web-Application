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

    output_per_hour = monthly_output_capacity/(working_days_per_month*shifts_per_day*hours_per_shift);
    output_per_hour = Math.ceil(output_per_hour/5)*5;
    document.getElementById('Bin_PrimaryCrusher1').innerHTML = output_per_hour+" t/h";
    

    $.ajax({
        url:"http://localhost/Stone%20Crusher/assets/php/functions.php",
        type: "GET",
        data: {"max_input_size": "210", "output_size_min": "0", "output_size_max": "0", "capacity": "5"},
        success:function(response){
            if(response.includes("failed")){
                alert("Failed");
            } else {
                obj = JSON.parse(response);
                crushers = obj.crushers;
                for(var crusher in crushers){
                    try{
                        document.getElementById(crusher+"1").innerHTML = crushers[crusher].Model[0];
                        document.getElementById(crusher+"2").innerHTML = crushers[crusher].Model[1];
                    } catch(x){}
                }

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

    document.getElementById("chart-input1").style.display = "none";
    document.getElementById("chart-input2").style.display = "block";
}

function create_diagram(){
    var r1_output_size1, r1_output_size2, r1_output_percentage;
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

    var table_body_content = "<tr><td></td><th>Short Term</th><th>Long Term</th></tr>";
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