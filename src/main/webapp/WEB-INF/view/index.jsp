<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>演習１</title>
</head>
<body>
	<h2>演習01</h2>
	<h5>
		条件<br>サーブレットでRestAPI(json形式)の作成<br>画面側からJSでRestAPIを呼び出し<br>
		<br> 実装したい機能<br>Hello World表示
	</h5>

	<div id="result"></div>

	<input type="button" onclick="fetchStart()" value="fetch()メソッド">

	<!-- JavaScriptは画面の表示のタイミングを考えて、<body>の一番最後に記述する -->
	<script>
	function fetchStart() {
        /* fetch()メソッドを使用して、サーブレットからJSONを取得
        非同期処理が成功した場合はthen、失敗した場合はcatchを実行する */ 
        fetch("MyServlet")
            .then(response => response.json())	// 『response』は仮置き場 前の段の結果に仮の名前を付けている
                                              	// 受け取ったjsonﾃﾞｰﾀを(.jsの)ｵﾌﾞｼﾞｪｸﾄに変換
             .then(json => {					// 仮置き場『json』は 前の段の結果に仮の名前を付けている
                /* JSONを画面に表示 */
                /* document.getElementById("result").textContent = "Name: " + json.name ←改行されない */
                document.getElementById("result").innerHTML =
				/* "Name: " + json.name + 
				"<br>Age: " + json.age + 
				"<br>json: " + json + 
				"<br>object: " + json.object +  */
				"<br>greeting: " + json.greeting;
                console.log(json); 
            })
            .catch(error => {
            /* console.error()は、コンソールにエラーメッセージを出力するためのメソッド
            第1引数は、文字列'An error occurred:'である。
            第2引数は、errorという変数です。変数には、fetch()メソッドの呼び出し中に発生したエラーが含まれる。 */
                console.error('An error occurred:', error);
            });
	}
            
    </script>
</body>
</html>