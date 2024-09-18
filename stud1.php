<?php
  session_start();
  $db=mysqli_connect('localhost','root','','att') or die("Connection failed");
  if ($_SESSION["logged"]!=1)
    header("location: stulogoin.php?err=1");
	$reg=$_SESSION['REG'];
	echo "<title> Welcome $reg </title>";
	
?>
<html>
<head>
<link rel=stylesheet type="text/css" href="as.css">
<script type="text/javascript" src="js/jquery.min.js"></script>
<script type="text/javascript" src="js/Chart.min.js"></script>
<script language="Javascript">

function deleteask(){
  if (confirm('Are you sure you want to logout?')){
    return true;
  }else{
    return false;
  }
}
</script>
<style type="text/css">


#chart-container {
    width: 50%;
    height: auto;
	background-color:white;
	margin-top:20px;
}
</style>
</head>

  <body background="background11.jpg">
        <header>
           <img src="logo11.png">
		    <font face="Georgia" color="blue" size="5"><b>MBM Plus</b></font>
            <nav>
                <ul>
                    <li><a href="stud1.php">Home</a></li>
                    <li><a href="stud1.php">Classes</a></li>
                    <li><a href="about.html">About</a></li>
					<li><a href="logout.php">Logout</a></li>
                    <li><a href="#"></a></li>
                </ul>
            </nav>
        </header>
<?php
 $query="SELECT * FROM login where regno='$reg';";
        mysqli_query($db,$query) or die("Query Failed");
        $result=mysqli_query($db,$query);
        while($row=mysqli_fetch_array($result)){
 $name=$row['name'];
		}
?>		

		    
<?php
echo "<marquee bgcolor='black'><h3 style= color:#FFFFFF;'> Welcome $name $reg</h3></marquee> " ;
?>
<div id="chart-container">
        <canvas id="graphCanvas"></canvas>
    </div>

    <script>
$(document).ready(function () {
    showGraph();
});

function showGraph() {
    $.post("pra.php", function (data) {
        var subject = [];
        var attendance = [];
        var backgroundColors = []; // Array to store different colors for each subject

        // Define colors for different subjects
        var colors = ['#ff6384', '#36a2eb', '#ffce56', '#4bc0c0', '#9966ff', '#ff9f40', '#32cd32'];

        for (var i in data) {
            subject.push(data[i].subid + ' ' + data[i].subname); // Combine subject ID and name
            attendance.push(data[i].at);

            // Assign color to each subject
            var colorIndex = i % colors.length;
            backgroundColors.push(colors[colorIndex]);
        }

        var chartdata = {
            labels: subject,
            datasets: [{
                data: attendance,
                backgroundColor: backgroundColors // Use different colors for each subject
            }]
        };

        var graphTarget = $("#graphCanvas");

        var pieChart = new Chart(graphTarget, {
            type: 'pie',
            data: chartdata,
            options: {
                tooltips: {
                    callbacks: {
                        label: function(tooltipItem, data) {
                            var label = data.labels[tooltipItem.index];
                            var datasetLabel = data.datasets[tooltipItem.datasetIndex].data[tooltipItem.index];
                            return label + ': ' + datasetLabel.toFixed(2) + '%'; // Format percentage to two decimal places
                        }
                    }
                }
            }
        });

        // Sort attendance and subjects in decreasing order
        var sortedData = data.sort(function(a, b) {
            return b.at - a.at;
        });

        // Display attendance in a table at the bottom
        var tableHtml = '<table><thead><tr><th>Subject</th><th>Attendance (%)</th></tr></thead><tbody>';
        sortedData.forEach(function(item, index) {
            tableHtml += '<tr><td>' + item.subid + ' ' + item.subname + '</td><td>' + item.at.toFixed(2) + '%' + '</td></tr>'; // Format percentage to two decimal places
        });
        tableHtml += '</tbody></table>';

        // Append table HTML to a div with id 'attendanceTable'
        $('#attendanceTable').html(tableHtml);
    });
}
</script>


<div id="graphCanvas">
    <!-- Chart will be rendered here -->
</div>

<div id="attendanceTable">
    <!-- Table will be rendered here -->
</div>






</body>
</html>