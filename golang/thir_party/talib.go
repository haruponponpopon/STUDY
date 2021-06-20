package main

import (
	"fmt"

	"github.com/markcheno/go-quote"
	"github.com/markcheno/go-talib"
)

func main() {
	spy, _ := quote.NewQuoteFromYahoo("spy", "2021-03-01", "2021-03-31", quote.Daily, true)
	fmt.Print(spy.CSV())
	rsi2 := talib.Rsi(spy.Close, 2)
	fmt.Println(rsi2)
	mva := talib.Ema(spy.Close, 14)
	fmt.Println(mva)
}
