# train_test_plot_def
A Python package to train, test, evaluate and plot confusion matrices, feature importance for classification problem using default settings of classifiers

Performs the following operations:
---------------------------------
    
    1. Splits the dataframe into target (dependent variable) and predictors (independent variable)
    2. Scales the values of independent variables (all input values must be numeric)
    3. Splits the dataset into training and testing sets
    4. Loops through the list of classification algorithms to
       a) Train
       b) Test
       c) Evaluate and report performance
       d) Plot Confusion Matrix
       e) Plot feature importance (if it is available for this particular algorithm)
    5. Shows comparative plot of accuracies for all the algorithms
       
    Parameters:
    ----------
       df (pandas dataframe): the whole dataset containing observations for both target and predictor variables
       
       target (string): column name of the target variable in df, e.g. 'Species'
       
       algos (comma separated character string): the first letters of classification algorithms to be applied, e.g. l,r,x
           
           l: LogisticRegression
           k: KNeighborsClassifier
           s: Support Vector Machine 
           d: DecisionTreeClassifier
           r: RandomForestClassifier
           x: XGBClassifier
           
       size (int): size of the plots, typical values are 5, 10, 15
       
    Returns:
    -------
        None
       
    Example:
    -------
       train_test_plot_def(iris_df, 'Species', 'l,r,x', 5)
       where,
            iris_df: input dataframe,  e.g. iris_df = pd.read_csv('Iris.csv')
            'Species': name of the target column in iris_df
            'l,r,x': first letters of (L)ogisticRegression', (R)andomForestClassifier and (X)GBClassifier (case insensitive)
            5: size of the plots generated
            
## Installation

### pip install train_test_plot_def

## Files

#### 1. glass.csv (exapmle dataset)
#### 2. Example_def.ipynb (example usage notebook)
#### 3. Classifier_def.ipynb (complete source code)
