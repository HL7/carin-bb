---
title: Claim Line
layout: default
active: Claim Line
---

<style>
th {
  background-color:rgb(104,125,161) ;
  color: white;
}
tr:nth-child(even) {background-color:rgb(235,236,240);}	
tr:nth-child(odd) {background-color:rgb(212,215,224);}
</style>
<table border="1">
	<thead>
		<tr>
			<th>  </th>
			<th> </th>
			<th>Line Service Details  </th>
			<th></th>
		</tr>
	</thead>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> CMS Medicare BB2.0 Element </th>
			<th>Notes [HCCI Data Element]</th>
		</tr>
	</thead>
	
	        <tbody>

        <tr>
			<td>1</td>
			<td>Service (from) date
</td>
			<td>LINE_1ST_EXPNS_DT</td>
			<td>Dispense/fill date (Rx). [FST_DT, FILL_DT]
</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Line number
</td>
			<td>LINE_NUM</td>
			<td>[CLMSEQ]</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Service to date
</td>
			<td>LINE_LAST_EXPNS_DT</td>
			<td>[LST_DT]</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Type of service
</td>
			<td>LINE_CMS_TYPE_SRVC_CD</td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Place of service code
</td>
			<td>LINE_PLACE_OF_SRVC_CD</td>
			<td>[POS]</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Revenue center code
</td>
			<td>REV_CNTR</td>
			<td>The provider-assigned revenue code for each cost center for which a separate charge is billed (type of accommodation or ancillary) [RVNU_CD]
</td>
		</tr>
		<tr>
		<td>7</td>
			<td>Number of units
</td>
			<td>REV_CNTR_UNIT_CNT</td>
			<td>Num of times service or procedure performed [UNITS]
</td>
		</tr>
		<tr>
		<td>8</td>
			<td>Allowed number of units
</td>
			<td></td>
			<td>Maximum allowed number of units
</td>
		</tr>
			<tr>
		<td>9</td>
			<td>National drug code
</td>
			<td>LINE_NDC_CD</td>
			<td>[NDC]</td>
		</tr>
			<tr>
		<td>10</td>
			<td>Compound code
</td>
			<td>CMPND_CD</td>
			<td>Whether or not the dispensed drug was compounded or mixed. [CMPD_IND]
</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Quantity dispensed
</td>
			<td>REV_CNTR_NDC_QTY, QTY_DSPNSD_NUM</td>
			<td>Quantity dispensed for the drug. [QUANTITY]
</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Quantity qualifier code
</td>
			<td>REV_CNTR_NDC_QTY_QLFR_CD</td>
			<td>The unit of measurement for the drug. (gram, ml, etc)
</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Line network indicator</td>
			<td></td>
			<td></td>
		</tr>
		
		
		</tbody>
	
	<thead>
		<tr>
			<th>  </th>
			<th> </th>
			<th>Line Amount Details  </th>
			<th></th>
		</tr>
	</thead>
	<thead>
		<tr>
			<th> # </th>
			<th> CPCDS Element </th>
			<th> CMS Medicare BB2.0 Element </th>
			<th>Notes [HCCI Data Element]</th>
		</tr>
	</thead>
	        <tbody>

        <tr>
			<td>1</td>
			<td>Line non covered charged amount
</td>
			<td>REV_CNTR_NCVRD_CHRG_AMT</td>
			<td>Amount related to a revenue center code for services that are not covered*
</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Line amount paid to member
</td>
			<td>LINE_BENE_PMT_AMT</td>
			<td>Payment (reimbursement) made to the beneficiary related to the line item service on the non-institutional claim* [TOT_MEM_CS]
</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Line patient paid amount
</td>
			<td>REV_CNTR_PTNT_RSPNSBLTY_PMT
</td>
			<td>Amount paid by the beneficiary to the provider for the line item service (outpatient)*
</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Drug cost
</td>
			<td>TOT_RX_CST_AMT</td>
			<td>Price paid for the drug excluding mfr discounts
</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Line payment amount
</td>
			<td>LINE_NCH_PMT_AMT</td>
			<td>Payment made by Payer (after deductible and coinsurance amounts have been paid) for the line item service on the non-institutional claim* [AMT_NET_PAID]
</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Line payment amount to provider
</td>
			<td>LINE_PRVDR_PMT_AMT</td>
			<td>Payment made by Payer to the provider for the line item service on the noninstitutional claim. Additional payments may have been made to the provider - including beneficiary deductible and coinsurance amounts and/or other primary payer amounts.* [CALC_ALLWD]
</td>
		</tr>
		<tr>
		<td>7</td>
			<td>Line patient deductible
</td>
			<td>LINE_BENE_PTB_DDCTBL_AMT</td>
			<td>* [DEDUCT]</td>
		</tr>
		<tr>
		<td>8</td>
			<td>Line primary payer paid amount
</td>
			<td>LINE_BENE_PRMRY_PYR_PD_AMT</td>
			<td>*</td>
		</tr>
			<tr>
		<td>9</td>
			<td>Line coinsurance amount
</td>
			<td>LINE_COINSRNC_AMT</td>
			<td>[COINS]</td>
		</tr>
			<tr>
		<td>10</td>
			<td>Line submitted amount
</td>
			<td>LINE_SBMTD_CHRG_AMT</td>
			<td>Provider submitted charges for the line item service on the non-institutional claim* [CHARGE]
</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Line allowed amount
</td>
			<td>LINE_ALOWD_CHRG_AMT</td>
			<td>Allowed charges for the line item service on the noninstitutional claim. This charge is used to compute pay to providers or reimbursement to beneficiaries. The amount includes both the line-item Payer and beneficiary-paid amounts (i.e. deductible and coinsurance)* [CALC_ALLWD]
</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Line member liability
</td>
			<td></td>
			<td>E.g. Non-contracted provider*
</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Line copay amount
</td>
			<td></td>
			<td>[COPAY]</td>
		</tr>
		<tr>
			<td>14</td>
			<td>Line discount
</td>
			<td></td>
			<td>*</td>
		</tr>
		
		
		</tbody>
		</table>