<html>
	<head>
	<h1>
		enter credentials
	</h1>
		<!--<script src="bootstrap.min.js">
		</script>-->
		<script src="jQuery/jquery.js"> </script> 
		<script src="checkdetails.js">
		</script>
		<style type="text/css">
		.errorDiv{
			
			color:red;
		}
		
		</style>
	</head>
	<body>
	<div class="container">
	
		<form name="registration">
		<div class="form-group">
			FIRSTNAME
			<input type="text" id="firstid" >
			</input>
			<div class="errorDiv" id="eid1">
			
	
	</div>
		</div>
		<div class="form-group">
			LASTNAME
			<input type="text" id="lastid">
			</input>
			<div class="errorDiv" id="eid2"></div>
		</div>
		<div class="form-group">
			PASSWORD
			<input type="password" id="passid">
			</input>
			<div class="errorDiv" id="eid3"></div>
		</div>
		<div class="form-group">
		<input type=button name="btn" id="btnid" value="SUBMIT" onClick="javascript:check();">
			<!--<button onClick ="javascript:check();">
				SUBMIT  here when you clivk button entire page will be refreshed so everything will be reloaded
			</button> -->
			</div>
			<div id="status"></div>
	</form>		
	
	
	</div>
	</body>
</html>