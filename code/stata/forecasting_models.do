
****************************************************
* Housing & Land Price Forecasting
* Source: "Land Prices as a Benchmark for the U.S. Economy"
****************************************************

tsset date

* --- Naive Forecast ---
gen naive_forecast = L.median_house_price

* --- Double Exponential Smoothing (Centered MA) ---
tssmooth ma dexp2Mhp = median_house_price, window(2 1 1)

* --- Holt-Winters Additive ---
tssmooth shwinters hw_add = median_house_price, period(4) additive forecast(8)

* --- ARIMA Model ---
arima median_house_price, arima(1,1,1)
predict arima_forecast, dynamic(date)

* --- Residual Diagnostics ---
predict resid, residuals
hist resid, normal title("Residual Distribution")
