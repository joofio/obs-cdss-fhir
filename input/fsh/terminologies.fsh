// @Name: Local Code Systems

// Define a local code system
CodeSystem: MlTypesCS
Id:         ml-type-cs
Title:     "Machine Learning Models code system"
Description: "Machine Learning Models code system"

* #DT
    "Decision Trees"
    "Decision Trees"
* #RF
    "Random Forests"
    "Random Forests"
* #XGBOOST
    "Extreme Gradient Boosting"
    "Extreme Gradient Boosting"
* #LGBM
    "Light Gradient Boosting"
    "Light Gradient Boosting"
* #BAYES
    "Bayesian"
    "Bayesian"
// truncated (you get the idea)


ValueSet: MlTypesVS
Id:         ml-type-vs
Title:     "Machine Learning Models value set"
Description: "Machine Learning Models value set"
* include codes from system ml-type-cs
