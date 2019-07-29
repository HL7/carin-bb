<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CARINBBExplanationOfBenefit
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit</sch:title>
    <sch:rule context="f:ExplanationOfBenefit">
      <sch:assert test="count(f:subType) &lt;= 0">subType: maximum cardinality of 'subType' is 0</sch:assert>
      <sch:assert test="count(f:enterer) &lt;= 0">enterer: maximum cardinality of 'enterer' is 0</sch:assert>
      <sch:assert test="count(f:priority) &lt;= 0">priority: maximum cardinality of 'priority' is 0</sch:assert>
      <sch:assert test="count(f:fundsReserveRequested) &lt;= 0">fundsReserveRequested: maximum cardinality of 'fundsReserveRequested' is 0</sch:assert>
      <sch:assert test="count(f:fundsReserve) &lt;= 0">fundsReserve: maximum cardinality of 'fundsReserve' is 0</sch:assert>
      <sch:assert test="count(f:prescription) &lt;= 0">prescription: maximum cardinality of 'prescription' is 0</sch:assert>
      <sch:assert test="count(f:originalPrescription) &lt;= 0">originalPrescription: maximum cardinality of 'originalPrescription' is 0</sch:assert>
      <sch:assert test="count(f:referral) &lt;= 0">referral: maximum cardinality of 'referral' is 0</sch:assert>
      <sch:assert test="count(f:claim) &lt;= 0">claim: maximum cardinality of 'claim' is 0</sch:assert>
      <sch:assert test="count(f:claimResponse) &lt;= 0">claimResponse: maximum cardinality of 'claimResponse' is 0</sch:assert>
      <sch:assert test="count(f:disposition) &lt;= 0">disposition: maximum cardinality of 'disposition' is 0</sch:assert>
      <sch:assert test="count(f:preAuthRef) &lt;= 0">preAuthRef: maximum cardinality of 'preAuthRef' is 0</sch:assert>
      <sch:assert test="count(f:preAuthRefPeriod) &lt;= 0">preAuthRefPeriod: maximum cardinality of 'preAuthRefPeriod' is 0</sch:assert>
      <sch:assert test="count(f:precedence) &lt;= 0">precedence: maximum cardinality of 'precedence' is 0</sch:assert>
      <sch:assert test="count(f:accident) &lt;= 0">accident: maximum cardinality of 'accident' is 0</sch:assert>
      <sch:assert test="count(f:addItem) &lt;= 0">addItem: maximum cardinality of 'addItem' is 0</sch:assert>
      <sch:assert test="count(f:adjudication) &gt;= 1">adjudication: minimum cardinality of 'adjudication' is 1</sch:assert>
      <sch:assert test="count(f:adjudication) &lt;= 1">adjudication: maximum cardinality of 'adjudication' is 1</sch:assert>
      <sch:assert test="count(f:total) &gt;= 1">total: minimum cardinality of 'total' is 1</sch:assert>
      <sch:assert test="count(f:formCode) &lt;= 0">formCode: maximum cardinality of 'formCode' is 0</sch:assert>
      <sch:assert test="count(f:form) &lt;= 0">form: maximum cardinality of 'form' is 0</sch:assert>
      <sch:assert test="count(f:benefitPeriod) &lt;= 0">benefitPeriod: maximum cardinality of 'benefitPeriod' is 0</sch:assert>
      <sch:assert test="count(f:benefitBalance) &lt;= 0">benefitBalance: maximum cardinality of 'benefitBalance' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit</sch:title>
    <sch:rule context="f:ExplanationOfBenefit">
      <sch:assert test="not(parent::f:contained and f:contained)">If the resource is contained in another resource, it SHALL NOT contain nested Resources (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:versionId)) and not(exists(f:contained/*/f:meta/f:lastUpdated))">If a resource is contained in another resource, it SHALL NOT have a meta.versionId or a meta.lastUpdated (inherited)</sch:assert>
      <sch:assert test="not(exists(for $contained in f:contained return $contained[not(parent::*/descendant::f:reference/@value=concat('#', $contained/*/id/@value) or descendant::f:reference[@value='#'])]))">If the resource is contained in another resource, it SHALL be referred to from elsewhere in the resource or SHALL refer to the containing resource (inherited)</sch:assert>
      <sch:assert test="exists(f:text/h:div)">A resource should have narrative for robust management (inherited)</sch:assert>
      <sch:assert test="not(exists(f:contained/*/f:meta/f:security))">If a resource is contained in another resource, it SHALL NOT have a security label (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:related</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:related">
      <sch:assert test="count(f:relationship) &gt;= 1">relationship: minimum cardinality of 'relationship' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.related</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:related">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.payee</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:payee">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.careTeam</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:careTeam">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.supportingInfo</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:supportingInfo">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:supportingInfo</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:supportingInfo">
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:code) &gt;= 1">code: minimum cardinality of 'code' is 1</sch:assert>
      <sch:assert test="count(f:timingDate) &gt;= 1">timingDate: minimum cardinality of 'timingDate' is 1</sch:assert>
      <sch:assert test="count(f:timingDate) &lt;= 1">timingDate: maximum cardinality of 'timingDate' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:diagnosis</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:diagnosis">
      <sch:assert test="count(f:type) &gt;= 1">type: minimum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.diagnosis</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:diagnosis">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.procedure</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:procedure">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.insurance</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:insurance">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.accident</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:accident">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:item</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:item">
      <sch:assert test="count(f:revenue) &lt;= 0">revenue: maximum cardinality of 'revenue' is 0</sch:assert>
      <sch:assert test="count(f:programCode) &lt;= 0">programCode: maximum cardinality of 'programCode' is 0</sch:assert>
      <sch:assert test="count(f:factor) &lt;= 0">factor: maximum cardinality of 'factor' is 0</sch:assert>
      <sch:assert test="count(f:udi) &lt;= 0">udi: maximum cardinality of 'udi' is 0</sch:assert>
      <sch:assert test="count(f:detail) &lt;= 0">detail: maximum cardinality of 'detail' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.item</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:item">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.item.adjudication</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:item/f:adjudication">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:item/f:adjudication</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:item/f:adjudication">
      <sch:assert test="count(f:reason) &gt;= 1">reason: minimum cardinality of 'reason' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.item.detail</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:item/f:detail">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.item.detail.subDetail</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:item/f:detail/f:subDetail">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.addItem</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:addItem">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.addItem.detail</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:addItem/f:detail">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.addItem.detail.subDetail</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:addItem/f:detail/f:subDetail">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:ExplanationOfBenefit/f:adjudication</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:adjudication">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:category) &lt;= 1">category: maximum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:reason) &lt;= 1">reason: maximum cardinality of 'reason' is 1</sch:assert>
      <sch:assert test="count(f:amount) &lt;= 1">amount: maximum cardinality of 'amount' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.total</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:total">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.payment</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:payment">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.processNote</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:processNote">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.benefitBalance</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:benefitBalance">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>ExplanationOfBenefit.benefitBalance.financial</sch:title>
    <sch:rule context="f:ExplanationOfBenefit/f:benefitBalance/f:financial">
      <sch:assert test="@value|f:*|h:div">All FHIR elements must have a @value or children (inherited)</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
