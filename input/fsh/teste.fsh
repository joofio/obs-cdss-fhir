
// Define a local code system
CodeSystem: ProfisaoCS
Id:         prof-cs
Title:     "profissao code system"
Description: "Lymph node terms that could not be found in standard sources such as SNOMED CT."


* #serralheiro
    "serralheiro"
* #medico
    "medico"
* #motorista
    "motorista"




// @Name: Include Entire Code System
// @Description: Value set comprised of an entire code system
ValueSet: ProffisaoVS
Id: ptprof-vs
Title: "Profissao Value Set"
Description: "valores de profissao para PT"
// The "include" in this rule is optional
// http://varnomen.hgvs.org can be replaced with an alias
* include codes from system prof-cs



Extension: Ptprofissao
Description: "Profissao patient"
* value[x] only CodeableConcept
* value[x] from ptprof-vs (extensible)

Profile: PtPatient
Parent: Patient

* active 1..1
* name 1..1
* name ^definition = "apenas um nome pois mais do que um cria confusão"
* name ^short = "apenas um nome"
* birthDate 1..1
* deceased[x] 1..1

* extension contains Ptprofissao named profissao 0..* MS