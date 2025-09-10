? memories.html ? View (Thymeleaf template)
html
???
?????
<!DOCTYPE html>
<html lang="ar" dir="rtl" xmlns:th="http://www.thymeleaf.org">
<head>
  <meta charset="UTF-8">
  <title>adjmal_lahda</title>
  <style>
    body {
      background-color: #fff0f5;
      font-family: Arial, sans-serif;
      text-align: center;
    }

    header {
      background-color: #ff69b4;
      color: white;
      padding: 20px;
      font-size: 32px;
      animation: fadeIn 2s ease-in-out;
    }

    @keyframes fadeIn {
      0% { opacity: 0; transform: translateY(-20px); }
      100% { opacity: 1; transform: translateY(0); }
    }

    .heart {
      font-size: 40px;
      color: red;
      animation: beat 1.2s infinite;
    }

    @keyframes beat {
      0%, 100% { transform: scale(1); }
      50% { transform: scale(1.3); }
    }

    .names {
      display: flex;
      flex-wrap: wrap;
      justify-content: center;
      margin: 20px 0;
    }

    .box {
      background-color: #ffcce0;
      padding: 10px;
      margin: 8px;
      width: 120px;
      border-radius: 12px;
      box-shadow: 1px 1px 4px #ccc;
      font-weight: bold;
    }

    .comments {
      background-color: #ffe6f0;
      padding: 25px;
    }

    textarea {
      width: 80%;
      height: 100px;
      border-radius: 10px;
      border: 1px solid #ccc;
      padding: 10px;
    }

    button {
      margin-top: 10px;
      padding: 10px 20px;
      background-color: #ff69b4;
      color: white;
      border: none;
      border-radius: 8px;
      cursor: pointer;
    }

    ul {
      list-style: none;
      padding: 0;
    }

    li {
      background-color: #fff;
      margin: 10px auto;
      width: 60%;
      padding: 10px;
      border-radius: 8px;
      box-shadow: 0 0 5px #ccc;
    }
  </style>
</head>
<body>

  <header>? adjmal_lahda ?</header>
  <div class="heart">??</div>

  <div class="names">
    <div class="box" th:each="name : ${names}" th:text="${name}"></div>
  </div>

  <div class="comments">
    <h2>????? ????? ????????</h2>
    <form action="/comment" method="post" th:object="${comment}">
      <textarea th:field="*{message}" placeholder="????? ?????? ???..."></textarea><br>
      <button type="submit">?????</button>
    </form>

    <h3>??????? ???????:</h3>
    <ul>
      <li th:each="c : ${comments}" th:text="${c.message}"></li>
    </ul>
  </div>

</body>
</html>


