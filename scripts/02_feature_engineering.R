source("requirements.R")


# Helper function to convert columns safely
convert_to_factor <- function(data, cols) {
  existing_cols <- intersect(cols, names(data))
  for (col in existing_cols) {
    data[[col]] <- as.factor(data[[col]])
  }
  data
}

# Boolean / logical-like columns in this dataset
logical_cols <- c(
  "is_senior_citizen",
  "ped_waiting_period_served",
  "specific_disease_waiting_period_served",
  "portability_status",
  "sum_insured_enhanced",
  "is_modern_treatment",
  "active_treatment_flag",
  "provider_blacklist_flag",
  "investigation_triggered",
  "disease_sub_limit_applies",
  "disease_sub_limit_capped",
  "zone_mismatch",
  "disclosure_of_material_fact",
  "fraud_indicator",
  "free_look_cancellation"
)

# Categorical columns
cat_cols <- c(
  "gender",
  "vulnerable_category",
  "ped_type",
  "grace_period_status",
  "policy_zone",
  "diagnosis_category",
  "treatment_system",
  "hospital_accreditation",
  "hospitalization_type",
  "hospital_zone",
  "admission_type",
  "bill_structure",
  "pre_auth_status",
  "investigation_outcome",
  "document_submission_mode",
  "document_status",
  "claim_settlement_type",
  "claim_status",
  "rejection_reason"
)

df <- convert_to_factor(df, logical_cols)
df <- convert_to_factor(df, cat_cols)

# Make sure the main outcome is a factor and has a clean order
if ("claim_status" %in% names(df)) {
  df$claim_status <- factor(df$claim_status, levels = c("Rejected", "Approved"))
}

# Feature engineering
df <- df %>%
  mutate(
    claim_loss = claim_amount_inr - settled_amount_inr,
    approval_flag = ifelse(claim_status == "Approved", 1, 0),
    fraud_flag = ifelse(fraud_indicator == TRUE, 1, 0),
    settlement_rate = ifelse(claim_amount_inr > 0,
                             (settled_amount_inr / claim_amount_inr) * 100,
                             NA_real_),
    high_risk_provider = ifelse(provider_blacklist_flag == TRUE | hospital_risk_score >= 70, 1, 0),
    doc_complete_flag = ifelse(document_status == "Complete", 1, 0),
    delay_bucket = cut(
      claim_submission_timeline_days,
      breaks = c(-Inf, 0, 7, 15, 30, Inf),
      labels = c("0 days", "1-7 days", "8-15 days", "16-30 days", "30+ days")
    )
  )

# Save engineered dataset
saveRDS(df, "data/processed/feature_engineered_data.rds")

