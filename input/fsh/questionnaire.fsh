RuleSet: Question(context, linkId, text, type, required, repeats)
* {context}item[+].linkId = "{linkId}"
* {context}item[=].text = "{text}"
* {context}item[=].type = #{type}
* {context}item[=].required = {required}
* {context}item[=].repeats = {repeats}


Instance: questionnaire-ipsx
InstanceOf: Questionnaire
Description: "OBS CDS Form"
Title:    "OBS CDS Form"

* identifier[0].system = "http://hl7.org"
* identifier[0].value = "questionnaire-obs-cdss"

* name = "questionnaire--obs-cdss"
* title = "OBS CDS Form"
* status = #active

* insert Question(,meds,Medications,group,true,true)
* item[=]
  * insert Question(,phpid,Pharmaceutical Product Identifier,string,false,false)
  * insert Question(,mpid,Medicinal Product Identifier,string,false,false)
  * insert Question(,pcid,Packaged Product Identifier,string,false,false)
  * insert Question(,other_id,Other Product Identifier,group,false,true)
  * insert Question(item[=].,other_id_type,Identifier Type,choice,false,false)
  * insert Question(item[=].,other_id_value,Identifier,string,false,false)
  
  * insert Question(,ingredient,Ingredient,group,true,true)
  * insert Question(item[=].,ingredient_strength,Strength,quantity,true,false)
  