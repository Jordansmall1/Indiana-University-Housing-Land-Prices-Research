
tsset date
* Naive
gen naive = L.median_house_price

* Double Exponential Smoothing
tssmooth ma dexp = median_house_price, window(2 1 1)

* Holt-Winters Additive
tssmooth shwinters hw_add = median_house_price, period(4) additive forecast(8)

* ARIMA(1,1,1)
arima median_house_price, arima(1,1,1)
predict arima_f, dynamic(date)

* Residual diagnostics
predict resid, residuals
hist resid, normal
