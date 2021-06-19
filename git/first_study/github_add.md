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
# コマンドにエイリアスをつける
毎回commitなどと打つのが面倒な時、別の名前を割り当てることでコマンドを短くする。
configは設定を変えるコマンド。--globalはローカルPC全体を指す。  
gloalをつけないと今いるプロジェクトの中だけの設定変更となる。  
例えばcommitはciになる。
```
$git config --global alias.ci commit
$git config --global alias.st status
$git config --global alias.br branch
$git config --global alias.co checkout
```
