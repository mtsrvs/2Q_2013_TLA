%union{
char*sval;
}

%{
	#include <string.h>
	#include <ctype.h>
	#include <stdio.h>
	#include <stdlib.h>
	#include <stdbool.h>
    extern FILE * yyin;
	int yydebug=1;
	char * type;
	int yylex();
    void yyerror(char *);
%}
%token <sval> AMINORASA <sval> ACIDPHOSPHATASE <sval> ACYLTRANSFERASE <sval> ADAPTERMOLECULE <sval> ADENOSYLTRANSFERASE <sval> ADENYLATECYCLASE <sval> ADHESIONMOLECULE <sval> ALDOLASE <sval> ALKALINEPHOSPHATASE <sval> AMINOPEPTIDASE
%token <sval> AMYLASE <sval> ANCHORPROTEIN <sval> ASPARTICPROTEASE <sval> ATPASE <sval> BCELLANTIGENRECEPTOR <sval> CALCIUMBINDINGPROTEIN <sval> CARBONICANHYDRASE <sval> CARBOXYLASE <sval> CARBOXYPEPTIDASE <sval> CATALASE
%token <sval> CELLCYCLECONTROLPROTEIN <sval> CELLJUNCTIONPROTEINCELLSURFACERECEPTORCHAPERONECHEMOKINECOAGULATIONFACTORCOMPLEMENTPROTEINCOMPLEMENTRECEPTORCYSTEINEPROTEASECYTOKINE
%token <sval> CYTOKINERECEPTOR <sval> CYTOSKELETALASSOCIATEDPROTEIN <sval> CYTOSKELETALPROTEIN <sval> DECARBOXYLASE <sval> DEACETYLASE <sval> DEAMINASE <sval> DEFENSIN <sval> DEHYDRATASE <sval> DEHYDROGENASE <sval> DEOXYRIBONUCLEASE
%token <sval> DNABINDINGPROTEIN <sval> DNAENDONUCLEASE <sval> DNAEXONUCLEASE <sval> DNAHELICASE <sval> DNALIGASE <sval> DNAMETHYLTRANSFERASE <sval> DNAPOLYMERASE <sval> DNATELOMERASE <sval> DUALSPECIFICITYKINASE
%token <sval> DUALSPECIFICITYPHOSPHATASE <sval> EPIMERASE <sval> ENDOPEPTIDASE <sval> ENZYMEREGULATOR <sval> ESTERASE <sval> EXTRACELLULARLIGANDGATEDCHANNEL <sval> EXTRACELLULARMATRIXPROTEIN <sval> GALACTOSIDASE <sval> GALACTOSYLTRANSFERASE <sval> GLUCOSAMINYLTRANSFERASE
%token <sval> GLUCOSIDASE <sval> GLUCURONIDASE <sval> GLUTATHIONETRANSFERASE <sval> GLYCOSIDASE <sval> GLYCOSYLASE <sval> GLYCOSYLTRANSFERASE <sval> GPROTEIN <sval> GPROTEINCOUPLEDRECEPTOR <sval> GROWTHFACTOR <sval> GROWTHINHIBITORYFACTOR
%token <sval> GTPASE <sval> GTPASEACTIVATINGPROTEIN <sval> GUANINENUCLEOTIDEEXCHANGEFACTOR <sval> GUANYLATECYCLASE <sval> GUANYLCYCLASE <sval> HEATSHOCKPROTEIN <sval> HYDRATASE <sval> HYDROLASE <sval> HYDROXYLASE <sval> IMMUNOGLOBULIN
%token <sval> INTEGRALMEMBRANEPROTEIN <sval> INTRACELLULARLIGANDGATEDCHANNEL <sval> INWARDRECTIFIERCHANNEL <sval> IONCHANNEL_OTHER <sval> ISOMERASE <sval> LIGAND <sval> LIGASE <sval> LIPASE <sval> LIPIDKINASE <sval> LIPIDPHOSPHATASE
%token <sval> LYASE <sval> MEMBRANEBOUNDLIGAND <sval> MEMBRANETRANSPORTPROTEIN <sval> METALLOPROTEASE <sval> METHYLTRANSFERASE <sval> MOTORPROTEIN <sval> MUTASE <sval> MHCCOMPLEXPROTEIN <sval> NEURAMINIDASE <sval> NUCLEARRECEPTOR
%token <sval> NUCLEOTIDYLTRANSFERASE <sval> NADASE <sval> OXIDASE <sval> OXIDOREDUCTASE <sval> OXYGENASE <sval> PEPTIDEHORMONE <sval> PEROXIDASE <sval> PHOSPHATASE_OTHERS <sval> PHOSPHODIESTERASE <sval> PHOSPHOHYDROLASE
%token <sval> PHOSPHOLIPASE <sval> PHOSPHORYLASE <sval> PHOSPHOTRANSFERASE <sval> PHOSPHOTRIESTERASE <sval> PRENYLTRANSFERASE <sval> PROTEASE_UNCLASSIFIED <sval> PROTEASEINHIBITOR <sval> RACEMASE <sval> REDUCTASE <sval> RECEPTORSERINE_THREONINEKINASE
%token <sval> RECEPTORTYROSINEKINASE <sval> RECEPTORTYROSINEPHOSPHATASE <sval> REGULATORY_OTHERSUBUNIT <sval> REVERSETRANSCRIPTASE <sval> RIBONUCLEASE <sval> RIBONUCLEOPROTEIN <sval> RIBOSOMALSUBUNIT <sval> RIBOSYLTRANSFERASE <sval> RNABINDINGPROTEIN <sval> RNAENDONUCLEASE
%token <sval> RNAEXONUCLEASE <sval> RNAHELICASE <sval> RNAMETHYLTRANSFERASE <sval> RNAPOLYMERASE <sval> SECRETEDPOLYPEPTIDE_MISCELLANEOUS <sval> SERINE_THREONINEKINASE <sval> SERINE_THREONINEPHOSPHATASE <sval> SERINEPROTEASE <sval> SIALYLTRANSFERASE <sval> STORAGEPROTEIN
%token <sval> STRUCTURALPROTEIN <sval> SULPHATASE <sval> SULPHOHYDROLASE <sval> SULPHOTRANSFERASE <sval> SUPEROXIDEDISMUTASE <sval> SYNTHETASE <sval> TCELLANTIGENRECEPTOR <sval> THIOESTERASE <sval> TOPOISOMERASE <sval> TRANSALDOLASE
%token <sval> TRANSAMINASE <sval> TRANSCRIPTIONFACTOR <sval> TRANSCRIPTIONREGULATORYPROTEIN <sval> TRANSFERASE <sval> TRANSKETOLASE <sval> TRANSLATIONREGULATORYPROTEIN <sval> TRANSLOCASE <sval> TRANSPORT_CARGOPROTEIN <sval> TYROSINEKINASE <sval> TYROSINEPHOSPHATASE
%token <sval> UBIQUITINPROTEASOMESYSTEMPROTEIN <sval> UNCLASSIFIED <sval> VOLTAGEGATEDCHANNEL <sval> WATERCHANNEL
%token <sval> CELLSURFACERECEPTOR <sval> CHAPERONE <sval> CHEMOKINE <sval> COAGULATIONFACTOR <sval> COMPLEMENTPROTEIN <sval> COMPLEMENTRECEPTOR <sval> CYSTEINEPROTEASE <sval> CYTOKINE <sval> DNAREPAIRPROTEIN <sval> CELLJUNCTIONPROTEIN
%start linea
%%
linea:expr {printf("It's a %s\n", type); return;};
expr:BEHAVIOR_NEUROLOGICALPHENOTYPE HEARTVASCULARCONGESTION REPRODUCTIVESYSTEMPHENOTYPE ABNORMALCORONARYVESSELMORPHOLOGY ADIPOSETISSUEPHENOTYPE ABNORMALHEARTPOSITIONORORIENTATION ABNORMALINNERVATION NORMALPHENOTYPE VISION_EYEPHENOTYPE HOMEOSTASIS_METABOLISMPHENOTYPE ABNORMALHEARTPOSITIONORORIENTATION MUSCLEPHENOTYPE ABNORMALHEARTSIZE ABNORMALHEARTSIZE ABNORMALBRAINMORPHOLOGY NERVOUSSYSTEMPHENOTYPE NOPHENOTYPICANALYSIS ABNORMALHEARTANDGREATVESSELATTACHMENT ADIPOSETISSUEPHENOTYPE REPRODUCTIVESYSTEMPHENOTYPE ABNORMALHEARTANDGREATVESSELATTACHMENT NERVOUSSYSTEMPHENOTYPE CELLULARPHENOTYPE NORMALPHENOTYPE ABNORMALMENINGESMORPHOLOGY ABSENTHEART TASTE_OLFACTIONPHENOTYPE OTHERPHENOTYPE ABNORMALMENINGESMORPHOLOGY ABSENTHEART REPRODUCTIVESYSTEMPHENOTYPE ABNORMALSPINALCORDMORPHOLOGY NORMALPHENOTYPE ABNORMALHEARTVALVEMORPHOLOGY ABNORMALHEARTATRIUMMORPHOLOGY ABNORMALAUTONOMICNERVOUSSYSTEMMORPHOLOGY IMMUNESYSTEMPHENOTYPE NOPHENOTYPICANALYSIS ABNORMALHEARTATRIUMANDVENTRICLECONNECTION ABNORMALHEARTIRONLEVEL ABNORMALSPINALCORDMORPHOLOGY{type="HUMAN";}
	|ABNORMALHEARTPOSITIONORORIENTATION DYSTROPHICCARDIACCALCINOSIS ABNORMALHEARTANDGREATVESSELATTACHMENT ABNORMALHEARTSEPTUMMORPHOLOGY DIGESTIVE_ALIMENTARYPHENOTYPE ABNORMALHEARTATRIUMANDVENTRICLECONNECTION GROWTH_SIZEPHENOTYPE TUMORIGENESIS ABNORMALNEURONMORPHOLOGY PIGMENTATIONPHENOTYPE ABNORMALMIDDLEEARMORPHOLOGY HEARING_VESTIBULAR_EARPHENOTYPE ABNORMALHEARTATRIUMMORPHOLOGY ABNORMALBRAINMORPHOLOGY ABNORMALSPINALCORDMORPHOLOGY ABNORMALEARDEVELOPMENT IMMUNESYSTEMPHENOTYPE ABNORMALHEARTLAYERMORPHOLOGY ABNORMALHEARTDEVELOPMENT ALPHA_SYNUCLEININCLUSIONBODY ABNORMALNEURONMORPHOLOGY CARDIACFIBROSIS MORTALITY_AGING ABNORMALHEARTSHAPE HEARTVASCULARCONGESTION ABNORMALGLIALCELLMORPHOLOGY ABNORMALHEARTSHAPE LIVER_BILIARYSYSTEMPHENOTYPE ABNORMALHEARTIRONLEVEL HOMEOSTASIS_METABOLISMPHENOTYPE AMYLOIDBETADEPOSITS ABNORMALCORONARYVESSELMORPHOLOGY ADIPOSETISSUEPHENOTYPE CARDIOVASCULARSYSTEMPHENOTYPE BEHAVIOR_NEUROLOGICALPHENOTYPE ABNORMALHEARTDEVELOPMENT CARDIACFIBROSIS ENDOCRINE_EXOCRINEGLANDPHENOTYPE GROWTH_SIZEPHENOTYPE{type="CHIMP";}
	|TASTE_OLFACTIONPHENOTYPE ABNORMALHEARTVALVEMORPHOLOGY NERVOUSSYSTEMPHENOTYPE ALTEREDTUMORPATHOLOGY ABNORMALCORONARYVESSELMORPHOLOGY MUSCLEPHENOTYPE CELLULARPHENOTYPE ABNORMALPERICARDIUMMORPHOLOGY ABNORMALPERICARDIUMMORPHOLOGY EMBRYOGENESISPHENOTYPE ABNORMALSPINALCORDMORPHOLOGY ABNORMALCORONARYVESSELMORPHOLOGY RESPIRATORYSYSTEMPHENOTYPE EMBRYOGENESISPHENOTYPE CELLULARPHENOTYPE MUSCLEPHENOTYPE CRANIOFACIALPHENOTYPE ABNORMALNERVOUSSYSTEMDEVELOPMENT ABNORMALHEARTSIZE ABNORMALSPINALCORDMORPHOLOGY ABNORMALINNERVATION ABNORMALHEARTLAYERMORPHOLOGY ABNORMALHEARTSIZE ABNORMALHEARTSEPTUMMORPHOLOGY ABNORMALNERVOUSSYSTEMTRACTMORPHOLOGY HOMEOSTASIS_METABOLISMPHENOTYPE MUSCLEPHENOTYPE TASTE_OLFACTIONPHENOTYPE LIVER_BILIARYSYSTEMPHENOTYPE HEARING_VESTIBULAR_EARPHENOTYPE ABNORMALINNEREARMORPHOLOGY TASTE_OLFACTIONPHENOTYPE HEARTVASCULARCONGESTION IMMUNESYSTEMPHENOTYPE ABNORMALHEARTATRIUMMORPHOLOGY ABNORMALEARDEVELOPMENT ABNORMALNERVOUSSYSTEMTRACTMORPHOLOGY ALPHA_SYNUCLEININCLUSIONBODY MORTALITY_AGING NERVOUSSYSTEMPHENOTYPE RESPIRATORYSYSTEMPHENOTYPE ABNORMALHEARTATRIUMANDVENTRICLECONNECTION REPRODUCTIVESYSTEMPHENOTYPE ABNORMALHEARTSHAPE NOPHENOTYPICANALYSIS{type="HORSE";}
	|SKELETONPHENOTYPE ABNORMALHEARTANDGREATVESSELATTACHMENT ABNORMALBRAINMORPHOLOGY ABNORMALIMPULSECONDUCTINGSYSTEMMORPHOLOGY RESPIRATORYSYSTEMPHENOTYPE ABNORMALCORONARYVESSELMORPHOLOGY IMMUNESYSTEMPHENOTYPE ABNORMALOUTEREARMORPHOLOGY MUSCLEPHENOTYPE ABNORMALHEARTSIZE LIVER_BILIARYSYSTEMPHENOTYPE ABNORMALNERVOUSSYSTEMDEVELOPMENT ABNORMALHEARTATRIUMANDVENTRICLECONNECTION RESPIRATORYSYSTEMPHENOTYPE ABNORMALHEARTDEVELOPMENT RESPIRATORYSYSTEMPHENOTYPE HEARING_VESTIBULAR_EARPHENOTYPE NERVOUSSYSTEMPHENOTYPE DILATEDHEART NERVOUSSYSTEMPHENOTYPE ABNORMALHEARTVALVEMORPHOLOGY AMYLOIDBETADEPOSITS ENDOCRINE_EXOCRINEGLANDPHENOTYPE ABNORMALSOMATICNERVOUSSYSTEMMORPHOLOGY ABNORMALCORONARYVESSELMORPHOLOGY ABNORMALMENINGESMORPHOLOGY CARDIACFIBROSIS ABNORMALHEARTVENTRICLEMORPHOLOGY VISION_EYEPHENOTYPE ABNORMALINNEREARMORPHOLOGY HOMEOSTASIS_METABOLISMPHENOTYPE EMBRYOGENESISPHENOTYPE SKELETONPHENOTYPE ABNORMALNERVOUSSYSTEMTRACTMORPHOLOGY NERVOUSSYSTEMPHENOTYPE CARDIOVASCULARSYSTEMPHENOTYPE SKELETONPHENOTYPE ABNORMALSOMATICNERVOUSSYSTEMMORPHOLOGY INTEGUMENTPHENOTYPE ABNORMALHEARTVENTRICLEMORPHOLOGY IMMUNESYSTEMPHENOTYPE{type="BEAR";}
	|ABNORMALHEARTANDGREATVESSELATTACHMENT ABNORMALBRAINMORPHOLOGY CELLULARPHENOTYPE ABNORMALHEARTANDGREATVESSELATTACHMENT ALTEREDTUMORPATHOLOGY LIMBS_DIGITS_TAILPHENOTYPE LIVER_BILIARYSYSTEMPHENOTYPE ABNORMALHEARTANDGREATVESSELATTACHMENT ABSENTHEART ABNORMALHEARTSEPTUMMORPHOLOGY ABNORMALINNERVATION ABNORMALHEARTANDGREATVESSELATTACHMENT MORTALITY_AGING OTHERPHENOTYPE ALTEREDTUMORSUSCEPTIBILITY IMMUNESYSTEMPHENOTYPE NOPHENOTYPICANALYSIS ABNORMALHEARTIRONLEVEL HEARING_VESTIBULAR_EARPHENOTYPE AMYLOIDBETADEPOSITS ABNORMALHEARTSHAPE ABNORMALHEARTVALVEMORPHOLOGY ABNORMALNERVOUSSYSTEMTRACTMORPHOLOGY ABNORMALEPENDYMAMORPHOLOGY ABNORMALHEARTSHAPE RENAL_URINARYSYSTEMPHENOTYPE ABNORMALMIDDLEEARMORPHOLOGY ABNORMALHEARTSHAPE ABNORMALHEARTLAYERMORPHOLOGY ABNORMALNERVOUSSYSTEMTRACTMORPHOLOGY LIMBS_DIGITS_TAILPHENOTYPE ABNORMALMENINGESMORPHOLOGY ABNORMALNEURONMORPHOLOGY SKELETONPHENOTYPE ABNORMALPERICARDIUMMORPHOLOGY NERVOUSSYSTEMPHENOTYPE {type="ORANGUTAN";}
	|RNABINDINGPROTEIN SULPHOHYDROLASE DNAENDONUCLEASE DECARBOXYLASE {type = "DOG";}
	|TYROSINEPHOSPHATASE UBIQUITINPROTEASOMESYSTEMPROTEIN TRANSALDOLASE TCELLANTIGENRECEPTOR {type ="CAT";}
	|SULPHOHYDROLASE DECARBOXYLASE TYROSINEPHOSPHATASE TRANSALDOLASE {type= "BIRD";}
	|DNAENDONUCLEASE RNABINDINGPROTEIN TYROSINEPHOSPHATASE DECARBOXYLASE {type="HEADGEHOG";}
	|TCELLANTIGENRECEPTOR UBIQUITINPROTEASOMESYSTEMPROTEIN SULPHOHYDROLASE TRANSALDOLASE {type="SNAKE";}
	|DNAENDONUCLEASE TYROSINEPHOSPHATASE DECARBOXYLASE RNABINDINGPROTEIN {type="PIG";}
	;
ADIPOSETISSUEPHENOTYPE:ANCHORPROTEIN LIGAND OXIDASE RACEMASE EPIMERASE UNCLASSIFIED HYDROLASE GTPASEACTIVATINGPROTEIN GLUCOSAMINYLTRANSFERASE EPIMERASE GTPASE GALACTOSIDASE STRUCTURALPROTEIN WATERCHANNEL DNAMETHYLTRANSFERASE DNAEXONUCLEASE;
BEHAVIOR_NEUROLOGICALPHENOTYPE:TRANSLATIONREGULATORYPROTEIN SERINEPROTEASE MHCCOMPLEXPROTEIN ENDOPEPTIDASE AMINORASA PHOSPHOHYDROLASE TCELLANTIGENRECEPTOR CELLJUNCTIONPROTEIN ATPASE PHOSPHOHYDROLASE DEHYDROGENASE;
CARDIOVASCULARSYSTEMPHENOTYPE:PHOSPHODIESTERASE ACIDPHOSPHATASE RACEMASE RIBOSYLTRANSFERASE AMYLASE GTPASEACTIVATINGPROTEIN NUCLEOTIDYLTRANSFERASE PHOSPHOHYDROLASE PRENYLTRANSFERASE DNAMETHYLTRANSFERASE SYNTHETASE GUANYLCYCLASE TRANSLATIONREGULATORYPROTEIN DNAEXONUCLEASE THIOESTERASE;
CELLULARPHENOTYPE:RECEPTORSERINE_THREONINEKINASE VOLTAGEGATEDCHANNEL WATERCHANNEL AMYLASE TRANSAMINASE RNAMETHYLTRANSFERASE MOTORPROTEIN GALACTOSIDASE GROWTHFACTOR HYDRATASE BCELLANTIGENRECEPTOR DEAMINASE;
CRANIOFACIALPHENOTYPE:PHOSPHOHYDROLASE ISOMERASE PHOSPHODIESTERASE OXYGENASE DUALSPECIFICITYKINASE GLUTATHIONETRANSFERASE SULPHATASE DNABINDINGPROTEIN GROWTHINHIBITORYFACTOR;
DIGESTIVE_ALIMENTARYPHENOTYPE:HYDROXYLASE HEATSHOCKPROTEIN SERINEPROTEASE DEOXYRIBONUCLEASE GPROTEINCOUPLEDRECEPTOR COMPLEMENTRECEPTOR GUANYLATECYCLASE TRANSFERASE METALLOPROTEASE PRENYLTRANSFERASE INWARDRECTIFIERCHANNEL TRANSKETOLASE;
EMBRYOGENESISPHENOTYPE:SERINE_THREONINEPHOSPHATASE HYDROLASE DEAMINASE ATPASE DNALIGASE;
ENDOCRINE_EXOCRINEGLANDPHENOTYPE:OXIDASE SYNTHETASE GLYCOSYLTRANSFERASE MEMBRANEBOUNDLIGAND INTRACELLULARLIGANDGATEDCHANNEL DNAEXONUCLEASE MOTORPROTEIN GPROTEIN DEHYDROGENASE INTEGRALMEMBRANEPROTEIN;
GROWTH_SIZEPHENOTYPE:METALLOPROTEASE NEURAMINIDASE WATERCHANNEL THIOESTERASE METALLOPROTEASE RNAEXONUCLEASE RECEPTORTYROSINEKINASE PEROXIDASE DEHYDROGENASE ATPASE RECEPTORSERINE_THREONINEKINASE;
HEARING_VESTIBULAR_EARPHENOTYPE:TRANSFERASE CELLSURFACERECEPTOR GUANYLATECYCLASE PRENYLTRANSFERASE IONCHANNEL_OTHER MEMBRANETRANSPORTPROTEIN;
HOMEOSTASIS_METABOLISMPHENOTYPE:DEACETYLASE CELLSURFACERECEPTOR TOPOISOMERASE METALLOPROTEASE SYNTHETASE OXIDOREDUCTASE GROWTHFACTOR AMYLASE BCELLANTIGENRECEPTOR GLUTATHIONETRANSFERASE PHOSPHOTRANSFERASE CARBONICANHYDRASE STORAGEPROTEIN;
IMMUNESYSTEMPHENOTYPE:IMMUNOGLOBULIN DEHYDROGENASE ADENOSYLTRANSFERASE PROTEASE_UNCLASSIFIED ALKALINEPHOSPHATASE COMPLEMENTRECEPTOR GALACTOSYLTRANSFERASE DEACETYLASE WATERCHANNEL ENZYMEREGULATOR RNAEXONUCLEASE PHOSPHOHYDROLASE GALACTOSYLTRANSFERASE TCELLANTIGENRECEPTOR;
INTEGUMENTPHENOTYPE:ACYLTRANSFERASE SULPHATASE PHOSPHODIESTERASE CARBOXYPEPTIDASE EXTRACELLULARMATRIXPROTEIN RACEMASE RECEPTORTYROSINEPHOSPHATASE SERINE_THREONINEKINASE GROWTHFACTOR CATALASE NUCLEOTIDYLTRANSFERASE;
LIMBS_DIGITS_TAILPHENOTYPE:ADENOSYLTRANSFERASE SERINE_THREONINEKINASE GPROTEIN MHCCOMPLEXPROTEIN;
LIVER_BILIARYSYSTEMPHENOTYPE:DNAREPAIRPROTEIN GLUCURONIDASE DEACETYLASE MEMBRANEBOUNDLIGAND ADHESIONMOLECULE ADHESIONMOLECULE ASPARTICPROTEASE EPIMERASE TRANSCRIPTIONREGULATORYPROTEIN HYDROLASE GLYCOSIDASE ADENYLATECYCLASE PHOSPHATASE_OTHERS GUANYLCYCLASE WATERCHANNEL RNAENDONUCLEASE GROWTHFACTOR BCELLANTIGENRECEPTOR DNAMETHYLTRANSFERASE SUPEROXIDEDISMUTASE INTRACELLULARLIGANDGATEDCHANNEL CYTOKINE;
MORTALITY_AGING:GROWTHINHIBITORYFACTOR SERINE_THREONINEPHOSPHATASE DNALIGASE PROTEASE_UNCLASSIFIED TRANSPORT_CARGOPROTEIN CHEMOKINE DNAEXONUCLEASE DEAMINASE ENDOPEPTIDASE MHCCOMPLEXPROTEIN RIBOSYLTRANSFERASE EXTRACELLULARLIGANDGATEDCHANNEL EXTRACELLULARLIGANDGATEDCHANNEL RNAPOLYMERASE TYROSINEPHOSPHATASE GLUCOSIDASE METALLOPROTEASE LIGAND;
MUSCLEPHENOTYPE:SYNTHETASE GLUTATHIONETRANSFERASE RNABINDINGPROTEIN ACIDPHOSPHATASE;
NERVOUSSYSTEMPHENOTYPE:TCELLANTIGENRECEPTOR HEATSHOCKPROTEIN OXIDOREDUCTASE GROWTHFACTOR;
NOPHENOTYPICANALYSIS:METALLOPROTEASE PHOSPHOTRANSFERASE HYDROLASE GUANYLATECYCLASE CELLCYCLECONTROLPROTEIN UBIQUITINPROTEASOMESYSTEMPROTEIN;
NORMALPHENOTYPE:CELLCYCLECONTROLPROTEIN VOLTAGEGATEDCHANNEL LIPASE PHOSPHOLIPASE GLUCOSIDASE;
OTHERPHENOTYPE:PHOSPHOTRIESTERASE GTPASE LYASE DEHYDRATASE GPROTEINCOUPLEDRECEPTOR SERINEPROTEASE ESTERASE;
PIGMENTATIONPHENOTYPE:ALKALINEPHOSPHATASE TYROSINEPHOSPHATASE DNAREPAIRPROTEIN CHAPERONE;
RENAL_URINARYSYSTEMPHENOTYPE:ADENOSYLTRANSFERASE GLYCOSIDASE CELLCYCLECONTROLPROTEIN DEFENSIN SUPEROXIDEDISMUTASE IMMUNOGLOBULIN STORAGEPROTEIN CYTOKINE HYDROLASE CYTOSKELETALASSOCIATEDPROTEIN GLYCOSIDASE SECRETEDPOLYPEPTIDE_MISCELLANEOUS ATPASE PHOSPHOHYDROLASE GLUTATHIONETRANSFERASE COMPLEMENTRECEPTOR REVERSETRANSCRIPTASE HYDROLASE GLYCOSYLASE;
REPRODUCTIVESYSTEMPHENOTYPE:UNCLASSIFIED PHOSPHORYLASE NUCLEARRECEPTOR STORAGEPROTEIN ANCHORPROTEIN PROTEASEINHIBITOR REVERSETRANSCRIPTASE DNAMETHYLTRANSFERASE HYDROLASE INTRACELLULARLIGANDGATEDCHANNEL BCELLANTIGENRECEPTOR RNAENDONUCLEASE;
RESPIRATORYSYSTEMPHENOTYPE:CHAPERONE RIBOSYLTRANSFERASE VOLTAGEGATEDCHANNEL COAGULATIONFACTOR DNATELOMERASE ACIDPHOSPHATASE CARBOXYPEPTIDASE REGULATORY_OTHERSUBUNIT CARBONICANHYDRASE TRANSLOCASE GLUCURONIDASE SUPEROXIDEDISMUTASE TRANSALDOLASE RIBONUCLEOPROTEIN PROTEASEINHIBITOR ALDOLASE TOPOISOMERASE;
SKELETONPHENOTYPE:RNABINDINGPROTEIN RIBOSOMALSUBUNIT TRANSAMINASE DNAHELICASE DEACETYLASE DEAMINASE RECEPTORTYROSINEKINASE INWARDRECTIFIERCHANNEL;
TASTE_OLFACTIONPHENOTYPE:INWARDRECTIFIERCHANNEL GLYCOSYLTRANSFERASE GUANINENUCLEOTIDEEXCHANGEFACTOR RNAENDONUCLEASE SULPHATASE AMINORASA METHYLTRANSFERASE CARBONICANHYDRASE GPROTEINCOUPLEDRECEPTOR CALCIUMBINDINGPROTEIN BCELLANTIGENRECEPTOR SERINE_THREONINEPHOSPHATASE SECRETEDPOLYPEPTIDE_MISCELLANEOUS TCELLANTIGENRECEPTOR LIPASE HYDROXYLASE MEMBRANETRANSPORTPROTEIN HYDROXYLASE REGULATORY_OTHERSUBUNIT HEATSHOCKPROTEIN DUALSPECIFICITYKINASE INWARDRECTIFIERCHANNEL;
TUMORIGENESIS:ANCHORPROTEIN LIGAND ALKALINEPHOSPHATASE METHYLTRANSFERASE GLYCOSYLASE COMPLEMENTPROTEIN SUPEROXIDEDISMUTASE DEHYDROGENASE;
ALTEREDTUMORPATHOLOGY:DNAHELICASE SERINE_THREONINEPHOSPHATASE COAGULATIONFACTOR DEHYDROGENASE LIPIDPHOSPHATASE CALCIUMBINDINGPROTEIN ACYLTRANSFERASE CHEMOKINE CYTOSKELETALASSOCIATEDPROTEIN DNAREPAIRPROTEIN DEOXYRIBONUCLEASE DEFENSIN CARBONICANHYDRASE PROTEASE_UNCLASSIFIED RNAHELICASE HYDRATASE CATALASE CYTOKINE DEOXYRIBONUCLEASE TRANSPORT_CARGOPROTEIN;
ALTEREDTUMORSUSCEPTIBILITY:LYASE SECRETEDPOLYPEPTIDE_MISCELLANEOUS CYTOKINE DUALSPECIFICITYKINASE;
VISION_EYEPHENOTYPE:EPIMERASE RIBONUCLEASE DNALIGASE CYTOSKELETALPROTEIN DECARBOXYLASE DEACETYLASE AMINOPEPTIDASE RNABINDINGPROTEIN DNAREPAIRPROTEIN GLUTATHIONETRANSFERASE CELLJUNCTIONPROTEIN TYROSINEPHOSPHATASE;
ABNORMALEARDEVELOPMENT:GTPASE LIGASE LIPIDPHOSPHATASE RECEPTORTYROSINEPHOSPHATASE GLYCOSYLTRANSFERASE ASPARTICPROTEASE MHCCOMPLEXPROTEIN GLYCOSYLASE AMINORASA CYTOSKELETALASSOCIATEDPROTEIN;
ABNORMALINNEREARMORPHOLOGY:RACEMASE ACIDPHOSPHATASE SECRETEDPOLYPEPTIDE_MISCELLANEOUS ACYLTRANSFERASE SULPHOHYDROLASE DNAEXONUCLEASE;
ABNORMALMIDDLEEARMORPHOLOGY:DNATELOMERASE DEHYDROGENASE CELLCYCLECONTROLPROTEIN PRENYLTRANSFERASE SULPHOTRANSFERASE SERINEPROTEASE NUCLEOTIDYLTRANSFERASE EXTRACELLULARMATRIXPROTEIN AMINOPEPTIDASE BCELLANTIGENRECEPTOR SERINE_THREONINEPHOSPHATASE;
ABNORMALOUTEREARMORPHOLOGY:GTPASEACTIVATINGPROTEIN GLYCOSYLASE PROTEASE_UNCLASSIFIED EXTRACELLULARLIGANDGATEDCHANNEL RNABINDINGPROTEIN RNAEXONUCLEASE TRANSLOCASE CARBONICANHYDRASE SERINE_THREONINEPHOSPHATASE RACEMASE TRANSLATIONREGULATORYPROTEIN GLYCOSYLTRANSFERASE DNAPOLYMERASE MUTASE RIBOSYLTRANSFERASE EXTRACELLULARMATRIXPROTEIN CYSTEINEPROTEASE;
ABNORMALAUTONOMICNERVOUSSYSTEMMORPHOLOGY:IMMUNOGLOBULIN ADENOSYLTRANSFERASE DEHYDROGENASE DNAPOLYMERASE SIALYLTRANSFERASE ATPASE DEOXYRIBONUCLEASE DEACETYLASE REDUCTASE OXIDOREDUCTASE GALACTOSIDASE TRANSCRIPTIONFACTOR GUANYLCYCLASE INTRACELLULARLIGANDGATEDCHANNEL SYNTHETASE LIPIDPHOSPHATASE CHAPERONE;
ABNORMALBRAINMORPHOLOGY:VOLTAGEGATEDCHANNEL MEMBRANEBOUNDLIGAND GLYCOSIDASE ASPARTICPROTEASE EPIMERASE RECEPTORTYROSINEPHOSPHATASE MOTORPROTEIN RNAHELICASE PHOSPHATASE_OTHERS RIBONUCLEOPROTEIN GROWTHINHIBITORYFACTOR ISOMERASE GLUCOSIDASE GLYCOSIDASE TRANSCRIPTIONFACTOR RNABINDINGPROTEIN HYDRATASE TYROSINEPHOSPHATASE TRANSKETOLASE INWARDRECTIFIERCHANNEL PEROXIDASE;
ABNORMALEPENDYMAMORPHOLOGY:THIOESTERASE TRANSKETOLASE OXIDASE GROWTHFACTOR GROWTHINHIBITORYFACTOR MUTASE PHOSPHOTRIESTERASE RNAMETHYLTRANSFERASE LIGAND;
ABNORMALGLIALCELLMORPHOLOGY:DNALIGASE MEMBRANEBOUNDLIGAND LIGAND RECEPTORTYROSINEKINASE EPIMERASE REVERSETRANSCRIPTASE ASPARTICPROTEASE SECRETEDPOLYPEPTIDE_MISCELLANEOUS ALDOLASE ATPASE DEHYDRATASE DEFENSIN SUPEROXIDEDISMUTASE ASPARTICPROTEASE REGULATORY_OTHERSUBUNIT NUCLEOTIDYLTRANSFERASE CELLCYCLECONTROLPROTEIN;
ABNORMALINNERVATION:DNATELOMERASE PRENYLTRANSFERASE GLUCOSAMINYLTRANSFERASE RIBOSYLTRANSFERASE PROTEASE_UNCLASSIFIED TRANSLOCASE DNAHELICASE NUCLEOTIDYLTRANSFERASE TRANSPORT_CARGOPROTEIN DEAMINASE LYASE DECARBOXYLASE COAGULATIONFACTOR PRENYLTRANSFERASE MHCCOMPLEXPROTEIN MUTASE NUCLEOTIDYLTRANSFERASE HEATSHOCKPROTEIN NUCLEARRECEPTOR COMPLEMENTPROTEIN GROWTHINHIBITORYFACTOR CARBOXYLASE;
ABNORMALMENINGESMORPHOLOGY:ATPASE GTPASE DNAMETHYLTRANSFERASE DNATELOMERASE CARBOXYLASE SYNTHETASE GLUTATHIONETRANSFERASE VOLTAGEGATEDCHANNEL DEOXYRIBONUCLEASE MOTORPROTEIN GROWTHFACTOR TRANSCRIPTIONFACTOR OXYGENASE SULPHATASE TRANSLOCASE ADENYLATECYCLASE;
ABNORMALNERVOUSSYSTEMDEVELOPMENT:DNAPOLYMERASE ACYLTRANSFERASE TOPOISOMERASE NUCLEOTIDYLTRANSFERASE WATERCHANNEL LIPIDKINASE;
ABNORMALNERVOUSSYSTEMTRACTMORPHOLOGY:RNABINDINGPROTEIN SERINE_THREONINEPHOSPHATASE ACIDPHOSPHATASE PROTEASE_UNCLASSIFIED MOTORPROTEIN CYTOKINERECEPTOR;
ABNORMALNEURONMORPHOLOGY:MOTORPROTEIN SERINEPROTEASE SIALYLTRANSFERASE;
ABNORMALSOMATICNERVOUSSYSTEMMORPHOLOGY:GROWTHFACTOR REVERSETRANSCRIPTASE OXYGENASE EXTRACELLULARLIGANDGATEDCHANNEL GTPASE ISOMERASE RIBOSOMALSUBUNIT CALCIUMBINDINGPROTEIN OXIDASE TRANSPORT_CARGOPROTEIN GALACTOSIDASE REVERSETRANSCRIPTASE;
ABNORMALSPINALCORDMORPHOLOGY:VOLTAGEGATEDCHANNEL GLUCOSIDASE GLYCOSYLTRANSFERASE DEACETYLASE OXIDASE HYDROXYLASE CHEMOKINE DNAREPAIRPROTEIN WATERCHANNEL;
ALPHA_SYNUCLEININCLUSIONBODY:REDUCTASE ENDOPEPTIDASE LIGAND DNALIGASE DNALIGASE MEMBRANETRANSPORTPROTEIN PHOSPHOTRANSFERASE DEFENSIN RIBOSOMALSUBUNIT UNCLASSIFIED UBIQUITINPROTEASOMESYSTEMPROTEIN SECRETEDPOLYPEPTIDE_MISCELLANEOUS UBIQUITINPROTEASOMESYSTEMPROTEIN OXYGENASE TRANSLOCASE GALACTOSYLTRANSFERASE DEHYDRATASE ADHESIONMOLECULE DUALSPECIFICITYPHOSPHATASE PROTEASE_UNCLASSIFIED;
AMYLOIDBETADEPOSITS:LIPIDPHOSPHATASE GLUCOSIDASE UBIQUITINPROTEASOMESYSTEMPROTEIN REGULATORY_OTHERSUBUNIT GTPASEACTIVATINGPROTEIN OXIDASE PRENYLTRANSFERASE GTPASEACTIVATINGPROTEIN GPROTEIN OXYGENASE TRANSPORT_CARGOPROTEIN LIPIDKINASE;
ABNORMALCORONARYVESSELMORPHOLOGY:CELLCYCLECONTROLPROTEIN LIPASE EPIMERASE CYTOSKELETALPROTEIN TRANSCRIPTIONREGULATORYPROTEIN UBIQUITINPROTEASOMESYSTEMPROTEIN ADENYLATECYCLASE GUANINENUCLEOTIDEEXCHANGEFACTOR PEPTIDEHORMONE OXYGENASE RNAHELICASE TRANSAMINASE RACEMASE UBIQUITINPROTEASOMESYSTEMPROTEIN SULPHOHYDROLASE ENZYMEREGULATOR;
ABNORMALHEARTANDGREATVESSELATTACHMENT:RNABINDINGPROTEIN RIBONUCLEASE TRANSCRIPTIONFACTOR ALDOLASE ADAPTERMOLECULE GLYCOSYLTRANSFERASE ALDOLASE MEMBRANETRANSPORTPROTEIN BCELLANTIGENRECEPTOR TRANSFERASE TYROSINEKINASE ISOMERASE;
ABNORMALHEARTATRIUMANDVENTRICLECONNECTION:RACEMASE OXIDOREDUCTASE INTRACELLULARLIGANDGATEDCHANNEL PHOSPHOTRANSFERASE TOPOISOMERASE MUTASE TCELLANTIGENRECEPTOR TRANSKETOLASE SIALYLTRANSFERASE GALACTOSIDASE RIBONUCLEASE PHOSPHOHYDROLASE REGULATORY_OTHERSUBUNIT DNAPOLYMERASE EPIMERASE EXTRACELLULARMATRIXPROTEIN ALKALINEPHOSPHATASE;
ABNORMALHEARTATRIUMMORPHOLOGY:GPROTEIN ASPARTICPROTEASE DNALIGASE ADHESIONMOLECULE REVERSETRANSCRIPTASE RIBONUCLEOPROTEIN ACIDPHOSPHATASE OXIDOREDUCTASE RIBONUCLEOPROTEIN TRANSPORT_CARGOPROTEIN DNAPOLYMERASE TRANSLATIONREGULATORYPROTEIN TYROSINEPHOSPHATASE CYTOSKELETALPROTEIN PHOSPHOLIPASE CARBONICANHYDRASE RNAMETHYLTRANSFERASE DEHYDROGENASE CARBOXYLASE EXTRACELLULARMATRIXPROTEIN HEATSHOCKPROTEIN;
ABNORMALHEARTDEVELOPMENT:TRANSPORT_CARGOPROTEIN EPIMERASE ATPASE NEURAMINIDASE GALACTOSYLTRANSFERASE CHAPERONE ESTERASE IMMUNOGLOBULIN;
ABNORMALHEARTIRONLEVEL:ACIDPHOSPHATASE TRANSAMINASE STORAGEPROTEIN SERINEPROTEASE PEROXIDASE ADENOSYLTRANSFERASE NUCLEOTIDYLTRANSFERASE UBIQUITINPROTEASOMESYSTEMPROTEIN GLUTATHIONETRANSFERASE GPROTEINCOUPLEDRECEPTOR INTRACELLULARLIGANDGATEDCHANNEL ADENOSYLTRANSFERASE SULPHOHYDROLASE PHOSPHORYLASE;
ABNORMALHEARTLAYERMORPHOLOGY:GLYCOSYLASE INWARDRECTIFIERCHANNEL DNALIGASE CHEMOKINE GLUCURONIDASE CHEMOKINE GROWTHFACTOR CYSTEINEPROTEASE COMPLEMENTPROTEIN SERINE_THREONINEKINASE NUCLEOTIDYLTRANSFERASE PROTEASE_UNCLASSIFIED;
ABNORMALHEARTPOSITIONORORIENTATION:ALKALINEPHOSPHATASE PHOSPHATASE_OTHERS GLYCOSYLTRANSFERASE DEACETYLASE NADASE AMINOPEPTIDASE VOLTAGEGATEDCHANNEL ENZYMEREGULATOR CALCIUMBINDINGPROTEIN CHAPERONE PEROXIDASE PHOSPHOTRANSFERASE PHOSPHORYLASE GTPASEACTIVATINGPROTEIN DEHYDROGENASE STORAGEPROTEIN DUALSPECIFICITYKINASE;
ABNORMALHEARTSEPTUMMORPHOLOGY:RACEMASE LIPASE RNAEXONUCLEASE RACEMASE AMINORASA ADENOSYLTRANSFERASE ALDOLASE LIPIDPHOSPHATASE CYTOSKELETALPROTEIN PRENYLTRANSFERASE CARBONICANHYDRASE RNAMETHYLTRANSFERASE LYASE COMPLEMENTPROTEIN GTPASEACTIVATINGPROTEIN CELLCYCLECONTROLPROTEIN SUPEROXIDEDISMUTASE EPIMERASE ALKALINEPHOSPHATASE;
ABNORMALHEARTSHAPE:ANCHORPROTEIN HEATSHOCKPROTEIN GUANYLCYCLASE PHOSPHOTRIESTERASE DEFENSIN METHYLTRANSFERASE MEMBRANEBOUNDLIGAND HYDROXYLASE PHOSPHOTRIESTERASE RNAPOLYMERASE GLUCOSIDASE WATERCHANNEL ADENOSYLTRANSFERASE HEATSHOCKPROTEIN RNAPOLYMERASE SECRETEDPOLYPEPTIDE_MISCELLANEOUS RACEMASE GROWTHFACTOR MOTORPROTEIN;
ABNORMALHEARTSIZE:CARBOXYLASE GALACTOSIDASE OXIDOREDUCTASE ASPARTICPROTEASE RECEPTORSERINE_THREONINEKINASE LIGASE CARBOXYLASE RNABINDINGPROTEIN;
ABNORMALHEARTVALVEMORPHOLOGY:TRANSALDOLASE GPROTEINCOUPLEDRECEPTOR PEROXIDASE SULPHOTRANSFERASE;
ABNORMALHEARTVENTRICLEMORPHOLOGY:MEMBRANETRANSPORTPROTEIN PHOSPHOHYDROLASE ADAPTERMOLECULE GALACTOSIDASE AMYLASE DUALSPECIFICITYKINASE OXIDOREDUCTASE OXIDASE DNATELOMERASE SYNTHETASE PHOSPHOTRIESTERASE TRANSALDOLASE CYTOKINERECEPTOR PEROXIDASE;
ABNORMALIMPULSECONDUCTINGSYSTEMMORPHOLOGY:PHOSPHORYLASE GTPASEACTIVATINGPROTEIN DEHYDROGENASE TCELLANTIGENRECEPTOR PHOSPHOHYDROLASE RIBONUCLEOPROTEIN DNATELOMERASE;
ABNORMALPERICARDIUMMORPHOLOGY:TRANSFERASE SERINEPROTEASE GUANYLCYCLASE TCELLANTIGENRECEPTOR DEFENSIN TYROSINEPHOSPHATASE PHOSPHOHYDROLASE SUPEROXIDEDISMUTASE GLUCOSIDASE LIPASE STORAGEPROTEIN PEROXIDASE REVERSETRANSCRIPTASE DUALSPECIFICITYPHOSPHATASE THIOESTERASE TRANSLOCASE RNABINDINGPROTEIN PHOSPHORYLASE HYDROXYLASE RNAHELICASE GALACTOSYLTRANSFERASE OXYGENASE;
ABSENTHEART:GUANYLATECYCLASE OXYGENASE TRANSAMINASE NUCLEOTIDYLTRANSFERASE TYROSINEPHOSPHATASE TRANSKETOLASE;
CARDIACFIBROSIS:PHOSPHOTRIESTERASE ADENYLATECYCLASE SULPHOHYDROLASE AMINOPEPTIDASE AMINORASA;
DILATEDHEART:GALACTOSIDASE ESTERASE EXTRACELLULARMATRIXPROTEIN SERINE_THREONINEKINASE LIGAND DNAMETHYLTRANSFERASE INTRACELLULARLIGANDGATEDCHANNEL DNAEXONUCLEASE COAGULATIONFACTOR ACYLTRANSFERASE STRUCTURALPROTEIN CYTOKINE ADAPTERMOLECULE ALKALINEPHOSPHATASE DNALIGASE EXTRACELLULARLIGANDGATEDCHANNEL DNAMETHYLTRANSFERASE CYTOSKELETALASSOCIATEDPROTEIN RIBOSOMALSUBUNIT GUANYLATECYCLASE MEMBRANETRANSPORTPROTEIN INTEGRALMEMBRANEPROTEIN;
DYSTROPHICCARDIACCALCINOSIS:RIBONUCLEOPROTEIN ACIDPHOSPHATASE DNATELOMERASE MUTASE RIBONUCLEOPROTEIN PROTEASEINHIBITOR GPROTEIN RIBOSYLTRANSFERASE CARBOXYPEPTIDASE PHOSPHOHYDROLASE GALACTOSIDASE METHYLTRANSFERASE CELLCYCLECONTROLPROTEIN PHOSPHOLIPASE MUTASE CARBOXYLASE GPROTEINCOUPLEDRECEPTOR;
HEARTVASCULARCONGESTION:COMPLEMENTRECEPTOR SUPEROXIDEDISMUTASE NUCLEARRECEPTOR UNCLASSIFIED UNCLASSIFIED ALKALINEPHOSPHATASE HEATSHOCKPROTEIN DEACETYLASE TRANSPORT_CARGOPROTEIN ASPARTICPROTEASE LYASE ALDOLASE CELLJUNCTIONPROTEIN;
%%

void yyerror(char *s) {
	//printf("%s\n", yytext);
    fprintf(stderr, "It's a nolivingthing\n", s);
}

int yywarp(){
	return 1;
}

//int yylex (void) {return getchar();}

int main(int argc, char **argv){
		start(argc, argv);
		yyin=fopen("lexeme","r");
		yyparse();
		yyin=fopen("lexeme","r");
		fclose(yyin);
}