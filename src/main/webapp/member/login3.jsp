<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<link rel="stylesheet" href="./css/all.css">
<link rel="stylesheet" href="./css/all2.css">
<link rel="stylesheet" href="./css/login.css">
<link rel="icon" href="./images/CompanyLogo.png">
<!-- 인터넷 창 아이콘에 로고 나오게 하기 -->
<style>

        .container1 {
            background-color: rgba(255, 255, 255, 0.9);
            box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            overflow: hidden;
            max-width: 500px;
            width: 100%;
            margin: 20px;
            animation: fadeIn 0.5s ease-in-out;
        }

        .form-header {
            background: linear-gradient(to right, #3498db, #6c5ce7);
            color: #fff;
            padding: 30px;
            text-align: center;
            border-radius: 10px 10px 0 0;
        }

        form1 {
            padding: 30px;
            box-sizing: border-box;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        td {
            padding: 20px;
            border-bottom: 1px solid #ddd;
        }
        
        

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 15px;
            margin: 15px 0;
            box-sizing: border-box;
            border: none;
            border-bottom: 1px solid #ccc;
            background-color: #f9f9f9;
            transition: border-bottom 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
            border-bottom: 2px solid #3498db;
        }

        input[type="submit"] {
            background: linear-gradient(to right, #3498db, #6c5ce7);
            color: #fff;
            border: none;
            padding: 15px 30px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        input[type="submit"]:hover {
            background: linear-gradient(to right, #6c5ce7, #3498db);
        }

        .form-switch {
            text-align: center;
            padding: 20px;
            background-color: #ecf0f1;
            border-radius: 0 0 10px 10px;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body class="nav-expended">
	<!-- ============================== [[ Header  section]] ==============================-->

	<%@ include file="../include/header.jsp"%>

	<!-- ============================== [[ Header  section]] ==============================-->

	<!-- ============================== [[ Sidebar  section]] ==============================-->
	<div class="site-main">
		<div class="container">

			<%@ include file="../include/sidemenu.jsp"%>

			<!-- ============================== [[ Sidebar  section]] ==============================-->

			<!-- ============================== [[ Body  section]] ==============================-->
			<div class="main">

				<!-- 여기서 부터 작성 -->
				<div class="container1">
				<div class="form-header">
            <h2>Login and Registration</h2>
        </div>
					<form1 action="logintest.do" method="post" style="text-align: center;">
            <table>
                <tr>
                    <td><label for="ID"><i class="fas fa-user icon"></i>아이디:</label></td>
                    <td><input type="text" id="ID" name="ID" required></td>
                </tr>
                <tr>
                    <td><label for="PW"><i class="fas fa-lock icon"></i>비밀번호:</label></td>
                    <td><input type="password" id="PW" name="PW" required></td>
                </tr>
            </table>
            <input type="submit" value="로그인"  style="margin: 0 auto;">
        </form1>
        
        <form action="sign.do" method="post" class="form-switch">
            <span style="color: #000;">아직 회원이 아니신가요? <a href="sign.do" style="color: #e74c3c; text-decoration: none; font-weight: bold;">회원가입</a></span>

            <input type="submit" value="회원가입">
        </form>
				</div>
				<script>
        document.getElementById('loginForm').addEventListener('submit', function (e) {
            e.preventDefault();
            var idField = document.getElementById('ID');
            var pwField = document.getElementById('PW');
            var errorMessage = document.getElementById('error-message');

            if (idField.value.trim() === '' || pwField.value.trim() === '') {
                errorMessage.textContent = 'Please fill out all fields.';
                return;
            }

            // Reset error message
            errorMessage.textContent = '';
        });

        // Enable Enter key functionality
        document.addEventListener('keydown', function (e) {
            if (e.key === 'Enter') {
                var idField = document.getElementById('ID');
                var pwField = document.getElementById('PW');
                var errorMessage = document.getElementById('error-message');

                if (idField.value.trim() === '' || pwField.value.trim() === '') {
                    errorMessage.textContent = 'Please fill out all fields.';
                    return;
                }

                // Reset error message
                errorMessage.textContent = '';
            }
        });
    </script>




				<!-- 여기까지 작성 -->

				<!-- ============================== [[ Body  section]] ==============================-->

				<!-- =============================  [[ Footer section ]]  ============================= -->

				<%@ include file="../include/footer.jsp"%>

			</div>
		</div>
	</div>
	<!-- =============================  [[ Footer section ]]  ============================= -->
</body>
</html>