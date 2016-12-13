<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type='text/css'>
body {
	font: 10pt Arial, Helvetica, sans-serif;
	color: black;
	background: White;
}

p {
	font: 10pt Arial, Helvetica, sans-serif;
	color: black;
	background: White;
}

table, tr, td {
	font: 10pt Arial, Helvetica, sans-serif;
	color: Black;
	background: #ffffff;
	padding: 0px 0px 0px 0px;
	margin: 0px 0px 0px 0px;
}

th {
	font: bold 10pt Arial, Helvetica, sans-serif;
	color: #ffffff;
	background: #ff0000;
	padding: 0px 0px 0px 0px;
}

h1 {
	font: 16pt Arial, Helvetica, Geneva, sans-serif;
	color: #336699;
	background-color: White;
	border-bottom: 1px solid #cccc99;
	margin-top: 0pt;
	margin-bottom: 0pt;
	padding: 0px 0px 0px 0px;
}

h2 {
	font: bold 10pt Arial, Helvetica, Geneva, sans-serif;
	color: #336699;
	background-color: White;
	margin-top: 4pt;
	margin-bottom: 0pt;
}

a {
	font: 9pt Arial, Helvetica, sans-serif;
	color: #ffffff;
	background: #ffffff;
	margin-top: 0pt;
	margin-bottom: 0pt;
	vertical-align: top;
}
</style>
<title>E Report</title>
</head>
<body>
	<#if records?size == 0> 无记录 <#else> <#if date ??> 报表产出日期：${now}
	<br /> 统计日期区间：${date}
	<br />
	<br /> </#if>
	<table border='1' width='800' summary='Script output'>
		<tr>
			<th scope="col" width="30">提醒内容</th>
			<th scope="col" width="30">推送量</th>
			<th scope="col" width="30">详情点击量</th>
			<th scope="col" width="30">详情点击率</th>
			<th scope="col" width="30">日均推送量</th>
			<th scope="col" width="30">MTD总推送量</th>
			<th scope="col" width="30">YTD总推送量</th>
		</tr>
		<#list records as r>
		<tr>
			<td width="70">${r.contentdetail}</td>
			<td align="right" width="30">${r.sendcount}</td>
			<td align="right" width="30">${r.clickcount}</td>
			<td align="right" width="30">${r.clickD}</td>
			<td align="right" width="30">${r.totaleverday}</td>
			<td align="right" width="30">${r.MTD}</td>
			<td align="right" width="30">${r.YTD}</td>
		</tr>
		</#list>
	</table>
	</#if>
	<br />
	<b>栏位说明：</b>
	<br />
	<ol>
		<li>注册成功通知：完成注册后第4天仍未有扫码记录</li>
		<li>积分兑换成功通知：使用积分成功申请兑换礼品当下</li>
		<li>礼品领取成功通知：虚拟礼品到账当下</li>
		<li>客户积分变更通知：兑礼后状态返回失败，积分返还入账当下</li>
		<li>详情点击量：点击模板消息下方详情的数量</li>
		<li>详情点击率：详情点击量/推送量</li>
	</ol>
</body>
</html>