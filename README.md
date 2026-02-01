
# U.S. Housing & Land Price Forecasting
**Undergraduate Econometric Research — Indiana University Indianapolis**

## Project Overview
This project studies U.S. housing and land prices as a benchmark for macroeconomic
conditions using econometric modeling and time-series forecasting.

## Econometric Model
Land Price = β₀ + β₁GDP + β₂InterestRate + β₃Income + β₄Inflation + β₅Unemployment + ε

## Correlation Diagnostics
### Partial Autocorrelation
![PACF](visuals/pacf.png)

### Autocorrelation Function
![ACF](visuals/acf.png)

## Residual Diagnostics
![Residuals](visuals/residuals.png)

## Forecast Results
### 95% Confidence Interval Forecast
![Forecast](visuals/forecast_ci.png)

### Double Exponential Smoothing
![Double Exp](visuals/double_exp.png)

### Holt-Winters Additive
![Holt Winters](visuals/holt_winters.png)

## Code
Stata code available in `code/stata/forecasting_models.do`.
