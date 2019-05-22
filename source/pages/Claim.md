---
title: Claim
layout: default
active: Claim
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
			<th> # </th>
			<th> CPCDS Element </th>
			<th> CMS Medicare BB2.0 Element </th>
			<th>Notes [HCCI Data Element]</th>
		</tr>
	</thead>
	<tbody>
		<tr>
			<td>1</td>
			<td>Claim service start date</td>
			<td>CLM_FROM_DT</td>
			<td>[CLM_FST_DT]</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim service end date</td>
			<td>CLM_THRU_DT</td>
			<td>[LST_DT]</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Claim paid date</td>
			<td>PD_DT</td>
			<td>[PAID_DT]</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim received date</td>
			<td>NCH_WKLY_PROC_DT</td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Member admission date</td>
			<td>CLM_ADMSN_DT</td>
			<td>The date corresponding with the onset of services. Inpatient only. [FST_ADMTDT]</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Member discharge date</td>
			<td>NCH_BENE_DSCHRG_DT</td>
			<td>Inpatient only. [LAST_DISCHDT]</td>
		</tr>
		<tr>
		<td>7</td>
			<td>Patient account number</td>
			<td></td>
			<td>Provider submitted information that can be included on the claim</td>
		</tr>
		<tr>
		<td>8</td>
			<td>Medical record number</td>
			<td></td>
			<td></td>
		</tr>
			<tr>
		<td>9</td>
			<td>Claim unique identifier</td>
			<td>CLM_ID</td>
			<td>[Z_CLMID]</td>
		</tr>
			<tr>
		<td>10</td>
			<td>Claim adjusted from identifier</td>
			<td></td>
			<td>TBD: merged claims</td>
		</tr>
		<tr>
		<td>11</td>
			<td>Claim adjusted to identifier</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
		<td>12</td>
			<td>Claim diagnosis related group</td>
			<td>CLM_DRG_CD</td>
			<td>Inpatient only [DRG]</td>
		</tr>
		<tr>
			<td>13</td>
			<td>Claim inpatient source admission code</td>
			<td>CLM_SRC_IP_ADMSN_CD</td>
			<td> Inpatient only. [ADMIT_TYPE]</td>
		</tr>
		<tr>
			<td>14</td>
			<td>Claim inpatient admission type code</td>
			<td>CLM_IP_ADMSN_TYPE_CD</td>
			<td>Inpatient only. [ADMIT_SRC]</td>
		</tr>
		<tr>
			<td>15</td>
			<td>Claim bill facility type code</td>
			<td>CLM_FAC_TYPE_CD</td>
			<td>Type of bill code structure - Type of facility [TOB (1st character)]</td>
		</tr>
		<tr>
			<td>16</td>
			<td>Claim service classification type code</td>
			<td>CLM_SRVC_CLSFCTN_TYPE_CD</td>
			<td>Type of bill code structure - Type of care [TOB (2nd character)]</td>
		</tr>
		<tr>
			<td>17</td>
			<td>Claim frequency code</td>
			<td>CLM_FREQ_CD</td>
			<td>Type of bill code structure - Sequence in this episode of care [TOB (3rd character)]</td>
		</tr>
		<tr>
			<td>18</td>
			<td>Claim status code</td>
			<td></td>
			<td>denied,completed..etc</td>
		</tr>
		<tr>
		<td>19</td>
			<td>Claim type code</td>
			<td>NCH_CLM_TYPE_CD</td>
			<td>Medical, vision, dental</td>
		</tr>
		<tr>
		<td>20</td>
			<td>Claim sub type code</td>
			<td>NCH_NEAR_LINE_REC_IDENT_CD</td>
			<td></td>
		</tr>
			<tr>
		<td>21</td>
			<td>Patient discharge status code</td>
			<td>PTNT_DSCHRG_STUS_CD</td>
			<td>Facility only. [DSTATUS]</td>
		</tr>
			<tr>
		<td>22</td>
			<td>Claim payment denial code</td>
			<td>CARR_CLM_PMT_DNL_CD / CLM_MDCR_NON_PMT_RSN_CD</td>
			<td>CARC/RARC, excd disallowed code</td>
		</tr>
		<tr>
		<td>23</td>
			<td>Claim primary payer code</td>
			<td>NCH_PRMRY_PYR_CD</td>
			<td>Type of carrier [PRIMARY_COV_IND]</td>
		</tr>
		<tr>
		<td>24</td>
			<td>Claim payee type code</td>
			<td></td>
			<td>Recipient of benefits payable</td>
		</tr>
		<tr>
		<td>25</td>
			<td>Claim payee</td>
			<td></td>
			<td>Recipient reference</td>
		</tr>
		</tbody>
	<thead>
		<tr>
			<th>  </th>
		<th></th>
			<th>PROVIDER</th>
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
			<td>Claim billing provider NPI</td>
			<td>CARR_CLM_BLG_NPI_NUM</td>
			<td>[HNPI_BE]</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim billing provider network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>3</td>
			<td>Claim attending physician NPI</td>
			<td>AT_PHYSN_NPI</td>
			<td>[HNPI]</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim attending physician network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>5</td>
			<td>Claim site of service NPI</td>
			<td>CARR_CLM_SOS_NPI_NUM</td>
			<td></td>
		</tr>
		<tr>
			<td>6</td>
			<td>Claim referring provider NPI</td>
			<td>CARR_CLM_RFRNG_PIN_NUM</td>
			<td></td>
		</tr>
		<tr>
		<td>7</td>
			<td>Claim referring provider network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
		<td>8</td>
			<td>Claim performing provider NPI
</td>
			<td>PRF_PHYSN_NPI</td>
			<td>[HNPI]</td>
		</tr>
			<tr>
		<td>9</td>
			<td>Claim performing provider network status
</td>
			<td></td>
			<td></td>
		</tr>
			<tr>
		<td>10</td>
			<td>Claim operating physician NPI
</td>
			<td>OP_PHYSN_NPI</td>
			<td></td>
		</tr>
		<tr>
			<td>11</td>
			<td>Claim operating physician network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>12</td>
			<td>Claim other physician NPI </td>
			<td>OT_PHYSN_NPI</td>
			<td></td>
		</tr>
		<tr>
			<td>13</td>
			<td>Claim other physician network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>14</td>
			<td>Claim rendering physician NPI</td>
			<td>RNDRNG_PHYSN_NPI</td>
			<td></td>
		</tr>
		<tr>
			<td>15</td>
			<td>Claim rendering physician network status</td>
			<td></td>
			<td></td>
		</tr>
		<tr>
			<td>16</td>
			<td>Claim service location NPI</td>
			<td>SRVC_LOC_NPI_NUM</td>
			<td></td>
		</tr>
		<tr>
			<td>17</td>
			<td>Claim PCP</td>
			<td></td>
			<td>[PCP]</td>
		</tr>
		<tr>
			<td>18</td>
			<td>Claim prescriber NPI</td>
			<td></td>
			<td></td>
		</tr>	
		</tbody>
	<thead>
		<tr>
			<th>  </th>
		<th></th>
			<th>AMOUNTS</th>
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
			<td>Claim total submitted amount
</td>
			<td>CLM_TOT_CHRG_AMT</td>
			<td>Submitted charge amount* [CHARGE]
</td>
		</tr>
		<tr>
			<td>2</td>
			<td>Claim total allowed amount
</td>
			<td>NCH_CARR_CLM_ALOWD_AMT</td>
			<td>* [CALC_ALLWD]</td>
		</tr>
		<tr>
			<td>3</td>
			<td>Amount paid by patient
</td>
			<td>PTNT_PAY_AMT</td>
			<td>PDE* [TOT_MEM_CS]</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Claim amount paid to provider
</td>
			<td>CARR_CLM_PRMRY_PYR_PD_AMT</td>
			<td>* [AMT_NET_PAID]</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Member reimbursement
</td>
			<td>NCH_CLM_BENE_PMT_AMT</td>
			<td></td>
		</tr>
		<tr>
			<td>6</td>
			<td>Claim payment amount
</td>
			<td>CLM_PMT_AMT</td>
			<td>By Payer* [AMT_NET_PAID]</td>
		</tr>
		<tr>
		<td>7</td>
			<td>Claim disallowed amount
</td>
			<td>NCH_IP_NCVRD_CHRG_AMT</td>
			<td>*</td>
		</tr>
		<tr>
		<td>8</td>
			<td>Member paid deductible
</td>
			<td>NCH_BENE_IP_DDCTBL_AMT</td>
			<td>* [DEDUCT]</td>
		</tr>
			<tr>
		<td>9</td>
			<td>Co-insurance liability amount
</td>
			<td>NCH_BENE_PTA_COINSRNC_LBLTY_AMT</td>
			<td>* [COINS]</td>
		</tr>
			<tr>
		<td>10</td>
			<td>Copay amount
</td>
			<td></td>
			<td>[COPAY]</td>
		</tr>
		<tr>
			<td>11</td>
			<td>Member liability
</td>
			<td></td>
			<td>E.g. Non-contracted provider*
</td>
		</tr>
		<tr>
			<td>12</td>
			<td>Claim primary payer paid amount
</td>
			<td>NCH_PRMRY_PYR_CLM_PD_AMT
</td>
			<td>*</td>
		</tr>
	
		
		</tbody>
	<thead>
		<tr>
			<th>  </th>
		<th></th>
			<th>DRUG (Pharmacy)</th>
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
			<td>Days supply
</td>
			<td>DAYS_SUPLY_NUM</td>
			<td>Number of days' supply of medication dispensed by the pharmacy [DAYS_SUP]
</td>
		</tr>
		<tr>
			<td>2</td>
			<td>RX service reference number
</td>
			<td>RX_SRVC_RFRNC_NUM</td>
			<td>Assigned by the pharmacy at the time the prescription is filled
</td>
		</tr>
		<tr>
			<td>3</td>
			<td>DAW product selection code
</td>
			<td>DAW_PROD_SLCTN_CD</td>
			<td>Prescriber's instruction regarding substitution of generic equivalents or order to dispense the specific prescribed medication [DAW]
</td>
		</tr>
		<tr>
			<td>4</td>
			<td>Refill number
</td>
			<td>FILL_NUM</td>
			<td>The number fill of the current dispensed supply (0, 1, 2, etc) [FST_FILL and RFL_NBR]
</td>
		</tr>
		<tr>
			<td>5</td>
			<td>Prescription origin code
</td>
			<td>RX_ORGN_CD</td>
			<td>Whether the prescription was transmitted as an electronic prescription, by phone, by fax, or as a written paper copy
</td>
		</tr>
		<tr>
			<td>6</td>
			<td>Plan reported brand-generic code
</td>
			<td>BRND_GNRC_CD</td>
			<td>Whether the plan adjudicated the claim as a brand or generic drug [GNRC_IND]
</td>
		</tr>
		<tr>
		<td>7</td>
			<td>Pharmacy service type code
</td>
			<td>PHRMCY_SRVC_TYPE_CD</td>
			<td>Type of pharmacy that dispensed the prescription
</td>
		</tr>
		<tr>
		<td>8</td>
			<td>Patient residence code
</td>
			<td>PTNT_RSDNC_CD</td>
			<td>Where the beneficiary lived when the prescription was filled
</td>
		</tr>
			
		
		</tbody>
		</table>