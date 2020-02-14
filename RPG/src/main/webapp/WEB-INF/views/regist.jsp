<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>勇者の冒険</title>
    <link rel="stylesheet" type="text/css" href="css/regist.css">
    <link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:400,700&amp;subset=japanese" rel="stylesheet">
</head>
<body class="body">
    <div class="errorMsg">
        <p>※そのIDはしようされています</p>
    </div>
    <section>
        <form action="test" id="login">
            <ul class="user__info">
                <li>
                    <p>ID</p>
                    <div class="errorMsg">
                        <p>※入力してください</p>
                    </div>
                    <input type="text" name="" id="">
                </li>
                <li>
                    <p>あんごう</p>
                    <div class="errorMsg">
                        <p>※入力してください</p>
                    </div>
                    <input type="text" name="" id="">
                </li>
                <li>
                    <p>あんごう(かくにん)</p>
                    <div class="errorMsg">
                        <p>※入力してください</p>
                    </div>
                    <input type="text" name="" id="">
                </li>
                <li>
                    <p>なまえ</p>
                    <div class="errorMsg">
                        <p>※入力してください</p>
                    </div>
                    <input type="text" name="" id="">
                </li>
            </ul>
            <ul class="role">
                <p>しょくぎょう</p>
                <li>
                    <label>
                        <input type="radio" name="role" id="role" value="1" checked>
                        <p>せんし</p>
                        <img src="img/axe.png" width="72px" height="72px">
                     </label>
                </li>
                <li>
                    <label>
                        <input type="radio" name="role" id="role" value="2">
                        <p>まほうつかい</p>
                        <img src="img/cane.png" width="72px" height="72px" class="cane">
                    </label>
                </li>
            </ul>
        </form>
        <div class="return">
            <a href="index">
                <img src="img/return.png" alt="#" width="50px" height="50px">
                <p>もどる</p>
            </a>
        </div>
        <div class="confirm">
            <button type="submit" id="login">
                <img src="img/confirm.png" alt="#" width="50px" height="50px">
                <p>きまり</p>
            </button>
        </div>
    </section>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script type="text/javascript" src="js/fadeInOut.js"></script>
</body>
</html>