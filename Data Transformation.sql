/* Data Transformation 
 Assigning binary classification here 
 Categorizing bmi as well */

CREATE OR REPLACE TABLE
  `group10-404319.Dataset.preprocess-table` AS
SELECT
  gender,
  CASE 
    WHEN gender = 'Male' THEN 1 
  ELSE 0 
  END AS is_male,
  smoking_history,
  CASE WHEN smoking_history = 'Current' THEN 1 
    ELSE 0 
  END AS is_current_smoker,
  age,
  hypertension,
  heart_disease,
  bmi,
  CASE
    WHEN bmi < 18.5 THEN 'Underweight'
    WHEN bmi BETWEEN 18.5 AND 24.9 THEN 'Normal'
    WHEN bmi BETWEEN 25 AND 29.9 THEN 'Overweight'
    ELSE 'Obese'
  END AS bmi_category,
  HbA1c_level,
  blood_glucose_level,
  diabetes
FROM
 `group10-404319.Dataset.Kaggle-Table`;

 /* Query for Creating Table After Data Transformation
  Creation of DataforML Table for further processing */
 
CREATE OR REPLACE TABLE `group10-404319.Dataset.DataforML` AS
SELECT
  is_male,
  is_current_smoker,
  age,
  hypertension,
  heart_disease,
  bmi_category,
  HbA1c_level,
  blood_glucose_level,
  diabetes
FROM
  `group10-404319.Dataset.preprocess-table`;