<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="chrome=1">

<link rel="shortcut icon" type="image/png" href="${req.getContextPath()}/img/favicon.png" />
<link href="${req.getContextPath()}/css/bootstrap.min.css" rel="stylesheet">
<link href="${req.getContextPath()}/css/ngrinder.css" rel="stylesheet">

<script src="${req.getContextPath()}/js/jquery-1.7.2.min.js"></script>
<script src="${req.getContextPath()}/js/bootstrap.min.js"></script>
<script src="${req.getContextPath()}/js/bootbox.min.js"></script>
<script src="${req.getContextPath()}/js/utils.js"></script>
<script src="${req.getContextPath()}/js/jquery.validate.js"></script>
<#if currentUser?? && currentUser.timeZone??>
	<#setting time_zone="${currentUser.timeZone}"> 
</#if>  
<#import "spring.ftl" as spring/>
<script>
	//common validation function and options. 
	$.validator.addMethod('positiveNumber',
		    function (value) { 
		        return Number(value) > 0;
		    }, '<@spring.message "common.form.validate.positiveNumber"/>');
	$.validator.addMethod('countNumber',
		    function (value) { 
		        return Number(value) >= 0;
		    }, '<@spring.message "common.form.validate.countNumber"/>');
</script> 

<input type="hidden" id="contextPath" value="${req.getContextPath()}">
<#setting number_format="computer">
