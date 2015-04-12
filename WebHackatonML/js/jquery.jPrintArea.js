jQuery.jPrintArea = function (el, orderId, shipId) {
 
    //obtengo la informacion para imprimir e imprimo la orden de envio
    var dataImprimir = $('#datosImpresionEtiqueta' + orderId).html();
    $('#areaImpresionOrden').html("");
    $('#areaImpresionOrden').append(dataImprimir);
    
    //Genero el Codigo de Barras
    $("#barcodeTarget").html("");
    var value = shipId;
    var btype = "code128";
    var renderer = $("input[name=renderer]:checked").val();
    var settings = {
        output: renderer,
        barWidth: "2",
        barHeight: "75",       
    };

    $("#barcodeTarget").barcode(value, btype, settings);

    var datos1 = $('#areaImpresionOrden').html();
    var datos2 = $('#areaImpresionOrdenBarCode').html();
    

    BootstrapDialog.show({
            title: 'Imprimir Label Envio',
            message: datos1 + datos2
    });
        

    /************** COMENTARIO *********************
    COMENTAMOS LA GENERACION DE LA IMPRESION Y EN SU LUGAR LO MOSTRAMOS EN UN POPUP MODAL YA QUE NO CONTAMOS CON 
    IMPRESORA PARA IMPRIMIR EL LA ORDEN DE ENVIO, PODAMOS ESCANEARLO DESDE LA APP MOVIL DEL CELULAR

    /*
    var iframe = document.createElement('IFRAME');
    var doc = null;
    $(iframe).attr('style', 'position:absolute;width:0px;height:0px;left:-500px;top:-500px;');
    document.body.appendChild(iframe);
    doc = iframe.contentWindow.document;
    var links = window.document.getElementsByTagName('link');
    for (var i = 0; i < links.length; i++)
        if (links[i].rel.toLowerCase() == 'stylesheet')
            doc.write('<link type="text/css" rel="stylesheet" href="' + links[i].href + '"></link>');
    doc.write('<div class="' + $(el).attr("class") + '">' + $(el).html() + '</div>');
    doc.close();
    iframe.contentWindow.focus();
    iframe.contentWindow.print();
    document.body.removeChild(iframe);

    */
    
}





