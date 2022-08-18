Simple mechanics for exchanging information:

The CDS is triggered with a post with a link similar to: <BASEURL\>/<Message\>$predict.

The Message that requests a prediction has 3 resources:
1. MessageHeader
2. CommunicationRequest
3. Parameters
   
The messageHeader has the information regarding the messaging. CommunicationRequest has meta information regarding the request and Parameters has the input of the model.

The Message that responds with a prediction has 3 resources, very similar to the request:
1. MessageHeader
2. Communication
3. Parameters

<div>
{% include system.svg %}
</div>

## Data specification

For this purpose, Parameters was chosen since it would be easier to map. Nevertheless, data can be originated from several methodologies.
 1. Set of Observation that match the parameters
 2. QuestionnaireResponse that maps to the parameters
 3. CSV/DB data that contains the information necessary, i.e. EHR
   