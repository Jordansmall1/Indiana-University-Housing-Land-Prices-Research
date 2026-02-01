
tsset date
gen naive = L.median_house_price
tssmooth ma dexp = median_house_price, window(2 1 1)
tssmooth shwinters hw_add = median_house_price, period(4) additive forecast(8)
arima median_house_price, arima(1,1,1)
predict arima_forecast, dynamic(date)
predict resid, residuals
hist resid, normal
