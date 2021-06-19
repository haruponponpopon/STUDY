作業が途中でコミットしたくないけど別のブランチで作業しないといけない。そういう時に作業を
# 一時避難する。
```
$git stash
$git stash save
```
stashは「隠す」という意味  
# 避難した作業を確認する  
避難した作業の一覧を表示する
```
$git stash list
```
# 避難した作業を復元しよう 
最新の作業を復元する  
```
$git stash apply
```
ステージの状況を復元する  
```
$git stash apply --index
```
特定の作業を復元する  
```
$git stash apply [スタッシュ名]
$git stash apply apply stash@{1}
```
# 作業を一時非難しよう  
最新の作業を削除する  
```
$git stash drop
```
特定の作業を削除する  
```
$git stash drop [スタッシュ名]
$git stash drop stash@{1}
```
全作業を削除する  
```
$git stash clear
```
