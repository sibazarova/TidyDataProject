Getting and Cleaning Data -- The Course Project Codebook
========================================================

### PART 1: VARIABLES. 
The course project tidy data set contains the average of each required variable (mean and standard deviation values of the signal measurements) for each physical activity and each study participant. More on the study design and measurements collected, please see Parts 2 and 3 of this document.

1  - "activity" - one of six physical activities during which data were collected:   
        "walking"    
	"walking upstairs"    
	"walking downstairs"    
	"sitting"    
	"standing"    
	"laying"    

2  - "subjectid" - an identification number for each study participant. These numbers were from 1 to 30.

VARIABLES from 3 to 68 are the average values for the mean and standard deviation of the signal measurements.
These signal measurements are described in PART 3 of this document.
                         
3  - "averageOf_tBodyAcc-mean()-X"  
4  - "averageOf_tBodyAcc-mean()-Y"          
5  - "averageOf_tBodyAcc-mean()-Z"  
6  - "averageOf_tBodyAcc-std()-X"  
7  - "averageOf_tBodyAcc-std()-Y"  
8  - "averageOf_tBodyAcc-std()-Z"   
9  - "averageOf_tGravityAcc-mean()-X"    
10 - "averageOf_tGravityAcc-mean()-Y"       
11 - "averageOf_tGravityAcc-mean()-Z"  
12 - "averageOf_tGravityAcc-std()-X"  
13 - "averageOf_tGravityAcc-std()-Y"  
14 - "averageOf_tGravityAcc-std()-Z"  
15 - "averageOf_tBodyAccJerk-mean()-X"  
16 - "averageOf_tBodyAccJerk-mean()-Y"       
17 - "averageOf_tBodyAccJerk-mean()-Z"   
18 - "averageOf_tBodyAccJerk-std()-X"        
19 - "averageOf_tBodyAccJerk-std()-Y"   
20 - "averageOf_tBodyAccJerk-std()-Z"   
21 - "averageOf_tBodyGyro-mean()-X"    
22 - "averageOf_tBodyGyro-mean()-Y"    
23 - "averageOf_tBodyGyro-mean()-Z"    
24 - "averageOf_tBodyGyro-std()-X"           
25 - "averageOf_tBodyGyro-std()-Y"    
26 - "averageOf_tBodyGyro-std()-Z"         
27 - "averageOf_tBodyGyroJerk-mean()-X"   
28 - "averageOf_tBodyGyroJerk-mean()-Y"     
29 - "averageOf_tBodyGyroJerk-mean()-Z"   
30 - "averageOf_tBodyGyroJerk-std()-X"      
31 - "averageOf_tBodyGyroJerk-std()-Y"   
32 - "averageOf_tBodyGyroJerk-std()-Z"      
33 - "averageOf_tBodyAccMag-mean()"   
34 - "averageOf_tBodyAccMag-std()"            
35 - "averageOf_tGravityAccMag-mean()"    
36 - "averageOf_tGravityAccMag-std()"       
37 - "averageOf_tBodyAccJerkMag-mean()"      
38 - "averageOf_tBodyAccJerkMag-std()"      
39 - "averageOf_tBodyGyroMag-mean()"    
40 - "averageOf_tBodyGyroMag-std()"         
41 - "averageOf_tBodyGyroJerkMag-mean()"    
42 - "averageOf_tBodyGyroJerkMag-std()"     
43 - "averageOf_fBodyAcc-mean()-X"    
44 - "averageOf_fBodyAcc-mean()-Y"          
45 - "averageOf_fBodyAcc-mean()-Z"    
46 - "averageOf_fBodyAcc-std()-X"           
47 - "averageOf_fBodyAcc-std()-Y"    
48 - "averageOf_fBodyAcc-std()-Z"           
49 - "averageOf_fBodyAccJerk-mean()-X"    
50 - "averageOf_fBodyAccJerk-mean()-Y"      
51 - "averageOf_fBodyAccJerk-mean()-Z"    
52 - "averageOf_fBodyAccJerk-std()-X"       
53 - "averageOf_fBodyAccJerk-std()-Y"    
54 - "averageOf_fBodyAccJerk-std()-Z"       
55 - "averageOf_fBodyGyro-mean()-X"    
56 - "averageOf_fBodyGyro-mean()-Y"         
57 - "averageOf_fBodyGyro-mean()-Z"    
58 - "averageOf_fBodyGyro-std()-X"          
59 - "averageOf_fBodyGyro-std()-Y"    
60 - "averageOf_fBodyGyro-std()-Z"          
61 - "averageOf_fBodyAccMag-mean()"    
62 - "averageOf_fBodyAccMag-std()"          
63 - "averageOf_fBodyBodyAccJerkMag-mean()"     
64 - "averageOf_fBodyBodyAccJerkMag-std()"  
65 - "averageOf_fBodyBodyGyroMag-mean()"     
66 - "averageOf_fBodyBodyGyroMag-std()"     
67 - "averageOf_fBodyBodyGyroJerkMag-mean()"   
68 - "averageOf_fBodyBodyGyroJerkMag-std()"    


### PART 2. Briefly about the study design (from the Readme.txt file):

Researchers Jorge L. Reyes-Ortiz, Davide Anguita, Alessandro Ghio, Luca Oneto from Università degli Studi di Genova, Genoa, Italy conducted a study on Human Activity Recognition Using Smartphones. 

"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, [they] captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."


### PART 3. DESCRIPTION OF FEATURE VECTORS.
As part of the course project, the tidy data is generated using only extractions of the mean - "mean()" and standard deviation - "std()" of the signal measurements. Information on the feature vectors (from the "features_info.txt" file):

"The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ
tGravityAcc-XYZ
tBodyAccJerk-XYZ
tBodyGyro-XYZ
tBodyGyroJerk-XYZ
tBodyAccMag
tGravityAccMag
tBodyAccJerkMag
tBodyGyroMag
tBodyGyroJerkMag
fBodyAcc-XYZ
fBodyAccJerk-XYZ
fBodyGyro-XYZ
fBodyAccMag
fBodyAccJerkMag
fBodyGyroMag
fBodyGyroJerkMag

The set of variables that were estimated from these signals are: 

mean(): Mean value
std(): Standard deviation
mad(): Median absolute deviation 
max(): Largest value in array
min(): Smallest value in array
sma(): Signal magnitude area
energy(): Energy measure. Sum of the squares divided by the number of values. 
iqr(): Interquartile range 
entropy(): Signal entropy
arCoeff(): Autorregresion coefficients with Burg order equal to 4
correlation(): correlation coefficient between two signals
maxInds(): index of the frequency component with largest magnitude
meanFreq(): Weighted average of the frequency components to obtain a mean frequency
skewness(): skewness of the frequency domain signal 
kurtosis(): kurtosis of the frequency domain signal 
bandsEnergy(): Energy of a frequency interval within the 64 bins of the FFT of each window.
angle(): Angle between to vectors."

To reiterate, the tidy data is generated using only extractions of the mean - "mean()" and standard deviation - "std()" of the signal measurements.
