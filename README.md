This project is primarily for a Machine Learning Bootcamp project and is intended to effectively predict a heart attack based on thirteen parameters. The prevalence of annual heart attacks is gradually increasing and is extremely arduous to combat it. The reason for heart attacks are multifactorial with the main factors being high blood pressure, overweight, and smoking, however, not all or combination of factors will always be present. Heart attacks can cause heart muscle damage or death. In this project, I created a Logistic Regression model and a Random Forest Classifier model to inspect which performs better. The Random Forest Classifier model performed better when predicting heart attacks.

Overview:

Heart Disease Mind Map
A visualization of a couple common predictors of heart disease and a brief synopsis of each.

Heart1.csv
The file containing the data of  303 records.

HeartDisease.ipynb
The file and code of the project containing exploratory data analysis performed to better understand the data, feature selection to prepare data for models, and the creation of the two models. There were two models created, with the Random Forest Classifier model performing slightly better following hyperparameter tuning with Randomized Search CV. Finally, the model was saved to a pickle file.

Incoming Patient for Heart Attacks.twbx
Using Tableau Public, a dashboard was crafted for data visualization of certain parameters of the data of the records such as gender ratio, average ages/blood pressure, and certain body physiology measurements between individuals who had a heart attack in comparison to those who did not.

RFC_final.pkl
Pickle file containing the Random Forest Classifier model.
