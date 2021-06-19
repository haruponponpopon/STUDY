# リベースとは  
変更を統合する際に、履歴をきれいに整えるために使うのがリベース  
```
$git rebase <ブランチ名>
```
ブランチの基点となるコミットを別のコミットに移動する  
# リベースではしてはいけないこと  
githubにpushしたcommitをリベースしない  
# リベース or マージ  
## マージ
コンフリクトの解決が比較的簡単
マージコミットがたくさんあると履歴か複雑化する 
作業の履歴を残しておきたい時!  
プッシュした後はマージ  
## リベース  
履歴をきれいに保てる  
コンフリクトの解決が若干面倒  
作業の履歴をきれいに残しておきたい  
## プルの設定 
プルのマージ型  
マージコミットが残る
```
$git pull <リモート名> <ブランチ名>
$git pull origin master  
```
プルのリベース型  
マージコミットが残らないからGithubの内容を取得したいだけの時は--rebaseを使う  
```
$git pull --rebase <リモート名> <ブランチ名>  
$git pull --rebase origin master
```
デフォルトでプルをリベース型にする設定方法  
``
$git config --global pull.rebase true
``
masterブランチでgit pullする時だけ   
```
$git config branch.master.rebase true
```
# リベースで変更履歴を整える
あくまでGitHubにPushしていないコミットを整える時  
直前のコミットをやり直す  
```
$git comit --amend
```
複数のコミットをやり直す  
```
$git rebase -i <コミットID>
$git rebase -i HEAD~3
```
```
pick ヘッダー修正    
pick 193054e ファイル追加  
pick 84gha0d README修正  
```
やり直したいcommitをeditにする  
```
edit gh21f6d ヘッダー修正  
pick 193054e ファイル追加  
pick 84gha0d README修正  
```
やり直したら実行する  
```
$git commit --amend
```
次のコミットへ進む(リベース完了)  
```
$git rebase --continue
```
# リベースで変更を整える2   
```
$git rebase -i HEAD~3  
```
履歴は古い順に表示される  
``
pick gh21f6d ヘッダー修正  
pick 193054e ファイル追加  
pick 84gha0d README修正  
```
①84gha0dのコミットを消す  
②193054eを先に適用する  
pick 193054e ファイル追加  
pick gh21f6d ヘッダー修正  
```
コミットをまとめる  
```
$git rebase -i HEAD~3
```
```
pick gh21f6d ヘッダー修正  
pick 193054e ファイル追加  
pick 84gha0d README修正
```
コミットを一つにまとめる  
```
pick gh21f6d ヘッダー修正
squash 193054e ファイル追加  
squash 84gha0d README修正
```
コミットを分割する
pick 193054e ファイル追加    
```
$git rebase -i HEAD~3
```
```
pick gh21f6d ヘッダー修正  
pick 193054e ファイル追加  
pick 84gha0d READMEとindex修正
```
コミットを分割する
```
pick gh21f6d ヘッダー修正  
pick 193054e ファイル追加  
edit 84gha0d READMEとindex修正
```
```
$git reset HEAD^
$git add README
$git commit -m 'README修正'
$git add index.html
$git commit -m 'index.html修正'
$git rebase --continue
```
