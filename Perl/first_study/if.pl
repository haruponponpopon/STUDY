use strict;
use warnings;

#条件分岐
#if文
my $num = 15;
if ($num%15==0){
    print "FizzBuzz!\n";
}elsif ($num%3==0){
    print "Fizz!\n";
}elsif ($num%5==0){
    print "Buzz!\n";
}else{
    print "$num\n";
}
#比較演算子
#数値比較演算子
my $p = 1;
my $q = 3;
#文字列比較演算子
my $s = "abcd";
my $t = "abcc";
#$p==$q    $s eq $t
#$p!=$q    $d ne $t
#$p<$q     $s lt $t
#$p>$q     $s gt $t
#$p<=$q    $s le $t
#$p>=$q    $s ge $t

#while文
my $i = 0;
while ($i < 5){
    #処理
    print "$i\n";
    $i++;
}

#for文
for (my $i = 0; $i < 5; $i++){
    print "$i\n";
}

#foreach文 配列の各要素を処理
my @fields = (1,2,3);
foreach my $field (@fields){
    print "$field\n";
}

#サブルーチン
sub sum{
    my ($num1, $num2) = @_;
    my $total = $num1 + $num2;
    return $total;
}
my $num1 = 3;
my $num2 = 1;
my $sum = sum($num1,$num2);
print "$num1 + $num2 = $sum\n";
