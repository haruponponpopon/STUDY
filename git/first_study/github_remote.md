# リモートの状態を確認する。  
```
$gir remote
```
対応するURLを表示 
```
$git remote -v
```
# リモートリポジトリを追加する。  
リモートリポジトリを複数登録できる。  
<リモート名>は任意の名称を指定できる。  
```
$git remote add <リモート名> <リモートURL>
```
複数のリモートリポジトリを登録すると、`$git remote`を実行すると複数のリモート名が表示される。
# リモートから情報を取得する(フェッチ)  
リモートリポジトリの情報はワークツリーには入ってこないが、ローカルリポジトリに保存される。
```
$git fetch <リモート名>
$git fetch origin
```
その後
```
$git branch -a
```
とすると今いるブランチとフェッチしたブランチが表示される。  
```
git checkout remotes/origin/master
```
とするとワークツリーの内容がremotes/origin/masterに切り替わる。
再度
```
git checkout master
```
とすると元いたmasterブランチの内容がワークツリーに反映される。

ローカルリポジトリの情報をワークツリーに落としてきたい時
```
$git merge
$git merge origin/master
```
# リモートから情報を取得する(プル)  
フェッチと違いワークツリーにリモートリポジトリの情報を取得するのを一回のコマンドで行う。
```
$git pull <リモート名> <ブランチ名>
$git pull origin master
```
上記コマンドは省略可能
```
$git pull
```
これは下記コマンドと同じこと
```
$git fetch origin master
$git merge origin/master
```
