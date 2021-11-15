### Search Parameters Required By This Implementation Guide
<table class="grid">
<thead>
<tr>
<th>Resource</th>
<th>Parameter</th>
<th>Type</th>
<th>Example</th>
</tr>
</thead>
<tbody>
<tr>
<td>ExplanationOfBenefit</td>
<td><a href="http://hl7.org/fhir/R4/search.html">_id</a></td>
<td>token</td>
<td><code class="highlighter-rouge">GET [base]/ExplanationOfBenefit?_id=[id]</code></td>
</tr>
<tr>
<td>ExplanationOfBenefit</td>
<td><a href="http://hl7.org/fhir/R4/search.html">_lastUpdated</a></td>
<td>date</td>
<td><code class="highlighter-rouge">GET [base]/ExplanationOfBenefit?_lastUpdated=[_lastUpdated]</code></td>
</tr>
  <tr>
<td>ExplanationOfBenefit</td>
<td><a href="SearchParameter-explanationofbenefit-identifier.html">identifier</a></td>
<td>token</td>
<td><code class="highlighter-rouge">GET [base]/ExplanationOfBenefit?identifier=[system]|[code]</code></td>
</tr>
<tr>
<td>ExplanationOfBenefit</td>
<td><a href="SearchParameter-explanationofbenefit-patient.html">patient</a></td>
<td>reference</td>
<td><code class="highlighter-rouge">GET [base]/ExplanationOfBenefit?patient=[patient]</code></td>
</tr>
<tr>
<td>ExplanationOfBenefit</td>
<td><a href="SearchParameter-explanationofbenefit-type.html">type</a></td>
<td>token</td>
<td><code class="highlighter-rouge">GET [base]/ExplanationOfBenefit?type=[system]|[code]</code></td>
</tr>
<tr>
<td>ExplanationOfBenefit</td>
<td><a href="SearchParameter-explanationofbenefit-service-date.html">service-date</a></td>
<td>date</td>
<td><code class="highlighter-rouge">GET [base]/ExplanationOfBenefit?service-date=[service-date]</code></td>
</tr>
<tr>
<td>ExplanationOfBenefit</td>
<td><a href="SearchParameter-explanationofbenefit-service-start-date.html">service-start-date</a></td>
<td>date</td>
<td><code class="highlighter-rouge">GET [base]/ExplanationOfBenefit?service-start-date=[service-start-date]</code></td>
</tr>
</tbody>
</table>

<p>&nbsp;</p>

### _include Support

#### Coverage
A Server SHALL be capable of supporting the following _includes:
Coverage:payor - `GET [base]/Coverage?_include=Coverage:payor`

#### ExplanationOfBenefit
A Server SHALL be capable of supporting the following _includes:
ExplanationOfBenefit:patient - `GET [base]/ExplanationOfBenefit?[parameter=value]&_include=ExplanationOfBenefit:patient`
ExplanationOfBenefit:provider - `GET [base]/ExplanationOfBenefit?[parameter=value]&_include=ExplanationOfBenefit:provider`
ExplanationOfBenefit:care-team - `GET [base]/ExplanationOfBenefit?[parameter=value]&_include=ExplanationOfBenefit:care-team`
ExplanationOfBenefit:coverage - `GET [base]/ExplanationOfBenefit?[parameter=value]&_include=ExplanationOfBenefit:coverage`
ExplanationOfBenefit:insurer - `GET [base]/ExplanationOfBenefit?[parameter=value]&_include=ExplanationOfBenefit:insurer`
ExplanationOfBenefit:* - `GET [base]/ExplanationOfBenefit?[parameter=value]&_include=ExplanationOfBenefit:*`

Note: `_include=ExplanationOfBenefit:*` means, at minimum, the resources that are included as reference type search parameters for the ExplanationOfBenefit resource on the server. Servers claiming compliance to this guide will, at minimum, support the include of `patient`, `provider`, `care-team`, `coverage`, and `insurer`, and will support returning all of them in support `ExplanationOfBenefit:*`. This guide does not require all of these as search parameters, but are defined as part of the _include requirement. For example, the insurer search parameter is not required because in the context of the use case, it is anticipated there will ever be one insurer. It however must be returned in the `_include=ExplanationOfBenefit:*` results. The means in which this is done (including defining all of the _include as search parameters) is not defined by this guide.