# GitHubにpushする  
新規リポジトリを作る  
originというショートカットでurlのリモートリポジトリを登録
```
$git remote add origin https://github.com/user/repo.git
```
リモートリポジトリ(Github)へ送信する 
```
$git push <リモート名><ブランチ名>
$git push origin master
```
-uをつけてpushすると次回以降pushする時に`$git push`だけでpushできる
```
$git push -u origin master
```
