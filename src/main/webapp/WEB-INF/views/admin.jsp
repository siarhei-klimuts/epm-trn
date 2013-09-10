<%@ page language="java" contentType="text/html; charset=utf8"
	pageEncoding="utf8"%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Admin users</title>
<link rel="stylesheet" type="text/css" media="screen"
	href="resources/css/ui.jqgrid.css" />
<link href="resources/css/smoothness/jquery-ui-1.10.3.custom.css"
	rel="stylesheet">

<script src="resources/js/jquery-2.0.3.min.js" type="text/javascript"></script>
<script src="resources/js/jquery-ui-1.10.3.custom.min.js"
	type="text/javascript"></script>
<script src="resources/js/i18n/grid.locale-ru.js" type="text/javascript"></script>
<script src="resources/js/jquery.jqGrid.min.js" type="text/javascript"></script>
<script type="text/javascript">
	jQuery("#list4").jqGrid(
			{
				datatype : "local",
				height : 250,
				colNames : [ 'Inv No', 'Date', 'Client', 'Amount', 'Tax',
						'Total', 'Notes' ],
				colModel : [ {
					name : 'id',
					index : 'id',
					width : 60,
					sorttype : "int"
				}, {
					name : 'invdate',
					index : 'invdate',
					width : 90,
					sorttype : "date"
				}, {
					name : 'name',
					index : 'name',
					width : 100
				}, {
					name : 'amount',
					index : 'amount',
					width : 80,
					align : "right",
					sorttype : "float"
				}, {
					name : 'tax',
					index : 'tax',
					width : 80,
					align : "right",
					sorttype : "float"
				}, {
					name : 'total',
					index : 'total',
					width : 80,
					align : "right",
					sorttype : "float"
				}, {
					name : 'note',
					index : 'note',
					width : 150,
					sortable : false
				} ],
				multiselect : true,
				caption : "Manipulating Array Data"
			});
	var mydata = [ {
		id : "1",
		invdate : "2007-10-01",
		name : "test",
		note : "note",
		amount : "200.00",
		tax : "10.00",
		total : "210.00"
	}, {
		id : "2",
		invdate : "2007-10-02",
		name : "test2",
		note : "note2",
		amount : "300.00",
		tax : "20.00",
		total : "320.00"
	}, {
		id : "3",
		invdate : "2007-09-01",
		name : "test3",
		note : "note3",
		amount : "400.00",
		tax : "30.00",
		total : "430.00"
	}, {
		id : "4",
		invdate : "2007-10-04",
		name : "test",
		note : "note",
		amount : "200.00",
		tax : "10.00",
		total : "210.00"
	}, {
		id : "5",
		invdate : "2007-10-05",
		name : "test2",
		note : "note2",
		amount : "300.00",
		tax : "20.00",
		total : "320.00"
	}, {
		id : "6",
		invdate : "2007-09-06",
		name : "test3",
		note : "note3",
		amount : "400.00",
		tax : "30.00",
		total : "430.00"
	}, {
		id : "7",
		invdate : "2007-10-04",
		name : "test",
		note : "note",
		amount : "200.00",
		tax : "10.00",
		total : "210.00"
	}, {
		id : "8",
		invdate : "2007-10-03",
		name : "test2",
		note : "note2",
		amount : "300.00",
		tax : "20.00",
		total : "320.00"
	}, {
		id : "9",
		invdate : "2007-09-01",
		name : "test3",
		note : "note3",
		amount : "400.00",
		tax : "30.00",
		total : "430.00"
	} ];
	$().ready(new function() {
		debugger;
		for ( var i = 0; i <= mydata.length; i++)
			jQuery("#list4").jqGrid('addRowData', i + 1, mydata[i]);
	});
</script>
</head>
<body>
	<table id="list4"></table>
</body>
</html>