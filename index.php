<html>
    <head>
        <title>Attendance Management System</title>
        <link rel="stylesheet" href="style.css">
		<script type="text/javascript">
    window.onload = setInterval(clock,1000);

    function clock()
    {
	  var d = new Date();
	  
	  var date = d.getDate();
	  
	  var month = d.getMonth();
	  var montharr =["January","February","March","April","May","June","July","August","September","October","November","December"];
	  month=montharr[month];
	  
	  var year = d.getFullYear();
	  
	  var day = d.getDay();
	  var dayarr =["Sunday","Monday","Tuesday","Wednesday","Thursday","Friday","Saturday"];
	  day=dayarr[day];

	  var sec = d.getSeconds();
	  document.getElementById("date").innerHTML=day+" "+date+" "+month+" "+year;
	 
	 
    }
  </script>
    </head>
    <body background="background11.jpg">
        <header>
           <img src="logo11.png">
		   <font face="Georgia" color="blue" size="5"><b>MBM Plus</b></font>
            <nav>
                <ul>
                    <li><a href="index.php">Home</a></li>
                    <li><a href="stulogoin.php">Student</a></li>
                    <li><a href="teachlogin.php">Teacher</a></li>
                    <li><a href="about.html">About</a></li>
                    <li><a href="#"></a></li>
                </ul>
            </nav>
        </header>
        <main>
		<h1> MBM Attendance</h1>
             <p id="date"></p>
             <p id="time"></p>
		<center> <button class="btn btn-1"onclick="location.href='stulogoin.php'"><b>Login as Student</b></button>
		&nbsp;
		&nbsp;
		&nbsp;
		&nbsp;
		<button class="btn btn-2" onclick="location.href='teachlogin.php'"><b>Login as Teacher</b></button></center>
        </main>
    </body>
</html>