
DATA WORK.PARTD_PUF_NPI_SUMMARY_2017;
	LENGTH
		npi									$ 10
		nppes_provider_last_org_name 		$ 70
		nppes_provider_first_name 			$ 20
		nppes_provider_mi					$  1
		nppes_credentials 					$ 20
		nppes_provider_gender				$  1
		nppes_entity_code 					$  1
		nppes_provider_street1 				$ 55
		nppes_provider_street2				$ 55
		nppes_provider_city 				$ 40
		nppes_provider_zip5 				$  5
		nppes_provider_zip4					$  4
		nppes_provider_state				$  2
		nppes_provider_country				$  2
		specialty_description				$ 75
		description_flag				 	$  1
		medicare_prvdr_enroll_status		$  1
		total_claim_count 					   8
		total_30_day_fill_count				   8
		total_drug_cost 					   8
		total_day_supply 					   8
		bene_count							   8
		ge65_suppress_flag					$  1
		total_claim_count_ge65				   8
		total_30_day_fill_count_ge65		   8
		total_drug_cost_ge65				   8
		total_day_supply_ge65				   8
		bene_count_ge65_suppress_flag		$  1
		bene_count_ge65						   8
		brand_suppress_flag					$  1
		brand_claim_count 					   8
		brand_drug_cost 					   8
		generic_suppress_flag				$  1
		generic_claim_count 				   8
		generic_drug_cost 					   8
		other_suppress_flag					$  1
		other_claim_count 					   8
		other_drug_cost 					   8
		mapd_suppress_flag					$  1
		mapd_claim_count					   8
		mapd_drug_cost						   8
		pdp_suppress_flag					$  1
		pdp_claim_count						   8
		pdp_drug_cost						   8
		lis_suppress_flag					$  1
		lis_claim_count						   8
		lis_drug_cost 						   8
		nonlis_suppress_flag				$  1
		nonlis_claim_count					   8
		nonlis_drug_cost				 	   8
		opioid_claim_count					   8
		opioid_drug_cost 					   8
		opioid_day_supply					   8
		opioid_bene_count					   8
		opioid_prescriber_rate				   8
		la_opioid_claim_count				   8
		la_opioid_drug_cost 				   8
		la_opioid_day_supply				   8
		la_opioid_bene_count				   8
		la_opioid_prescriber_rate			   8
		antibiotic_claim_count 				   8
		antibiotic_drug_cost 				   8 
		antibiotic_bene_count  				   8
		antipsych_ge65_suppress_flag		$  1
		antipsych_claim_count_ge65 			   8
		antipsych_drug_cost_ge65 			   8
		antipsych_bene_ge65_suppress_flg	$  1
		antipsych_bene_count_ge65			   8
		average_age_of_beneficiaries		   8
		beneficiary_age_less_65_count		   8
		beneficiary_age_65_74_count			   8
		beneficiary_age_75_84_count			   8
		beneficiary_age_greater_84_count	   8
		beneficiary_female_count			   8
		beneficiary_male_count				   8
		beneficiary_race_white_count		   8
		beneficiary_race_black_count		   8
		beneficiary_race_asian_pi_count		   8
		beneficiary_race_hispanic_count		   8
		beneficiary_race_nat_ind_count		   8
		beneficiary_race_other_count		   8
		beneficiary_nondual_count			   8
		beneficiary_dual_count				   8
		beneficiary_average_risk_score		   8
	;

	INFILE 'c:\My documents\PartD_Prescriber_PUF_NPI_17.txt'
		dlm='09'x
		pad missover
		firstobs = 2
		dsd
	;

	INPUT
		npi
		nppes_provider_last_org_name
		nppes_provider_first_name
		nppes_provider_mi
		nppes_credentials
		nppes_provider_gender
		nppes_entity_code
		nppes_provider_street1
		nppes_provider_street2
		nppes_provider_city
		nppes_provider_zip5
		nppes_provider_zip4
		nppes_provider_state
		nppes_provider_country
		specialty_description
		description_flag
		medicare_prvdr_enroll_status
		total_claim_count
		total_30_day_fill_count
		total_drug_cost
		total_day_supply
		bene_count
		ge65_suppress_flag
		total_claim_count_ge65
		total_30_day_fill_count_ge65
		total_drug_cost_ge65
		total_day_supply_ge65
		bene_count_ge65_suppress_flag
		bene_count_ge65
		brand_suppress_flag
		brand_claim_count
		brand_drug_cost
		generic_suppress_flag
		generic_claim_count
		generic_drug_cost
		other_suppress_flag
		other_claim_count
		other_drug_cost	
		mapd_suppress_flag
		mapd_claim_count
		mapd_drug_cost
		pdp_suppress_flag
		pdp_claim_count
		pdp_drug_cost
		lis_suppress_flag
		lis_claim_count
		lis_drug_cost
		nonlis_suppress_flag
		nonlis_claim_count
		nonlis_drug_cost
		opioid_claim_count
		opioid_drug_cost
		opioid_day_supply
		opioid_bene_count
		opioid_prescriber_rate
		la_opioid_claim_count
		la_opioid_drug_cost
		la_opioid_day_supply
		la_opioid_bene_count
		la_opioid_prescriber_rate
		antibiotic_claim_count
		antibiotic_drug_cost
		antibiotic_bene_count
		antipsych_ge65_suppress_flag
		antipsych_claim_count_ge65
		antipsych_drug_cost_ge65
		antipsych_bene_ge65_suppress_flg
		antipsych_bene_count_ge65
		average_age_of_beneficiaries
		beneficiary_age_less_65_count
		beneficiary_age_65_74_count
		beneficiary_age_75_84_count
		beneficiary_age_greater_84_count
		beneficiary_female_count
		beneficiary_male_count
		beneficiary_race_white_count
		beneficiary_race_black_count
		beneficiary_race_asian_pi_count
		beneficiary_race_hispanic_count
		beneficiary_race_nat_ind_count
		beneficiary_race_other_count
		beneficiary_nondual_count
		beneficiary_dual_count
		beneficiary_average_risk_score
;	

	LABEL
		npi									= "National Provider Identifier"
		nppes_provider_last_org_name 		= "Last Name/Organization Name of the Provider"
		nppes_provider_first_name 			= "First Name of the Provider"
		nppes_provider_mi					= "Middle Initial of the Provider"
		nppes_credentials 					= "Credentials of the Provider"
		nppes_provider_gender				= "Gender of the Provider"
		nppes_entity_code 					= "Entity Type of the Provider"
		nppes_provider_street1 				= "Street Address 1 of the Provider"
		nppes_provider_street2				= "Street Address 2 of the Provider"
		nppes_provider_city 				= "City of the Provider"
		nppes_provider_zip5					= "Zip Code of the Provider (first five digits)"
		nppes_provider_zip4					= "Zip Code of the Provider (last four digits)"
		nppes_provider_state				= "State Code of the Provider"
		nppes_provider_country				= "Country Code of the Provider"
		specialty_description				= "Provider Specialty Type"
		description_flag					= "Source of Provider Specialty"
		medicare_prvdr_enroll_status		= "Enrollment Status of the Provider in the Medicare Program"
		total_claim_count 					= "Number of Medicare Part D Claims, Including Refills"
		total_30_day_fill_count				= "Number of Standardized 30-Day Fills, Including Refills"
		total_drug_cost 					= "Aggregate Cost Paid for All Claims"
		total_day_supply 					= "Number of Day's Supply for All Claims"
		bene_count							= "Number of Medicare Beneficiaries"
		ge65_suppress_flag					= "Reason for Suppression of Total_Claim_Count_Ge65, Total_30_Day_Fill_Count_Ge65, Total_Drug_Cost_Ge65, and Total_Day_Supply_Ge65"
		total_claim_count_ge65				= "Number of Claims, Including Refills, for Beneficiaries Age 65+"
		total_30_day_fill_count_ge65		= "Number of Standardized 30-Day Fills, Including Refills, for Beneficiaries Age 65+"
		total_drug_cost_ge65				= "Aggregate Cost Paid for All Claims for Beneficiaries Age 65+"
		total_day_supply_ge65				= "Number of Day's Supply for All Claims for Beneficiaries Age 65+"
		bene_count_ge65_suppress_flag		= "Reason for Suppression of Bene_Count_Ge65"
		bene_count_ge65						= "Number of Medicare Beneficiaries Age 65+"
		brand_suppress_flag					= "Reason for Suppression of Brand_Claim_Count and Brand_Drug_Cost"
		brand_claim_count 					= "Total Claims of Brand-Name Drugs, Including Refills"
		brand_drug_cost 					= "Aggregate Cost Paid for Brand-Name Drugs"	
		generic_suppress_flag				= "Reason for Suppression of Generic_Claim_Count and Generic_Drug_Cost"
		generic_claim_count 				= "Total Claims of Generic Drugs, Including Refills"
		generic_drug_cost					= "Aggregate Cost Paid for Generic Drugs"
		other_suppress_flag					= "Reason for Suppression of Other_Claim_Count and Other_Drug_Cost"
		other_claim_count					= "Total Claims of Other Drugs, Including Refills"		
		other_drug_cost 					= "Aggregate Cost Paid for Other Drugs"
		mapd_suppress_flag					= "Reason for Suppression of MAPD_Claim_Count and MAPD_Drug_Cost"
		mapd_claim_count					= "Number of Claims for Beneficiaries Covered by MAPD Plans"
		mapd_drug_cost						= "Aggregate Cost Paid for Claims Filled by Beneficiaries in MAPD Plans"
		pdp_suppress_flag					= "Reason for Suppression of PDP_Claim_Count and PDP_Drug_Cost"
		pdp_claim_count						= "Number of Claims for Beneficiaries Covered by Standalone PDP Plans"
		pdp_drug_cost						= "Aggregate Cost Paid for Claims Filled by Beneficiaries in Standalone PDP Plans"
		lis_suppress_flag					= "Reason for Suppression of LIS_Claim_Count and LIS_Drug_Cost"
		lis_claim_count						= "Number of Claims for Beneficiaries Covered by Low-Income Subsidy"
		lis_drug_cost 						= "Aggregate Cost Paid for Claims Covered by Low-Income Subsidy"
		nonlis_suppress_flag				= "Reason for Suppression of NonLIS_Claim_Count and NonLIS_Drug_Cost"
		nonlis_claim_count					= "Number of Claims for Beneficiaries Not Covered by Low-Income Subsidy"	
		nonlis_drug_cost					= "Aggregate Cost Paid for Claims Not Covered by Low-Income Subsidy"
		opioid_claim_count					= "Total Claims of Opioid Drugs, Including Refills"
		opioid_drug_cost 					= "Aggregate Cost Paid for Opioid Drugs"
		opioid_day_supply					= "Number of Day's Supply for All Opioid Drugs"
		opioid_bene_count					= "Number of Medicare Beneficiaries Filling Opioid Claims"
		opioid_prescriber_rate				= "Percent of Total_Claim_Count Represented by Opioid_Claim_Count"
		la_opioid_claim_count				= "Total Claims of Long-Acting Opioid Drugs, Including Refills"
		la_opioid_drug_cost 				= "Aggregate Cost Paid for Long-Acting Opioid Drugs"
		la_opioid_day_supply				= "Number of Day's Supply for All Long-Acting Opioid Drugs"
		la_opioid_bene_count				= "Number of Medicare Beneficiaries Filling Long-Acting Opioid Claims"
		la_opioid_prescriber_rate			= "Percent of Opioid_Claim_Count Represented by LA_Opioid_Claim_Count"
		antibiotic_claim_count 				= "Total Claims of Antibiotic Drugs, Including Refills"
		antibiotic_drug_cost 				= "Aggregate Cost Paid for Antibiotic Drugs"
		antibiotic_bene_count  				= "Number of Medicare Beneficiaries Filling Antibiotic Claims"
		antipsych_ge65_suppress_flag		= "Reason for Suppression of Antipsych_Claim_Count_Ge65 and Antipsych_Drug_Cost_Ge65"
		antipsych_claim_count_ge65			= "Total Claims of Antipsychotic Drugs, Including Refills, for Beneficiaries Age 65+"
		antipsych_drug_cost_ge65			= "Aggregate Cost Paid for Antipsychotic Drugs for Beneficiaries Age 65+"
		antipsych_bene_ge65_suppress_flg	= "Reason for Suppression of Antipsych_Bene_Count_Ge65"
		antipsych_bene_count_ge65			= "Number of Medicare Beneficiaries Age 65+ Filling Antipsychotic Claims"
		average_age_of_beneficiaries		= "Average Age of Beneficiaries"
		beneficiary_age_less_65_count		= "Number of Beneficiaries Age Less Than 65"
		beneficiary_age_65_74_count			= "Number of Beneficiaries Age 65 to 74"
		beneficiary_age_75_84_count			= "Number of Beneficiaries Age 75 to 84"
		beneficiary_age_greater_84_count	= "Number of Beneficiaries Age Greater Than 84"
		beneficiary_female_count			= "Number of Female Beneficiaries"
		beneficiary_male_count				= "Number of Male Beneficiaries"
		beneficiary_race_white_count		= "Number of Non-Hispanic White Beneficiaries"
		beneficiary_race_black_count		= "Number of Black or African American Beneficiaries"
		beneficiary_race_asian_pi_count		= "Number of Asian Pacific Islander Beneficiaries"
		beneficiary_race_hispanic_count		= "Number of Hispanic Beneficiaries"
		beneficiary_race_nat_ind_count		= "Number of American Indian/Alaskan Native Beneficiaries"
		beneficiary_race_other_count		= "Number of Beneficiaries with Race Not Elsewhere Classified"
		beneficiary_nondual_count			= "Number of Beneficiaries with Medicare Only Entitlement"
		beneficiary_dual_count				= "Number of Beneficiaries with Medicare & Medicaid Entitlement"
		beneficiary_average_risk_score		= "Average Hierarchical Condition Category (HCC) Risk Score of Beneficiaries"
;	


RUN;