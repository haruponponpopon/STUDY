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
```
.gitディレクトリを作る  
Initialized empty Git repository in /Users/~  
と出力されればOK  
$git init  
隠れファイル(.gitとか)まで全部表示するコマンド  
$ls -a
.gitの中身を見てみる  
ls .git/  
