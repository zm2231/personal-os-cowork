---
name: data-analysis
description: Analyze datasets, perform statistical tests, generate visualizations, and derive insights
version: 1.0.0
metadata:
  hermes:
    tags: [research, data, analytics]
    related_skills: [hypothesis-testing, experiment-design, citation-manager]
    session_unlock: session-22
    tiers:
      - L1: Guided data analysis with basic statistics
      - L2: Automated statistical testing and visualization
      - L3: Advanced machine learning + predictive modeling
---

# Data Analysis

Analyzes datasets, performs statistical tests, generates visualizations, and derives actionable insights. Supports quantitative research, business analytics, and data-driven decision making.

## When This Skill Activates

- You mention "analyze data", "statistics", or "data visualization"
- You have CSV/Excel files and want insights
- You ask for "statistical significance" or "correlation"
- You need to understand trends or patterns in your data
- You mention "regression", "clustering", or "forecasting"

## Level 1: Guided (Basic Data Analysis and Statistics)

**Available after session 22**

At this level, I help you analyze data step-by-step and perform basic statistical tests.

### What I Can Do

1. **Data Exploration**
   - Load CSV, Excel, JSON datasets
   - Generate summary statistics (mean, median, std dev)
   - Check for missing values and outliers
   - Identify data types and distributions

2. **Descriptive Statistics**
   - Central tendency: mean, median, mode
   - Dispersion: range, variance, standard deviation
   - Distribution: skewness, kurtosis
   - Percentiles and quartiles

3. **Basic Visualizations**
   - Histograms for distributions
   - Scatter plots for relationships
   - Bar charts for comparisons
   - Line charts for trends

4. **Simple Statistical Tests**
   - t-tests (one-sample, two-sample, paired)
   - Chi-square tests
   - Correlation analysis (Pearson, Spearman)
   - ANOVA (one-way, two-way)

### How It Works

**Loading and exploring data:**

```
You: "Analyze this customer data: customers.csv"

Data Analysis: "I'll analyze your customer data.

Dataset Summary:
- Total records: 10,000
- Columns: 15 (age, income, purchases, satisfaction, etc.)
- Missing values: 23 records (0.23%)
- Data types: 8 numeric, 7 categorical

Key Metrics:
- Average age: 34.2 years
- Average income: $52,400
- Total purchases: 15,847
- Average satisfaction: 4.2/5.0

Distributions:
- Age: Normal distribution (μ=34.2, σ=8.5)
- Income: Skewed right (median=$48,000, mean=$52,400)
- Purchases: Poisson-like distribution

What would you like to analyze next?
1. Correlations between variables
2. Customer segments
3. Predictive modeling
4. A/B test analysis
5. Something else"
```

**Correlation analysis:**

```
You: "Find correlations in customer data"

Data Analysis: "Correlation analysis complete:

Strong Correlations (|r| > 0.7):
- Age × Income: r = 0.72 (older = higher income)
- Purchases × Satisfaction: r = 0.78 (satisfied buy more)
- Income × Purchases: r = 0.65 (higher income = more purchases)

Moderate Correlations (0.3 < |r| < 0.7):
- Age × Satisfaction: r = 0.45 (older = more satisfied)
- Income × Satisfaction: r = 0.38 (higher income = more satisfied)

No Significant Correlations (|r| < 0.3):
- Gender × Purchases: r = 0.08 (no relationship)
- Location × Satisfaction: r = 0.12 (no relationship)

Key Insights:
1. Age is the strongest predictor of income
2. Satisfaction drives purchase behavior
3. Income moderately predicts purchases
4. Gender and location don't matter

Next Steps:
1. Segment customers by age and income
2. Focus on improving satisfaction to increase purchases
3. Don't waste time on gender/location targeting"
```

**Statistical testing:**

```
You: "Test if the new email campaign worked"

Data Analysis: "I'll perform a statistical test on your A/B test results.

Test Setup:
- Control group (no email): N=5,000, purchases=1,200 (24%)
- Test group (email): N=5,000, purchases=1,380 (27.6%)
- Difference: +3.6 percentage points

Statistical Test: Two-sample z-test for proportions
Hypotheses:
- H0: p_control = p_test (no difference)
- H1: p_control ≠ p_test (significant difference)

Results:
- z-statistic: 3.42
- p-value: 0.0006
- 95% CI: [+1.5%, +5.7%]

Conclusion:
✅ Statistically significant at p < 0.001
✅ Email campaign increased purchases by 3.6%
✅ Confidence interval excludes zero

Practical Significance:
- 180 additional purchases
- Revenue increase: $18,000 (at $100 per purchase)
- ROI: Positive if email cost < $18,000

Recommendation:
✅ Scale up email campaign to all customers"
```

### Your Analysis Library

Analyses are stored in `personal-os/memory/data-analyses.md`:

```markdown
# Data Analysis: Customer Behavior

## Dataset
- File: customers.csv
- Records: 10,000
- Date: 2024-03-27

## Summary Statistics
- Age: μ=34.2, σ=8.5
- Income: μ=$52,400, median=$48,000
- Purchases: 15,847 total
- Satisfaction: 4.2/5.0

## Key Findings
1. Strong correlation between satisfaction and purchases (r=0.78)
2. Age predicts income (r=0.72)
3. Email campaign increased purchases by 3.6% (p=0.0006)
4. No gender or location effects

## Visualizations
- [age_distribution.png]
- [correlation_heatmap.png]
- [campaign_results.png]
```

### Example Use Cases

**Business Analytics:**
```
You: "Analyze sales data to find trends"

Data Analysis: "Sales trend analysis complete:

Time Series Analysis (Jan-Dec 2024):
- Q1: $120K (baseline)
- Q2: $135K (+12.5%)
- Q3: $128K (-5.2%)
- Q4: $150K (+17.2%)

Seasonal Pattern:
- Peak: December (+25% vs. average)
- Trough: August (-15% vs. average)
- Trend: +10% annual growth

Drivers:
1. Holiday season (December peak)
2. Marketing campaigns (Q2 increase)
3. Summer slowdown (August trough)
4. New product launch (Q4 growth)

Recommendations:
1. Increase marketing in Q3
2. Plan inventory for December
3. Launch new products in Q4
4. Analyze what caused Q2 increase and replicate"
```

**Academic Research:**
```
You: "Analyze my experimental data for the paper"

Data Analysis: "Experimental data analysis ready:

Dataset: 150 participants, 3 conditions
- Control: N=50, M=4.2, SD=0.8
- Treatment A: N=50, M=5.1, SD=0.7
- Treatment B: N=50, M=4.8, SD=0.9

Statistical Tests:

1. One-way ANOVA
   - F(2,147) = 12.34
   - p < 0.001
   - Effect size: η² = 0.14 (medium)

2. Post-hoc Tukey tests
   - Treatment A vs Control: p < 0.001 (significant)
   - Treatment B vs Control: p = 0.023 (significant)
   - Treatment A vs B: p = 0.112 (not significant)

3. Effect sizes (Cohen's d)
   - A vs Control: d = 1.28 (large)
   - B vs Control: d = 0.67 (medium)
   - A vs B: d = 0.35 (small)

Conclusions:
1. Both treatments outperform control
2. Treatment A is most effective
3. No significant difference between A and B

Ready for paper: [generates Figure 1 and Table 2]"
```

### Best Practices

- Always visualize data before analysis
- Check assumptions of statistical tests
- Report both p-values and effect sizes
- Use appropriate tests for your data
- Consider practical significance, not just statistical
- Validate findings with multiple analyses
- Document analysis steps for reproducibility
- Check for outliers and missing data

### Common Mistakes to Avoid

- Assuming correlation = causation
- Using wrong statistical test for data type
- Ignoring effect sizes (only looking at p-values)
- Not checking test assumptions
- P-hacking (testing until you find significance)
- Overfitting to sample data
- Ignoring outliers
- Small sample sizes for complex models

## Level 2: Advanced (Automated Statistical Testing and Visualization)

**Available after session 22**

At this level, I automate statistical workflows and create advanced visualizations.

### Additional Capabilities

1. **Automated Test Selection**
   - Recommend appropriate statistical tests
   - Run multiple tests in parallel
   - Adjust for multiple comparisons (Bonferroni, FDR)
   - Generate test reports

2. **Advanced Visualizations**
   - Heatmaps for correlation matrices
   - Box plots and violin plots for distributions
   - 3D scatter plots for multivariate relationships
   - Interactive dashboards

3. **Time Series Analysis**
   - Trend detection and decomposition
   - Seasonal adjustment
   - Anomaly detection
   - Forecasting with ARIMA/Prophet

### Example: Automated Analysis Pipeline

```
You: "Auto-analyze this dataset and find everything interesting"

Data Analysis: "Running automated analysis pipeline...

Step 1: Data Quality Check ✓
- Missing values: 23 (0.23%) - acceptable
- Outliers: 47 (0.47%) - flagged for review
- Data types: correct

Step 2: Descriptive Statistics ✓
- Generated for all 15 variables
- Identified 5 significant distributions
- [summary_statistics.pdf]

Step 3: Correlation Analysis ✓
- Found 12 significant correlations (|r| > 0.5)
- Strongest: satisfaction × purchases (r=0.78)
- [correlation_matrix.png]

Step 4: Statistical Testing ✓
- Tested 45 variable pairs
- Significant: 28 (62%)
- Adjusted p-values (FDR) reported
- [statistical_tests.csv]

Step 5: Clustering ✓
- Identified 4 customer segments
- K-means: silhouette = 0.72 (good)
- [cluster_analysis.png]

Step 6: Predictive Modeling ✓
- Best model: Random Forest
- R² = 0.84, RMSE = 0.32
- Feature importance: satisfaction (42%), income (28%), age (18%)
- [model_performance.png]

Key Insights:
1. 4 customer segments identified
2. Satisfaction drives 42% of purchase behavior
3. Random Forest predicts purchases with 84% accuracy
4. 12 strong correlations worth exploring

Recommendations:
1. Focus on segment 2 (high-value, low-frequency)
2. Invest in satisfaction improvements
3. Target high-income customers for upselling
4. Test marketing on segment 3 (price-sensitive)

Report: [comprehensive_analysis_report.pdf] (25 pages)"
```

## Level 3: Expert (Advanced Machine Learning and Predictive Modeling)

**Available after session 22**

At this level, I build machine learning models, perform advanced forecasting, and conduct causal inference.

### Additional Capabilities

1. **Machine Learning Models**
   - Classification: Logistic Regression, Random Forest, XGBoost
   - Regression: Linear, Ridge, Lasso, Elastic Net
   - Clustering: K-means, DBSCAN, Hierarchical
   - Dimensionality Reduction: PCA, t-SNE, UMAP

2. **Advanced Techniques**
   - Hyperparameter tuning (Grid Search, Bayesian Optimization)
   - Cross-validation (k-fold, stratified, time-series)
   - Ensemble methods (bagging, boosting, stacking)
   - Feature engineering and selection

3. **Causal Inference**
   - A/B testing design and analysis
   - Propensity score matching
   - Instrumental variables
   - Difference-in-differences

### Example: Predictive Modeling Pipeline

```
You: "Build a churn prediction model"

Data Analysis: "Building churn prediction model...

Phase 1: Feature Engineering ✓
- Created 45 features from 15 base variables
- Selected 20 most important (feature importance > 0.01)
- Feature scaling: StandardScaler
- Handling class imbalance: SMOTE oversampling

Phase 2: Model Selection ✓
- Tested 5 models:
  * Logistic Regression: AUC = 0.78
  * Random Forest: AUC = 0.84 ✓
  * XGBoost: AUC = 0.86 ✓
  * Neural Network: AUC = 0.81
  * SVM: AUC = 0.79

- Best model: XGBoost
- Cross-validation: 5-fold, mean AUC = 0.86 ± 0.02

Phase 3: Hyperparameter Tuning ✓
- Bayesian optimization: 50 iterations
- Best parameters: n_estimators=300, max_depth=7, learning_rate=0.1
- Final AUC: 0.87 (+0.01 improvement)

Phase 4: Model Evaluation ✓
- Test set AUC: 0.87
- Precision: 0.81 (81% of predicted churners actually churn)
- Recall: 0.73 (73% of actual churners predicted)
- F1-score: 0.77
- Calibration: Brier score = 0.12 (well-calibrated)

Phase 5: Feature Importance ✓
Top 5 predictors:
1. Satisfaction score (0.28) - highest impact
2. Customer tenure (0.24) - longer tenure = less churn
3. Support tickets (0.19) - more tickets = more churn
4. Purchase frequency (0.15) - fewer purchases = more churn
5. Age (0.08) - younger customers churn more

Phase 6: Deployment Readiness ✓
- Model size: 4.2 MB (production-ready)
- Inference time: 2.3ms per prediction
- Monitoring metrics: AUC drift, calibration, feature distribution
- Retraining: Every 30 days or when AUC drops >0.02

Business Impact:
- Identify 2,100 customers at high risk of churn (p > 0.7)
- Expected revenue saved: $210K/month (10% of at-risk customers retained)
- ROI: 20x (cost: $10K/month)

Deployment:
✅ Model saved: churn_model_xgb.pkl
✅ API ready: POST /predict_churn
✅ Dashboard created: churn_monitoring.html
✅ Retraining pipeline: auto_retrain.py

Next steps:
1. Deploy to production
2. Set up monitoring alerts
3. Create retention campaigns for at-risk customers"
```

### Integration with Other Research Skills

- **hypothesis-testing**: Design and test hypotheses
- **experiment-design**: Create experimental data collection
- **citation-manager**: Reference analysis methods
- **knowledge-graph**: Store analysis patterns

### Progression

As you use this skill, I learn:
- Your preferred analysis workflows
- Statistical tests you use most
- Visualization styles you like
- How you interpret results
- Reporting formats you need

This knowledge improves my recommendations and analysis speed over time.
