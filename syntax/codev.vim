syntax case ignore

" error global
syn match codevError /\(\<^\)\@!\(\w*\)\>/

"comments
syn match codevComment /!.*$/



"numbers
syn match codevNumber '\<\d[lL]\=\>' display
syn match codevNumber '\<[0-9]\d\+[lL]\=\>' display
syn match codevNumber '\<\d\+[lLjJ]\>' display
syn match codevFloat '\.\d\+\%([eE][+-]\=\d\+\)\=[jJ]\=\>' display
syn match codevFloat '\<\d\+[eE][+-]\=\d\+[jJ]\=\>' display
syn match codevFloat '\<\d\+\.\d*\%([eE][+-]\=\d\+\)\=[jJ]\=' display


"strings 
syn region codevSingleString start=+'+ end=+'+
syn region codevDoubleString start=+"+ end=+"+


" Variable
syn match codevVariable /\(\^\)\([a-z][a-z0-9_\_]*\)\ze\>/
syn match codevIllegalVariable /\(\^\)\([_0-9]\w*\)\ze\>/
" syn match codevvariableParameter /[#]\d\+\>/

"Keywords
syn match codevBuiltInProg /end\>/
syn keyword codevConditionalKeywords IF ELSE ELS 
syn match codevConditionalKeywords "END IF"
syn keyword codevRepeatKeywords WHI FOR UNT WHILE
syn match codevRepeatKeywords "END FOR\|END UNT\|END WHI\(LE\|\)"
syn keyword codevOperator AND OR
syn keyword codevBool TRUE FALSE YES NO

"STORAGE
syn keyword codevStorageModifier lcl gbl
syn keyword codevStorageType num str fct
syn match codevStorageType "END FCT"

"functions
syn match codevFunction /\(@\)\([a-zA-Z][a-zA-Z0-9_]*\)\ze\>/
syn match codevFunctionError /\(@\)\([_0-9]\w*\)\ze\>/

"default location
syn match codevSingleString /\(cv_lens\|cv_macro\|cv_template\):\(.\+\/*\)*\ze\s*/


"builtin functions
syn keyword codevBuiltIn ImageAdd ImageAddConstantTo ImageClip 
syn keyword codevBuiltIn ImageCombineComponents ImageCopy ImageDelete 
syn keyword codevBuiltIn ImageDisplay ImageExtractComponent ImageFlipX 
syn keyword codevBuiltIn ImageFlipY ImageFromArray ImageGetAverageValueColor 
syn keyword codevBuiltIn ImageGetAverageValueMonochrome ImageGetMaxValueColor 
syn keyword codevBuiltIn ImageGetMaxValueMonochrome ImageGetMinValueColor 
syn keyword codevBuiltIn ImageGetMinValueMonochrome ImageGetPixelAt 
syn keyword codevBuiltIn ImageGetStatus ImageGetSumOfValuesColor 
syn keyword codevBuiltIn ImageGetSumOfValuesMonochrome ImageChangeGamma 
syn keyword codevBuiltIn ImageMDCopy ImageMDCopyWavelengthsAndWeights 
syn keyword codevBuiltIn ImageMDGtCME ImageMDGetDescriptor ImageMDGetDEX 
syn keyword codevBuiltIn ImageMDGetDEY ImageMDGetFieldOffsetX 
syn keyword codevBuiltIn ImageMDGetFieldOffsetY ImageMDGetFieldRotation 
syn keyword codevBuiltIn ImageMDGetFieldUnits ImageMDGetGamma ImageMDGetGRI 
syn keyword codevBuiltIn ImageMDGetImagePixelSize ImageMDGetImageSemiDiagonal 
syn keyword codevBuiltIn ImageMDGetLensName ImageMDGetNRD 
syn keyword codevBuiltIn ImageMDGetNumWavelengths ImageMDGetNumXPixels 
syn keyword codevBuiltIn ImageMDGetNumYPixels ImageMDGetObjectFileName 
syn keyword codevBuiltIn ImageMDGetObjectSemiDiagonal ImageMDGetOffsetValue 
syn keyword codevBuiltIn ImageMDGetPMX ImageMDGetPMY ImageMDGetScaleValue 
syn keyword codevBuiltIn ImageMDGetSimulationDate ImageMDGetSym ImageMDGetTGR 
syn keyword codevBuiltIn ImageMDGetTitle ImageMDGetWavelengthsAndWeights 
syn keyword codevBuiltIn ImageMDListHeaderInfo ImageMDSetDescriptor 
syn keyword codevBuiltIn ImageMDSetDEX ImageMDSetDEY ImageMDSetFieldOffsetX 
syn keyword codevBuiltIn ImageMDSetFieldOffsetY ImageMDSetFieldRotation 
syn keyword codevBuiltIn ImageMDSetFieldUnits ImageMDSetGamma ImageMDSetGRI 
syn keyword codevBuiltIn ImageMDSetImagePixelSize ImageMDSetImageSemiDiagonal 
syn keyword codevBuiltIn ImageMDSetLensName ImageMDSetNRD 
syn keyword codevBuiltIn ImageMDSetObjectFileName ImageMDSetObjectSemiDiagonal 
syn keyword codevBuiltIn ImageMDSetPMX ImageMDSetPMY ImageMDSetSimulationDate 
syn keyword codevBuiltIn ImageMDSetSym ImageMDSetTGR ImageMDSetTitle 
syn keyword codevBuiltIn ImageMDSetWavelengthsAndWeights ImageMultiplyByConstant 
syn keyword codevBuiltIn ImagePutPixelAt ImageRead ImageRestoreFrom ImageRotate 
syn keyword codevBuiltIn ImageSaveAs ImageSubtract ImageToArray ImageWrite

syn keyword codevBuiltIn ARR_TO_BUF AS_BUILT_ABC AS_BUILT_VAR ASINF ATANF 
syn keyword codevBuiltIn BUF_TO_ARR CONCAT COSF EXPF FFT1DCA FFT1DCB FFT2DCA 
syn keyword codevBuiltIn FFT2DCB FITERROR GAUSSBEAM GAUSSWTS SQRT ACOSF
syn keyword codevBuiltIn GET_COMPLEX_MAGNITUDE GET_IMAGINARY_PART GET_REAL_PART 
syn keyword codevBuiltIn GetDim1num GetDim2num INDEX INPARALLEL INT_DEPART ISFCT 
syn keyword codevBuiltIn ISGBL ISLCL LENSTR LOCSTR LOG10F LOGF LOWCASE MAXF MINF 
syn keyword codevBuiltIn MODF MTF_1FLD NORMRADIUS NUM_TO_STR PAD_REAL_TO_COMPLEX 
syn keyword codevBuiltIn POLGRID RANDF RAYPOL RAYRSI RAYSIN RAYTRA ReDimNum 
syn keyword codevBuiltIn RFSTR RMS_1FLD RMSSPOT RMSWE ROUNDF SAGF SASF 
syn keyword codevBuiltIn SCALE_REAL_ARRAY SDERIVF SIGNF SINF SPOTDATA SQRTF 
syn keyword codevBuiltIn STDEV STR_TO_NUM SUBSTR SUMF SURFSAGD SVD TANF TRA_1FLD 
syn keyword codevBuiltIn TRANSFORM TRUNC UPCASE ZERNIKE ZERNIKEGQ ZFRCOEF ZFRFIT 
syn keyword codevBuiltIn ZRNFIT ABSF CVPUTREC CVWARNING CVERROR
syn keyword codevBuiltIn array_to_buffer buffer_to_array

syn keyword codevBuiltInProg AAM AAP AAS ABC ABL ABR ABV  ACC ACM ACP ACX ACY 
syn keyword codevBuiltInProg ADC ADD ADJ ADE ADM ADW ADX ADY AEA AEB AEG AEL AET
syn keyword codevBuiltInProg AEX AEY AEZ AFC AFI AFN AFO ACH AIM AINC AIR ALI 
syn keyword codevBuiltInProg ALL ALT AMI AMP AMX AMY ANA ANG ANGLE ANN ANP ANY 
syn keyword codevBuiltInProg AOF AOI AOR AP APC APD APE APH APL APP APT AR 
syn keyword codevBuiltInProg ARC ARR ARS ARX ARY ASA ASB ASC ASE ASF ASO ASP 
syn keyword codevBuiltInProg ASS AST ATT AUT AVE AVG AVO AWF AWW AX AXE AXG 
syn keyword codevBuiltInProg AXI AXY AZA AZC AZE AZI AZP BAB BAC BAN BANG BAR 
syn keyword codevBuiltInProg BAS BAT BB BCM BDC BDE BDT BDX BDY BDZ BEA 
syn keyword codevBuiltInProg BEE BEN BES BFC BFP BGI BGP BIM BIN BIO BIR BLA 
syn keyword codevBuiltInProg BLC BLD BLO BLS BLT BLU BMA BMB BMG BMN BMP BMU 
syn keyword codevBuiltInProg BND BNS BOR BOS BOU BP BPC BPH BPNG BPR BR BRC 
syn keyword codevBuiltInProg BRE BRF BRL BRL BSB BSC BSDX BSDY BSP BTH BTI BTX 
syn keyword codevBuiltInProg BTY BUN BW BWE BWL BWT BESTSPH BND BUF CA CAB CAD 
syn keyword codevBuiltInProg CAM CAO CAP CAT CAU CBD CC CCD CCF CCM CCR CCV 
syn keyword codevBuiltInProg CCX CCY CD CDC CDE CDH CDT CDV CED CEF CEFF CEM 
syn keyword codevBuiltInProg CEN CGS CIG CIL CIN CIR CIX CIY CLC CLD CLE CLI 
syn keyword codevBuiltInProg CLM CLR CLS CM CME CMP CMX CMY CMZ CNS CNV COA 
syn keyword codevBuiltInProg CON CONT COO COR COS CP CPA CPC CPL CPSFILE CPU CR 
syn keyword codevBuiltInProg CRA CRC CRO CRT CSA CSC CSO CT CTD CTH CUB CUF 
syn keyword codevBuiltInProg CUM CUX CUY CVO CVP CVV CVX CWL CWL CXP CXP CYA 
syn keyword codevBuiltInProg CYAN CYD CYD CYL CYN CHA CHG CHI CHK CHR CHT CAN 
syn keyword codevBuiltInProg CLO COL COM COP CTL CHK CHOICE DAA DAB DAC DAD DAE 
syn keyword codevBuiltInProg DAF DAG DAH DAJ DAK DAP DAR DAS DAT DB DBG DBP 
syn keyword codevBuiltInProg DBU DC DCO DCP DCS DD DDA DDI DDM DDR DDT DEC 
syn keyword codevBuiltInProg DEF DEG DEL DEP DER DES DET DEV DEX DEY DEZ DFN 
syn keyword codevBuiltInProg DFT DIA DIF DIM DIN DIO DIP DIR DIS DIX DIY DKP 
syn keyword codevBuiltInProg DLA DLB DLC DLF DLG DLL DLN DLR DLS DLT DLV DLX 
syn keyword codevBuiltInProg DLY DLZ DMD DMS DN DNR DO DOE DOL DOS DOT DOV 
syn keyword codevBuiltInProg DP DPC DPL DPO DR DRA DRC DRN DRS DSC DSI DSP 
syn keyword codevBuiltInProg DST DSX DSY DSZ DTB DTH DTI DTL DTS DUM DX DXF 
syn keyword codevBuiltInProg DY DZ EAN EAR EDC EDF EDG EDI EDL EE EFL 
syn keyword codevBuiltInProg EFP EFX EFY ECH EJE ELC ELE ELG ELL ELX ELY EMF 
syn keyword codevBuiltInProg ENC ENG ENH ENP ENS ENT ENV EP EPC EPD EPL EPS 
syn keyword codevBuiltInProg ERF ERI ERM ERO ERR ESA ESN ESP ET EVA EXD EXM 
syn keyword codevBuiltInProg EXO EXS EXT EMP EXC EXI EXP FAB FAC FAN FAP FAR 
syn keyword codevBuiltInProg FBA FBB FBX FBY FBZ FCO FDC FDF FF FFC FFD 
syn keyword codevBuiltInProg FFO FFP FFR FGG FGW FID FIE FIL FIO FIR FIT FIX 
syn keyword codevBuiltInProg FLC FLD FLO FLX FLY FMA FNO FNX FNY FOC FOO FOV 
syn keyword codevBuiltInProg FPX FPY FRE FRI FRS FRW FRZ FTT FUL FUR FVR FYR 
syn keyword codevBuiltInProg FMT FND FST FWD G2D GAP GAU GC1 GC2 GCT GCV 
syn keyword codevBuiltInProg GD1 GD2 GDE GDP GEO GFT GG GGS GHO GCH GIF GIX 
syn keyword codevBuiltInProg GIY GL1 GL2 GLA GLB GLC GLD GLI GLM GLM GLO GLS 
syn keyword codevBuiltInProg GML GMQ GMS GMT GOX GOY GP1 GP2 GPO GPR GPX 
syn keyword codevBuiltInProg GPY GRA GRC GRD GRE GRI GRN GRO GRR GRS GRT GRX 
syn keyword codevBuiltInProg GRY GRZ GSC GSL GSS GUI GWL GWT GWX GWY HAL 
syn keyword codevBuiltInProg HAR HAT HC HCC HCO HCT HCX HCY HDI HDN HEA HEL 
syn keyword codevBuiltInProg HFA HFR HH HHE HID HIG HIN HIT HLN HMX HMY HO2 
syn keyword codevBuiltInProg HOE HOL HOM HOR HOU HSW HTH HTO HV1 HV2 HVB HWL 
syn keyword codevBuiltInProg HELP ICO ICX ICY ID IDL IDP IFD IFO IFR IGE IGES 
syn keyword codevBuiltInProg IMA IMC IMD IMG IMI IMP IMS IMX IMY INB INC IND 
syn keyword codevBuiltInProg INDX INF INI INN INP INR INT INV INX INY IOR IRO 
syn keyword codevBuiltInProg IRR ISF ITOL ITR IN INS JJ JMX JNS JPG JXM JXP 
syn keyword codevBuiltInProg JYM JYP K KC KIN KK KX KXC KY KYC LAB 
syn keyword codevBuiltInProg LAM LAT LAU LCK LCO LEF LEG LEV LIB LIM LIN LLA 
syn keyword codevBuiltInProg LNG LNS LOG LOR LPM LRH LRM LRS LRV LSA LSC LSF 
syn keyword codevBuiltInProg LT LTE LTI LTR LUM LUN LY LYR LZ LBL LEN LINE 
syn keyword codevBuiltInProg LIS LST LVR MAE MAG MAN MAP MAU MAV MAX MBF 
syn keyword codevBuiltInProg MC MCC MCO MCP MCR MDA MEA MED MEN MER MEX MFD 
syn keyword codevBuiltInProg MFF MFL MFR MGP MGS MCH MIC MIL MIN MIX MKS MLI 
syn keyword codevBuiltInProg MLR MLT MM MNA MNB MNC MNE MNT MOD MOM MON MPL 
syn keyword codevBuiltInProg MPP MPR MR MRD MSC MSD1 MSD2 MSD3 MSG MTF MTO MTQ 
syn keyword codevBuiltInProg MUL MWL MXA MXC MXE MXH MXT MY MZ MAC MOV MXJ 
syn keyword codevBuiltInProg NA NAB NAO NAR NAS NBR NCP NCS NDA NEA NEG 
syn keyword codevBuiltInProg NEL NEO NEW NFO NFP NFR NFX NFY NM NOC NOL NOM 
syn keyword codevBuiltInProg NON NOR NOS NR NRA NRD NRF NRI NRR NS1 NS2 NSC 
syn keyword codevBuiltInProg NSL NSO NSP NSS NTM NUL NUM NWL NY NZ NOT OAL 
syn keyword codevBuiltInProg OAM OAR OBH OBJ OBS ODD ODP OFS OGR ONL OP OPA 
syn keyword codevBuiltInProg OPD OPL OPR OPT ORA ORD ORI ORO OTH OVB OVE OVH 
syn keyword codevBuiltInProg OVV OLD ON OPE OUT P PA PAG PAI PANG PAR PAT 
syn keyword codevBuiltInProg PCS PCX PCY PDD PDF PDI PDL PDP PDS PEA PEN PER 
syn keyword codevBuiltInProg PFR PGR PHA PHN PHO PHP PHS PHT PCH PIK PIK PIM 
syn keyword codevBuiltInProg PIN PIS PIX PKL PLA PLC PLI PLO PLT PMA PMX PMY 
syn keyword codevBuiltInProg PNG PNT POC POL POP POR POS POW PPA PPF PPH PPL 
syn keyword codevBuiltInProg PPO PPR PPS PRA PRC PRE PRO PROP PRT PRV PRX PRY 
syn keyword codevBuiltInProg PS PSD PSE PSF PST PTB PTC PTH PTP PTZ PUI PUR 
syn keyword codevBuiltInProg PUX PUY PVC PVT PWL PXI PYI PRS PUT QBF QCN QRE 
syn keyword codevBuiltInProg QSG QSL QUA RAC RAD RAG RAM RAN RAP RAR RAS RAT 
syn keyword codevBuiltInProg RAY RBS RCG RCN RCO RCT RCV RCX RCY RDC RDCL 
syn keyword codevBuiltInProg RDCM RDCN RDM RDX RDY REC RED REF REG REL REN RER 
syn keyword codevBuiltInProg RET REV REX REY RFC RFI RFL RFN RFO RFR RFS RGB 
syn keyword codevBuiltInProg RGR RHF RIE RIG RIH RIM RIX RIY RLF RLX RLY 
syn keyword codevBuiltInProg RMA RMC RMD RMF RMS RMX RNA RND RNR RNX RNY ROB 
syn keyword codevBuiltInProg ROC ROF ROL ROO ROT ROU ROW ROX ROY RPA RPH RPL 
syn keyword codevBuiltInProg RPS RPT RPX RPY RR RRA RSA RSC RSD RSE RSF RSI 
syn keyword codevBuiltInProg RSL RSP RSR RST RT RTL RTO RTX RTY RTZ RUN RUS 
syn keyword codevBuiltInProg RUST RVS RVT RVW RWE RWL RWT RWX RWY RXC RYC RZC 
syn keyword codevBuiltInProg REA RES RFD RFSTR RPR RTN S2C S2V SAB SAG SAM 
syn keyword codevBuiltInProg SAP SAS SAT SCA SCC SCI SCN SCO SCR SD SDPX SDPY 
syn keyword codevBuiltInProg SEC SEE SEG SEL SEN SET SF SFP SFX SFY SGP SGR 
syn keyword codevBuiltInProg SHA SID SIG SIM SIN SIZ SKI SLB SLC SLD SLI SLL 
syn keyword codevBuiltInProg SLM SLO SMO SN1 SN2 SNA SNB SNG SNS SOB SOL SPA 
syn keyword codevBuiltInProg SPC SPE SPG SPH SPL SPO SPS SPX SPY SQW SRC SRL 
syn keyword codevBuiltInProg SRM SRN SSI SSP SSS SSX SSY STC STD STE STEP STI 
syn keyword codevBuiltInProg STL STO STP STX STY SUB SUP SUR SURN SURX SURY SURZ 
syn keyword codevBuiltInProg SVG SVI SVL SVT SXO SXY SYM SYO SAV SEP SEQ SHR 
syn keyword codevBuiltInProg SRT STR SVD SYS TA1 TA2 TAB TAD TAN TAR TAS 
syn keyword codevBuiltInProg TBE TCO TCV TEL TEM TER TES TFO TGM TGR THC THG 
syn keyword codevBuiltInProg THI THM THO THR THV TCH TIF TIL TIM TIN TIR TIR 
syn keyword codevBuiltInProg TIT TITLE TLI TNX TNY TOD TOK TOL TOR TOW TR1 
syn keyword codevBuiltInProg TR2 TRA TRI TRN TRT TRX TRY TSF TT TTA TTO TVC 
syn keyword codevBuiltInProg TXT TYP TYPE U2D UCC UCO UCX UCY UDF UDG UDS UGR 
syn keyword codevBuiltInProg UCH UMC UMF UMN UMO UMR UMR UMX UMY UNI UNL UNN 
syn keyword codevBuiltInProg UPD UR URN USP USR V3D VAR VAX VEC VFD VIE VIG 
syn keyword codevBuiltInProg VIR VIS VIV VIX VIY VLI VLX VLY VPT VUX VUY VAL 
syn keyword codevBuiltInProg VER WAV WBF WBS WCN WCUX WCUY WDSX WDSY WDX WDY 
syn keyword codevBuiltInProg WED WEI WFR WGF WHF WID WIN WIR WLG WMF WND 
syn keyword codevBuiltInProg WPO WPT WRL WRX WRY WSDX WSDY WTA WTC WTD WTF WTM 
syn keyword codevBuiltInProg WTP WTS WTT WTW WTX WTY WVB WVL WVS WRI X XAM 
syn keyword codevBuiltInProg XAN XAP XAX XAY XC XCN XDC XDE XFO XIM XIN XLA 
syn keyword codevBuiltInProg XLE XMA XMI XOB XOC XOD XOF XP1 XP2 XPH XPR XRI 
syn keyword codevBuiltInProg XSC XSY XTO XX XY XYA XYP XYZ XZ XZF XML 
syn keyword codevBuiltInProg YAM YAN YAP YAX YC YCN YDC YDE YEL YFO YIM YIN 
syn keyword codevBuiltInProg YLA YLE YMA YMI YNI YOB YOC YOD YOF YP1 YP2 YPH 
syn keyword codevBuiltInProg YPR YRI YSC YTO YX YY YZ ZAM ZCA ZDC 
syn keyword codevBuiltInProg ZDE ZFE ZFO ZFR ZLA ZLI ZOC ZOD ZOK ZOO ZPH ZPO 
syn keyword codevBuiltInProg ZPR ZRN ZSC DRO got goto
syn keyword codevBuiltInProg AC BC EC FC GC GO GS RC RL  TA TL WA goto
syn keyword codevBuiltInProg uds ud1 ud2 ud3 cepsfile join
" syn keyword codevBuiltInProg SA WL
" syn keyword codevBuiltInProg end SA
" syn keyword codevBuiltInProg  Z  L  M  N  Y
" syn keyword codevBuiltInProg contains=codevQualifiers


"Special constant cases
syn match codevConstant /\<\zs[FSWZ]\ze\s*\()\|;\|$\)/
syn match codevBool /\<\zs[yntm]\ze\s*\(\s*\|;\|$\)/

"Glasses
syn match codevGlass /\%(\%(^\|;\)\s*\%(s\|gla\|ins\|gl1\|gls\)\>.*\)\@<=\zs\%([a-z][a-z0-9_]*\)\ze\s*\%($\|;\)/
" syn match codevLabel /\%(\%(^\|;\)\s*\%(lbl\|sav\|res\)\)\@<= \s+\zs .* \ze \s*\%($\|;\)/
syn match codevFiles /\%(\%(^\|;\)\s*\%(wgf\|in\|sav\|res\|del\|buf\ exp\|whf\)\)\@<= \%([a-z][^;]*\s*\)\ze\s*.*\%($\|;\)/
syn match codevLabel /\%(\%(^\|;\)\s*\%(lbl\|got\|goto\)\)\@<= \%([a-z][^;]*\s*\)\ze\s*.*\%($\|;\)/



"codev constants
"special qualifiers
"    a: aberration
"    b: buffer
"    e: entry
"    f: field
"    g: global
"    i: row
"    j: cloumn
"    l: label
"    q: format
"    r: ray
"    s: surface
"    t: tolerance
"    u: file
"    w: wavelength
"    z: zoom
" special constant characters;
"    a: all
"    c: current
"    i: image
"    l: last
"    o: object
"    s: stop
syn match codevQualifiers /\<\zs\%([abcefgijlqrstuwz]\%(\d\+\|[acilos]\|\%(\^\)\%([a-zA-Z][a-zA-Z0-9_]*\)\|#\d\+\)\%(+\d\+\)*\)\%(\.\{2}\%(\d\+\|[acilos]\|\%(\^\)\%([a-zA-Z][a-zA-Z0-9_]*\)\|#\d\+\)\%(+\d\+\)*\)\{0,1}\ze\%()\|\>\)/
syn match codevError /\<\zs\%([abcefgijlqrstuwz]\%(\d\+\|[acilos]\|\%(\^\)\%([a-zA-Z][a-zA-Z0-9_]*\)\|#\d\+\)\%(+\d\+\)*\)\%(\(\.\|\.\{3,}\)\%(\d\+\|[acilos]\|\%(\^\)\%([a-zA-Z][a-zA-Z0-9_]*\)\|#\d\+\)\%(+\d\+\)*\)\ze\%()\|\>\)/


"Special keyword cases
" syn match codevKeywordMarker "\(^\|;\|(\s*\)\zs[lmnxyz]\ze \> " 
syn match codevKeyword /\(^\|;\|(\)\s*\zs[LMNXYZS]\ze\s\+/ 
syn match codevKeyword /\(^\|;\|(\)\s*\zs[ABCD]\ze\(\s*\|;\|\$\)/
syn keyword codevKeyword nradius

hi def link codevError Error
hi def link codevGlass Variable
hi def link codevFiles String
hi def link codevLabel Variable
hi def link codevComment Comment
hi def link codevNumber Number
hi def link codevFloat Float
hi def link codevSingleString String
hi def link codevDoubleString String
hi def link codevVariable Variable
hi def link codevVariableParameter Identifier
hi def link codevIllegalVariable Error
hi def link codevConditionalKeywords Conditional
hi def link codevRepeatKeywords Repeat
hi def link codevBool Boolean
hi def link codevOperator Operator
hi def link codevStorageType Type
hi def link codevStorageModifier Structure
hi def link codevBuiltIn Function
hi def link codevBuiltInProg Keyword
hi def link codevKeyword Keyword
hi def link codevQualifiers Constant
hi def link codevConstant Constant
hi def link codevFunctionError Error
hi def link codevFunction Function
