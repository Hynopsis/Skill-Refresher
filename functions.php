<?php

function GetQuestions($type){	

	//these are some generic arrays we break our database request into
	$questions = array(); 
	$answers = array();
	$hints = array();
	
	//set our login data outside of our public directory
	include '../../login.php';
	
	//connect to our database	
	$conn = new mysqli($servername, $username, $password);
	
	if ($conn->connect_error) {
		echo("alert('Bad server connection see administrator')");
		die;//("Connection failed: " . $conn->connect_error);
	}
	else{
		//echo("alert('Good connection');");
	}
	
	if (!mysqli_select_db($conn, $databaseName)) {
		echo("alert('Couldnt find database see administrator');");
		die;
	}
	else{
		//echo("alert('Found Database');");
	}
	
	//dyanmically generate which table to grab data from
	$q = 'SELECT Question, Answer, Hint FROM ' . $type;	
	$result = $conn->query($q);
	
	if ( false===$result) {
	  echo ('alert("Query request has failed");');
	  //echo ('alert("Query fail + ' . $msg . '")');
	  //printf("error: %s\n", mysqli_error($conn));
	}
	
	$num = $result->num_rows;
	
	if ($num > 0) {
		// output data of each row
		while($row = $result->fetch_assoc()) {
			$questions[] = $row["Question"];
			$answers[] = $row["Answer"];
			$hints[] = $row["Hint"];
		}
	} 
	else {
		echo "alert('0 results found in database');";
	}
	
	//encode them and pass them back
	$questions = json_encode($questions);
	$answers = json_encode($answers);
	$hints = json_encode($hints);
	
	//echo them back out to plain html
	echo "testData.questions = " .  $questions  . ";";
	echo "testData.answers = " . $answers . ";";
	echo "testData.hints = " . $hints . ";";
	
	//close the connection
	$conn->close();
	
	}
	
function GenerateData(){
	
	$section = "";
	
	if(isset($_GET["section"]) ){
		 //then we have a section variable that was passed through a link so need to update questions
		 $section = $_GET["section"];
	}		
	//getQuestions gets data for the server from the appropriate table and inputs all data into our custom js object testData
	switch ($section) {
		case 'Css':
			GetQuestions('Css');
			break;
		case 'JavaScript':
			GetQuestions('JavaScript');
			break;
		case 'jQuery':
			GetQuestions('jQuery');
			break;
		case 'Php':
			GetQuestions('Php');
			break;
		default:
			GetQuestions('Html5');//default to html5 page
	}	
			
	if($section != ""){//if not initial than change the highlighted heading to reflect the section we are on, since we dont change pages
		echo " 	var currentUrl = location.href; 
				var currentLoc = currentUrl.substring(currentUrl.indexOf('=')+1);		
				var element = document.getElementById(currentLoc);

				$('.navImg ').removeClass('active');
				$(element).addClass('active'); // turn our current page nav button to a query object then set its opacity ";
	}
	else{
		echo " 	$('#Html5').addClass('active'); // turn our current page nav button to a query object then set its opacity ";
		}
}
?>