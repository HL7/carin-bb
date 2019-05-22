---
title: Using CARIN Blue Button Framework
layout: default
active: Using CARIN Blue Button Framework
---

# How Plans can leverage the CARIN Blue Button Framework
There are two basic options for how Health Plans can use the CARIN Blue Button Framework as an interface between their Systems of Record (SOR) and a Consumer's App.  These are depicted in the diagrams below.

**Option 1: Map directly to FHIR Profiles**
*  Create a direct mapping from the Claims SOR to FHIR Profiles.

**Option 2: Map to FHIR Profiles using Flat File as a bridge**
*  Generate Flat File extracts from the Claims SOR using existing ETL tools and processes.
*  Leverage CARIN Frameworks common mapping from Flat File format to FHIR Profiles.

**Notes**
* Sharing and reuse of direct mappings from some Claims SORs in option 1 may be limited due to license restrictions or varying versions, configurations or hosting implementations.
*  Option 2s bridge mapping introduces additional step & governance.
*  Option 2s bridge mapping may be easier to manage than option 1s when using mature, enterprise grade ETL tools and processes.

![](https://confluence.hl7.org/download/attachments/51225570/Two%20Implementation%20Paths%20to%20Blue%20Button%202.0%20API%20%28FHIR%20Profiles%29.JPG?version=1&modificationDate=1557853757604&api=v2)

![](https://confluence.hl7.org/download/attachments/51225561/CARIN%20Blue%20Button%20Framework%20with%20CPCDS.JPG?version=1&modificationDate=1557853466511&api=v2)