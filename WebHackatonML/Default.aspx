<%@ Page Language="C#" Inherits="MeliSample.Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.1//EN" "http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd">
<html>
<head runat="server">
	<title>MercadoLibre Logistics</title>
	
	<link rel="stylesheet" href="~/css/chico-0.12.2.css" />
	<link rel="stylesheet" href="~/css/chico-mesh.css" />
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
	
	<style>
	
	.title_h1 {
		background:transparent url('../assets/main.png') 0 0 no-repeat;
		width: 63px;
		height: 36px;
		text-indent: 999px;
		overflow: hidden;
		margin-top: 14px;
		margin-left: 55px;
	}
	
	.title_h2 {
		margin-top:5px;
		color:#999;
		size:20px;
		font-family: "Lucida Grande", Arial, sans-serif;
	}
	
	</style>
	
</head>

<body style="text-align: center;">	
    
    <div id="logo" style="text-align:center">
        <img src="assets/logoChico.png" /></div>
	<h2 class="title_h2">MercadoGistics</h2> 

	<form id="searchForm" runat="server">		
		<div id="divOrders">			
            <asp:Button id="btnOrders" runat="server" Text="Actualizar" OnClick="btnOrdersClicked" CssClass="ch-btn" style="float:right"/>
    	</div>
        <br /> 	
		<asp:PlaceHolder runat="server" ID="resultsPlaceHolder" />		
	</form>
	
    <div id="areaImpresionOrden" style="display:none;">                        
    </div>
    <div id="areaImpresionOrdenBarCode"  style="display:none;" >   
        <div id="barcodeTarget" style="margin-left: 25%" class="barcodeTarget"></div>
        <canvas id="canvasTarget" width="150" height="150"></canvas>
    </div>
            
    <%--<script src="js/jquery.js" type="text/javascript"></script>--%>
    <script src="js/jquery-1.11.2.js" type="text/javascript"></script>
    <script src="js/jquery-barcode.js" type="text/javascript"></script>
    <script src="js/jquery.jPrintArea.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrap-dialog.js" type="text/javascript"></script>

</body>
</html>
