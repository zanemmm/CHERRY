<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.0 Transitional//EN">
<!--ϵͳĬ��ģ��-->
<HTML>
<HEAD>
<TITLE>��ʱ��������</TITLE>
<META http-equiv=pragma content=no-cache>
<META http-equiv=cache-control content="no-cache, must-revalidate">
<META http-equiv=content-type content="text/html; charset=gbk">
<META http-equiv=content-script-type content=text/javascript>
<!--ϵͳ����css-->
<STYLE type=text/css>
@import url(/style/default.css);
</STYLE>
<!--ϵͳ�����ű�-->
<SCRIPT language="javascript" src="common.js"></SCRIPT>
<SCRIPT language="javascript" type="text/javascript">
var cgi = new Object();

function setValue(id,value)
{
	document.getElementById(id).value=value;
}
function btnApply()
{
	var week = 0;

	if(document.getElementById("right").checked)
	{
		week = 1;
	}
	else
	{
		if(document.getElementById("mon").checked)
			week += 0x2;
		if(document.getElementById("tue").checked)
			week += 0x4;
		if(document.getElementById("wen").checked)
			week += 0x8;
		if(document.getElementById("thr").checked)
			week += 0x10;
		if(document.getElementById("fri").checked)
			week += 0x20;
		if(document.getElementById("sat").checked)
			week += 0x40;
		if(document.getElementById("sun").checked)
			week += 0x80;
	}
	setValue("day", week);
	document.form.action.value="add";
	form.submit();
}

function on_init()
{
	var i=0;
	for(i=0; i<24; i++)
		document.form.hour.options.add(new Option(i, i));

	for(i=0; i<60; i++)
		document.form.minute.options.add(new Option(i, i));
}

/*
function timeDisplay()
{
	var selc = document.getElementById("day");
	var index = selc.selectedIndex;

	if( selc.options[index].value==0 )
	{
		document.getElementById("hour").disabled=true;
		document.getElementById("minute").disabled=true;
	}
	else
	{
		document.getElementById("hour").disabled=false;
		document.getElementById("minute").disabled=false;
	}
}
*/
function checkboxOnclick(checkbox)
{
	if ( checkbox.checked == true)
	{
		document.getElementById("mon").checked=false;
		document.getElementById("mon").disabled=true;
		document.getElementById("tue").checked=false;
		document.getElementById("tue").disabled=true;
		document.getElementById("wen").checked=false;
		document.getElementById("wen").disabled=true;
		document.getElementById("thr").checked=false;
		document.getElementById("thr").disabled=true;
		document.getElementById("fri").checked=false;
		document.getElementById("fri").disabled=true;
		document.getElementById("sat").checked=false;
		document.getElementById("sat").disabled=true;
		document.getElementById("sun").checked=false;
		document.getElementById("sun").disabled=true;
		document.getElementById("hour").disabled=true;
		document.getElementById("minute").disabled=true;
	}
	else
	{
		document.getElementById("mon").disabled=false;
		document.getElementById("tue").disabled=false;
		document.getElementById("wen").disabled=false;
		document.getElementById("thr").disabled=false;
		document.getElementById("fri").disabled=false;
		document.getElementById("sat").disabled=false;
		document.getElementById("sun").disabled=false;
		document.getElementById("hour").disabled=false;
		document.getElementById("minute").disabled=false;
	}
}


</SCRIPT>
</HEAD>


<!-------------------------------------------------------------------------------------->
<!--��ҳ����-->
<body topmargin="0" leftmargin="0" marginwidth="0" marginheight="0" alink="#000000" link="#000000" vlink="#000000" onLoad="on_init()">
  <blockquote>
	<DIV align="left" style="padding-left:20px; padding-top:5px">
		<form id="form" action=/boaform/admin/formSleepMode method=POST name="form">
			<b>���Ӽ�ͥ���ض�ʱ���߹���-- ������������� 100������.</b><br><br><br>
			<hr align="left" class="sep" size="1" width="90%">
				<tr>
					<td width="120">������������:&nbsp;</td>
					<td>
						<input type="checkbox" id="right" name="right" value="0" onclick="checkboxOnclick(this)"/>��������/����
						<input type="checkbox" id="mon" name="mon" value="1" />����һ
						<input type="checkbox" id="tue" name="tue" value="2" />���ڶ�
						<input type="checkbox" id="wen" name="wen" value="3" />������
						<input type="checkbox" id="thr" name="thr" value="4" />������
						<input type="checkbox" id="fri" name="fri" value="5" />������
						<input type="checkbox" id="sat" name="sat" value="6" />������
						<input type="checkbox" id="sun" name="sun" value="7" />������
					</td>
					<td>&nbsp;</td>
				</tr>
				<br><br>
				<tr>
					<td width="120">��������ʱ��:&nbsp;</td>
					<td>
						<select id="hour" name="hour">
						</select>
					</td>

					<td>ʱ&nbsp;</td>

					<td>
						<select id="minute" name="minute">
						</select>
					</td>

					<td>��&nbsp;</td>
				</tr>
				<br><br>
				<tr>
					<td width="120">ʹ��/��ֹ:&nbsp;</td>
					<td><input type="radio" name="timerEnable" value="off" checked>&nbsp;&nbsp;��ֹ</td>
					<td><input type="radio" name="timerEnable" value="on" >&nbsp;&nbsp;ʹ��</td>
				</tr>
				<br><br>
				<tr>
					<td width="120">����:&nbsp;</td>
					<td><input type="radio" name="onoffEnable" value="off" checked>&nbsp;&nbsp;����</td>
					<td><input type="radio" name="onoffEnable" value="on" >&nbsp;&nbsp;����</td>
				</tr>
			<br><br>
			<hr align="left" class="sep" size="1" width="90%">
			<input type="button" class="btnsaveup" value="����/Ӧ��" onClick="btnApply()">
			<input type="hidden" name="action" value="add">
			<input type="hidden" name="submit-url" value="/app_sleepmode_rule.asp">
			<input type="hidden" name="day" id="day" value="">

			<script>
				//timeDisplay();
			</script>
		</form>
	</div>
  </blockquote>
</body>
<%addHttpNoCache();%></html>