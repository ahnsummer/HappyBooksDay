<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
    .outer{
            margin-top: 50px;
            margin-left: 250px;
            margin-bottom: 20px;
            border: 1px solid white;
            width:800px;
    }
    .listArea{
        border: 1px solid black;
        text-align: center;
        margin-left: 250px;
    }
    .listArea>tbody>tr:hover{
        cursor:pointer;
        background: rgb(249, 219, 122);
        color: white;
    }
    #text1{font-size:x-large; font-weight: bold;}
    #text2{color:rgb(241, 196, 15); font-weight: bold;}
    #btn{
            width: 60px;
            height: 30px;
            font-size: small;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
    #btn:hover{background-color: rgb(249, 219, 122); color:white;}
    .outer2{margin-right: 250px;}
    #btn2{
            border: 1px solid lightgray;
            color: black;
            background-color: lightgray;
            border-radius: 5px;
            padding: 6px;
            }
    #btn2:hover{background-color: rgb(249, 219, 122); color:white;}
    .page{margin-left: 555px; font-size: medium;}
    #top{height: 30px; background-color: rgb(249, 219, 122);}
    #btn3{
            width: 150px;
            height: 30px;
            font-size: small;
            font-weight: bold;
            color: gray;
            border: 1px solid lightgrey;
            background-color: rgb(249, 219, 122);
            border-radius: 4px;
            padding: 5px;
            cursor: pointer;
        }
        #btn3:hover{background-color: rgb(249, 219, 122); color:white;}
        .bottom{
            border: 1px solid grey;
            width: 753px;
            height: 35px;
            padding-top: 5px;
            padding-left: 20px;
            margin-left: 250px;
            }
        #faq{font-size: large;}
        #faq2{width:300px; height: 25px;}
        #faq3{
            border: 1px solid lightgray;
            color: black;
            background-color: rgb(241, 196, 15);
            border-radius: 3px;
            padding: 6px;
            width: 55px;
            }
        #faq3:hover{background-color: rgb(252, 236, 174); color:white;}
        #faq4{
            font-size: 13px;
            font-weight: bold; 
            color: rgb(212, 59, 41);
            padding-left: 30px;
            }
        #faq5{font-size: 13px; color: gray;}
        .faqSearch{
            width: 570px;
            height: 70px;
            background-color: rgb(255, 233, 161);
            padding-left: 185px;
            padding-top: 20px;
            margin-left: 250px;
        }
</style>

</head>
<body>
	<div class="outer">
        <span id="text1">FAQ</span>
        <span>&nbsp;고객님의</span>
        <span id="text2">궁금한 점</span>에 대해 정성을 다해 알려드리겠습니다.<hr>

    </div>
        <!-- 로그인했고, 로그인한 사용자가 admin일 경우 보여지는 div
        <div class="outer2" align="right">
            <button id="btn" onclick="location.href='요청할 url';">글작성</button>
            <br>
        </div>
        --> 
        <div class="faqSearch">
            <form action="" id="faqlForm" method="get">
                <span id="faq">FAQ</span>&nbsp;
                <input id="faq2" type="text" name="faq1" value="검색어 입력">
                <button id="faq3" type="submit">검색</button>
            </form>
            <div>
                <span id="faq4">FAQ 인기검색어</span>&nbsp;
                <span id="faq5">회원 | 배송 | 구매 | 영수증 | 적립금 | 쿠폰</span>
            </div>
        </div>
        <br>
        <table class="listArea">
            <thead>
                <tr id="top">
                    <th width="70">글번호</th>
                    <th width="600">글제목</th>
                    <th width="70">조회수</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>FAQ 제목</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>FAQ 제목</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>FAQ 제목</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>FAQ 제목</td>
                    <td>10</td>
                </tr>
                <tr>
                    <td>5</td>
                    <td>FAQ 제목</td>
                    <td>10</td>
                </tr>  
            </tbody>
        </table>
        <br>
        <div class="page">
            <button id="btn2"><<</button>
            <button id="btn2">1</button>
            <button id="btn2">2</button>
            <button id="btn2">3</button>
            <button id="btn2">>></button>
        </div>
        <br>
        <div class="bottom">
            <span>&nbsp;찾으시는 질문이 없으신가요? 1:1로 문의해주세요.</span>&emsp;
            <button id="btn3">1:1 상담요청하기</button>
        </div>
</body>
</html>