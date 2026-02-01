
# U.S. Housing & Land Price Forecasting

**Undergraduate Econometric Research — Indiana University Indianapolis**

This project examines U.S. housing and land prices as a macroeconomic benchmark.
It combines econometric modeling, time-series diagnostics, and forecasting
methods to evaluate price dynamics and predict future movements.

---

## Project Materials

- Full presentation (theory, diagnostics, forecasting):
  - See `/slides/` for the complete slide deck
- Cleaned dataset:
  - `data/housing_clean.csv`

---

## Econometric Model

Land and housing prices are modeled as a function of key macroeconomic variables:

Priceₜ = β₀ + β₁GDPₜ + β₂InterestRateₜ + β₃Incomeₜ + β₄Inflationₜ + β₅Unemploymentₜ + εₜ

The model includes one endogenous variable (price) and multiple exogenous drivers,
with an error term capturing unobserved shocks.

---

## Time-Series Diagnostics

Autocorrelation and partial autocorrelation analysis indicates strong persistence
at lag 1, supporting autoregressive specifications such as AR(1) and ARIMA(1,1,1).

Residual diagnostics confirm approximately normal residuals and support the
assumptions required for valid forecasting.

Detailed diagnostics and plots are provided in the presentation slides.

---

## Forecasting Methods

The following forecasting approaches are evaluated:

- Naive and seasonal naive benchmarks
- Double exponential smoothing with centered moving averages
- Holt-Winters additive models (levels and log-transformed)
- ARIMA-based forecasts with confidence intervals

---

## Code & Reproducibility

- **Stata**:
  - Forecasting models and diagnostics: `code/stata/forecasting_models.do`
- **Python**:
  - ARIMA visualization and forecasting (optional extension)

All analysis steps are reproducible using the provided data and scripts.

---

## Authors

Jordan Small  
Alan Zaragoza  
Eric Reingardt

Indiana University Indianapolis
