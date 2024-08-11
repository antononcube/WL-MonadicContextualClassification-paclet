(* ::Package:: *)

(* ::Section:: *)
(*Package Header*)



(**************************************************************)
(* Package definition                                         *)
(**************************************************************)

BeginPackage["AntonAntonov`MonadicContextualClassification`"];

$ClConFailure::usage = "Failure symbol for the monad ClCon.";

ClConSplitData::usage = "ClConSplitData[fr_?NumberQ] splits the pipeline value into training and test parts. ";

ClConRecoverData::usage = "ClConRecoverData joins split data from context or the current pipeline value into the pipeline value. \
The Association values of \"trainingData\", \"testData\", \"validationData\" are combined/joined into one.";

ClConMakeClassifier::usage = "ClConMakeClassifier[methodSpec_?MethodSpecQ] makes a classifier with the specified method \
Using Association values of \"trainingData\", \"testData\", \"validationData\". \
The obtained classifier object is put as the result pipeline value; also in the context under the key \"classifier\". \
The Association values of \"trainingData\", \"testData\", \"validationData\" are put in the context too, if taken from \
the current pipeline value. ";

ClConTrainClassifier::usage = "Synonym of ClConMakeClassifier.";

ClConClassifierMeasurements::usage = "ClConClassifierMeasurements[measures : (_String | {_String ..})] \
computes the specified measurements for the classifier in the context. (Does not modify the context.)";

ClConClassifierMeasurementsByThreshold::usage = "ClConClassifierMeasurementsByThreshold[measures : (_String | {_String ..}), clLbl->th_?NumberQ] \
computes the specified measurements for the classifier in the context \
using the threshold th for the specified class label clLbl. \
(Does not modify the context.)";

ClConAccuracyByVariableShuffling::usage = "ClConAccuracyByVariableShuffling[opts : OptionsPattern[]] computes \
the variable importance. (Does not modify the context.)";

ClConSummarizeData::usage = "Summarizes the data in long form. Does not modify the context. \
Echoes the result with the default option values.";

ClConEchoDataSummary::usage = "Echoes results of data summarization.";

ClConSummarizeDataLongForm::usage = "Summarizes the data in long form. Does not modify the context. \
Does not echo the result.";

ClConToNormalClassifierData::usage = "Non-monadic function. Converts data of different forms into record-label rules. \
I.e. in the form { (rec:{___}->lbl_)..} .";

ClConSetData::usage = "Sets the data argument to be the pipeline value. (Synonym of ClConSetValue.)";

ClConSetTrainingData::usage = "Sets the training data in the context. Does not change the pipeline value.";

ClConSetTestData::usage = "Sets the test data in the context. Does not change the pipeline value.";

ClConSetValidationData::usage = "Sets the validation data in the context. Does not change the pipeline value.";

ClConSetClassifier::usage = "Sets the classifier in the context. Does not change the pipeline value.";

ClConSetVariableNames::usage = "Sets the variable names in the context. Does not change the pipeline value.";

ClConTakeTrainingData::usage = "Takes the training data in the context.";

ClConTakeTestData::usage = "Takes the test data in the context.";

ClConTakeValidationData::usage = "Takes the validation data in the context.";

ClConTakeData::usage = "Recovers the data and gives it as a non-monadic value.";

ClConTakeClassifier::usage = "Gives the classifier as non-monadic value.";

ClConTakeROCData::usage = "Gives the ROC data as non-monadic value.";

ClConTakeVariableNames::usage = "Finds the variable names and returns them as a non-monadic value.";

ClConGetVariableNames::usage = "Finds the variable names and puts them as the pipeline value. Does not modify the context.";

ClConEchoVariableNames::usage = "Finds and echoes the variable names. Does not modify the context.";

ClConROCData::usage = "Computes the ROC data using the classifier and test data in the context. \
The obtained ROC data is put as the result pipeline value; also in the context under the key \"rocData\".";

ClConROCPlot::usage = "Makes a ROC plot and echoes it. The result pipeline value is the plot.";

ClConROCListLinePlot::usage = "Makes ListLinePlot over specified ROC functions and echoes it. The result pipeline value is the plot.";

ClConSuggestROCThresholds::usage = "Suggest thresholds based on ROC data.";

ClConAssignVariableNames::usage = "Puts a value for \"variableNames\" in the context in correspondence to \"trainingData\" in the context. \
If an empty list is given the variable names are automatically derived.";

ClConOutlierPosition::usage = "Find outlier positions in the data.";

(*ClConFindOutliersPerClassLabel::usage = "Find outlier positions in the data per class label."*)

(*ClConDropOutliersPerClassLabel::usage = "Find and from outliers in the data per class label."*)

ClConReduceDimension::usage = "Applies dimension reduction with SVD. \
(If the non-label parts of the training data and test data can be converted numerical matrices.)";

(*ClConDeleteMissing::usage = "Deletes records with missing data values."*)


PacletInstall["AntonAntonov/ClassifierEnsembles", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/DataReshapers", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/MonadMakers", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/OutlierIdentifiers", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/SSparseMatrix", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/VariableImportanceByClassifiers", AllowVersionUpdate -> False];
PacletInstall["AntonAntonov/ROCFunctions", AllowVersionUpdate -> False];

Begin["`Private`"];


Needs["AntonAntonov`MonadicContextualClassification`ClCon`"];


End[];
EndPackage[];