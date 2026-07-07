source("requirements.R")

# Chi-square tests
chisq_doc_status <- chisq.test(table(df$document_status, df$claim_status))
chisq_provider_blacklist <- chisq.test(table(df$provider_blacklist_flag, df$claim_status))

print(chisq_doc_status)
print(chisq_provider_blacklist)

# Logistic regression
# This model predicts approval using documentation, fraud, risk, and submission delay
model <- glm(
  approval_flag ~ age + fraud_flag + hospital_risk_score +
    doc_complete_flag + claim_submission_timeline_days +
    provider_blacklist_flag,
  data = df,
  family = binomial
)

model_summary <- broom::tidy(model, conf.int = TRUE, exponentiate = TRUE)
print(summary(model))
print(model_summary)

write.csv(model_summary, "~/Downloads/insurance_claims_r_project/outputs/tables/logistic_regression_summary.csv", row.names = FALSE)

# Correlation analysis for numeric variables
num_df <- df %>% select(where(is.numeric))
cor_mat <- cor(num_df, use = "pairwise.complete.obs")

png("~/Downloads/insurance_claims_r_project/outputs/figures/correlation_matrix.png", width = 1200, height = 1000, res = 150)
corrplot::corrplot(cor_mat, method = "circle", typ e = "upper", tl.cex = 0.6)
dev.off()
