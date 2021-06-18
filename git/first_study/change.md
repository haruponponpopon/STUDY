# 現在の変更を確認  
commit後なら   
```
On branch master  
nothing to commit, working tree clean  
```
と表示されればOK  
stageに、保存されていない(commitしていない)ファイルがあると、`Changes not staged for commit:`と表示される。
```
$git status
```
# 変更差分の確認  
git addする前の変更分  
ワークツリーとステージ
```
$git diff
$git diff <ファイル名>
```
git addした後の変更分(commitしていない)  
ステージとリポジトリ  
```
$git diff --staged
```
# 変更履歴を確認  
```
$git log
```
一行で表示する  
```
$git log --oneline
```
ファイルの変更の差分を表示する  
```
$git log -p ファイル名
```
表示するコミット数を制限する  
```
$git log -n <コミット数>
```
qを押して終了する。
# ファイルの削除を記録  
ファイルごと削除(レポジトリ、ワークツリー両方から削除)   
```
$git rm <ファイル名>
$git rm -r <ディレクトリ名>
```
ファイルを残したい時(レポジトリのみから削除)   
```
$git rm --cached <ファイル名>
```
元に戻す時
```
$git reset HEAD <ファイル名>
$git checkout <ファイル名>
```
# ファイルの移動を記録
ファイル名が変更される(stage上のは変更されるけどレポジトリ上には変更されない)
```
$git mv <旧ファイル><新ファイル>
```
以下のコマンドでも同じ意味
```
$mv <旧ファイル><新ファイル>
$git rm <旧ファイル>
$git add <新ファイル>
```
