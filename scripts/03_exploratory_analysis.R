source("requirements.R")

# Overall summary statistics
summary_table <- df %>%
  summarise(
    total_claims = n(),
    approval_rate = mean(approval_flag, na.rm = TRUE),
    fraud_rate = mean(fraud_flag, na.rm = TRUE),
    avg_claim_amount = mean(claim_amount_inr, na.rm = TRUE),
    avg_settled_amount = mean(settled_amount_inr, na.rm = TRUE),
    avg_settlement_rate = mean(settlement_rate, na.rm = TRUE)
  )

print(summary_table)

library(scales)

# Count combinations and calculate proportions within each Document_Status group
claim_prop <- df %>%
  count(document_status, claim_status) %>%
  group_by(document_status) %>%
  mutate(
    Proportion = n / sum(n),
    Label = paste0(round(Proportion * 100, 1), "%")
  ) %>%
  ungroup()

# 1) Claim status by document status
p1 <- ggplot(claim_prop, aes(x = document_status, y = Proportion, fill = claim_status)) +
  geom_bar(stat = "identity", width = 0.9) +
  geom_text(
    aes(label = Label),
    position = position_stack(vjust = 0.5),
    color = "white",
    fontface = "bold",
    size = 5
  ) +
  scale_y_continuous(labels = percent_format()) +
  labs(
    title = "Claim Status by Document Status",
    x = "Document Status",
    y = "Proportion",
    fill = "Claim Status"
  ) +
  theme_minimal(base_size = 14)

ggsave("~/Downloads/insurance_claims_r_project/outputs/figures/claim_status_by_document_status.png", p1, width = 8, height = 5, dpi = 300)

# 2) Claim amount distribution
p2 <- ggplot(df, aes(x = claim_amount_inr)) +
  geom_histogram(bins = 40) +
  labs(
    title = "Claim Amount Distribution",
    x = "Claim Amount (INR)",
    y = "Count"
  ) +
  theme_minimal()

ggsave("~/Downloads/insurance_claims_r_project/outputs/figures/claim_amount_distribution.png", p2, width = 8, height = 5, dpi = 300)

# 3) Settlement rate by diagnosis category
p3 <- ggplot(df, aes(x = diagnosis_category, y = settlement_rate)) +
  geom_boxplot() +
  coord_flip() +
  labs(
    title = "Settlement Rate by Diagnosis Category",
    x = "Diagnosis Category",
    y = "Settlement Rate (%)"
  ) +
  theme_minimal()

ggsave("~/Downloads/insurance_claims_r_project/outputs/figures/settlement_rate_by_diagnosis.png", p3, width = 8, height = 6, dpi = 300)

# 4) Fraud rate by hospital accreditation
fraud_by_accreditation <- df %>%
  group_by(hospital_accreditation) %>%
  summarise(
    fraud_rate = mean(fraud_flag, na.rm = TRUE),
    approval_rate = mean(approval_flag, na.rm = TRUE),
    avg_risk = mean(hospital_risk_score, na.rm = TRUE),
    .groups = "drop"
  ) %>%
  arrange(desc(fraud_rate))

print(fraud_by_accreditation)

write.csv(fraud_by_accreditation, "~/Downloads/insurance_claims_r_project/outputs/tables/fraud_by_accreditation.csv", row.names = FALSE)
