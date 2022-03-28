
// Define a local code system
CodeSystem: MedicineClassificationCS
Id:         type-med-class-cs
Title: "Types of Medicine Classification Value Set"
Description: "Values for classificating medicines"
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/medicineClassification
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #IND  
    "Indication"
    ""
* #ASSOCCOND  
    "Associated Condition"
    ""
* #MECHAACTION
   "Mechanism of Action"
    ""

// Define a local code system
CodeSystem: RelatedMedicationKnowledgeCS
Id:         rel-med-cs
Title: ""
Description: ""
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/relMedCS
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #SUBOF  
    "Substance from"
    "Substance from"
* #MEDOF  
    "Is a Medicine of"
    "Is a Medicine of"
* #PACKOF
    "Is a Packaged Form of"
    "Is a Packaged Form of"
* #PHARMOF
    "Is a Pharmaceutical product of"
    "Is a Pharmaceutical product of"

* #VIRTUALPACKOF
    "Is a Virtual Package Form of"
    "Is a Virtual Package Form of"

* #VPHARMOF
    "Is a Virtual Package Form of"
    "Is a Virtual Package Form of"

* #HASG
    "Is a from a virtual pharmaceutical product group"
    "Is a from a virtual pharmaceutical product group"



// Define a local code system
CodeSystem: DrugCharacteristicCS
Id:         drug-char-cs
Title: "Drug charachteristisc Code System"
Description: "Codes for drugCharacteristic"
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
* ^url =  http://terminology.hl7.org/CodeSystem/productType
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #DT  
    "Drug Type"
    "Drug Type"
* #DOM
    "Domain of drug"
    "Domain of drug"
* #VER
    "Version"
    "Version"
* #CT
    "ContraIndication"
    "ContraIndication"
* #MA
    "marketing Authorization"
    "marketing Authorization"
* #MAH
    "marketing Authorization Holder"
    "marketing Authorization Holder"
* #MAS
    "marketing Authorization Status"
    "marketing Authorization Status"

* #TRIAL
    "Clinical Trial"
    "Clinical Trial"
* #BATCH
    "Batch Number"
    "Batch Number"


// Define a local code system
CodeSystem: MedicineCodeSystem
Id:         medics
Title: "Drug Code System"
Description: "Codes for medicine level"
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
// Spacing layout over three lines per term is optional, for clarity
* ^url = "http://hl7.org/fhir/us/example/CodeSystem/mediCS"
// The definition (second text string) is optional
* #SUBST  
    "Substance"
    "Substance"
* #PHARMPROD
    "pharmaceutical product"
* #MEDPROD
    "Medicinal Product"
* #PACKMEDPROD
    "Packaged Medicinal Product"


 

// Define a local code system
CodeSystem: BeMedicineCodeSystem
Id:         beMedCS
Title: "Drug Code System"
Description: "Codes for belgian medicine level "
// You can choose any url, or use the default, but in this case we want the URL to be in the HL7 namespace
// Spacing layout over three lines per term is optional, for clarity
// The definition (second text string) is optional
* #VMPP
    "Virtual Medicinal Packaged Product"
* #VMP
    "Virtual Medicinal Product"
* #VMPG
    "Virtual Medicinal Product Group"

Alias: medCS = http://hl7.org/fhir/us/example/CodeSystem/mediCS


ValueSet: GranularityVS
Id: granularity-vs
Title: "Granularity Value Set"
Description: "Indicates the granularity of product"
* medCS#SUBST  "Substance"
* medCS#PHARMPROD "Pharmaceutical Product"
* medCS#MEDPROD  "Medicinal Product"
* medCS#PACKMEDPROD "Packaged Medicinal Product"


ValueSet: BeGranularityVS
Id: be-granularity-vs
Title: "Be Granularity Value Set"
Description: "Indicates the granularity of product for belgium"
* medCS#SUBST  "Substance"
* medCS#PHARMPROD "Pharmaceutical Product"
* medCS#MEDPROD  "Medicinal Product"
* medCS#PACKMEDPROD "Packaged Medicinal Product"
* beMedCS#VMPG "VMP Group"



// Define a local code system
CodeSystem: BeRoleIngredinentCS
Id:         be-rolemed-cs
Title: "Role Code System"
Description: "Codes for role in ingredient level "

* #AP
    "Active Principle"
* #NAP
    "Non-Active"
* #EXP
    "Excipient"


Alias: roleCS = http://hl7.org/fhir/us/example/CodeSystem/be-rolemed-cs


ValueSet: BeRoleMedicationVS
Id: be-role-medication-vs
Title: "Ingredient role Value Set"
Description: "Indicates the role that an ingredient takes into a product"
* include codes from system BeRoleIngredinentCS

Alias: rolevs = http://hl7.org/fhir/us/example/ValueSet/be-role-medication-vs


// Define a local code system
CodeSystem: BeIngredientCS
Id:         beingredient-cs
Title: "Ingredient Code System"
Description: "Codes for ingredient"

* #000001 
    "Paracetamol"

* #000002 
    "Insuline lispro"

* #000003 
    "Tramadol"

* #000004 
    "Rosuvastatin"   

Alias: ingredientCS = http://hl7.org/fhir/us/example/CodeSystem/beingredient-cs


ValueSet: BeMedicationVS
Id: medication-vs
Title: "Ingredient  Value Set"
Description: "Indicates the ingredient inside a product"
* include codes from system BeIngredientCS

Alias: ingredientVS = http://hl7.org/fhir/us/example/ValueSet/medication-vs


// Define a local code system
CodeSystem: BeMACS
Id:         be-marketingauthorization-cs
Title: "Marketing Authorization Code System"
Description: "Codes for Marketing Authorization"

* #000001 
    "ABCD0123"
* #000002
    "XDFG9876"  

Alias: MACS = http://hl7.org/fhir/us/example/CodeSystem/be-marketingauthorization-cs


ValueSet: BeMAVS
Id: be-marketingauthorization-vs
Title: "Marketing Authorization Value Set"
Description: "Indicates the Marketing Authorization for a product"
* include codes from system be-marketingauthorization-cs

Alias: MAVS = http://hl7.org/fhir/us/example/ValueSet/be-marketingauthorization-vs


// Define a local code system
CodeSystem: BeMAHolderCS
Id:         be-marketingauthorization-holder-cs
Title: "Marketing Authorization Holder Code System"
Description: "Codes for Marketing Authorization Holder"

* #000001 
    "AstraZeneca"


Alias: MAHCS = http://hl7.org/fhir/us/example/CodeSystem/be-marketingauthorization-holder-cs


ValueSet: BeMAHolderVS
Id: be-marketingauthorization-holder-vs
Title: "Marketing Authorization Holder Value Set"
Description: "Indicates the Marketing Authorization Holder of a product"
* include codes from system be-marketingauthorization-holder-cs

Alias: MAHVS = http://hl7.org/fhir/us/example/ValueSet/be-marketingauthorization-holder-vs

