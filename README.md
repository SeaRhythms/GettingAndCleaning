
========================================================

**FUNCTION**  
  This utility summarizes the raw data from smartphones by individual and activity. The data is from the Human Activity Recognition Using Smartphones Data Set at the UCI Machine Learning Repository. 

**ABSTRACT**   
  Human Activity Recognition database built from the recordings of 30 subjects performing activities of daily living (ADL) while carrying a waist-mounted smartphone with embedded inertial sensors

**SOURCE OF DATA**  
  http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

**INPUT FILES**  
  1. features: names of the variables monitored
  2. X_train.txt: training data
  3. y_train.txt: activities 
  4. subject_train.txt: subjects that performed the activity 
  5. X_test.txt: testing data 
  6. y_test.txt: activities
  7. subject_train.txt: subjects that performed the activity 
  
  Note Did not use the "Inertial Signals" data because didn't fully understand the data. 
  
**OUTPUT FILE**  
  1.  tidydata.txt: summary means of each variable for each subject for each ativity 
  
**PROGRAM**  
  1. run_analysis.R:   
  2. reads each input file,   
  3. combines the training and test data,  
  4. labels the variables, activities, and subjects   
  5. aggregetes the data   
  6. calulates the means   
  7. writes the tidydata.txt file   

**License**  
For more information about this dataset contact: activityrecognition@smartlab.ws

Use of this dataset in publications must be acknowledged by referencing the following publication [1] 

[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.

Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.



