USE patientdb;
LOCK TABLES address WRITE, identifier WRITE, patient WRITE, personname WRITE, phonenumber WRITE;

-- Mrs. Betty Testpatient
INSERT INTO patient VALUES (6, 19700101, 'F', '123456789');
INSERT INTO address VALUES (6, 6, '234 N West St', '', 'Westerville', 'OH', '43081');
INSERT INTO identifier VALUES (9, 6, 'P1234', '1.1');
INSERT INTO identifier VALUES (10, 6, 'P4321', '2.2');
INSERT INTO personname VALUES (6, 6, '', 'Betty', '', 'Testpatient', '');
INSERT INTO phonenumber VALUES (6, 6, 'tel:+1-123-456-7890');

UNLOCK TABLES;

USE docrepository;
LOCK TABLES document WRITE;

INSERT INTO document VALUES (50,'22.123402.11111','Schnur CONNECT TESTGATEWAY Document 1','Axolotl Elysium','Test Two Workgroup','Primary Care Provider','General','Active','34133-9','2.16.840.1.113883.6.1','Summarization of Episode Note','Confidential','Confidential','Confidential','2008-06-27 13:49:24','CDAR2/IHE 1.0','formatCodeScheme_value','formatCodeDisplayName_value','P1234^^^&1.1&ISO','2007-09-11 00:00:00','2008-06-27 00:00:00','urn:oasis:names:tc:ebxml-regrep:StatusType:Approved','Document 1 Schnur CONNECT TESTGATEWAY comments','ac0eec55d17eaa9c24054f8a7ecc5d3caa45d9f0','UTF-8','UTF-8','UTF-8','Scott Borst','Agilex Technologies','en-US','legal','text/xml','22.123402.11111','same','test','test','test',26934,'P1234^^^&1.1&ISO','pid1^^^domain','Schnur^Anna^^^','19560813','F','312 HILL ROAD^^HILLSBORO^MO^37660^US','test','test','test','22.123402.11111','<ClinicalDocument xsi:schemaLocation=\"urn:hl7-org:v3 CDA.xsd\"  xmlns:sdtc=\"urn:hl7-org:sdtc\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" xmlns=\"urn:hl7-org:v3\">\n<typeId extension=\"POCD_HD000040\" root=\"2.16.840.1.113883.1.3\"/>\n<templateId assigningAuthorityName=\"CDA/R2\" root=\"2.16.840.1.113883.3.27.1776\"/>\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.1\"/>\n<id root=\"2.16.840.1.113883.3.333\" extension=\"D123401\" assigningAuthorityName=\"CONNECT TESTGATEWAY\"/>\n<code code=\"34133-9\" displayName=\"Summarization of Episode Note\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<title/>\n<effectiveTime value=\"20080617084906-0500\"/>\n<confidentialityCode/>\n<languageCode code=\"en-US\"/>\n<recordTarget>\n<patientRole>\n<id extension=\"1234567890\"/>\n<addr>\n<streetAddressLine>\n1111 Main Street</streetAddressLine>\n<city>\nRoma</city>\n<state>\nTN</state>\n<postalCode>\n37662</postalCode>\n<country>\nUS</country>\n</addr>\n<telecom value=\"tel:+1-423-555-9876\" use=\"HP\"/>\n<patient>\n<name use=\"L\">\n<prefix>\nMr.</prefix>\n<given qualifier=\"CL\">\nGallow</given>\n<family qualifier=\"BR\">\nYounger</family>\n<suffix>\nJr.</suffix>\n</name>\n<administrativeGenderCode code=\"M\" displayName=\"Male\" codeSystemName=\"HL7 AdministrativeGenderCodes\" codeSystem=\"2.16.840.1.113883.5.1\">\n<originalText>\nAdministrativeGender codes are: M (Male), F (Female) or UN (Undifferentiated).</originalText>\n</administrativeGenderCode>\n<birthTime value=\"19990627\"/>\n<maritalStatusCode code=\"S\" displayName=\"Never Married\" codeSystemName=\"MaritalStatusCode\" codeSystem=\"2.16.840.1.113883.5.2\"/>\n<religiousAffiliationCode code=\"1013\" displayName=\"Christian\" codeSystemName=\"Religious Affiliation\" codeSystem=\"2.16.840.1.113883.5.1076\"/>\n<raceCode code=\"2106-3\" displayName=\"White\" codeSystemName=\"CDC Race and Ethnicity\" codeSystem=\"2.16.840.1.113883.6.238\"/>\n<ethnicGroupCode code=\"2186-5\" displayName=\"Not Hispanic Or Latino\" codeSystemName=\"CDC Race and Ethnicity\" codeSystem=\"2.16.840.1.113883.6.238\"/>\n<languageCommunication>\n<templateId root=\"2.16.840.1.113883.3.88.11.32.2\"/>\n<languageCode code=\"en-US\"/>\n<modeCode code=\"ESP\" displayName=\"Expressed Spoken\" codeSystemName=\"LanguageAbilityMode\" codeSystem=\"2.16.840.1.113883.5.60\"/>\n<preferenceInd value=\"true\"/>\n</languageCommunication>\n</patient>\n</patientRole>\n</recordTarget>\n<author>\n<time value=\"20080418\"/>\n<assignedAuthor>\n<id root=\"PHR345321888\"/>\n<assignedPerson>\n<name>\n<prefix>\nDr.</prefix>\n<given qualifier=\"CL\">\nJoseph</given>\n<family qualifier=\"BR\">\nHoodwink</family>\n</name>\n</assignedPerson>\n<representedOrganization>\n<id root=\"2.16.840.1.113883.19.5\"/>\n<name>\nMain Children\'s Hospital</name>\n</representedOrganization>\n</assignedAuthor>\n</author>\n<custodian>\n<assignedCustodian>\n<representedCustodianOrganization>\n<id/>\n</representedCustodianOrganization>\n</assignedCustodian>\n</custodian>\n<participant typeCode=\"IND\">\n<templateId root=\"2.16.840.1.113883.3.88.11.32.3\"/>\n<time>\n<low value=\"19990627\"/>\n</time>\n<associatedEntity classCode=\"NOK\">\n<code code=\"NFTH\" displayName=\"Natural Father\" codeSystemName=\"RoleCode\" codeSystem=\"2.16.840.1.113883.5.111\"/>\n<addr>\n<streetAddressLine>\n1111 Main Street</streetAddressLine>\n<city>\nRoma</city>\n<state>\nTN</state>\n<postalCode>\n37662</postalCode>\n<country>\nUS</country>\n</addr>\n<telecom value=\"tel:+1-423-555-9876\" use=\"HP\"/>\n<telecom value=\"tel:+1-423-555-9843\" use=\"WP\"/>\n<telecom value=\"tel:+1-423-555-9821\" use=\"MC\"/>\n<telecom value=\"mailto:Gallow.Younger@internet.fak\"/>\n<associatedPerson>\n<name>\n<prefix>\nMr.</prefix>\n<given qualifier=\"CL\">\nGallow</given>\n<family qualifier=\"BR\">\nYounger</family>\n<suffix>\nSr.</suffix>\n</name>\n</associatedPerson>\n</associatedEntity>\n</participant>\n<documentationOf>\n<serviceEvent classCode=\"PCPR\">\n<effectiveTime>\n<low value=\"20000320\"/>\n<high value=\"20080101\"/>\n</effectiveTime>\n<performer typeCode=\"PRF\">\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.4\"/>\n<functionCode code=\"PP\" displayName=\"Primary Care Provider\" codeSystemName=\"Provider Role\" codeSystem=\"2.16.840.1.113883.12.443\">\n<originalText>\nPediatrician</originalText>\n</functionCode>\n<time>\n<low value=\"20000320\"/>\n<high value=\"20100101\"/>\n</time>\n<assignedEntity>\n<id/>\n<code code=\"280000000X\" displayName=\"Hospitals\" codeSystemName=\"ProviderCodes\" codeSystem=\"2.16.840.1.113883.6.101\"/>\n<addr>\n<streetAddressLine>\n1250 Main St.</streetAddressLine>\n<city>\nRoma</city>\n<state>\nTN</state>\n<postalCode>\n37662</postalCode>\n<country>\nUS</country>\n</addr>\n<telecom value=\"tel:1-423-555-1238\" use=\"WP\"/>\n<assignedPerson>\n<name>\n<prefix>\nDr.</prefix>\n<given qualifier=\"CL\">\nJoseph</given>\n<family qualifier=\"BR\">\nHoodwink</family>\n</name>\n</assignedPerson>\n<representedOrganization>\n<id assigningAuthorityName=\"Children Car Group\" root=\"2.16.840.1.113883.3.72.5\"/>\n<name>\nChildren Car Group</name>\n</representedOrganization>\n<patient xmlns=\"urn:hl7-org:sdtc\">\n<id extension=\"MedicalRecordNumber\" root=\"A345678999\" xmlns=\"urn:hl7-org:sdtc\"/>\n</patient>\n</assignedEntity>\n</performer>\n</serviceEvent>\n</documentationOf>\n<component>\n<structuredBody>\n<component>\n<section>\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.11\"/>\n<code code=\"11450-4\" displayName=\"Problems\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<title>\nConditions or Problems</title>\n<text>\n<table border=\"1\" width=\"100%\">\n<thead>\n<tr>\n<th>\nProblem Name</th>\n<th>\nProblem Type</th>\n<th>\nProblem Date</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>\n<content ID=\"problem-1021520890\">\nAcute Otitis Media</content>\n</td>\n<td>\nDiagnosis</td>\n<td>\n20020602</td>\n</tr>\n<tr>\n<td>\n<content ID=\"problem-1021520891\">\nFebrile Seizure</content>\n</td>\n<td>\nDiagnosis</td>\n<td>\n20010713</td>\n</tr>\n</tbody>\n</table>\n</text>\n<entry>\n<act classCode=\"ACT\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.27\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.7\"/>\n<id/>\n<code nullFlavor=\"NA\"/>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.28\"/>\n<code code=\"282291009\" displayName=\"Diagnosis\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n<text>\n<reference value=\"#problem-1021520890\"/>\n</text>\n<statusCode code=\"completed\"/>\n<effectiveTime>\n<low value=\"20020602\"/>\n<high nullFlavor=\"UNK\"/>\n</effectiveTime>\n</observation>\n</entryRelationship>\n</act>\n</entry>\n<entry>\n<act classCode=\"ACT\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.27\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.7\"/>\n<id/>\n<code nullFlavor=\"NA\"/>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.28\"/>\n<code code=\"282291009\" displayName=\"Diagnosis\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n<text>\n<reference value=\"#problem-1021520891\"/>\n</text>\n<statusCode code=\"completed\"/>\n<effectiveTime>\n<low value=\"20010713\"/>\n<high nullFlavor=\"UNK\"/>\n</effectiveTime>\n</observation>\n</entryRelationship>\n</act>\n</entry>\n</section>\n</component>\n<component>\n<section>\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.2\"/>\n<code code=\"48765-2\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<title>\nAllergies, Adverse Reactions, Alerts</title>\n<text>\n<table border=\"1\" width=\"100%\">\n<thead>\n<tr>\n<th>\nSubstance</th>\n<th>\nEvent Type</th>\n<th>\nSeverity</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>\nIodine</td>\n<td>\nDrug Allergy</td>\n<td>\n<content ID=\"severity-823359022\">\nMild</content>\n</td>\n</tr>\n<tr>\n<td>\nPenicillin</td>\n<td>\nDrug Allergy</td>\n<td>\n<content ID=\"severity-823359023\">\nModerate</content>\n</td>\n</tr>\n</tbody>\n</table>\n</text>\n<entry>\n<act classCode=\"ACT\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.10.20.1.27\"/>\n<templateId root=\"2.16.840.1.113883.3.88.11.32.6\"/>\n<id root=\"2C748172-7CC2-4902-8AF0-23A105C4401B\"/>\n<code nullFlavor=\"NA\"/>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.10.20.1.18\"/>\n<code code=\"416098002\" displayName=\"Drug Allergy\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n<statusCode code=\"completed\"/>\n<effectiveTime>\n<low value=\"20010209\"/>\n<high nullFlavor=\"UNK\"/>\n</effectiveTime>\n<participant typeCode=\"CSM\">\n<participantRole classCode=\"MANU\">\n<playingEntity classCode=\"MMAT\">\n<code code=\"255604002\" displayName=\"Iodine\" codeSystemName=\"RxNorm\" codeSystem=\"2.16.840.1.113883.6.88\"/>\n<name>\nIodine</name>\n</playingEntity>\n</participantRole>\n</participant>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.10.20.1.55\"/>\n<code code=\"SEV\" displayName=\"Severity\" codeSystem=\"2.16.840.1.113883.5.4\" codeSystemName=\"ActCode\"/>\n<text>\n<reference value=\"#severity-823359022\"/>\n</text>\n<statusCode code=\"completed\"/>\n<value xsi:type=\"CD\" code=\"255604002\" displayName=\"mild\" codeSystem=\"2.16.840.1.113883.6.96\" codeSystemName=\"SNOMED CT\"/>\n</observation>\n</entryRelationship>\n</observation>\n</entryRelationship>\n</act>\n</entry>\n<entry>\n<act classCode=\"ACT\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.10.20.1.27\"/>\n<templateId root=\"2.16.840.1.113883.3.88.11.32.6\"/>\n<id root=\"2C748172-7CC2-4902-8AF0-23A105C4401B\"/>\n<code nullFlavor=\"NA\"/>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.10.20.1.18\"/>\n<code code=\"416098002\" displayName=\"Drug Allergy\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n<statusCode code=\"completed\"/>\n<effectiveTime>\n<low value=\"20041204\"/>\n<high nullFlavor=\"UNK\"/>\n</effectiveTime>\n<participant typeCode=\"CSM\">\n<participantRole classCode=\"MANU\">\n<playingEntity classCode=\"MMAT\">\n<code code=\"81119003\" displayName=\"Penicillin\" codeSystemName=\"RxNorm\" codeSystem=\"2.16.840.1.113883.6.88\"/>\n<name>\nPenicillin</name>\n</playingEntity>\n</participantRole>\n</participant>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.10.20.1.55\"/>\n<code code=\"SEV\" displayName=\"Severity\" codeSystem=\"2.16.840.1.113883.5.4\" codeSystemName=\"ActCode\"/>\n<text>\n<reference value=\"#severity-823359023\"/>\n</text>\n<statusCode code=\"completed\"/>\n<value xsi:type=\"CD\" code=\"6736007\" displayName=\"moderate\" codeSystem=\"2.16.840.1.113883.6.96\" codeSystemName=\"SNOMED CT\"/>\n</observation>\n</entryRelationship>\n</observation>\n</entryRelationship>\n</act>\n</entry>\n</section>\n</component>\n<component>\n<section>\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.9\"/>\n<code code=\"48768-6\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<title>\nInsurance Providers</title>\n<text>\n<table border=\"1\" width=\"100%\">\n<thead>\n<tr>\n<th>\nInsurance Provider Name</th>\n<th>\nInsurance Provider Type</th>\n<th>\nInsurance Provider Group Number</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>\nACME Health plan sponsor</td>\n<td>\nACME Health plan sponsor</td>\n<td>\nGID888111</td>\n</tr>\n</tbody>\n</table>\n</text>\n<entry>\n<act classCode=\"ACT\" moodCode=\"DEF\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.20\"/>\n<id extension=\"GroupOrContract#\" root=\"GID888111\"/>\n<code code=\"48768-6\" displayName=\"Payment Sources\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<statusCode code=\"completed\"/>\n<entryRelationship typeCode=\"COMP\">\n<act classCode=\"ACT\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.10.20.1.26\"/>\n<templateId root=\"2.16.840.1.113883.3.88.11.32.5\"/>\n<id root=\"2844AF96-37D5-42a8-9FE3-3995C110B4F8\" extension=\"GID888111\"/>\n<code code=\"GP\" displayName=\"Group Policy\" codeSystemName=\"X12N-1336\" codeSystem=\"2.16.840.1.113883.6.255.1336\"/>\n<statusCode code=\"completed\"/>\n<performer typeCode=\"PRF\">\n<assignedEntity classCode=\"ASSIGNED\">\n<id root=\"2.16.840.1.113883.3.88.3.1\"/>\n<code code=\"PAYOR\" codeSystem=\"2.16.840.1.113883.5.110\" />\n<representedOrganization classCode=\"ORG\">\n<id root=\"2.16.840.1.113883.19.5\"/>\n<name>\nACME Health plan sponsor</name>\n</representedOrganization>\n</assignedEntity>\n</performer>\n<participant typeCode=\"COV\">\n<participantRole classCode=\"IND\">\n<id extension=\"999JJJ888GGG777F\" root=\"1.23.456.7.8.9\"/>\n<code code=\"SELF\" codeSystem=\"2.16.840.1.113883.5.111\" displayName=\"Self\"/>\n<addr/>\n<playingEntity>\n<name/>\n</playingEntity>\n</participantRole>\n</participant>\n</act>\n</entryRelationship>\n</act>\n</entry>\n</section>\n</component>\n<component>\n<section>\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.8\"/>\n<code code=\"10160-0\" displayName=\"History of medication use\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<title>\nMedications</title>\n<text>\n<table border=\"1\" width=\"100%\">\n<thead>\n<tr>\n<th>\nProduct Display Name</th>\n<th>\nFree Text Brand Name</th>\n<th>\nOrdered Value</th>\n<th>\nOrdered Unit</th>\n<th>\nExpiration Time</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>\n<content ID=\"medication-809983502\">\nAcetaminophen</content>\n</td>\n<td>\nTylenol</td>\n<td>\n1.0</td>\n<td>\nChewable Tablet</td>\n<td>\n20101115</td>\n</tr>\n<tr>\n<td>\n<content ID=\"medication-809983503\">\nIbuprofen</content>\n</td>\n<td>\nMotrin Suspended</td>\n<td>\n1.0</td>\n<td>\n3ml</td>\n<td>\n20091012</td>\n</tr>\n<tr>\n<td>\n<content ID=\"medication-809983504\">\nAzithromycin</content>\n</td>\n<td>\nZithromax</td>\n<td>\n60.0</td>\n<td>\nTablet</td>\n<td>\n20080825</td>\n</tr>\n</tbody>\n</table>\n</text>\n<entry>\n<substanceAdministration classCode=\"SBADM\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.24\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.8\"/>\n<id/>\n<statusCode code=\"active\"/>\n<effectiveTime xsi:type=\"IVL_TS\">\n<low value=\"20080101\"/>\n<high value=\"20080108\"/>\n</effectiveTime>\n<effectiveTime xsi:type=\"PIVL_TS\" operator=\"A\" institutionSpecified=\"false\">\n<period value=\"24\" unit=\"h\"/>\n</effectiveTime>\n                            <routeCode code=\"C38288\" displayName=\"ORAL\" codeSystem=\"2.16.840.1.113883.3.26.1.1\" codeSystemName=\"NCI\"/>\n<doseQuantity value=\"1\" />\n<consumable>\n<manufacturedProduct classCode=\"MANU\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.53\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.9\"/>\n<manufacturedMaterial classCode=\"MMAT\" determinerCode=\"KIND\">\n<code code=\"212785\" displayName=\"Acetaminophen\" codeSystemName=\"rxNorm\" codeSystem=\"2.16.840.1.113883.6.88\">\n<originalText>\nAcetaminophen</originalText>\n</code>\n<name>\nTylenol</name>\n</manufacturedMaterial>\n</manufacturedProduct>\n</consumable>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.3.88.11.32.10\"/>\n<code code=\"329505003\" displayName=\"Over the counter product\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n<statusCode code=\"completed\"/>\n</observation>\n</entryRelationship>\n<entryRelationship typeCode=\"REFR\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<code code=\"33999-4\" displayName=\"Status\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<statusCode code=\"Open\"/>\n<value code=\"55561003\" displayName=\"Active\" xsi:type=\"CE\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n</observation>\n</entryRelationship>\n<entryRelationship typeCode=\"REFR\">\n<supply classCode=\"SPLY\" moodCode=\"INT\">\n<templateId root=\"2.16.840.1.113883.3.88.1.11.32.11\"/>\n<id extension=\"SCRIP#\" root=\"SCR876\"/>\n<effectiveTime value=\"20101115\"/>\n<quantity value=\"1.0\"/>\n</supply>\n</entryRelationship>\n</substanceAdministration>\n</entry>\n<entry>\n<substanceAdministration classCode=\"SBADM\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.24\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.8\"/>\n<id/>\n<statusCode code=\"completed\"/>\n                            <effectiveTime xsi:type=\"IVL_TS\">\n<low value=\"20050328\"/>\n<high value=\"20050404\"/>\n</effectiveTime>\n<effectiveTime xsi:type=\"PIVL_TS\" operator=\"A\" institutionSpecified=\"false\">\n<period value=\"24\" unit=\"h\"/>\n</effectiveTime>\n                            <routeCode code=\"C38288\" displayName=\"ORAL\" codeSystem=\"2.16.840.1.113883.3.26.1.1\" codeSystemName=\"NCI\"/>\n<doseQuantity value=\"1\" />\n                            <consumable>\n<manufacturedProduct classCode=\"MANU\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.53\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.9\"/>\n<manufacturedMaterial classCode=\"MMAT\" determinerCode=\"KIND\">\n<code code=\"206875\" displayName=\"Ibuprofen\" codeSystemName=\"rxNorm\" codeSystem=\"2.16.840.1.113883.6.88\">\n<originalText>\nIbuprofen</originalText>\n</code>\n<name>\nMotrin Suspended</name>\n</manufacturedMaterial>\n</manufacturedProduct>\n</consumable>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.3.88.11.32.10\"/>\n<code code=\"73639000\" displayName=\"Prescription Drug\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n<statusCode code=\"completed\"/>\n</observation>\n</entryRelationship>\n<entryRelationship typeCode=\"REFR\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<code code=\"33999-4\" displayName=\"Status\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<statusCode code=\"Open\"/>\n<value code=\"55561003\" displayName=\"Active\" xsi:type=\"CE\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n</observation>\n</entryRelationship>\n<entryRelationship typeCode=\"REFR\">\n<supply classCode=\"SPLY\" moodCode=\"INT\">\n<templateId root=\"2.16.840.1.113883.3.88.1.11.32.11\"/>\n<id extension=\"SCRIP#\" root=\"SCR877\"/>\n<effectiveTime value=\"20091012\"/>\n<quantity value=\"1.0\"/>\n</supply>\n</entryRelationship>\n</substanceAdministration>\n</entry>\n<entry>\n<substanceAdministration classCode=\"SBADM\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.24\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.8\"/>\n<id/>\n<statusCode code=\"completed\"/>\n<effectiveTime xsi:type=\"IVL_TS\">\n<low value=\"20060307\"/>\n<high value=\"20060314\"/>\n</effectiveTime>\n<effectiveTime xsi:type=\"PIVL_TS\" operator=\"A\" institutionSpecified=\"false\">\n<period value=\"12\" unit=\"h\"/>\n</effectiveTime>\n                            <routeCode code=\"C38288\" displayName=\"ORAL\" codeSystem=\"2.16.840.1.113883.3.26.1.1\" codeSystemName=\"NCI\"/>\n<doseQuantity value=\"1\" />\n<consumable>\n<manufacturedProduct classCode=\"MANU\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.53\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.9\"/>\n<manufacturedMaterial classCode=\"MMAT\" determinerCode=\"KIND\">\n<code code=\"105259\" displayName=\"Azithromycin\" codeSystemName=\"rxNorm\" codeSystem=\"2.16.840.1.113883.6.88\">\n<originalText>\nAzithromycin</originalText>\n</code>\n<name>\nZithromax</name>\n</manufacturedMaterial>\n</manufacturedProduct>\n</consumable>\n<entryRelationship typeCode=\"SUBJ\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.3.88.11.32.10\"/>\n<code code=\"73639000\" displayName=\"Prescription Drug\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n<statusCode code=\"completed\"/>\n</observation>\n</entryRelationship>\n<entryRelationship typeCode=\"REFR\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<code code=\"33999-4\" displayName=\"Status\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<statusCode code=\"Active\"/>\n<value code=\"55561003\" displayName=\"Active\" xsi:type=\"CE\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n</observation>\n</entryRelationship>\n<entryRelationship typeCode=\"REFR\">\n<supply classCode=\"SPLY\" moodCode=\"INT\">\n<templateId root=\"2.16.840.1.113883.3.88.1.11.32.11\"/>\n<id extension=\"SCRIP#\" root=\"SCR878\"/>\n<effectiveTime value=\"20080825\"/>\n<quantity value=\"60.0\"/>\n</supply>\n</entryRelationship>\n</substanceAdministration>\n</entry>\n</section>\n</component>\n<component>\n<section>\n<templateId root=\"2.16.840.1.113883.10.20.1.1\"/>\n<code code=\"42348-3\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<title>\nAdvance Directives</title>\n<text>\n<content ID=\"advance-directive-989570790\">\nThere are no advanced directives for this patient</content>\n</text>\n<entry>\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.17\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.13\"/>\n<id/>\n<code code=\"78823007\" displayName=\"Life Support\" codeSystemName=\"SNOMED CT\" codeSystem=\"2.16.840.1.113883.6.96\">\n<originalText>\n<reference value=\"advance-directive-989570790\"/>\n</originalText>\n</code>\n<statusCode code=\"completed\"/>\n<effectiveTime xsi:type=\"IVL_TS\" >\n<low nullFlavor=\"UNK\"/>\n<high nullFlavor=\"UNK\"/>\n</effectiveTime>\n<participant typeCode=\"CST\">\n<participantRole classCode=\"AGNT\">\n<addr>\n<state>\nAK</state>\n<country>\nAF</country>\n</addr>\n<playingEntity>\n<name>\n<given qualifier=\"CL\">\nGallow</given>\n<family qualifier=\"BR\">\nYounger</family>\n<suffix>\nJr.</suffix>\n</name>\n</playingEntity>\n</participantRole>\n</participant>\n<entryRelationship typeCode=\"REFR\">\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId root=\"2.16.840.1.113883.10.20.1.37\"/>\n<code code=\"33999-4\" displayName=\"Status\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<statusCode code=\"completed\"/>\n<value code=\"425392003\" displayName=\"Current and verified\" xsi:type=\"CE\" codeSystem=\"2.16.840.1.113883.6.96\"/>\n</observation>\n</entryRelationship>\n</observation>\n</entry>\n</section>\n</component>\n<component>\n<section>\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.16\"/>\n<code code=\"8716-3\" displayName=\"Vital signs\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<title>\nVital signs</title>\n<text>\n<table border=\"1\" width=\"100%\">\n<thead>\n<tr>\n<th>\nVital Sign ID</th>\n<th>\nVital Sign Date</th>\n<th>\nVital Sign Display Name</th>\n<th>\nVital Sign Value</th>\n<th>\nVital Sign Unit</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>\n<content ID=\"vital_sign-R0007\">\nR0007</content>\n</td>\n<td>\n2008-04-13</td>\n<td>\nBody Weight</td>\n<td>\n40</td>\n<td>\nkilos</td>\n</tr>\n</tbody>\n</table>\n</text>\n<entry>\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.31\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.15\"/>\n<id root=\"R0007\"/>\n<code code=\"3141-9\" displayName=\"Body Weight\" codeSystemName=\"NDC\" codeSystem=\"2.16.840.1.113883.6.69\"/>\n<statusCode code=\"completed\"/>\n<effectiveTime value=\"20080413\"/>\n<value unit=\"kilos\" xsi:type=\"PQ\" value=\"40\"/>\n</observation>\n</entry>\n</section>\n</component>\n<component>\n<section>\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.14\"/>\n<code code=\"30954-2\" displayName=\"Relevant diagnostic tests\" codeSystemName=\"LOINC\" codeSystem=\"2.16.840.1.113883.6.1\"/>\n<title>\nResults</title>\n<text>\n<table border=\"1\" width=\"100%\">\n<thead>\n<tr>\n<th>\nResult ID</th>\n<th>\nResult Date</th>\n<th>\nResult Display Name</th>\n<th>\nResult Value</th>\n<th>\nResult Unit</th>\n</tr>\n</thead>\n<tbody>\n<tr>\n<td>\n<content ID=\"result-R00021\">\nR00021</content>\n</td>\n<td>\n2008-04-13</td>\n<td>\nInfluenza B</td>\n<td>\nnegative</td>\n<td/>\n</tr>\n<tr>\n<td>\n<content ID=\"result-R00022\">\nR00022</content>\n</td>\n<td>\n2008-04-13</td>\n<td>\nRapid Strep Test</td>\n<td>\nPositive</td>\n<td>\nNegative or Positive</td>\n</tr>\n</tbody>\n</table>\n</text>\n<entry>\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.31\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.16\"/>\n<id root=\"R00021\"/>\n<code code=\"11257-3\" displayName=\"Influenza B\" codeSystemName=\"NDC\" codeSystem=\"2.16.840.1.113883.6.69\"/>\n<statusCode code=\"completed\"/>\n<effectiveTime value=\"20080413\"/>\n<value unit=\"negative\" xsi:type=\"PQ\" value=\"0.0\"/>\n</observation>\n</entry>\n<entry>\n<observation classCode=\"OBS\" moodCode=\"EVN\">\n<templateId assigningAuthorityName=\"CCD\" root=\"2.16.840.1.113883.10.20.1.31\"/>\n<templateId assigningAuthorityName=\"HITSP/C32\" root=\"2.16.840.1.113883.3.88.11.32.16\"/>\n<id root=\"R00022\"/>\n<code code=\"11266-4\" displayName=\"Rapid Strep Test\" codeSystemName=\"NDC\" codeSystem=\"2.16.840.1.113883.6.69\"/>\n<statusCode code=\"completed\"/>\n<effectiveTime value=\"20080413\"/>\n<value unit=\"Positive\" xsi:type=\"PQ\" value=\"1.5\"/>\n</observation>\n</entry>\n</section>\n</component>\n</structuredBody>\n</component>\n</ClinicalDocument>\n',0,0,'','');

UNLOCK TABLES;