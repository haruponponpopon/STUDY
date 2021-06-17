use strict;
use warnings; #どちらもエラーを検知してくれる

#print文
print "Hello world\n";

#スカラ変数
my $num1 = 1; 
print "$num1\n";
my $num2 = 1.234;
print "$num2\n";
#大きい数は_を使っても良い
my $num3 = 100_000_000;
print "$num3\n";

#四則演算
my $num4 = 1+1;
print "$num4\n";
my $num5 = 1-1;
print "$num5\n";
my $num6 = 1*2;
print "$num6\n";
my $num7 = 1/2; #0.5
print "$num7\n";
#商
my $div = int(3/2); #1
print "$div\n";
#あまり
my $mod = 3%2;
print "$mod\n";

#インクリメントとデクリメント
my $i = 1;
print "$i\n";
$i++;
print "$i\n";
$i--;
print "$i\n";

#文字列
my $str1 = 'abc';
#ダブルクォートの中では\tや\nが使える
my $str2 = "def";
my $str3 = "a\tbc\n";
#変数展開
my $str4 = "$str1 def";
print "$str1 $str2 $str3 $str4\n";

#文字列操作
#結合
my $join1 = 'aaa'.'bbb';
my $join2 = join(',','aaa','bbb','ccc');
#分割
my @record = split(/,/,'aaa,bbb,ccc');
#長さ
my $length = length 'abcdef';
#切り出し
my $substr = substr('abcd',0,2); #ab
#検索
my $result = index('abcd','cd'); #見つかったら位置、見つからなかったら-1
print "$join1 $join2 $length $record[0] $record[1] $record[2] $substr $result\n";

#配列
#配列の宣言
my @array;
#配列への代入
@array = (1,2,3);
#要素の参照
print "$array[0], $array[1]\n";
#要素の代入
$array[0]=5;
$array[1]=6;
print "$array[0], $array[1], $array[2]\n";
#要素の個数
my $array_num = @array;
print "$array_num";
#先頭の要素を取り出す
my $first = shift @array;
print "$first, $array[0]\n";
#先頭に要素を追加
unshift @array, 5;
#末尾の要素を取り出す
my $last = pop @array;
# 末尾に要素を追加
push @array, 9;
print "$array[0], $array[1], $array[2]\n";

#ハッシュ
#ハッシュの宣言と代入
my %hash;
%hash = (a=>1,b=>2);
#要素の参照
print "$hash{a} $hash{b}\n";
#要素の代入
$hash{a} = 5;
$hash{b} = 7;
#キーの取得
my @keys = keys %hash;
print "$keys[0],$keys[1]\n";
#値の取得
my @values = values %hash;
#キーの存在確認
exists $hash{a};
#ハッシュのキーの削除
delete $hash{a};
