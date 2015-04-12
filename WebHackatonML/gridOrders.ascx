<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="gridOrders.ascx.cs" Inherits="MeliSample.gridOrders" %>
<table class="ch-datagrid">
    <thead>
        <tr>
        	<th scope="col" class="negrita">Orden N°</th>
            <th scope="col" class="negrita">Fecha</th>
            <th scope="col" class="negrita">Total</th>
            <th scope="col" class="negrita">Comprador</th>
            <th scope="col" class="negrita">Estado Orden</th>
            <th scope="col" class="negrita">N° Envio</th>            
            <th scope="col" class="negrita">Estado Envio</th>
            <th scope="col" class="negrita">Etiqueta Envio</th>
            <th scope="col" class="negrita" style="display:none">DatosEtiqueta</th>
        </tr>
    </thead>
    <tbody>
		<% 
        foreach(var item in ordenes) 
        
        { %>
		<tr>
			<td><%= item.id %></td> 			
			<td><%= TransformDate(item.date_created) %></td>              
			<td> 
                <% string curr = TransformCurrency(item.currency_id); %>
                <p><%= curr %>  <%= item.total_amount %></p> 
            </td>		
            <td><%= item.buyer.nickname %> </td>
            <td><%= Traducir(item.status)%> </td>            
            <td><%= (item.shipping.id!=null ? item.shipping.id.ToString() : "" )%> </td>            
            <td><%= Traducir(item.shipping.status)%> </td>
            <td> 
                <%if (item.shipping.id != null)
                  { %>	
                <a id="print">			
			        <img src="assets/imprimir.png" onclick="$.jPrintArea('#areaImpresionOrden', '<%= item.id %>', '<%= item.shipping.id %>'  );" style="cursor:pointer;" alt="item image" />
                </a>	
                <%} %>
            </td>
            <td style="display:none">
                <div id="datosImpresionEtiqueta<%= item.id %>">
                    <div id="infoComprador"> 
	                    <h3>Destinatario:</h3>
                        <div id="nameComprador"><%= item.buyer.first_name %> <%= item.buyer.last_name %>
                        </div> 
                        <div id="nicknameComprador">
                           <span><%= item.buyer.nickname %></span>
                        </div> 
                        <% if (item.shipping.receiver_address != null)
                           { %>        
                        <div id="localidadComprador">
                          <span><%= item.shipping.receiver_address.state != null ? item.shipping.receiver_address.state.name : ""%></span>
		                </div>         
                        <div id="addressComprador">
				            <span><%= item.shipping.receiver_address.address_line%>, <%= item.shipping.receiver_address.zip_code%></span>
			            </div>
                        <%} %>
                        <div id="phoneComprador">
				            <span><%= item.buyer.phone.number %></span>     
			            </div>          
                        <div id="emailComprador">     
				            <span><%= item.buyer.email %></span>
			            </div>			            
	                </div>                    
                    <!-- datos del vendedor -->
	                <div id="infoVendedor"> 
	                  <h3>Remitente</h3>
                        <div id="nameVendedor">
                            <span><%= item.seller.first_name %> <%= item.seller.last_name%></span>
                        </div> 
                        <div id="nicknameVendedor">
                            <span><%= item.seller.nickname%></span>
                        </div>
                        <div id="phoneVendedor">
				            <span><%= item.seller.phone.number %></span>     
			            </div>          
                        <div id="emailVendedor">     
				            <span><%= item.seller.email %></span>
			            </div>
	                </div>
                    <div id="datosEnvio">
		                <h3>Datos Envio </h3>	
		                <div id="nroEnvio">
			                <span>Nro de Envio: <%= item.shipping.id %></span>
		                </div>
                    </div>
                </div>
            </td>   
		</tr>
		<%}%>
	</tbody>
</table>

