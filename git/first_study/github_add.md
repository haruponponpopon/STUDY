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
# バージョン管理をしないファイルの設定  
パスワードなどの機密情報が載ったファイルやチーム開発に関係ないプログラム実行時に生成されたキャッシュなどがこれに当たる。  
.gitignoreファイルに指定する  
.gitignoreファイルの中身
```
# #から始まる行はコメント  

# 指定したファイルを除外  
index.html
#ルートディレクトリを指定  
/root.html
#ディレクトリ以下を除外  
dir/
# /以外の文字列にマッチ
/*/*.css
```
