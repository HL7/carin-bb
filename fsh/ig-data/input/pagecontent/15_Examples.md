<div xmlns="http://www.w3.org/1999/xhtml" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="http://hl7.org/fhir ../../input-cache/schemas-r5/fhir-single.xsd">


  <h3><a name="Examples"></a>Examples Table</h3>
  <table border="1">
    <thead>
      <tr>
        <td><b>Example</b></td>
        <td><b>ResourceType</b></td>
        <td><b>Profiles</b></td>
      </tr>
    </thead>
    <tbody>
      {% for sd in site.data.structuredefinitions %}
        {% assign path = sd[1].path %}
        {% assign resourceType = sd[1].type %}
        {% for example in site.data.pages[path].examples %}
          <tr>
              <td><a href="{{example.url}}">{{example.title}}</a></td>
              <td><a href="http://hl7.org/fhir/R4/{{resourceType|lower}}.html">{{resourceType}}</a></td>
              <td><a href="{{path}}">{{sd[1].name}}</a></td>
          </tr>
        {% endfor %}
      {% endfor %}
    </tbody>
  </table>
</div>



