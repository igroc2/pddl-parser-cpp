(define (problem Pathways-26)
(:domain Pathways-SimplePreferences)
(:objects
	SP1 - simple
	SL1 - simple
	Skp2 - simple
	Skp1 - simple
	RPA - simple
	Raf1 - simple
	pRbp2 - simple
	pRbp1-E2F4p1-DP12 - simple
	pRb-E2F4p1-DP12 - simple
	pRb - simple
	Plk1 - simple
	PCNA - simple
	pCAF - simple
	p68 - simple
	p57p1 - simple
	p57 - simple
	p300 - simple
	p27 - simple
	p16 - simple
	p130-E2F5p1-DP12 - simple
	p130-E2F4p1-DP12 - simple
	p130 - simple
	Myt1 - simple
	Max - simple
	m1433 - simple
	Jun - simple
	HDAC1-pRbp1-E2F4-DP12 - simple
	HDAC1-pRbp1-E2F13p1-DP12 - simple
	HDAC1-pRbp1-E2F13-DP12 - simple
	HDAC1-p130-E2F5p1-DP12 - simple
	HDAC1-p130-E2F4p1-DP12 - simple
	HDAC1-p107-E2F4p1-DP12 - simple
	HDAC1 - simple
	HBP1 - simple
	gP - simple
	gE2 - simple
	gcdc25A - simple
	E2F6-DP12p1 - simple
	E2F6 - simple
	E2F5-DP12p1 - simple
	E2F5 - simple
	E2F4-DP12p1 - simple
	E2F3 - simple
	E2F2 - simple
	E2F13p1-DP12p1 - simple
	E2F13-DP12p1 - simple
	E2F13-DP12 - simple
	E2F13 - simple
	E2F1 - simple
	DP12 - simple
	DMP1 - simple
	cycH - simple
	cycB - simple
	C-TAK1 - simple
	cks1 - simple
	Chk1 - simple
	CEBP - simple
	cdk7 - simple
	cdk46p3-cycD - simple
	cdk46p1 - simple
	cdk2p1 - simple
	cdk2 - simple
	cdk1p1p2 - simple
	cdc25C - simple
	c-Abl - simple
	APC - simple
	AP2 - simple
	c-Abl-pRb - complex
	c-Abl-pRbp1 - complex
	c-Abl-pRbp1p2 - complex
	c-Abl-pRbp2 - complex
	cdk1-cks1 - complex
	cdk1p1-cks1 - complex
	cdk1p1 - complex
	cdk1p1p2-cks1 - complex
	cdk1p1p2p3-cks1 - complex
	cdk1p1p2p3 - complex
	cdk1p1p3-cks1 - complex
	cdk1p1p3 - complex
	cdk1 - complex
	cdk1p2-cks1 - complex
	cdk1p2 - complex
	cdk1p2p3-cks1 - complex
	cdk1p1p2p3-cycA - complex
	cdc25Cp1 - complex
	cdk1p1p2p3-cycB - complex
	cdk1p2p3 - complex
	cdk1p3-cks1 - complex
	cdk1p1p3-cycA - complex
	cdk1p2p3-cycA - complex
	cdk1p1p3-cycB - complex
	cdk1p2p3-cycB - complex
	cdk1p3 - complex
	cdk2-cks1 - complex
	cdk2-cycA-E2F13 - complex
	cdk2-cycA-E2F13p1 - complex
	cdk2p1-cks1 - complex
	cdk2p1-cycA-E2F13 - complex
	cdk2p1-cycA-E2F13p1 - complex
	cdk2p1p2-cks1 - complex
	cdk2p1p2-cycA-E2F13 - complex
	cdk2p1p2-cycA-E2F13p1 - complex
	cdk2p1p2 - complex
	cdk2p2-cks1 - complex
	cdk2p2-cycA-E2F13 - complex
	cdk2p2-cycA-E2F13p1 - complex
	cdk2p2 - complex
	cdk7-cycH - complex
	cdk7p1-cycH - complex
	CEBP-gP - complex
	CEBP-pRb - complex
	CEBP-pRb-gP - complex
	CEBP-pRbp1 - complex
	CEBP-pRbp1-gP - complex
	CEBP-pRbp1p2 - complex
	CEBP-pRbp1p2-gP - complex
	CEBP-pRbp2 - complex
	P - complex
	CEBP-pRbp2-gP - complex
	c-Myc-AP2 - complex
	c-Myc-Max-gcdc25A - complex
	c-Myc-Max - complex
	APCp1 - complex
	DMP1-cycD - complex
	DMP1-cycDp1 - complex
	DMP1p1-cycD - complex
	DMP1p1-cycDp1 - complex
	DMP1p1 - complex
	E2F13-DP12-gE2 - complex
	E2F1-DP12 - complex
	E2F2-DP12 - complex
	E2F3-DP12 - complex
	E2F5-DP12-gE2 - complex
	E2F6-DP12-gE2 - complex
	E2F6-DP12 - complex
	E2F6-DP12p1-gE2 - complex
	HBP1-p130 - complex
	HDAC1-p107-E2F4-DP12p1 - complex
	HDAC1-p107-E2F4p1-DP12-gE2 - complex
	HDAC1-p130-E2F4-DP12p1 - complex
	HDAC1-p130-E2F4p1-DP12-gE2 - complex
	HDAC1-p130-E2F5-DP12-gE2 - complex
	HDAC1-p130-E2F5-DP12 - complex
	HDAC1-p130-E2F5-DP12p1 - complex
	HDAC1-p130-E2F5p1-DP12-gE2 - complex
	HDAC1-pRb-E2F13-DP12-gE2 - complex
	HDAC1-pRb-E2F13-DP12 - complex
	HDAC1-pRb-E2F13-DP12p1 - complex
	HDAC1-pRb-E2F13p1-DP12p1 - complex
	HDAC1-pRb-E2F4p1-DP12 - complex
	HDAC1-pRbp1-E2F13-DP12-gE2 - complex
	HDAC1-pRbp1-E2F13p1-DP12-gE2 - complex
	HDAC1-pRbp1-E2F4-DP12-gE2 - complex
	m1433-cdc25Cp1p2 - complex
	cdc25Cp1p2 - complex
	m1433-cdc25Cp2 - complex
	cdc25Cp2 - complex
	p107-E2F4-DP12p1-gE2 - complex
	p107-E2F4-DP12p1 - complex
	p130-E2F4-DP12p1-gE2 - complex
	p130-E2F4-DP12p1 - complex
	p130-E2F5-DP12-gE2 - complex
	E2F5-DP12 - complex
	p130-E2F5-DP12p1-gE2 - complex
	p130-E2F5-DP12p1 - complex
	p16-cdk46 - complex
	cdk46 - complex
	p16-cdk46p1 - complex
	p16-cdk46p1p2 - complex
	cdk46p1p2 - complex
	p16-cdk46p2 - complex
	cdk46p2 - complex
	p16-cdk7 - complex
	p16-cdk7p1 - complex
	cdk7p1 - complex
	p27-cdk2-cycA - complex
	p27-cdk2-cycEp1 - complex
	p27-cdk2-cycE - complex
	p27-cdk2p1-cycA - complex
	p27-cdk2p1-cycEp1 - complex
	p27-cdk2p1-cycE - complex
	p27-cdk2p1p2-cycA - complex
	p27-cdk2p1p2-cycEp1 - complex
	p27-cdk2p1p2-cycE - complex
	p27-cdk2p2-cycA - complex
	p27-cdk2p2-cycEp1 - complex
	p27-cdk2p2-cycE - complex
	p27-cdk46-cycDp1 - complex
	p27-cdk46-cycD - complex
	p27-cdk46p1-cycDp1 - complex
	p27-cdk46p1-cycD - complex
	p27-cdk46p1p2-cycDp1 - complex
	p27-cdk46p1p2-cycD - complex
	p27-cdk46p2-cycDp1 - complex
	p27-cdk46p2-cycD - complex
	p27p1-cdk2-cycA - complex
	p27p1-cdk2-cycEp1 - complex
	p27p1-cdk2-cycE - complex
	p27p1-cdk2p1-cycA - complex
	p27p1-cdk2p1-cycEp1 - complex
	p27p1-cdk2p1-cycE - complex
	p27p1-cdk2p1p2-cycA - complex
	p27p1-cdk2p1p2-cycEp1 - complex
	p27p1-cdk2p1p2-cycE - complex
	p27p1-cdk2p2-cycA - complex
	p27p1-cdk2p2-cycEp1 - complex
	p27p1-cdk2p2-cycE - complex
	p27p1-cdk46-cycDp1 - complex
	p27p1-cdk46-cycD - complex
	p27p1-cdk46p1-cycDp1 - complex
	p27p1-cdk46p1-cycD - complex
	p27p1-cdk46p1p2-cycDp1 - complex
	p27p1-cdk46p1p2-cycD - complex
	p27p1-cdk46p2-cycDp1 - complex
	p27p1-cdk46p2-cycD - complex
	p27p1 - complex
	DP12p1 - complex
	p57-cdk2-cycA - complex
	p57-cdk2-cycEp1 - complex
	p57-cdk2-cycE - complex
	p57-cdk2p1-cycA - complex
	p57-cdk2p1-cycEp1 - complex
	p57-cdk2p1-cycE - complex
	p57-cdk2p1p2-cycA - complex
	p57-cdk2p1p2-cycEp1 - complex
	p57-cdk2p1p2-cycE - complex
	p57-cdk2p2-cycA - complex
	p57-cdk2p2-cycEp1 - complex
	p57-cdk2p2-cycE - complex
	p57-cdk46-cycDp1 - complex
	p57-cdk46-cycD - complex
	p57-cdk46p1-cycDp1 - complex
	p57-cdk46p1-cycD - complex
	p57-cdk46p1p2-cycDp1 - complex
	p57-cdk46p1p2-cycD - complex
	p57-cdk46p2-cycDp1 - complex
	p57-cdk46p2-cycD - complex
	p57p1-cdk46-cycDp1 - complex
	p57p1-cdk46-cycD - complex
	p57p1-cdk46p1-cycDp1 - complex
	p57p1-cdk46p1-cycD - complex
	p57p1-cdk46p1p2-cycDp1 - complex
	p57p1-cdk46p1p2-cycD - complex
	p57p1-cdk46p2-cycDp1 - complex
	p57p1-cdk46p2-cycD - complex
	p68p1 - complex
	p68p1p2 - complex
	p68p2 - complex
	pCAF-p300 - complex
	PCNA-cycDp1 - complex
	PCNA-cycD - complex
	cdk2-cycEp1 - complex
	cdk2-cycE - complex
	cdk2p1-cycEp1 - complex
	cdk2p1-cycE - complex
	cdk2p1p2-cycEp1 - complex
	cdk2p1p2-cycE - complex
	cdk46-cycDp1 - complex
	cdk46-cycD - complex
	cdk46p1-cycDp1 - complex
	cdk46p1-cycD - complex
	cdk46p1p2-cycDp1 - complex
	cdk46p1p2-cycD - complex
	cdk46p2-cycDp1 - complex
	cdk46p2-cycD - complex
	pRb-AP2 - complex
	pRb-E2F13-DP12-gE2 - complex
	pRb-E2F13-DP12p1-gE2 - complex
	pRb-E2F13p1-DP12p1-gE2 - complex
	pRb-E2F4-DP12p1 - complex
	pRb-E2F4p1-DP12-gE2 - complex
	pRb-Jun - complex
	pRbp1-AP2 - complex
	cdk2p2-cycEp1 - complex
	cdk2p2-cycE - complex
	pRbp1-E2F13-DP12-gE2 - complex
	pRbp1-E2F13-DP12p1-gE2 - complex
	pRbp1-E2F13p1-DP12p1-gE2 - complex
	pRbp1-E2F4-DP12p1 - complex
	pRbp1-E2F4p1-DP12-gE2 - complex
	pRbp1-Jun - complex
	pRbp1 - complex
	pRbp1p2-AP2 - complex
	pRbp1p2-Jun - complex
	pRbp2-AP2 - complex
	pRbp1p2 - complex
	pRbp2-Jun - complex
	Raf1-cdc25Ap1 - complex
	cdc25Ap1 - complex
	Raf1-cdc25A - complex
	cdc25A - complex
	Raf1-p130-E2F4p1-DP12-gE2 - complex
	Raf1-p130-E2F4p1-DP12 - complex
	Raf1-p130-E2F5-DP12-gE2 - complex
	Raf1-p130-E2F5-DP12 - complex
	p130-E2F5-DP12 - complex
	Raf1-p130-E2F5p1-DP12-gE2 - complex
	Raf1-p130-E2F5p1-DP12 - complex
	Raf1-pRb-E2F13-DP12-gE2 - complex
	Raf1-pRb-E2F13-DP12p1-gE2 - complex
	Raf1-pRb-E2F13-DP12p1 - complex
	pRb-E2F13-DP12p1 - complex
	Raf1-pRb-E2F13-DP12 - complex
	pRb-E2F13-DP12 - complex
	Raf1-pRb-E2F13p1-DP12p1-gE2 - complex
	Raf1-pRb-E2F13p1-DP12p1 - complex
	pRb-E2F13p1-DP12p1 - complex
	Raf1-pRb-E2F4p1-DP12-gE2 - complex
	Raf1-pRb-E2F4p1-DP12 - complex
	Raf1-pRbp1-E2F13-DP12-gE2 - complex
	Raf1-pRbp1-E2F13-DP12p1-gE2 - complex
	Raf1-pRbp1-E2F13-DP12p1 - complex
	pRbp1-E2F13-DP12p1 - complex
	Raf1-pRbp1-E2F13-DP12 - complex
	pRbp1-E2F13-DP12 - complex
	Raf1-pRbp1-E2F13p1-DP12p1-gE2 - complex
	Raf1-pRbp1-E2F13p1-DP12p1 - complex
	pRbp1-E2F13p1-DP12p1 - complex
	Raf1-pRbp1-E2F4p1-DP12-gE2 - complex
	Raf1-pRbp1-E2F4p1-DP12 - complex
	RPA-cycA - complex
	Skp2-cdk2-cycA - complex
	Skp2-cdk2p1-cycA - complex
	Skp2-cdk2p1p2-cycA - complex
	Skp2-cdk2p2-cycA - complex
	Skp2p1-Skp1p1 - complex
	Skp2p1-Skp1 - complex
	Skp2p1 - complex
	Skp2-Skp1-cdk2-cycA - complex
	Skp2-Skp1-cdk2p1-cycA - complex
	Skp2-Skp1-cdk2p1p2-cycA - complex
	Skp2-Skp1-cdk2p2-cycA - complex
	Skp2-Skp1p1-cdk2-cycA - complex
	cdk2-cycA - complex
	Skp2-Skp1p1-cdk2p1-cycA - complex
	cdk2p1-cycA - complex
	Skp2-Skp1p1-cdk2p1p2-cycA - complex
	cdk2p1p2-cycA - complex
	Skp2-Skp1p1-cdk2p2-cycA - complex
	cdk2p2-cycA - complex
	Skp2-Skp1p1 - complex
	Skp1p1 - complex
	Skp2-Skp1 - complex
	SL1p1 - complex
	SP1-E2F13-gP - complex
	SP1-E2F13p1-gP - complex
	SP1-E2F13p1 - complex
	E2F13p1 - complex
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
	p107 - complex
	cdk1p3-cycA - complex
	cdk1p3-cycB - complex
	l0 - level
	l1 - level
	l2 - level
	l3 - level
	l4 - level
	l5 - level
	l6 - level
	l7 - level
	l8 - level
	l9 - level
	l10 - level
	l11 - level
	l12 - level
	l13 - level
	l14 - level
	l15 - level
	l16 - level
	l17 - level
	l18 - level
	l19 - level
	l20 - level
	l21 - level
	l22 - level
	l23 - level
	l24 - level
	l25 - level
	l26 - level
	l27 - level
	l28 - level
	l29 - level)


(:init
	(possible SP1)
	(possible SL1)
	(possible Skp2)
	(possible Skp1)
	(possible RPA)
	(possible Raf1)
	(possible pRbp2)
	(possible pRbp1-E2F4p1-DP12)
	(possible pRb-E2F4p1-DP12)
	(possible pRb)
	(possible Plk1)
	(possible PCNA)
	(possible pCAF)
	(possible p68)
	(possible p57p1)
	(possible p57)
	(possible p300)
	(possible p27)
	(possible p16)
	(possible p130-E2F5p1-DP12)
	(possible p130-E2F4p1-DP12)
	(possible p130)
	(possible Myt1)
	(possible Max)
	(possible m1433)
	(possible Jun)
	(possible HDAC1-pRbp1-E2F4-DP12)
	(possible HDAC1-pRbp1-E2F13p1-DP12)
	(possible HDAC1-pRbp1-E2F13-DP12)
	(possible HDAC1-p130-E2F5p1-DP12)
	(possible HDAC1-p130-E2F4p1-DP12)
	(possible HDAC1-p107-E2F4p1-DP12)
	(possible HDAC1)
	(possible HBP1)
	(possible gP)
	(possible gE2)
	(possible gcdc25A)
	(possible E2F6-DP12p1)
	(possible E2F6)
	(possible E2F5-DP12p1)
	(possible E2F5)
	(possible E2F4-DP12p1)
	(possible E2F3)
	(possible E2F2)
	(possible E2F13p1-DP12p1)
	(possible E2F13-DP12p1)
	(possible E2F13-DP12)
	(possible E2F13)
	(possible E2F1)
	(possible DP12)
	(possible DMP1)
	(possible cycH)
	(possible cycB)
	(possible C-TAK1)
	(possible cks1)
	(possible Chk1)
	(possible CEBP)
	(possible cdk7)
	(possible cdk46p3-cycD)
	(possible cdk46p1)
	(possible cdk2p1)
	(possible cdk2)
	(possible cdk1p1p2)
	(possible cdc25C)
	(possible c-Abl)
	(possible APC)
	(possible AP2)
	(catalyzed-association-reaction APC Plk1 APCp1)
	(association-reaction c-Abl pRb c-Abl-pRb)
	(association-reaction c-Abl pRbp1 c-Abl-pRbp1)
	(association-reaction c-Abl pRbp1p2 c-Abl-pRbp1p2)
	(association-reaction c-Abl pRbp2 c-Abl-pRbp2)
	(catalyzed-association-reaction cdc25A Raf1 cdc25Ap1)
	(catalyzed-association-reaction cdc25C cdk1p3-cycA cdc25Cp1)
	(catalyzed-association-reaction cdc25C cdk1p3-cycB cdc25Cp1)
	(catalyzed-association-reaction cdc25C Chk1 cdc25Cp2)
	(catalyzed-association-reaction cdc25C C-TAK1 cdc25Cp2)
	(catalyzed-association-reaction cdc25Cp1 Chk1 cdc25Cp1p2)
	(catalyzed-association-reaction cdc25Cp1 C-TAK1 cdc25Cp1p2)
	(catalyzed-association-reaction cdc25Cp2 cdk1p3-cycA cdc25Cp1p2)
	(catalyzed-association-reaction cdc25Cp2 cdk1p3-cycB cdc25Cp1p2)
	(catalyzed-association-reaction cdc25Cp2 Plk1 cdc25Cp1p2)
	(catalyzed-association-reaction cdc25C Plk1 cdc25Cp1)
	(catalyzed-association-reaction cdk1 cdk7-cycH cdk1p3)
	(association-reaction cdk1 cks1 cdk1-cks1)
	(catalyzed-association-reaction cdk1p1 cdc25Cp1 cdk1)
	(catalyzed-association-reaction cdk1p1 cdc25Cp1p2 cdk1)
	(catalyzed-association-reaction cdk1p1 cdk7-cycH cdk1p1p3)
	(association-reaction cdk1p1 cks1 cdk1p1-cks1)
	(catalyzed-association-reaction cdk1p1p2 cdc25Cp1 cdk1p1)
	(catalyzed-association-reaction cdk1p1p2 cdc25Cp1 cdk1p2)
	(catalyzed-association-reaction cdk1p1p2 cdc25Cp1p2 cdk1p1)
	(catalyzed-association-reaction cdk1p1p2 cdc25Cp1p2 cdk1p2)
	(catalyzed-association-reaction cdk1p1p2 cdk7-cycH cdk1p1p2p3)
	(association-reaction cdk1p1p2 cks1 cdk1p1p2-cks1)
	(catalyzed-association-reaction cdk1p1p2p3 cdc25Cp1 cdk1p1p3)
	(catalyzed-association-reaction cdk1p1p2p3 cdc25Cp1 cdk1p2p3)
	(catalyzed-association-reaction cdk1p1p2p3 cdc25Cp1p2 cdk1p1p3)
	(catalyzed-association-reaction cdk1p1p2p3 cdc25Cp1p2 cdk1p2p3)
	(association-reaction cdk1p1p2p3 cks1 cdk1p1p2p3-cks1)
	(catalyzed-association-reaction cdk1p1p2p3-cycA cdc25Cp1 cdk1p1p3-cycA)
	(catalyzed-association-reaction cdk1p1p2p3-cycA cdc25Cp1 cdk1p2p3-cycA)
	(catalyzed-association-reaction cdk1p1p2p3-cycA cdc25Cp1p2 cdk1p1p3-cycA)
	(catalyzed-association-reaction cdk1p1p2p3-cycA cdc25Cp1p2 cdk1p2p3-cycA)
	(association-reaction cdk1p1p2p3 cycA cdk1p1p2p3-cycA)
	(catalyzed-association-reaction cdk1p1p2p3-cycB cdc25Cp1 cdk1p1p3-cycB)
	(catalyzed-association-reaction cdk1p1p2p3-cycB cdc25Cp1 cdk1p2p3-cycB)
	(catalyzed-association-reaction cdk1p1p2p3-cycB cdc25Cp1p2 cdk1p1p3-cycB)
	(catalyzed-association-reaction cdk1p1p2p3-cycB cdc25Cp1p2 cdk1p2p3-cycB)
	(association-reaction cdk1p1p2p3 cycB cdk1p1p2p3-cycB)
	(catalyzed-association-reaction cdk1p1p3 cdc25Cp1 cdk1p3)
	(catalyzed-association-reaction cdk1p1p3 cdc25Cp1p2 cdk1p3)
	(association-reaction cdk1p1p3 cks1 cdk1p1p3-cks1)
	(catalyzed-association-reaction cdk1p1p3-cycA cdc25Cp1 cdk1p3-cycA)
	(catalyzed-association-reaction cdk1p1p3-cycA cdc25Cp1p2 cdk1p3-cycA)
	(association-reaction cdk1p1p3 cycA cdk1p1p3-cycA)
	(catalyzed-association-reaction cdk1p1p3-cycB cdc25Cp1 cdk1p3-cycB)
	(catalyzed-association-reaction cdk1p1p3-cycB cdc25Cp1p2 cdk1p3-cycB)
	(association-reaction cdk1p1p3 cycB cdk1p1p3-cycB)
	(catalyzed-association-reaction cdk1p2 cdc25Cp1 cdk1)
	(catalyzed-association-reaction cdk1p2 cdc25Cp1p2 cdk1)
	(catalyzed-association-reaction cdk1p2 cdk7-cycH cdk1p2p3)
	(association-reaction cdk1p2 cks1 cdk1p2-cks1)
	(catalyzed-association-reaction cdk1p2p3 cdc25Cp1 cdk1p3)
	(catalyzed-association-reaction cdk1p2p3 cdc25Cp1p2 cdk1p3)
	(association-reaction cdk1p2p3 cks1 cdk1p2p3-cks1)
	(catalyzed-association-reaction cdk1p2p3-cycA cdc25Cp1 cdk1p3-cycA)
	(catalyzed-association-reaction cdk1p2p3-cycA cdc25Cp1p2 cdk1p3-cycA)
	(association-reaction cdk1p2p3 cycA cdk1p2p3-cycA)
	(catalyzed-association-reaction cdk1p2p3-cycA Myt1 cdk1p1p2p3-cycA)
	(catalyzed-association-reaction cdk1p2p3-cycB cdc25Cp1 cdk1p3-cycB)
	(catalyzed-association-reaction cdk1p2p3-cycB cdc25Cp1p2 cdk1p3-cycB)
	(association-reaction cdk1p2p3 cycB cdk1p2p3-cycB)
	(catalyzed-association-reaction cdk1p2p3-cycB Myt1 cdk1p1p2p3-cycB)
	(association-reaction cdk1p3 cks1 cdk1p3-cks1)
	(association-reaction cdk1p3 cycA cdk1p3-cycA)
	(catalyzed-association-reaction cdk1p3-cycA Myt1 cdk1p1p3-cycA)
	(association-reaction cdk1p3 cycB cdk1p3-cycB)
	(catalyzed-association-reaction cdk1p3-cycB Myt1 cdk1p1p3-cycB)
	(catalyzed-association-reaction cdk2 cdk7-cycH cdk2p2)
	(association-reaction cdk2 cks1 cdk2-cks1)
	(association-reaction cdk2 cycA cdk2-cycA)
	(catalyzed-association-reaction cdk2-cycA cdk7-cycH cdk2p2-cycA)
	(association-reaction cdk2-cycA E2F13 cdk2-cycA-E2F13)
	(association-reaction cdk2-cycA E2F13p1 cdk2-cycA-E2F13p1)
	(association-reaction cdk2 cycE cdk2-cycE)
	(catalyzed-association-reaction cdk2-cycE cdk7-cycH cdk2p2-cycE)
	(association-reaction cdk2 cycEp1 cdk2-cycEp1)
	(catalyzed-association-reaction cdk2-cycEp1 cdk7-cycH cdk2p2-cycEp1)
	(catalyzed-association-reaction cdk2p1 cdk7-cycH cdk2p1p2)
	(association-reaction cdk2p1 cks1 cdk2p1-cks1)
	(catalyzed-association-reaction cdk2p1-cycA cdc25Ap1 cdk2-cycA)
	(association-reaction cdk2p1 cycA cdk2p1-cycA)
	(catalyzed-association-reaction cdk2p1-cycA cdk7-cycH cdk2p1p2-cycA)
	(association-reaction cdk2p1-cycA E2F13 cdk2p1-cycA-E2F13)
	(association-reaction cdk2p1-cycA E2F13p1 cdk2p1-cycA-E2F13p1)
	(catalyzed-association-reaction cdk2p1-cycE cdc25Ap1 cdk2-cycE)
	(association-reaction cdk2p1 cycE cdk2p1-cycE)
	(catalyzed-association-reaction cdk2p1-cycE cdk7-cycH cdk2p1p2-cycE)
	(catalyzed-association-reaction cdk2p1-cycEp1 cdc25Ap1 cdk2-cycEp1)
	(association-reaction cdk2p1 cycEp1 cdk2p1-cycEp1)
	(catalyzed-association-reaction cdk2p1-cycEp1 cdk7-cycH cdk2p1p2-cycEp1)
	(association-reaction cdk2p1p2 cks1 cdk2p1p2-cks1)
	(catalyzed-association-reaction cdk2p1p2-cycA cdc25Ap1 cdk2p2-cycA)
	(association-reaction cdk2p1p2 cycA cdk2p1p2-cycA)
	(association-reaction cdk2p1p2-cycA E2F13 cdk2p1p2-cycA-E2F13)
	(association-reaction cdk2p1p2-cycA E2F13p1 cdk2p1p2-cycA-E2F13p1)
	(catalyzed-association-reaction cdk2p1p2-cycE cdc25Ap1 cdk2p2-cycE)
	(association-reaction cdk2p1p2 cycE cdk2p1p2-cycE)
	(catalyzed-association-reaction cdk2p1p2-cycEp1 cdc25Ap1 cdk2p2-cycEp1)
	(association-reaction cdk2p1p2 cycEp1 cdk2p1p2-cycEp1)
	(association-reaction cdk2p2 cks1 cdk2p2-cks1)
	(association-reaction cdk2p2 cycA cdk2p2-cycA)
	(association-reaction cdk2p2-cycA E2F13 cdk2p2-cycA-E2F13)
	(association-reaction cdk2p2-cycA E2F13p1 cdk2p2-cycA-E2F13p1)
	(association-reaction cdk2p2 cycE cdk2p2-cycE)
	(association-reaction cdk2p2 cycEp1 cdk2p2-cycEp1)
	(catalyzed-association-reaction cdk46 cdk7-cycH cdk46p2)
	(association-reaction cdk46 cycD cdk46-cycD)
	(catalyzed-association-reaction cdk46-cycD cdk7-cycH cdk46p2-cycD)
	(association-reaction cdk46 cycDp1 cdk46-cycDp1)
	(catalyzed-association-reaction cdk46-cycDp1 cdk7-cycH cdk46p2-cycDp1)
	(catalyzed-association-reaction cdk46p1 cdc25Ap1 cdk46)
	(catalyzed-association-reaction cdk46p1 cdk7-cycH cdk46p1p2)
	(association-reaction cdk46p1 cycD cdk46p1-cycD)
	(catalyzed-association-reaction cdk46p1-cycD cdk7-cycH cdk46p1p2-cycD)
	(association-reaction cdk46p1 cycDp1 cdk46p1-cycDp1)
	(catalyzed-association-reaction cdk46p1-cycDp1 cdk7-cycH cdk46p1p2-cycDp1)
	(catalyzed-association-reaction cdk46p1p2 cdc25Ap1 cdk46p2)
	(association-reaction cdk46p1p2 cycD cdk46p1p2-cycD)
	(association-reaction cdk46p1p2 cycDp1 cdk46p1p2-cycDp1)
	(association-reaction cdk46p2 cycD cdk46p2-cycD)
	(association-reaction cdk46p2 cycDp1 cdk46p2-cycDp1)
	(catalyzed-association-reaction cdk7 cdk7-cycH cdk7p1)
	(association-reaction cdk7 cycH cdk7-cycH)
	(catalyzed-association-reaction cdk7-cycH cdk7-cycH cdk7p1-cycH)
	(association-reaction cdk7p1 cycH cdk7p1-cycH)
	(association-reaction CEBP gP CEBP-gP)
	(synthesis-reaction CEBP-gP P) 
	(association-reaction CEBP pRb CEBP-pRb)
	(association-reaction CEBP-pRb gP CEBP-pRb-gP)
	(synthesis-reaction CEBP-pRb-gP P) 
	(association-reaction CEBP pRbp1 CEBP-pRbp1)
	(association-reaction CEBP-pRbp1 gP CEBP-pRbp1-gP)
	(synthesis-reaction CEBP-pRbp1-gP P) 
	(association-reaction CEBP pRbp1p2 CEBP-pRbp1p2)
	(association-reaction CEBP-pRbp1p2 gP CEBP-pRbp1p2-gP)
	(synthesis-reaction CEBP-pRbp1p2-gP P) 
	(association-reaction CEBP pRbp2 CEBP-pRbp2)
	(association-reaction CEBP-pRbp2 gP CEBP-pRbp2-gP)
	(synthesis-reaction CEBP-pRbp2-gP P) 
	(association-reaction c-Myc AP2 c-Myc-AP2)
	(association-reaction c-Myc Max c-Myc-Max)
	(synthesis-reaction c-Myc-Max-gcdc25A cdc25A) 
	(association-reaction c-Myc-Max gcdc25A c-Myc-Max-gcdc25A)
	(catalyzed-association-reaction cycA Skp2p1-Skp1 Skp2p1-Skp1)
	(catalyzed-association-reaction cycA Skp2p1-Skp1p1 Skp2p1-Skp1p1)
	(catalyzed-association-reaction cycA Skp2-Skp1 Skp2-Skp1)
	(catalyzed-association-reaction cycA Skp2-Skp1p1 Skp2-Skp1p1)
	(catalyzed-association-reaction cycB APCp1 APCp1)
	(catalyzed-association-reaction cycE cdk2p2-cycE cycEp1)
	(catalyzed-association-reaction cycE cdk2p2-cycEp1 cycEp1)
	(catalyzed-association-reaction DMP1 cdk46p3-cycD DMP1p1)
	(association-reaction DMP1 cycD DMP1-cycD)
	(association-reaction DMP1 cycDp1 DMP1-cycDp1)
	(association-reaction DMP1p1 cycD DMP1p1-cycD)
	(association-reaction DMP1p1 cycDp1 DMP1p1-cycDp1)
	(catalyzed-association-reaction DP12 cdk2p2-cycA DP12p1)
	(catalyzed-association-reaction E2F13 cdk2p2-cycA E2F13p1)
	(synthesis-reaction E2F13-DP12-gE2 c-Myc) 
	(synthesis-reaction E2F13-DP12-gE2 cycA) 
	(synthesis-reaction E2F13-DP12-gE2 cycD) 
	(synthesis-reaction E2F13-DP12-gE2 cycDp1) 
	(synthesis-reaction E2F13-DP12-gE2 cycE) 
	(synthesis-reaction E2F13-DP12-gE2 cycEp1) 
	(association-reaction E2F13-DP12 gE2 E2F13-DP12-gE2)
	(synthesis-reaction E2F13-DP12-gE2 p107) 
	(synthesis-reaction E2F13-DP12-gE2 p107p1) 
	(synthesis-reaction E2F13-DP12-gE2 p19ARF) 
	(synthesis-reaction E2F13-DP12-gE2 pol) 
	(association-reaction E2F1 DP12 E2F1-DP12)
	(association-reaction E2F2 DP12 E2F2-DP12)
	(association-reaction E2F3 DP12 E2F3-DP12)
	(association-reaction E2F5 DP12 E2F5-DP12)
	(synthesis-reaction E2F5-DP12-gE2 c-Myc) 
	(synthesis-reaction E2F5-DP12-gE2 cycA) 
	(synthesis-reaction E2F5-DP12-gE2 cycD) 
	(synthesis-reaction E2F5-DP12-gE2 cycDp1) 
	(synthesis-reaction E2F5-DP12-gE2 cycE) 
	(synthesis-reaction E2F5-DP12-gE2 cycEp1) 
	(association-reaction E2F5-DP12 gE2 E2F5-DP12-gE2)
	(synthesis-reaction E2F5-DP12-gE2 p107) 
	(synthesis-reaction E2F5-DP12-gE2 p107p1) 
	(synthesis-reaction E2F5-DP12-gE2 p19ARF) 
	(synthesis-reaction E2F5-DP12-gE2 pol) 
	(association-reaction E2F6 DP12 E2F6-DP12)
	(association-reaction E2F6-DP12 gE2 E2F6-DP12-gE2)
	(association-reaction E2F6-DP12p1 gE2 E2F6-DP12p1-gE2)
	(association-reaction HBP1 p130 HBP1-p130)
	(association-reaction HDAC1 p107-E2F4-DP12p1 HDAC1-p107-E2F4-DP12p1)
	(association-reaction HDAC1-p107-E2F4p1-DP12 gE2 HDAC1-p107-E2F4p1-DP12-gE2)
	(association-reaction HDAC1 p130-E2F4-DP12p1 HDAC1-p130-E2F4-DP12p1)
	(association-reaction HDAC1-p130-E2F4p1-DP12 gE2 HDAC1-p130-E2F4p1-DP12-gE2)
	(association-reaction HDAC1-p130-E2F5-DP12 gE2 HDAC1-p130-E2F5-DP12-gE2)
	(association-reaction HDAC1 p130-E2F5-DP12 HDAC1-p130-E2F5-DP12)
	(association-reaction HDAC1 p130-E2F5-DP12p1 HDAC1-p130-E2F5-DP12p1)
	(association-reaction HDAC1-p130-E2F5p1-DP12 gE2 HDAC1-p130-E2F5p1-DP12-gE2)
	(association-reaction HDAC1-pRb-E2F13-DP12 gE2 HDAC1-pRb-E2F13-DP12-gE2)
	(association-reaction HDAC1 pRb-E2F13-DP12 HDAC1-pRb-E2F13-DP12)
	(association-reaction HDAC1 pRb-E2F13-DP12p1 HDAC1-pRb-E2F13-DP12p1)
	(association-reaction HDAC1 pRb-E2F13p1-DP12p1 HDAC1-pRb-E2F13p1-DP12p1)
	(association-reaction HDAC1 pRb-E2F4p1-DP12 HDAC1-pRb-E2F4p1-DP12)
	(association-reaction HDAC1-pRbp1-E2F13-DP12 gE2 HDAC1-pRbp1-E2F13-DP12-gE2)
	(association-reaction HDAC1-pRbp1-E2F13p1-DP12 gE2 HDAC1-pRbp1-E2F13p1-DP12-gE2)
	(association-reaction HDAC1-pRbp1-E2F4-DP12 gE2 HDAC1-pRbp1-E2F4-DP12-gE2)
	(association-reaction m1433 cdc25Cp1p2 m1433-cdc25Cp1p2)
	(association-reaction m1433 cdc25Cp2 m1433-cdc25Cp2)
	(association-reaction p107-E2F4-DP12p1 gE2 p107-E2F4-DP12p1-gE2)
	(association-reaction p107 E2F4-DP12p1 p107-E2F4-DP12p1)
	(association-reaction p130-E2F4-DP12p1 gE2 p130-E2F4-DP12p1-gE2)
	(association-reaction p130 E2F4-DP12p1 p130-E2F4-DP12p1)
	(association-reaction p130-E2F5-DP12 gE2 p130-E2F5-DP12-gE2)
	(association-reaction p130 E2F5-DP12 p130-E2F5-DP12)
	(association-reaction p130-E2F5-DP12p1 gE2 p130-E2F5-DP12p1-gE2)
	(association-reaction p130 E2F5-DP12p1 p130-E2F5-DP12p1)
	(association-reaction p16 cdk46 p16-cdk46)
	(association-reaction p16 cdk46p1 p16-cdk46p1)
	(association-reaction p16 cdk46p1p2 p16-cdk46p1p2)
	(association-reaction p16 cdk46p2 p16-cdk46p2)
	(association-reaction p16 cdk7 p16-cdk7)
	(association-reaction p16 cdk7p1 p16-cdk7p1)
	(association-reaction p27 cdk2-cycA p27-cdk2-cycA)
	(association-reaction p27 cdk2-cycEp1 p27-cdk2-cycEp1)
	(association-reaction p27 cdk2-cycE p27-cdk2-cycE)
	(association-reaction p27 cdk2p1-cycA p27-cdk2p1-cycA)
	(association-reaction p27 cdk2p1-cycEp1 p27-cdk2p1-cycEp1)
	(association-reaction p27 cdk2p1-cycE p27-cdk2p1-cycE)
	(association-reaction p27 cdk2p1p2-cycA p27-cdk2p1p2-cycA)
	(association-reaction p27 cdk2p1p2-cycEp1 p27-cdk2p1p2-cycEp1)
	(association-reaction p27 cdk2p1p2-cycE p27-cdk2p1p2-cycE)
	(association-reaction p27 cdk2p2-cycA p27-cdk2p2-cycA)
	(association-reaction p27 cdk2p2-cycEp1 p27-cdk2p2-cycEp1)
	(catalyzed-association-reaction p27 cdk2p2-cycEp1 p27p1)
	(association-reaction p27 cdk2p2-cycE p27-cdk2p2-cycE)
	(catalyzed-association-reaction p27 cdk2p2-cycE p27p1)
	(association-reaction p27 cdk46-cycDp1 p27-cdk46-cycDp1)
	(association-reaction p27 cdk46-cycD p27-cdk46-cycD)
	(association-reaction p27 cdk46p1-cycDp1 p27-cdk46p1-cycDp1)
	(association-reaction p27 cdk46p1-cycD p27-cdk46p1-cycD)
	(association-reaction p27 cdk46p1p2-cycDp1 p27-cdk46p1p2-cycDp1)
	(association-reaction p27 cdk46p1p2-cycD p27-cdk46p1p2-cycD)
	(association-reaction p27 cdk46p2-cycDp1 p27-cdk46p2-cycDp1)
	(association-reaction p27 cdk46p2-cycD p27-cdk46p2-cycD)
	(association-reaction p27p1 cdk2-cycA p27p1-cdk2-cycA)
	(association-reaction p27p1 cdk2-cycEp1 p27p1-cdk2-cycEp1)
	(association-reaction p27p1 cdk2-cycE p27p1-cdk2-cycE)
	(association-reaction p27p1 cdk2p1-cycA p27p1-cdk2p1-cycA)
	(association-reaction p27p1 cdk2p1-cycEp1 p27p1-cdk2p1-cycEp1)
	(association-reaction p27p1 cdk2p1-cycE p27p1-cdk2p1-cycE)
	(association-reaction p27p1 cdk2p1p2-cycA p27p1-cdk2p1p2-cycA)
	(association-reaction p27p1 cdk2p1p2-cycEp1 p27p1-cdk2p1p2-cycEp1)
	(association-reaction p27p1 cdk2p1p2-cycE p27p1-cdk2p1p2-cycE)
	(association-reaction p27p1 cdk2p2-cycA p27p1-cdk2p2-cycA)
	(association-reaction p27p1 cdk2p2-cycEp1 p27p1-cdk2p2-cycEp1)
	(association-reaction p27p1 cdk2p2-cycE p27p1-cdk2p2-cycE)
	(association-reaction p27p1 cdk46-cycDp1 p27p1-cdk46-cycDp1)
	(association-reaction p27p1 cdk46-cycD p27p1-cdk46-cycD)
	(association-reaction p27p1 cdk46p1-cycDp1 p27p1-cdk46p1-cycDp1)
	(association-reaction p27p1 cdk46p1-cycD p27p1-cdk46p1-cycD)
	(association-reaction p27p1 cdk46p1p2-cycDp1 p27p1-cdk46p1p2-cycDp1)
	(association-reaction p27p1 cdk46p1p2-cycD p27p1-cdk46p1p2-cycD)
	(association-reaction p27p1 cdk46p2-cycDp1 p27p1-cdk46p2-cycDp1)
	(association-reaction p27p1 cdk46p2-cycD p27p1-cdk46p2-cycD)
	(association-reaction p57 cdk2-cycA p57-cdk2-cycA)
	(association-reaction p57 cdk2-cycEp1 p57-cdk2-cycEp1)
	(association-reaction p57 cdk2-cycE p57-cdk2-cycE)
	(association-reaction p57 cdk2p1-cycA p57-cdk2p1-cycA)
	(association-reaction p57 cdk2p1-cycEp1 p57-cdk2p1-cycEp1)
	(association-reaction p57 cdk2p1-cycE p57-cdk2p1-cycE)
	(association-reaction p57 cdk2p1p2-cycA p57-cdk2p1p2-cycA)
	(association-reaction p57 cdk2p1p2-cycEp1 p57-cdk2p1p2-cycEp1)
	(association-reaction p57 cdk2p1p2-cycE p57-cdk2p1p2-cycE)
	(association-reaction p57 cdk2p2-cycA p57-cdk2p2-cycA)
	(association-reaction p57 cdk2p2-cycEp1 p57-cdk2p2-cycEp1)
	(association-reaction p57 cdk2p2-cycE p57-cdk2p2-cycE)
	(association-reaction p57 cdk46-cycDp1 p57-cdk46-cycDp1)
	(association-reaction p57 cdk46-cycD p57-cdk46-cycD)
	(association-reaction p57 cdk46p1-cycDp1 p57-cdk46p1-cycDp1)
	(association-reaction p57 cdk46p1-cycD p57-cdk46p1-cycD)
	(association-reaction p57 cdk46p1p2-cycDp1 p57-cdk46p1p2-cycDp1)
	(association-reaction p57 cdk46p1p2-cycD p57-cdk46p1p2-cycD)
	(association-reaction p57 cdk46p2-cycDp1 p57-cdk46p2-cycDp1)
	(association-reaction p57 cdk46p2-cycD p57-cdk46p2-cycD)
	(association-reaction p57p1 cdk46-cycDp1 p57p1-cdk46-cycDp1)
	(association-reaction p57p1 cdk46-cycD p57p1-cdk46-cycD)
	(association-reaction p57p1 cdk46p1-cycDp1 p57p1-cdk46p1-cycDp1)
	(association-reaction p57p1 cdk46p1-cycD p57p1-cdk46p1-cycD)
	(association-reaction p57p1 cdk46p1p2-cycDp1 p57p1-cdk46p1p2-cycDp1)
	(association-reaction p57p1 cdk46p1p2-cycD p57p1-cdk46p1p2-cycD)
	(association-reaction p57p1 cdk46p2-cycDp1 p57p1-cdk46p2-cycDp1)
	(association-reaction p57p1 cdk46p2-cycD p57p1-cdk46p2-cycD)
	(catalyzed-association-reaction p68 cdk2p2-cycA p68p2)
	(catalyzed-association-reaction p68 cdk2p2-cycEp1 p68p1)
	(catalyzed-association-reaction p68 cdk2p2-cycE p68p1)
	(catalyzed-association-reaction p68p1 cdk2p2-cycA p68p1p2)
	(catalyzed-association-reaction p68p2 cdk2p2-cycEp1 p68p1p2)
	(catalyzed-association-reaction p68p2 cdk2p2-cycE p68p1p2)
	(association-reaction pCAF p300 pCAF-p300)
	(association-reaction PCNA cycDp1 PCNA-cycDp1)
	(association-reaction PCNA cycD PCNA-cycD)
	(association-reaction pRb AP2 pRb-AP2)
	(catalyzed-association-reaction pRb cdk46p3-cycD pRbp1)
	(association-reaction pRb-E2F13-DP12 gE2 pRb-E2F13-DP12-gE2)
	(association-reaction pRb-E2F13-DP12p1 gE2 pRb-E2F13-DP12p1-gE2)
	(association-reaction pRb E2F13-DP12p1 pRb-E2F13-DP12p1)
	(association-reaction pRb E2F13-DP12 pRb-E2F13-DP12)
	(association-reaction pRb-E2F13p1-DP12p1 gE2 pRb-E2F13p1-DP12p1-gE2)
	(association-reaction pRb E2F13p1-DP12p1 pRb-E2F13p1-DP12p1)
	(association-reaction pRb E2F4-DP12p1 pRb-E2F4-DP12p1)
	(association-reaction pRb-E2F4p1-DP12 gE2 pRb-E2F4p1-DP12-gE2)
	(association-reaction pRb Jun pRb-Jun)
	(association-reaction pRbp1 AP2 pRbp1-AP2)
	(catalyzed-association-reaction pRbp1 cdk2p2-cycEp1 pRbp1p2)
	(catalyzed-association-reaction pRbp1 cdk2p2-cycE pRbp1p2)
	(association-reaction pRbp1-E2F13-DP12 gE2 pRbp1-E2F13-DP12-gE2)
	(association-reaction pRbp1-E2F13-DP12p1 gE2 pRbp1-E2F13-DP12p1-gE2)
	(association-reaction pRbp1 E2F13-DP12p1 pRbp1-E2F13-DP12p1)
	(association-reaction pRbp1 E2F13-DP12 pRbp1-E2F13-DP12)
	(association-reaction pRbp1-E2F13p1-DP12p1 gE2 pRbp1-E2F13p1-DP12p1-gE2)
	(association-reaction pRbp1 E2F13p1-DP12p1 pRbp1-E2F13p1-DP12p1)
	(association-reaction pRbp1 E2F4-DP12p1 pRbp1-E2F4-DP12p1)
	(association-reaction pRbp1-E2F4p1-DP12 gE2 pRbp1-E2F4p1-DP12-gE2)
	(association-reaction pRbp1 Jun pRbp1-Jun)
	(association-reaction pRbp1p2 AP2 pRbp1p2-AP2)
	(association-reaction pRbp1p2 Jun pRbp1p2-Jun)
	(association-reaction pRbp2 AP2 pRbp2-AP2)
	(catalyzed-association-reaction pRbp2 cdk46p3-cycD pRbp1p2)
	(association-reaction pRbp2 Jun pRbp2-Jun)
	(association-reaction Raf1 cdc25Ap1 Raf1-cdc25Ap1)
	(association-reaction Raf1 cdc25A Raf1-cdc25A)
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 c-Myc) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 cycA) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 cycD) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 cycDp1) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 cycE) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 cycEp1) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 p107) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 p107p1) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 p19ARF) 
	(synthesis-reaction Raf1-p130-E2F4p1-DP12-gE2 pol) 
	(association-reaction Raf1-p130-E2F4p1-DP12 gE2 Raf1-p130-E2F4p1-DP12-gE2)
	(association-reaction Raf1 p130-E2F4p1-DP12 Raf1-p130-E2F4p1-DP12)
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 c-Myc) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 cycA) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 cycD) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 cycDp1) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 cycE) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 cycEp1) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 p107) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 p107p1) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 p19ARF) 
	(synthesis-reaction Raf1-p130-E2F5-DP12-gE2 pol) 
	(association-reaction Raf1-p130-E2F5-DP12 gE2 Raf1-p130-E2F5-DP12-gE2)
	(association-reaction Raf1 p130-E2F5-DP12 Raf1-p130-E2F5-DP12)
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 c-Myc) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 cycA) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 cycD) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 cycDp1) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 cycE) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 cycEp1) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 p107) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 p107p1) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 p19ARF) 
	(synthesis-reaction Raf1-p130-E2F5p1-DP12-gE2 pol) 
	(association-reaction Raf1-p130-E2F5p1-DP12 gE2 Raf1-p130-E2F5p1-DP12-gE2)
	(association-reaction Raf1 p130-E2F5p1-DP12 Raf1-p130-E2F5p1-DP12)
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 c-Myc) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 cycA) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 cycD) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 cycDp1) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 cycE) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 cycEp1) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 p107) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 p107p1) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 p19ARF) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12-gE2 pol) 
	(association-reaction Raf1-pRb-E2F13-DP12 gE2 Raf1-pRb-E2F13-DP12-gE2)
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 c-Myc) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 cycA) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 cycD) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 cycDp1) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 cycE) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 cycEp1) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 p107) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 p107p1) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 p19ARF) 
	(synthesis-reaction Raf1-pRb-E2F13-DP12p1-gE2 pol) 
	(association-reaction Raf1-pRb-E2F13-DP12p1 gE2 Raf1-pRb-E2F13-DP12p1-gE2)
	(association-reaction Raf1 pRb-E2F13-DP12p1 Raf1-pRb-E2F13-DP12p1)
	(association-reaction Raf1 pRb-E2F13-DP12 Raf1-pRb-E2F13-DP12)
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 c-Myc) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 cycA) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 cycD) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 cycDp1) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 cycE) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 cycEp1) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 p107) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 p107p1) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 p19ARF) 
	(synthesis-reaction Raf1-pRb-E2F13p1-DP12p1-gE2 pol) 
	(association-reaction Raf1-pRb-E2F13p1-DP12p1 gE2 Raf1-pRb-E2F13p1-DP12p1-gE2)
	(association-reaction Raf1 pRb-E2F13p1-DP12p1 Raf1-pRb-E2F13p1-DP12p1)
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 c-Myc) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 cycA) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 cycD) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 cycDp1) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 cycE) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 cycEp1) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 p107) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 p107p1) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 p19ARF) 
	(synthesis-reaction Raf1-pRb-E2F4p1-DP12-gE2 pol) 
	(association-reaction Raf1-pRb-E2F4p1-DP12 gE2 Raf1-pRb-E2F4p1-DP12-gE2)
	(association-reaction Raf1 pRb-E2F4p1-DP12 Raf1-pRb-E2F4p1-DP12)
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 c-Myc) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 cycA) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 cycD) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 cycDp1) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 cycE) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 cycEp1) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 p107) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 p107p1) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 p19ARF) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12-gE2 pol) 
	(association-reaction Raf1-pRbp1-E2F13-DP12 gE2 Raf1-pRbp1-E2F13-DP12-gE2)
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 c-Myc) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 cycA) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 cycD) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 cycDp1) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 cycE) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 cycEp1) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 p107) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 p107p1) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 p19ARF) 
	(synthesis-reaction Raf1-pRbp1-E2F13-DP12p1-gE2 pol) 
	(association-reaction Raf1-pRbp1-E2F13-DP12p1 gE2 Raf1-pRbp1-E2F13-DP12p1-gE2)
	(association-reaction Raf1 pRbp1-E2F13-DP12p1 Raf1-pRbp1-E2F13-DP12p1)
	(association-reaction Raf1 pRbp1-E2F13-DP12 Raf1-pRbp1-E2F13-DP12)
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 c-Myc) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 cycA) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 cycD) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 cycDp1) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 cycE) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 cycEp1) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 p107) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 p107p1) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 p19ARF) 
	(synthesis-reaction Raf1-pRbp1-E2F13p1-DP12p1-gE2 pol) 
	(association-reaction Raf1-pRbp1-E2F13p1-DP12p1 gE2 Raf1-pRbp1-E2F13p1-DP12p1-gE2)
	(association-reaction Raf1 pRbp1-E2F13p1-DP12p1 Raf1-pRbp1-E2F13p1-DP12p1)
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 c-Myc) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 cycA) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 cycD) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 cycDp1) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 cycE) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 cycEp1) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 p107) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 p107p1) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 p19ARF) 
	(synthesis-reaction Raf1-pRbp1-E2F4p1-DP12-gE2 pol) 
	(association-reaction Raf1-pRbp1-E2F4p1-DP12 gE2 Raf1-pRbp1-E2F4p1-DP12-gE2)
	(association-reaction Raf1 pRbp1-E2F4p1-DP12 Raf1-pRbp1-E2F4p1-DP12)
	(association-reaction RPA cycA RPA-cycA)
	(catalyzed-association-reaction Skp1 cdk2p2-cycA Skp1p1)
	(association-reaction Skp2 cdk2-cycA Skp2-cdk2-cycA)
	(association-reaction Skp2 cdk2p1-cycA Skp2-cdk2p1-cycA)
	(association-reaction Skp2 cdk2p1p2-cycA Skp2-cdk2p1p2-cycA)
	(association-reaction Skp2 cdk2p2-cycA Skp2-cdk2p2-cycA)
	(catalyzed-association-reaction Skp2 cdk2p2-cycA Skp2p1)
	(association-reaction Skp2p1 Skp1p1 Skp2p1-Skp1p1)
	(association-reaction Skp2p1 Skp1 Skp2p1-Skp1)
	(association-reaction Skp2-Skp1 cdk2-cycA Skp2-Skp1-cdk2-cycA)
	(association-reaction Skp2-Skp1 cdk2p1-cycA Skp2-Skp1-cdk2p1-cycA)
	(association-reaction Skp2-Skp1 cdk2p1p2-cycA Skp2-Skp1-cdk2p1p2-cycA)
	(association-reaction Skp2-Skp1 cdk2p2-cycA Skp2-Skp1-cdk2p2-cycA)
	(association-reaction Skp2-Skp1p1 cdk2-cycA Skp2-Skp1p1-cdk2-cycA)
	(association-reaction Skp2-Skp1p1 cdk2p1-cycA Skp2-Skp1p1-cdk2p1-cycA)
	(association-reaction Skp2-Skp1p1 cdk2p1p2-cycA Skp2-Skp1p1-cdk2p1p2-cycA)
	(association-reaction Skp2-Skp1p1 cdk2p2-cycA Skp2-Skp1p1-cdk2p2-cycA)
	(association-reaction Skp2 Skp1p1 Skp2-Skp1p1)
	(association-reaction Skp2 Skp1 Skp2-Skp1)
	(catalyzed-association-reaction SL1 cdk1p3-cycA SL1p1)
	(catalyzed-association-reaction SL1 cdk1p3-cycB SL1p1)
	(synthesis-reaction SP1-E2F13-gP c-Myc) 
	(synthesis-reaction SP1-E2F13-gP cycA) 
	(synthesis-reaction SP1-E2F13-gP cycD) 
	(synthesis-reaction SP1-E2F13-gP cycDp1) 
	(synthesis-reaction SP1-E2F13-gP cycE) 
	(synthesis-reaction SP1-E2F13-gP cycEp1) 
	(synthesis-reaction SP1-E2F13-gP p107) 
	(synthesis-reaction SP1-E2F13-gP p107p1) 
	(synthesis-reaction SP1-E2F13-gP p19ARF) 
	(synthesis-reaction SP1-E2F13-gP pol) 
	(association-reaction SP1-E2F13 gP SP1-E2F13-gP)
	(synthesis-reaction SP1-E2F13p1-gP c-Myc) 
	(synthesis-reaction SP1-E2F13p1-gP cycA) 
	(synthesis-reaction SP1-E2F13p1-gP cycD) 
	(synthesis-reaction SP1-E2F13p1-gP cycDp1) 
	(synthesis-reaction SP1-E2F13p1-gP cycE) 
	(synthesis-reaction SP1-E2F13p1-gP cycEp1) 
	(synthesis-reaction SP1-E2F13p1-gP p107) 
	(synthesis-reaction SP1-E2F13p1-gP p107p1) 
	(synthesis-reaction SP1-E2F13p1-gP p19ARF) 
	(synthesis-reaction SP1-E2F13p1-gP pol) 
	(association-reaction SP1-E2F13p1 gP SP1-E2F13p1-gP)
	(association-reaction SP1 E2F13p1 SP1-E2F13p1)
	(association-reaction SP1 E2F13 SP1-E2F13)
	(synthesis-reaction SP1-gP c-Myc) 
	(synthesis-reaction SP1-gP cycA) 
	(synthesis-reaction SP1-gP cycD) 
	(synthesis-reaction SP1-gP cycDp1) 
	(synthesis-reaction SP1-gP cycE) 
	(synthesis-reaction SP1-gP cycEp1) 
	(synthesis-reaction SP1-gP p107) 
	(synthesis-reaction SP1-gP p107p1) 
	(synthesis-reaction SP1-gP p19ARF) 
	(synthesis-reaction SP1-gP pol) 
	(association-reaction SP1 gP SP1-gP)
	(association-reaction SP1-p107 gP SP1-p107-gP)
	(association-reaction SP1-p107p1 gP SP1-p107p1-gP)
	(association-reaction SP1 p107p1 SP1-p107p1)
	(association-reaction SP1 p107 SP1-p107)
	(num-subs l0)
	(next l1 l0)
	(next l2 l1)
	(next l3 l2)
	(next l4 l3)
	(next l5 l4)
	(next l6 l5)
	(next l7 l6)
	(next l8 l7)
	(next l9 l8)
	(next l10 l9)
	(next l11 l10)
	(next l12 l11)
	(next l13 l12)
	(next l14 l13)
	(next l15 l14)
	(next l16 l15)
	(next l17 l16)
	(next l18 l17)
	(next l19 l18)
	(next l20 l19)
	(next l21 l20)
	(next l22 l21)
	(next l23 l22)
	(next l24 l23)
	(next l25 l24)
	(next l26 l25)
	(next l27 l26)
	(next l28 l27)
	(next l29 l28))


(:goal
	(and
	(preference p0A (or (available pRbp1-E2F4-DP12p1) (available cdk1p1p2p3-cycA)))
	(preference p0B (or (available p27p1-cdk46p2-cycD) (available p27-cdk46-cycDp1)))
	(preference p0C (or (available cdk46p2-cycD) (available HDAC1-pRb-E2F13-DP12-gE2)))
	(preference p0D (or (available p57p1-cdk46p2-cycDp1) (available p27p1-cdk46-cycD)))
	(preference p0E (or (available cdk46-cycDp1) (available p16-cdk46p2)))
	(preference p0F (or (available p57-cdk46-cycDp1) (available Raf1-cdc25Ap1)))
	(preference p0G (or (available p16-cdk46) (available p130-E2F4-DP12p1-gE2)))
	(preference p0H (or (available p27p1-cdk46-cycDp1) (available p27p1-cdk46p2-cycDp1)))
	(preference p0I (or (available p27p1-cdk2p1-cycEp1) (available cdk46p2)))
	(preference p0J (or (available p57p1-cdk46p2-cycD) (available cdk46)))
	(preference p0K (or (available p27-cdk46-cycD) (available p57p1-cdk46p1p2-cycD)))
	(preference p0L (or (available cdk46-cycD) (available cdk46p2-cycDp1)))
	(preference p0M (or (available p57-cdk46p2-cycDp1) (available SP1-E2F13p1-gP)))
	(preference p0N (or (available p57-cdk46-cycD) (available p57p1-cdk46-cycDp1)))
	(preference p0O (or (available Skp2-Skp1p1-cdk2-cycA) (available Skp2-Skp1p1-cdk2p1-cycA)))
	(preference p0P (or (available cdk2-cycEp1) (available Skp2-Skp1p1-cdk2p1p2-cycA)))
	(preference p0Q (or (available Raf1-cdc25A) (available p57-cdk46p2-cycD)))
	(preference p0R (or (available Skp2-Skp1p1-cdk2p2-cycA) (available SL1p1)))
	(preference p0S (or (available p57p1-cdk46-cycD) (available cdc25Ap1)))
	(preference p0T (or (available p27-cdk46p2-cycD) (available p27p1-cdk2p1-cycA)))
	(preference p0U (or (available p68p1p2) (available p27p1-cdk2-cycEp1)))
	(preference p0V (or (available p27-cdk46p2-cycDp1) (available SP1-E2F13p1)))
	(preference p0W (or (available p57-cdk2p1-cycA) (available cdk1p3-cycB)))
	(preference p0X (or (available p27p1-cdk46p1-cycD) (available Skp2p1-Skp1p1)))
	(preference p0Y (or (available Skp2-cdk2p1p2-cycA) (available CEBP-pRbp1-gP)))
	(preference p0Z (or (available p27-cdk46p1p2-cycD) (available cdk2p2-cycA-E2F13)))
	(preference p0AB (or (available p27-cdk2p2-cycEp1) (available p27p1-cdk46p1-cycDp1)))
	(preference p0BB (or (available p27p1-cdk2-cycA) (available p27-cdk2p1-cycA)))
	(preference p0CB (or (available p107) (available cdk1p3-cycA)))
	(preference p0DB (or (available DMP1p1-cycD) (available c-Abl-pRbp1p2)))
	(preference p0EB (or (available cdk2-cycA-E2F13p1) (available cdk2p1-cycA-E2F13p1)))
	(preference p0FB (or (available p27p1-cdk2p2-cycE) (available cdk1)))
	(preference p0GB (or (available Skp2-cdk2p1-cycA) (available p27p1-cdk2p1p2-cycA)))
	(preference p0HB (or (available p27p1-cdk46p1p2-cycDp1) (available cdc25A)))
	(preference p1A (not (num-subs l1)))
	(preference p2A (not (num-subs l2)))
	(preference p3A (not (num-subs l3)))
	(preference p4A (not (num-subs l4)))
	(preference p5A (not (num-subs l5)))
	(preference p6A (not (num-subs l6)))
	(preference p7A (not (num-subs l7)))
	(preference p8A (not (num-subs l8)))
	(preference p9A (not (num-subs l9)))
	(preference p10A (not (num-subs l10)))
	(preference p11A (not (num-subs l11)))
	(preference p12A (not (num-subs l12)))
	(preference p13A (not (num-subs l13)))
	(preference p14A (not (num-subs l14)))
	(preference p15A (not (num-subs l15)))
	(preference p16A (not (num-subs l16)))
	(preference p17A (not (num-subs l17)))
	(preference p18A (not (num-subs l18)))
	(preference p19A (not (num-subs l19)))
	(preference p20A (not (num-subs l20)))
	(preference p21A (not (num-subs l21)))
	(preference p22A (not (num-subs l22)))
	(preference p23A (not (num-subs l23)))
	(preference p24A (not (num-subs l24)))
	(preference p25A (not (num-subs l25)))
	(preference p26A (not (num-subs l26)))
	(preference p27A (not (num-subs l27)))
	(preference p28A (not (num-subs l28)))
	(preference p29A (not (num-subs l29)))))


(:metric minimize (+ (* 0.9 (is-violated p0A))
		     (* 0.9 (is-violated p0B))
		     (* 0.9 (is-violated p0C))
		     (* 1.0 (is-violated p0D))
		     (* 0.9 (is-violated p0E))
		     (* 0.9 (is-violated p0F))
		     (* 0.9 (is-violated p0G))
		     (* 0.9 (is-violated p0H))
		     (* 0.9 (is-violated p0I))
		     (* 1.0 (is-violated p0J))
		     (* 0.9 (is-violated p0K))
		     (* 1.0 (is-violated p0L))
		     (* 1.0 (is-violated p0M))
		     (* 1.0 (is-violated p0N))
		     (* 1.0 (is-violated p0O))
		     (* 0.9 (is-violated p0P))
		     (* 0.9 (is-violated p0Q))
		     (* 0.9 (is-violated p0R))
		     (* 0.9 (is-violated p0S))
		     (* 1.0 (is-violated p0T))
		     (* 0.9 (is-violated p0U))
		     (* 1.0 (is-violated p0V))
		     (* 1.0 (is-violated p0W))
		     (* 0.9 (is-violated p0X))
		     (* 1.0 (is-violated p0Y))
		     (* 0.9 (is-violated p0Z))
		     (* 0.9 (is-violated p0AB))
		     (* 1.0 (is-violated p0BB))
		     (* 1.0 (is-violated p0CB))
		     (* 0.9 (is-violated p0DB))
		     (* 0.9 (is-violated p0EB))
		     (* 1.0 (is-violated p0FB))
		     (* 1.0 (is-violated p0GB))
		     (* 0.9 (is-violated p0HB))
		     (* 1 (is-violated p1A))
		     (* 2 (is-violated p2A))
		     (* 3 (is-violated p3A))
		     (* 4 (is-violated p4A))
		     (* 5 (is-violated p5A))
		     (* 6 (is-violated p6A))
		     (* 7 (is-violated p7A))
		     (* 8 (is-violated p8A))
		     (* 9 (is-violated p9A))
		     (* 10 (is-violated p10A))
		     (* 11 (is-violated p11A))
		     (* 12 (is-violated p12A))
		     (* 13 (is-violated p13A))
		     (* 14 (is-violated p14A))
		     (* 15 (is-violated p15A))
		     (* 16 (is-violated p16A))
		     (* 17 (is-violated p17A))
		     (* 18 (is-violated p18A))
		     (* 19 (is-violated p19A))
		     (* 20 (is-violated p20A))
		     (* 21 (is-violated p21A))
		     (* 22 (is-violated p22A))
		     (* 23 (is-violated p23A))
		     (* 24 (is-violated p24A))
		     (* 25 (is-violated p25A))
		     (* 26 (is-violated p26A))
		     (* 27 (is-violated p27A))
		     (* 28 (is-violated p28A))
		     (* 29 (is-violated p29A))))

)
