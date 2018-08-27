function check(){
	var flag=0;
if(registration.firstid.value==""){
	document.getElementById("eid1").innerHTML="enter the first name";
	
	
}
else
{document.getElementById("eid1").innerHTML="";
flag++;

}
if(registration.lastid.value==""){
	document.getElementById("eid2").innerHTML="enter the last name";
	
}
else
{document.getElementById("eid2").innerHTML="";
flag++;
}
if(registration.passid.value==""){
	document.getElementById("eid3").innerHTML="enter password";
	
}
else
{document.getElementById("eid3").innerHTML="";
flag++;

}

if(flag==3){
	$.ajax({
		url:"phpsample.php",
		type:"get",
		dataType:"html",
		data:{txtFirstname:$("#firstid").val(),txtLastname:$("#lastid").val(),txtPass:$("#passid").val()},
	success:function(res){
		$("#status").html(res);
	},
	error:function()
	{
		alert("error");
	}
	});
}
}
