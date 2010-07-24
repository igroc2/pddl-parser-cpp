(define (problem Pathways-04)
(:domain Pathways-ComplexPreferences)
(:objects
	Wee1 - simple
	SP1 - simple
	RPA - simple
	pRbp2 - simple
	pRbp1-E2F4p1-DP12 - simple
	pRb-E2F4p1-DP12 - simple
	PCNA - simple
	m1433 - simple
	HDAC1-p130-E2F4p1-DP12 - simple
	HDAC1 - simple
	gP - simple
	gE2 - simple
	E2F6-DP12p1 - simple
	E2F4-DP12p1 - simple
	E2F13 - simple
	DMP1 - simple
	C-TAK1 - simple
	CEBP - simple
	cdk2p1 - simple
	cdk2 - simple
	cdc25C - simple
	c-Abl - simple
	c-Abl-pRbp2 - complex
	cdk2-cycA-E2F13 - complex
	cdk2p1-cycA-E2F13 - complex
	CEBP-gP - complex
	CEBP-pRbp2 - complex
	P - complex
	CEBP-pRbp2-gP - complex
	DMP1-cycD - complex
	DMP1-cycDp1 - complex
	E2F6-DP12p1-gE2 - complex
	HDAC1-p107-E2F4-DP12p1 - complex
	HDAC1-p130-E2F4p1-DP12-gE2 - complex
	HDAC1-pRb-E2F4p1-DP12 - complex
	m1433-cdc25Cp2 - complex
	cdc25Cp2 - complex
	p107-E2F4-DP12p1-gE2 - complex
	p107-E2F4-DP12p1 - complex
	PCNA-cycDp1 - complex
	PCNA-cycD - complex
	cdk2-cycEp1 - complex
	cdk2-cycE - complex
	cdk2p1-cycEp1 - complex
	cdk2p1-cycE - complex
	pRb-E2F4p1-DP12-gE2 - complex
	pRbp1-E2F4p1-DP12-gE2 - complex
	RPA-cycA - complex
	cdk2-cycA - complex
	cdk2p1-cycA - complex
	SP1-E2F13-gP - complex
	SP1-E2F13 - complex
	c-Myc - complex
	cycA - complex
	cycD - complex
	cycDp1 - complex
	cycE - complex
	cycEp1 - complex
	p19ARF - complex
	pol - complex
	SP1-gP - complex
	SP1-p107-gP - complex
	SP1-p107p1-gP - complex
	SP1-p107p1 - complex
	p107p1 - complex
	SP1-p107 - complex
	p107 - complex)


(:init
	(possible Wee1)
	(= (available Wee1) 0)
	(possible SP1)
	(= (available SP1) 0)
	(possible RPA)
	(= (available RPA) 0)
	(possible pRbp2)
	(= (available pRbp2) 0)
	(possible pRbp1-E2F4p1-DP12)
	(= (available pRbp1-E2F4p1-DP12) 0)
	(possible pRb-E2F4p1-DP12)
	(= (available pRb-E2F4p1-DP12) 0)
	(possible PCNA)
	(= (available PCNA) 0)
	(possible m1433)
	(= (available m1433) 0)
	(possible HDAC1-p130-E2F4p1-DP12)
	(= (available HDAC1-p130-E2F4p1-DP12) 0)
	(possible HDAC1)
	(= (available HDAC1) 0)
	(possible gP)
	(= (available gP) 0)
	(possible gE2)
	(= (available gE2) 0)
	(possible E2F6-DP12p1)
	(= (available E2F6-DP12p1) 0)
	(possible E2F4-DP12p1)
	(= (available E2F4-DP12p1) 0)
	(possible E2F13)
	(= (available E2F13) 0)
	(possible DMP1)
	(= (available DMP1) 0)
	(possible C-TAK1)
	(= (available C-TAK1) 0)
	(possible CEBP)
	(= (available CEBP) 0)
	(possible cdk2p1)
	(= (available cdk2p1) 0)
	(possible cdk2)
	(= (available cdk2) 0)
	(possible cdc25C)
	(= (available cdc25C) 0)
	(possible c-Abl)
	(= (available c-Abl) 0)
	(= (available c-Abl-pRbp2) 0)
	(= (available cdk2-cycA-E2F13) 0)
	(= (available cdk2p1-cycA-E2F13) 0)
	(= (available CEBP-gP) 0)
	(= (available CEBP-pRbp2) 0)
	(= (available P) 0)
	(= (available CEBP-pRbp2-gP) 0)
	(= (available DMP1-cycD) 0)
	(= (available DMP1-cycDp1) 0)
	(= (available E2F6-DP12p1-gE2) 0)
	(= (available HDAC1-p107-E2F4-DP12p1) 0)
	(= (available HDAC1-p130-E2F4p1-DP12-gE2) 0)
	(= (available HDAC1-pRb-E2F4p1-DP12) 0)
	(= (available m1433-cdc25Cp2) 0)
	(= (available cdc25Cp2) 0)
	(= (available p107-E2F4-DP12p1-gE2) 0)
	(= (available p107-E2F4-DP12p1) 0)
	(= (available PCNA-cycDp1) 0)
	(= (available PCNA-cycD) 0)
	(= (available cdk2-cycEp1) 0)
	(= (available cdk2-cycE) 0)
	(= (available cdk2p1-cycEp1) 0)
	(= (available cdk2p1-cycE) 0)
	(= (available pRb-E2F4p1-DP12-gE2) 0)
	(= (available pRbp1-E2F4p1-DP12-gE2) 0)
	(= (available RPA-cycA) 0)
	(= (available cdk2-cycA) 0)
	(= (available cdk2p1-cycA) 0)
	(= (available SP1-E2F13-gP) 0)
	(= (available SP1-E2F13) 0)
	(= (available c-Myc) 0)
	(= (available cycA) 0)
	(= (available cycD) 0)
	(= (available cycDp1) 0)
	(= (available cycE) 0)
	(= (available cycEp1) 0)
	(= (available p19ARF) 0)
	(= (available pol) 0)
	(= (available SP1-gP) 0)
	(= (available SP1-p107-gP) 0)
	(= (available SP1-p107p1-gP) 0)
	(= (available SP1-p107p1) 0)
	(= (available p107p1) 0)
	(= (available SP1-p107) 0)
	(= (available p107) 0)
	(association-reaction c-Abl pRbp2 c-Abl-pRbp2)
	(= (need-for-association c-Abl pRbp2 c-Abl-pRbp2) 2)
	(= (need-for-association pRbp2 c-Abl c-Abl-pRbp2) 1)
	(= (prod-by-association c-Abl pRbp2 c-Abl-pRbp2) 1)
	(catalyzed-association-reaction cdc25C C-TAK1 cdc25Cp2)
	(= (need-for-catalyzed-association cdc25C C-TAK1 cdc25Cp2) 3)
	(= (need-for-catalyzed-association C-TAK1 cdc25C cdc25Cp2) 3)
	(= (prod-by-catalyzed-association cdc25C C-TAK1 cdc25Cp2) 2)
	(association-reaction cdk2 cycA cdk2-cycA)
	(= (need-for-association cdk2 cycA cdk2-cycA) 2)
	(= (need-for-association cycA cdk2 cdk2-cycA) 4)
	(= (prod-by-association cdk2 cycA cdk2-cycA) 3)
	(association-reaction cdk2-cycA E2F13 cdk2-cycA-E2F13)
	(= (need-for-association cdk2-cycA E2F13 cdk2-cycA-E2F13) 4)
	(= (need-for-association E2F13 cdk2-cycA cdk2-cycA-E2F13) 3)
	(= (prod-by-association cdk2-cycA E2F13 cdk2-cycA-E2F13) 4)
	(catalyzed-association-reaction cdk2-cycA Wee1 cdk2p1-cycA)
	(= (need-for-catalyzed-association cdk2-cycA Wee1 cdk2p1-cycA) 4)
	(= (need-for-catalyzed-association Wee1 cdk2-cycA cdk2p1-cycA) 2)
	(= (prod-by-catalyzed-association cdk2-cycA Wee1 cdk2p1-cycA) 2)
	(association-reaction cdk2 cycE cdk2-cycE)
	(= (need-for-association cdk2 cycE cdk2-cycE) 2)
	(= (need-for-association cycE cdk2 cdk2-cycE) 4)
	(= (prod-by-association cdk2 cycE cdk2-cycE) 3)
	(association-reaction cdk2 cycEp1 cdk2-cycEp1)
	(= (need-for-association cdk2 cycEp1 cdk2-cycEp1) 2)
	(= (need-for-association cycEp1 cdk2 cdk2-cycEp1) 2)
	(= (prod-by-association cdk2 cycEp1 cdk2-cycEp1) 4)
	(association-reaction cdk2p1 cycA cdk2p1-cycA)
	(= (need-for-association cdk2p1 cycA cdk2p1-cycA) 2)
	(= (need-for-association cycA cdk2p1 cdk2p1-cycA) 1)
	(= (prod-by-association cdk2p1 cycA cdk2p1-cycA) 3)
	(association-reaction cdk2p1-cycA E2F13 cdk2p1-cycA-E2F13)
	(= (need-for-association cdk2p1-cycA E2F13 cdk2p1-cycA-E2F13) 2)
	(= (need-for-association E2F13 cdk2p1-cycA cdk2p1-cycA-E2F13) 3)
	(= (prod-by-association cdk2p1-cycA E2F13 cdk2p1-cycA-E2F13) 2)
	(association-reaction cdk2p1 cycE cdk2p1-cycE)
	(= (need-for-association cdk2p1 cycE cdk2p1-cycE) 3)
	(= (need-for-association cycE cdk2p1 cdk2p1-cycE) 2)
	(= (prod-by-association cdk2p1 cycE cdk2p1-cycE) 2)
	(association-reaction cdk2p1 cycEp1 cdk2p1-cycEp1)
	(= (need-for-association cdk2p1 cycEp1 cdk2p1-cycEp1) 2)
	(= (need-for-association cycEp1 cdk2p1 cdk2p1-cycEp1) 4)
	(= (prod-by-association cdk2p1 cycEp1 cdk2p1-cycEp1) 2)
	(association-reaction CEBP gP CEBP-gP)
	(= (need-for-association CEBP gP CEBP-gP) 2)
	(= (need-for-association gP CEBP CEBP-gP) 2)
	(= (prod-by-association CEBP gP CEBP-gP) 4)
	(synthesis-reaction CEBP-gP P) 
	(= (need-for-synthesis CEBP-gP P) 3)
	(= (prod-by-synthesis CEBP-gP P) 4)
	(association-reaction CEBP pRbp2 CEBP-pRbp2)
	(= (need-for-association CEBP pRbp2 CEBP-pRbp2) 3)
	(= (need-for-association pRbp2 CEBP CEBP-pRbp2) 1)
	(= (prod-by-association CEBP pRbp2 CEBP-pRbp2) 3)
	(association-reaction CEBP-pRbp2 gP CEBP-pRbp2-gP)
	(= (need-for-association CEBP-pRbp2 gP CEBP-pRbp2-gP) 1)
	(= (need-for-association gP CEBP-pRbp2 CEBP-pRbp2-gP) 4)
	(= (prod-by-association CEBP-pRbp2 gP CEBP-pRbp2-gP) 2)
	(synthesis-reaction CEBP-pRbp2-gP P) 
	(= (need-for-synthesis CEBP-pRbp2-gP P) 2)
	(= (prod-by-synthesis CEBP-pRbp2-gP P) 2)
	(association-reaction DMP1 cycD DMP1-cycD)
	(= (need-for-association DMP1 cycD DMP1-cycD) 4)
	(= (need-for-association cycD DMP1 DMP1-cycD) 1)
	(= (prod-by-association DMP1 cycD DMP1-cycD) 4)
	(association-reaction DMP1 cycDp1 DMP1-cycDp1)
	(= (need-for-association DMP1 cycDp1 DMP1-cycDp1) 1)
	(= (need-for-association cycDp1 DMP1 DMP1-cycDp1) 2)
	(= (prod-by-association DMP1 cycDp1 DMP1-cycDp1) 3)
	(association-reaction E2F6-DP12p1 gE2 E2F6-DP12p1-gE2)
	(= (need-for-association E2F6-DP12p1 gE2 E2F6-DP12p1-gE2) 2)
	(= (need-for-association gE2 E2F6-DP12p1 E2F6-DP12p1-gE2) 3)
	(= (prod-by-association E2F6-DP12p1 gE2 E2F6-DP12p1-gE2) 2)
	(association-reaction HDAC1 p107-E2F4-DP12p1 HDAC1-p107-E2F4-DP12p1)
	(= (need-for-association HDAC1 p107-E2F4-DP12p1 HDAC1-p107-E2F4-DP12p1) 3)
	(= (need-for-association p107-E2F4-DP12p1 HDAC1 HDAC1-p107-E2F4-DP12p1) 1)
	(= (prod-by-association HDAC1 p107-E2F4-DP12p1 HDAC1-p107-E2F4-DP12p1) 3)
	(association-reaction HDAC1-p130-E2F4p1-DP12 gE2 HDAC1-p130-E2F4p1-DP12-gE2)
	(= (need-for-association HDAC1-p130-E2F4p1-DP12 gE2 HDAC1-p130-E2F4p1-DP12-gE2) 1)
	(= (need-for-association gE2 HDAC1-p130-E2F4p1-DP12 HDAC1-p130-E2F4p1-DP12-gE2) 2)
	(= (prod-by-association HDAC1-p130-E2F4p1-DP12 gE2 HDAC1-p130-E2F4p1-DP12-gE2) 1)
	(association-reaction HDAC1 pRb-E2F4p1-DP12 HDAC1-pRb-E2F4p1-DP12)
	(= (need-for-association HDAC1 pRb-E2F4p1-DP12 HDAC1-pRb-E2F4p1-DP12) 2)
	(= (need-for-association pRb-E2F4p1-DP12 HDAC1 HDAC1-pRb-E2F4p1-DP12) 1)
	(= (prod-by-association HDAC1 pRb-E2F4p1-DP12 HDAC1-pRb-E2F4p1-DP12) 2)
	(association-reaction m1433 cdc25Cp2 m1433-cdc25Cp2)
	(= (need-for-association m1433 cdc25Cp2 m1433-cdc25Cp2) 3)
	(= (need-for-association cdc25Cp2 m1433 m1433-cdc25Cp2) 3)
	(= (prod-by-association m1433 cdc25Cp2 m1433-cdc25Cp2) 2)
	(association-reaction p107-E2F4-DP12p1 gE2 p107-E2F4-DP12p1-gE2)
	(= (need-for-association p107-E2F4-DP12p1 gE2 p107-E2F4-DP12p1-gE2) 1)
	(= (need-for-association gE2 p107-E2F4-DP12p1 p107-E2F4-DP12p1-gE2) 2)
	(= (prod-by-association p107-E2F4-DP12p1 gE2 p107-E2F4-DP12p1-gE2) 4)
	(association-reaction p107 E2F4-DP12p1 p107-E2F4-DP12p1)
	(= (need-for-association p107 E2F4-DP12p1 p107-E2F4-DP12p1) 2)
	(= (need-for-association E2F4-DP12p1 p107 p107-E2F4-DP12p1) 4)
	(= (prod-by-association p107 E2F4-DP12p1 p107-E2F4-DP12p1) 1)
	(association-reaction PCNA cycDp1 PCNA-cycDp1)
	(= (need-for-association PCNA cycDp1 PCNA-cycDp1) 1)
	(= (need-for-association cycDp1 PCNA PCNA-cycDp1) 2)
	(= (prod-by-association PCNA cycDp1 PCNA-cycDp1) 2)
	(association-reaction PCNA cycD PCNA-cycD)
	(= (need-for-association PCNA cycD PCNA-cycD) 2)
	(= (need-for-association cycD PCNA PCNA-cycD) 1)
	(= (prod-by-association PCNA cycD PCNA-cycD) 3)
	(association-reaction pRb-E2F4p1-DP12 gE2 pRb-E2F4p1-DP12-gE2)
	(= (need-for-association pRb-E2F4p1-DP12 gE2 pRb-E2F4p1-DP12-gE2) 1)
	(= (need-for-association gE2 pRb-E2F4p1-DP12 pRb-E2F4p1-DP12-gE2) 1)
	(= (prod-by-association pRb-E2F4p1-DP12 gE2 pRb-E2F4p1-DP12-gE2) 4)
	(association-reaction pRbp1-E2F4p1-DP12 gE2 pRbp1-E2F4p1-DP12-gE2)
	(= (need-for-association pRbp1-E2F4p1-DP12 gE2 pRbp1-E2F4p1-DP12-gE2) 4)
	(= (need-for-association gE2 pRbp1-E2F4p1-DP12 pRbp1-E2F4p1-DP12-gE2) 2)
	(= (prod-by-association pRbp1-E2F4p1-DP12 gE2 pRbp1-E2F4p1-DP12-gE2) 2)
	(association-reaction RPA cycA RPA-cycA)
	(= (need-for-association RPA cycA RPA-cycA) 1)
	(= (need-for-association cycA RPA RPA-cycA) 1)
	(= (prod-by-association RPA cycA RPA-cycA) 2)
	(synthesis-reaction SP1-E2F13-gP c-Myc) 
	(= (need-for-synthesis SP1-E2F13-gP c-Myc) 3)
	(= (prod-by-synthesis SP1-E2F13-gP c-Myc) 1)
	(synthesis-reaction SP1-E2F13-gP cycA) 
	(= (need-for-synthesis SP1-E2F13-gP cycA) 4)
	(= (prod-by-synthesis SP1-E2F13-gP cycA) 3)
	(synthesis-reaction SP1-E2F13-gP cycD) 
	(= (need-for-synthesis SP1-E2F13-gP cycD) 3)
	(= (prod-by-synthesis SP1-E2F13-gP cycD) 4)
	(synthesis-reaction SP1-E2F13-gP cycDp1) 
	(= (need-for-synthesis SP1-E2F13-gP cycDp1) 1)
	(= (prod-by-synthesis SP1-E2F13-gP cycDp1) 1)
	(synthesis-reaction SP1-E2F13-gP cycE) 
	(= (need-for-synthesis SP1-E2F13-gP cycE) 2)
	(= (prod-by-synthesis SP1-E2F13-gP cycE) 2)
	(synthesis-reaction SP1-E2F13-gP cycEp1) 
	(= (need-for-synthesis SP1-E2F13-gP cycEp1) 2)
	(= (prod-by-synthesis SP1-E2F13-gP cycEp1) 3)
	(synthesis-reaction SP1-E2F13-gP p107) 
	(= (need-for-synthesis SP1-E2F13-gP p107) 1)
	(= (prod-by-synthesis SP1-E2F13-gP p107) 3)
	(synthesis-reaction SP1-E2F13-gP p107p1) 
	(= (need-for-synthesis SP1-E2F13-gP p107p1) 3)
	(= (prod-by-synthesis SP1-E2F13-gP p107p1) 1)
	(synthesis-reaction SP1-E2F13-gP p19ARF) 
	(= (need-for-synthesis SP1-E2F13-gP p19ARF) 3)
	(= (prod-by-synthesis SP1-E2F13-gP p19ARF) 4)
	(synthesis-reaction SP1-E2F13-gP pol) 
	(= (need-for-synthesis SP1-E2F13-gP pol) 3)
	(= (prod-by-synthesis SP1-E2F13-gP pol) 1)
	(association-reaction SP1-E2F13 gP SP1-E2F13-gP)
	(= (need-for-association SP1-E2F13 gP SP1-E2F13-gP) 4)
	(= (need-for-association gP SP1-E2F13 SP1-E2F13-gP) 1)
	(= (prod-by-association SP1-E2F13 gP SP1-E2F13-gP) 1)
	(association-reaction SP1 E2F13 SP1-E2F13)
	(= (need-for-association SP1 E2F13 SP1-E2F13) 4)
	(= (need-for-association E2F13 SP1 SP1-E2F13) 4)
	(= (prod-by-association SP1 E2F13 SP1-E2F13) 4)
	(synthesis-reaction SP1-gP c-Myc) 
	(= (need-for-synthesis SP1-gP c-Myc) 1)
	(= (prod-by-synthesis SP1-gP c-Myc) 2)
	(synthesis-reaction SP1-gP cycA) 
	(= (need-for-synthesis SP1-gP cycA) 4)
	(= (prod-by-synthesis SP1-gP cycA) 1)
	(synthesis-reaction SP1-gP cycD) 
	(= (need-for-synthesis SP1-gP cycD) 3)
	(= (prod-by-synthesis SP1-gP cycD) 3)
	(synthesis-reaction SP1-gP cycDp1) 
	(= (need-for-synthesis SP1-gP cycDp1) 2)
	(= (prod-by-synthesis SP1-gP cycDp1) 2)
	(synthesis-reaction SP1-gP cycE) 
	(= (need-for-synthesis SP1-gP cycE) 1)
	(= (prod-by-synthesis SP1-gP cycE) 4)
	(synthesis-reaction SP1-gP cycEp1) 
	(= (need-for-synthesis SP1-gP cycEp1) 2)
	(= (prod-by-synthesis SP1-gP cycEp1) 1)
	(synthesis-reaction SP1-gP p107) 
	(= (need-for-synthesis SP1-gP p107) 4)
	(= (prod-by-synthesis SP1-gP p107) 3)
	(synthesis-reaction SP1-gP p107p1) 
	(= (need-for-synthesis SP1-gP p107p1) 2)
	(= (prod-by-synthesis SP1-gP p107p1) 1)
	(synthesis-reaction SP1-gP p19ARF) 
	(= (need-for-synthesis SP1-gP p19ARF) 2)
	(= (prod-by-synthesis SP1-gP p19ARF) 3)
	(synthesis-reaction SP1-gP pol) 
	(= (need-for-synthesis SP1-gP pol) 3)
	(= (prod-by-synthesis SP1-gP pol) 4)
	(association-reaction SP1 gP SP1-gP)
	(= (need-for-association SP1 gP SP1-gP) 3)
	(= (need-for-association gP SP1 SP1-gP) 2)
	(= (prod-by-association SP1 gP SP1-gP) 3)
	(association-reaction SP1-p107 gP SP1-p107-gP)
	(= (need-for-association SP1-p107 gP SP1-p107-gP) 1)
	(= (need-for-association gP SP1-p107 SP1-p107-gP) 2)
	(= (prod-by-association SP1-p107 gP SP1-p107-gP) 2)
	(association-reaction SP1-p107p1 gP SP1-p107p1-gP)
	(= (need-for-association SP1-p107p1 gP SP1-p107p1-gP) 1)
	(= (need-for-association gP SP1-p107p1 SP1-p107p1-gP) 2)
	(= (prod-by-association SP1-p107p1 gP SP1-p107p1-gP) 1)
	(association-reaction SP1 p107p1 SP1-p107p1)
	(= (need-for-association SP1 p107p1 SP1-p107p1) 1)
	(= (need-for-association p107p1 SP1 SP1-p107p1) 2)
	(= (prod-by-association SP1 p107p1 SP1-p107p1) 1)
	(association-reaction SP1 p107 SP1-p107)
	(= (need-for-association SP1 p107 SP1-p107) 2)
	(= (need-for-association p107 SP1 SP1-p107) 1)
	(= (prod-by-association SP1 p107 SP1-p107) 2)
	(= (num-subs) 0)
	(= (duration-association-reaction c-Abl pRbp2 c-Abl-pRbp2) 1.1)
	(= (duration-catalyzed-association-reaction cdc25C C-TAK1 cdc25Cp2) 1.7)
	(= (duration-association-reaction cdk2 cycA cdk2-cycA) 1.0)
	(= (duration-association-reaction cdk2-cycA E2F13 cdk2-cycA-E2F13) 0.9)
	(= (duration-catalyzed-association-reaction cdk2-cycA Wee1 cdk2p1-cycA) 2.0)
	(= (duration-association-reaction cdk2 cycE cdk2-cycE) 0.9)
	(= (duration-association-reaction cdk2 cycEp1 cdk2-cycEp1) 0.8)
	(= (duration-association-reaction cdk2p1 cycA cdk2p1-cycA) 1.1)
	(= (duration-association-reaction cdk2p1-cycA E2F13 cdk2p1-cycA-E2F13) 0.9)
	(= (duration-association-reaction cdk2p1 cycE cdk2p1-cycE) 0.8)
	(= (duration-association-reaction cdk2p1 cycEp1 cdk2p1-cycEp1) 0.9)
	(= (duration-association-reaction CEBP gP CEBP-gP) 1.0)
	(= (duration-synthesis-reaction CEBP-gP P) 4.1)
	(= (duration-association-reaction CEBP pRbp2 CEBP-pRbp2) 1.1)
	(= (duration-association-reaction CEBP-pRbp2 gP CEBP-pRbp2-gP) 0.9)
	(= (duration-synthesis-reaction CEBP-pRbp2-gP P) 3.8)
	(= (duration-association-reaction DMP1 cycD DMP1-cycD) 1.1)
	(= (duration-association-reaction DMP1 cycDp1 DMP1-cycDp1) 0.9)
	(= (duration-association-reaction E2F6-DP12p1 gE2 E2F6-DP12p1-gE2) 1.0)
	(= (duration-association-reaction HDAC1 p107-E2F4-DP12p1 HDAC1-p107-E2F4-DP12p1) 0.9)
	(= (duration-association-reaction HDAC1-p130-E2F4p1-DP12 gE2 HDAC1-p130-E2F4p1-DP12-gE2) 0.9)
	(= (duration-association-reaction HDAC1 pRb-E2F4p1-DP12 HDAC1-pRb-E2F4p1-DP12) 0.9)
	(= (duration-association-reaction m1433 cdc25Cp2 m1433-cdc25Cp2) 1.0)
	(= (duration-association-reaction p107-E2F4-DP12p1 gE2 p107-E2F4-DP12p1-gE2) 1.1)
	(= (duration-association-reaction p107 E2F4-DP12p1 p107-E2F4-DP12p1) 1.1)
	(= (duration-association-reaction PCNA cycDp1 PCNA-cycDp1) 0.9)
	(= (duration-association-reaction PCNA cycD PCNA-cycD) 0.9)
	(= (duration-association-reaction pRb-E2F4p1-DP12 gE2 pRb-E2F4p1-DP12-gE2) 0.9)
	(= (duration-association-reaction pRbp1-E2F4p1-DP12 gE2 pRbp1-E2F4p1-DP12-gE2) 1.1)
	(= (duration-association-reaction RPA cycA RPA-cycA) 0.8)
	(= (duration-synthesis-reaction SP1-E2F13-gP c-Myc) 4.3)
	(= (duration-synthesis-reaction SP1-E2F13-gP cycA) 3.5)
	(= (duration-synthesis-reaction SP1-E2F13-gP cycD) 3.6)
	(= (duration-synthesis-reaction SP1-E2F13-gP cycDp1) 4.3)
	(= (duration-synthesis-reaction SP1-E2F13-gP cycE) 3.9)
	(= (duration-synthesis-reaction SP1-E2F13-gP cycEp1) 3.6)
	(= (duration-synthesis-reaction SP1-E2F13-gP p107) 3.9)
	(= (duration-synthesis-reaction SP1-E2F13-gP p107p1) 3.2)
	(= (duration-synthesis-reaction SP1-E2F13-gP p19ARF) 3.3)
	(= (duration-synthesis-reaction SP1-E2F13-gP pol) 3.5)
	(= (duration-association-reaction SP1-E2F13 gP SP1-E2F13-gP) 1.0)
	(= (duration-association-reaction SP1 E2F13 SP1-E2F13) 0.9)
	(= (duration-synthesis-reaction SP1-gP c-Myc) 4.5)
	(= (duration-synthesis-reaction SP1-gP cycA) 3.6)
	(= (duration-synthesis-reaction SP1-gP cycD) 4.1)
	(= (duration-synthesis-reaction SP1-gP cycDp1) 4.1)
	(= (duration-synthesis-reaction SP1-gP cycE) 3.5)
	(= (duration-synthesis-reaction SP1-gP cycEp1) 3.3)
	(= (duration-synthesis-reaction SP1-gP p107) 4.3)
	(= (duration-synthesis-reaction SP1-gP p107p1) 4.1)
	(= (duration-synthesis-reaction SP1-gP p19ARF) 3.9)
	(= (duration-synthesis-reaction SP1-gP pol) 4.1)
	(= (duration-association-reaction SP1 gP SP1-gP) 0.9)
	(= (duration-association-reaction SP1-p107 gP SP1-p107-gP) 1.1)
	(= (duration-association-reaction SP1-p107p1 gP SP1-p107p1-gP) 0.9)
	(= (duration-association-reaction SP1 p107p1 SP1-p107p1) 0.9)
	(= (duration-association-reaction SP1 p107 SP1-p107) 1.1))

(:goal
	(and
	(preference p0A (>= (+ (available cdk2p1-cycA) (available pol)) 7))
	(preference p0B (>= (+ (available DMP1-cycDp1) (available p107)) 5))
	(preference p0C (>= (+ (available SP1-p107p1-gP) (available cdk2-cycA-E2F13)) 6))
	(preference p0D (>= (+ (available cycEp1) (available p107-E2F4-DP12p1-gE2)) 7))))


(:constraints (and

	(preference p1A (sometime-before (> (available p107) 0) (> (available SP1-E2F13-gP) 0)))
	(preference p1B (sometime-before (> (available cycEp1) 0) (> (available SP1-E2F13-gP) 0)))

	(preference p1C (always (= (available cycDp1) 0)))
	(preference p1D (always (= (available p107p1) 0)))
	(preference p1E (always (= (available cycA) 0)))

	(preference p1F (sometime (> (available P) 0)))
	(preference p1G (sometime-after (> (available P) 0) (> (available SP1-p107p1) 0)))
	(preference p1H (sometime (> (available CEBP-gP) 0)))
	(preference p1I (sometime-after (> (available CEBP-gP) 0) (> (available PCNA-cycDp1) 0)))
	(preference p1J (sometime (> (available cdk2p1-cycE) 0)))
	(preference p1K (sometime-after (> (available cdk2p1-cycE) 0) (> (available RPA-cycA) 0)))))

(:metric minimize (+ (* 3.4 (is-violated p0A))
		     (* 3.4 (is-violated p0B))
		     (* 3.6 (is-violated p0C))
		     (* 4.6 (is-violated p0D))
		     (* 1 (is-violated p1A))
		     (* 1 (is-violated p1B))
		     (* 1 (is-violated p1C))
		     (* 1 (is-violated p1D))
		     (* 1 (is-violated p1E))
		     (* 1 (is-violated p1F))
		     (* 1 (is-violated p1G))
		     (* 1 (is-violated p1H))
		     (* 1 (is-violated p1I))
		     (* 1 (is-violated p1J))
		     (* 1 (is-violated p1K))
		     (* 0.10 (total-time))
		     (num-subs)))

)
