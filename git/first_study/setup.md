# 初期設定(ローカルのターミナルで(どこでもいい))
```
ユーザー名登録  
$git config --global user.name "haruponponpopon"  
email登録  
$git config --global user.email 'メールアドレス@gmail.com'  
VScode登録  
$git config --global core.editor 'code --wait'  
登録されたユーザー名の確認  
$git config user.name  
登録されたメールアドレス確認  
$git config user.email  
登録されたエディター確認  
$git config core.editor  
登録情報を表示
$cat ~/.gitconfig
```
# 新規プロジェクトをgitと連携   
新規プロジェクトのディレクトリ配下に移動  
.gitディレクトリを作る  
Initialized empty Git repository in /Users/~  
と出力されればOK  
``` 
$git init  
```
隠れファイル(.gitとか)まで全部表示するコマンド  
```
$ls -a
```
.gitの中身を見てみる  
```
$ls .git/
```
# 他のgithubレポジトリからcloneする  
https~はgithubの'code'という名前の緑のボタンから
```
$git clone https://github.com/atom/atom.git
```
# ファイル変更時  
### ステージに変更を記録  
どれか一つのコマンドでOK
```
全部  
$git add .

特定のファイル  
$git add ファイル名/ディレクトリ名  
```
### コミット  
どれか一つのコマンドでOK
```
gitのeditorが登録されたエディターで立ち上がる
$git commit  

gitのeditorを立ち上げたくないとき  
$git commit -m "<メッセージ>"  

変更点を見せてくれる  
$git commit -v
```
`$git commit`が実行できないとき  [ここ](https://qiita.com/grca3/items/0771099a6750840721b1)  
`$git commit`の後エディターに
1行目に変更メッセージを書く  
command+sしてcommand+q  
ターミナルに戻ると変更した旨が記載されている  

