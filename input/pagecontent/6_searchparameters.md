<h3>Search Parameters Required By This Implementation Guide</h3>
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