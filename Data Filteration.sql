/* Query for Data Filteration 
 & preparation for Looker Studio
*/

CREATE TABLE group10-404319.Dataset.final_predictions AS
  SELECT
  *,
    CASE
    WHEN predicted_diabetes.scores[OFFSET(0)] > predicted_diabetes.scores[OFFSET(1)]
        THEN predicted_diabetes.classes[OFFSET(0)]
    ELSE predicted_diabetes.classes[OFFSET(1)]
    END AS predicted_diabetes_result

FROM
`group10-404319.Dataset.predictions_2023_11_26T11_36_08_519Z_115`

WHERE predicted_diabetes.scores[OFFSET(0)] BETWEEN 0 AND 1
  AND predicted_diabetes.scores[OFFSET(1)] BETWEEN 0 AND 1;