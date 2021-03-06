<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="java.util.ArrayList, com.kh.notice.model.vo.Question, com.kh.common.model.vo.PageInfo, com.kh.member.model.vo.Member "%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	ArrayList<Question> list = (ArrayList<Question>)request.getAttribute("list");
 	String contextPath = request.getContextPath(); 
 	Member loginUser = (Member)session.getAttribute("loginUser");
 	
 	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
	
%>   
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insert title here</title>
    <style>
        .outer{
            margin-top: 50px;
            margin: auto;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
        }
        #text1{font-size:x-large; font-weight: bold;}
        #text2{color:rgb(241, 196, 15); font-weight: bold;}
        #text3{font-size: large; font-weight: bold;}
        .top{
            margin: auto;
            margin-top: 50px;
        }
        .btn{
            width: 300px;
            height: 30px;
            border: 1px solid gray;
            color: gray;
            background-color: lightgrey;
            border-radius: 8px;
            padding: 5x;
            font-size: medium;
            cursor: pointer;
        }
        .clicked{background-color: rgb(249, 219, 122); color:white;}
        .btnouter{margin-top: 20px;}
        #btn1{
            width: 120px;
            height: 40px;
            font-size: medium;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
        #btn2{
            width: 85px;
            height: 30px;
            font-size: small;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: white;
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
        #btn3{
            border: 1px solid lightgray;
            color: black;
            background-color: lightgray;
            border-radius: 5px;
            padding: 6px;
            }
        #btn1:hover, #btn2:hover, #btn3:hover{
            background-color: rgb(249, 219, 122); 
            color:white;
        }
        .pageButton{font-size: medium;}
        .topinfo{
            width: 800px;
            height: 60px; 
            border: 1px solid gray;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 50px;
        }
        .topinfo li{line-height: 25px;}
        #top{height: 30px; background-color: rgb(249, 219, 122);}
        .listArea{
            text-align: center; 
        }
        .listArea>tbody>tr:hover{
            cursor:pointer;
            background: rgb(249, 219, 122);
            color: white;
        }
        .noQuestion{
            font-size: x-large;
            font-weight: bold;
            border: 2px solid lightgrey;
            border-left: 0;
            border-right: 0;
            padding-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="outer">
        <div class="top">
            <span id="text1">1:1 ??????</span>
            <hr>
            <span>????????? ???????????? ??????????????? ???????????? ?????? ???????????????????????????</span>
            <span id="text2">???????????? ????????????</span>??????<br>
            <span id="text2">????????????</span>??? ????????? ????????? ???????????? ???????????? ?????? ???????????? ????????????.<br><br>
                <div class="btnouter" align="center">
                    <button type="button" class="btn"  onClick="location.href='<%= contextPath %>/enrollForm.q';">1:1 ????????????</button>
    
                </div><hr>
                

            
            <div class="topinfo">
                <span id="text3">&emsp;1:1?????? ??????</span><hr>
                <ul>
                    <li>??????????????? ???????????? ??????????????? ???????????? ???????????? SMS??? ????????? ????????? ????????????.</li>
                    <li>??? ?????? ???????????? ?????????????????? ???????????? ????????????????????? ?????? ????????????????????? ?????????????????? ????????????.</li>
                </ul>
            </div><br>
        </div>
        <br>
        
        <div class="dateSearch">&nbsp;

            <button id="btn2">1 ??????</button>
            <button id="btn2">3 ??????</button>
            <button id="btn2">6 ??????</button>&emsp;&emsp;
            
            <button id="btn2">??????</button>
        </div><br>
     
        <table class="listArea">
            <thead>
                <tr id="top">
                    <th width="100">????????????</th>
                    <th width="370">?????? ??????</th>
                    <th width="100">??????</th>
                    <th width="100">????????????</th>
                    <th width="130">????????????</th>
                </tr>
            </thead>
            <tbody>
                 <% if(list.isEmpty()){ %>
             	<tr>
             		<td colspan="5">???????????? ????????? ????????????. </td>
             	</tr>
            <%} else { %>
            	<% for(Question q:list) { %>
	                <tr>
	                    <td><%= q.getqDate() %></td>
	                    <td><%= q.getqTitle() %></td>
	                    <td><%= q.getqField() %></td>
	                    <td><%= q.getqAnswerYn() %></td>
	                    <td><%= q.getoR_NO_Q() %></td>
	                </tr>
	            <%} %>
             <%} %>
            </tbody>
        </table>
        -

        <!-- ???????????? ?????? ??? ???????????? ??????
        <div class="noQuestion" align="center"><br><br>
            <img src="resources/image/noquestion.png"><br>
            <span>1:1 ?????? ????????? ????????????.</span><br><br><br>
        </div>
        <br>
         -->
        <div align="center" class="pagingArea">

			<% if(currentPage != 1) { %>
            	<button onclick="location.href='<%=contextPath%>/list.q?currentPage=<%=currentPage-1%>';">??????</button>
			<% } %>
			
			<% for(int p=startPage; p<=endPage; p++) { %>
				
				<% if(currentPage == p){ %>
            		<button disabled><%= p %></button>
            	<% }else{ %>
            		<button onclick="location.href='<%=contextPath%>/list.q?currentPage=<%= p %>';"><%= p %></button>
            	<% } %>
            	
			<% } %>
			
			<% if(currentPage != maxPage){ %>
            	<button onclick="location.href='<%=contextPath%>/list.q?currentPage=<%=currentPage+1%>';">??????</button>
			<% } %>
			
        </div>
            
        </div><br>
        
        <script>
            var btn = document.getElementsByClassName("btn");
        
                function handleClick(event) {
                console.log(event.target);
                
                console.log(event.target.classList);
        
                if (event.target.classList[1] === "clicked") {
                    event.target.classList.remove("clicked");
                } else {
                    for (var i = 0; i < btn.length; i++) {
                    btn[i].classList.remove("clicked");
                    }
        
                    event.target.classList.add("clicked");
                  }
                }
        
                function init() {
                    for (var i = 0; i < btn.length; i++) {
                        btn[i].addEventListener("click", handleClick);
                    }
                }
                init();
        </script>
       
    </div>
</body>
</html>
