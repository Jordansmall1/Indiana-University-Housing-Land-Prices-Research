# U.S. Housing & Land Price Forecasting  
**Undergraduate Econometric Research — Indiana University Indianapolis**

---

## Overview

This project examines whether **U.S. housing prices**, used as a proxy for **land values**, can serve as a benchmark and early indicator for broader macroeconomic conditions.

Economic theory and empirical research emphasize that land values play a central role in speculative cycles, asset bubbles, and financial instability. Because direct land price data are limited, housing prices are used to capture the land component embedded in property markets.

The project combines:
- Econometric modeling  
- Time-series diagnostics  
- Multiple forecasting methodologies  
- Confidence-interval-based projections  

---

## Research Question

**Can housing prices (as a proxy for land values) help explain and predict U.S. macroeconomic conditions?**

## MODEL
LandPrice_t = β₀
+ β₁ · GDP_t
+ β₂ · InterestRate_t
+ β₃ · Income_t
+ β₄ · Inflation_t
+ β₅ · Unemployment_t
+ ε_t

---

## Data

- **Source:** FRED  
- **Time period:** 1982–2024  
- **Dataset:** `data/housing_clean.csv`

### Key Variables
- Median house price (proxy for land value)
- Real GDP
- Real disposable income
- Unemployment rate
- Inflation
- 10-year real interest rate

### Data Preparation
- Parsed dates into time-series format  
- Removed redundant and unnamed columns  
- Adjusted variables for inflation where appropriate  
- Dropped missing observations  
- Sorted observations chronologically  

---

## Exploratory Data Analysis

### Median House Prices Over Time
![Median House Prices](visuals/eda/housing_prices.png)

Housing prices exhibit a strong long-run upward trend with pronounced cyclical behavior. These cycles align with macroeconomic expansions, contractions, and speculative periods.

---

### Interest Rates vs. Housing Prices
![Interest Rates vs Housing Prices](visuals/eda/ir_vs_prices.png)

A clear **negative relationship** exists between real interest rates and housing prices. Higher borrowing costs reduce housing demand and asset valuations, consistent with macroeconomic theory.

---

## Econometric Model

Housing prices are treated as the endogenous variable and explained by key macroeconomic fundamentals.

### Model Specification


### Variable Definitions
- **LandPrice_t:** Median housing price (proxy for land value)
- **GDP_t:** Real GDP
- **InterestRate_t:** 10-year real interest rate
- **Income_t:** Real disposable income
- **Inflation_t:** Inflation rate
- **Unemployment_t:** Unemployment rate
- **ε_t:** Unobserved economic shocks

An initial OLS regression produced a high R², but stationarity concerns motivated a shift toward time-series methods.

---

## Time-Series Diagnostics

### Partial Autocorrelation Function (PACF)
![PACF](visuals/diagnostics/pacf.png)

A strong spike at lag 1 indicates that housing prices depend heavily on their previous value, supporting an autoregressive structure.

---

### Autocorrelation Function (ACF)
![ACF](visuals/diagnostics/acf.png)

Gradual decay across lags suggests strong persistence and motivates ARIMA-type modeling.

---

## Residual Diagnostics
![Residuals](visuals/diagnostics/residuals.png)

Residuals are approximately normally distributed with no visible heteroskedasticity, supporting the validity of the model assumptions.

---

## Forecasting Methods

The following forecasting approaches were evaluated:

- Naive and seasonal naive benchmarks  
- Double exponential smoothing  
- Holt-Winters additive models  
- ARIMA-based forecasting  

Naive models provide baseline comparisons, while smoothing and ARIMA methods better capture trend persistence and uncertainty.

---

## Forecast Results

### ARIMA 24-Month Forecast
![ARIMA Forecast](visuals/forecasts/housing_forecast.png)

---

### 95% Confidence Interval Forecast
![Confidence Interval Forecast](visuals/forecasts/forecast_ci.png)

The forecast shows continued price persistence with widening confidence bands, reflecting increasing uncertainty over time.

---

### Double Exponential Smoothing
![Double Exponential Smoothing](visuals/forecasts/double_exp.png)

---

### Holt-Winters Additive
![Holt-Winters Additive](visuals/forecasts/holt_winters.png)

Log-transformed Holt-Winters models provide smoother and more interpretable long-run trend estimates.

---

## Code & Reproducibility

All analysis and forecasting are fully reproducible in **Stata**:


The script includes:
- Naive forecasts
- Double exponential smoothing
- Holt-Winters additive models
- ARIMA(1,1,1) estimation
- Residual diagnostics

---

## Key Takeaways

- Housing prices capture speculative dynamics not fully reflected in traditional indicators  
- Interest rates and GDP are key drivers of housing price movements  
- Housing (land) prices may act as **early warning signals** for macroeconomic downturns  
- Time-series methods are essential when working with non-stationary macroeconomic data  

---

## Authors

**Jordan Small**  
Alan Zaragoza  
Eric Reingardt  

Indiana University Indianapolis

