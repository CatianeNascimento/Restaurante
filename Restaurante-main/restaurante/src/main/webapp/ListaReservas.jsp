<%@page import="br.com.restaurante.model.Reserva"%>
<%@page language="java" contentType="text/html; charset-UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%

    ArrayList<Reserva> lista = (ArrayList<Reserva>) request.getAttribute("reservas");
%>
    <!DOCTYPE html>
    <html lang="PT-BR">

     <head>
            <meta charset="utf-8">
            <meta http-equiv="X-UA-Compatible" content="IE=edge">
            <title>Reservas</title>
            <link rel="stylesheet" type="text/css" href="estilos/listReserva.css">
        </head>

         <body>
                <h1>Gerenciamento de Reservas</h1>
                <table id="tabela" class="table">
                    <thead>
                        <tr>
                            <th scope="col">Id</th>
                            <th scope="col">Data</th>
                            <th scope="col">Hora</th>
                            <th scope="col" >Pessoas</th>
                            <th scope="col">Ambiente</th>
                            <th scope="col">Observações</th>
                            <th scope="col">Status</th>
                            <th scope="col">Opções</th>
                        </tr>
                    </thead>
                    <tbody>
                    <%
                        for (int i = 0; i < lista.size(); i++) {
                     %>

                    <tr scope="row">
                    <td id= <%=lista.get(i).getId()%> ><%=lista.get(i).getId()%></td>
                    <td><%=lista.get(i).getData()%>></td>
                    <td><%=lista.get(i).getHora()%></td>
                    <td><%=lista.get(i).getQntPessoas()%></td>
                    <td><%=lista.get(i).getAmbiente()%></td>
                    <td><%=lista.get(i).getObs()%></td>
                    <td>Pendente</td>
                    <td>
                     <button type="button" class="button1">Confirmar</button>
                     <button type="button" class="button2">Cancelar</button>
                     </td>
                    </tr>
                    <% } %>
                    </tbody>
                    </table>
                      </body>
                    </html>