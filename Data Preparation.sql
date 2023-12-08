/* Queries for Data Preparation */

SELECT
  gender,
  IFNULL(age, 0.0) AS age,
  IFNULL(hypertension, 0) AS hypertension,
  IFNULL(heart_disease, 0) AS heart_disease,
  IFNULL(smoking_history, 'Unknown') AS smoking_history,
  IFNULL(bmi, 0.0) AS bmi,
  IFNULL(HbA1c_level, 0.0) AS HbA1c_level,
  IFNULL(blood_glucose_level, 0) AS blood_glucose_level,
  diabetes
FROM
  `group10-404319.Dataset.Kaggle-Table`;