<html>
	<head>
		<script src="jQuery/jquery.js"> </script>
		<h1>
		welcome
		</h1>
		<h2>
		when you double click welcome you can see me
		</h2>
	</head>
		<body>
		
			<p id="pid1">
				hello world
			</p>
			<p id="pid2">
				I'm a robot
			</p>
			<p id="pid3">
				hai
			</p>
			<script>
				$(document).ready(function(){
					$("#pid1").click(function(){    
					alert("hello");
				});
					$("#pid2").hover(function(){
					alert("you're hovering i'm robot");
					
				},function(){alert("you're leaving p");}
				);
					$("h2").hide();
					$("#pid3").hide(function(){
					alert("you just hided hai");
					});
					
					$("h1").dblclick(function(){
						$("h2").show();
						
					});
					
					
					$("h1").mouseout(function(){ 
						$("h2").hide(function(){alert("yuck")});
						alert("h2 will be hidden again");
					});
						
									
				});
				
			</script>
		</body>
	
</html>