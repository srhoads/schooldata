**************************************************************************;
*** Created: September 27, 2011                                             ***;
*** Modify the LIBNAME path below to point to your data file           ***;
*** Written by: Kforce Government Solutions							   ***;
*** Program Name: READ_PSS0910_PU.sas                                  ***;
***																	   ***;	
*** Data file Name: PSS0910_PU.TXT                                     ***;
*** The Tab-delimited file which is specified in the program must      ***;
*** be saved in the directory specified by INFILE statement            ***;
***                                                                    ***;
*** SAS code was written for SAS version 9.1 or above.  Labels were    ***;
*** given a maximun length of 60 characters. If you are using a SAS    ***;
*** version before SAS 8.0, you should be aware that labels could      ***;
*** be truncated to 40 characters.  If so the user may wish to         ***;
*** abreviate labels so that they are unique and are descriptive.      ***;
***                                                                    ***;
*** This program provides frequency for all categorical variables.     ***;
*** Users should uncomment the frequency section to generate frequency ***;
*** tables.                                                            ***;
***                                                                    ***;
*** There may be missing data for some institutions due to parent-     ***;
*** child relations.                                                   ***;
**************************************************************************;
    data PSS0910_PU                            ;
    %let _EFIERR_ = 0; /* set the ERROR detection macro variable */
    infile 'G:\Public Use\Survey Data\PSS\PSS_2009_10\Data\PSS0910_PU.txt' 
               delimiter='09'x MISSOVER DSD lrecl=32767  firstobs=2 ;   missing M N;
       informat pfnlwt best32. ;
       informat repw1 best32. ;
       informat repw2 best32. ;
       informat repw3 best32. ;
       informat repw4 best32. ;
       informat repw5 best32. ;
       informat repw6 best32. ;
       informat repw7 best32. ;
       informat repw8 best32. ;
       informat repw9 best32. ;
       informat repw10 best32. ;
       informat repw11 best32. ;
       informat repw12 best32. ;
       informat repw13 best32. ;
       informat repw14 best32. ;
       informat repw15 best32. ;
       informat repw16 best32. ;
       informat repw17 best32. ;
       informat repw18 best32. ;
       informat repw19 best32. ;
       informat repw20 best32. ;
       informat repw21 best32. ;
       informat repw22 best32. ;
       informat repw23 best32. ;
       informat repw24 best32. ;
       informat repw25 best32. ;
       informat repw26 best32. ;
       informat repw27 best32. ;
       informat repw28 best32. ;
       informat repw29 best32. ;
       informat repw30 best32. ;
       informat repw31 best32. ;
       informat repw32 best32. ;
       informat repw33 best32. ;
       informat repw34 best32. ;
       informat repw35 best32. ;
       informat repw36 best32. ;
       informat repw37 best32. ;
       informat repw38 best32. ;
       informat repw39 best32. ;
       informat repw40 best32. ;
       informat repw41 best32. ;
       informat repw42 best32. ;
       informat repw43 best32. ;
       informat repw44 best32. ;
       informat repw45 best32. ;
       informat repw46 best32. ;
       informat repw47 best32. ;
       informat repw48 best32. ;
       informat repw49 best32. ;
       informat repw50 best32. ;
       informat repw51 best32. ;
       informat repw52 best32. ;
       informat repw53 best32. ;
       informat repw54 best32. ;
       informat repw55 best32. ;
       informat repw56 best32. ;
       informat repw57 best32. ;
       informat repw58 best32. ;
       informat repw59 best32. ;
       informat repw60 best32. ;
       informat repw61 best32. ;
       informat repw62 best32. ;
       informat repw63 best32. ;
       informat repw64 best32. ;
       informat repw65 best32. ;
       informat repw66 best32. ;
       informat repw67 best32. ;
       informat repw68 best32. ;
       informat repw69 best32. ;
       informat repw70 best32. ;
       informat repw71 best32. ;
       informat repw72 best32. ;
       informat repw73 best32. ;
       informat repw74 best32. ;
       informat repw75 best32. ;
       informat repw76 best32. ;
       informat repw77 best32. ;
       informat repw78 best32. ;
       informat repw79 best32. ;
       informat repw80 best32. ;
       informat repw81 best32. ;
       informat repw82 best32. ;
       informat repw83 best32. ;
       informat repw84 best32. ;
       informat repw85 best32. ;
       informat repw86 best32. ;
       informat repw87 best32. ;
       informat repw88 best32. ;
       informat csource best32. ;
       informat P135 best32. ;
       informat P140 best32. ;
       informat P145 best32. ;
       informat P150 best32. ;
       informat P155 best32. ;
       informat P160 best32. ;
       informat P165 best32. ;
       informat P170 best32. ;
       informat P175 best32. ;
       informat P180 best32. ;
       informat P185 best32. ;
       informat P190 best32. ;
       informat P195 best32. ;
       informat P200 best32. ;
       informat P205 best32. ;
       informat P210 best32. ;
       informat P215 best32. ;
       informat P220 best32. ;
       informat P225 best32. ;
       informat P230 best32. ;
       informat P235 best32. ;
       informat P240 best32. ;
       informat P245 best32. ;
       informat P250 best32. ;
       informat P255 best32. ;
       informat P260 best32. ;
       informat P265 best32. ;
       informat P270 best32. ;
       informat P275 best32. ;
       informat P280 best32. ;
       informat P285 best32. ;
       informat P290 best32. ;
       informat P295 best32. ;
       informat P300 best32. ;
       informat P305 best32. ;
       informat P320 best32. ;
       informat P330 best32. ;
       informat P325 best32. ;
       informat P316 best32. ;
       informat P318 best32. ;
       informat P332 best32. ;
       informat P310 best32. ;
       informat P335 best32. ;
       informat P340 best32. ;
       informat P345 best32. ;
       informat P350 best32. ;
       informat P360 best32. ;
       informat P365 best32. ;
       informat P370 best32. ;
       informat P385 best32. ;
       informat P390 best32. ;
       informat P395 best32. ;
       informat P400 best32. ;
       informat P405 best32. ;
       informat P410 best32. ;
       informat P415 best32. ;
       informat P420 best32. ;
       informat P425 best32. ;
       informat P430 best32. ;
       informat P435 best32. ;
       informat P440 best32. ;
       informat P445 best32. ;
       informat P450 best32. ;
       informat P455 best32. ;
       informat P460 best32. ;
       informat P465 best32. ;
       informat P467 best32. ;
       informat P468 best32. ;
       informat P470 best32. ;
       informat P480 best32. ;
       informat P485 best32. ;
       informat P490 best32. ;
       informat P492 best32. ;
       informat P495 best32. ;
       informat P500 best32. ;
       informat P505 best32. ;
       informat P510 best32. ;
       informat P515 best32. ;
       informat P520 best32. ;
       informat P522 best32. ;
       informat P525 best32. ;
       informat P530 best32. ;
       informat P535 best32. ;
       informat P540 best32. ;
       informat P542 best32. ;
       informat P545 best32. ;
       informat P550 best32. ;
       informat P555 best32. ;
       informat P575 best32. ;
       informat P580 best32. ;
       informat P585 best32. ;
       informat P590 best32. ;
       informat P600 best32. ;
       informat P602 best32. ;
       informat P605 best32. ;
       informat P610 best32. ;
       informat P620 best32. ;
       informat P622 best32. ;
       informat P625 best32. ;
       informat P630 best32. ;
       informat P635 best32. ;
       informat P640 best32. ;
       informat P645 best32. ;
       informat P650 best32. ;
       informat P655 best32. ;
       informat P660 best32. ;
       informat P665 best32. ;
       informat ppin $8. ;
       informat pinst $50. ;
       informat paddrs $50. ;
       informat pcity $28. ;
       informat pstabb $2. ;
       informat pzip $5. ;
       informat pzip4 $4. ;
       informat pcnty $3. ;
       informat pcntnm $40. ;
       informat pl_add $50. ;
       informat pl_cit $28. ;
       informat pl_stabb $2. ;
       informat pl_zip $5. ;
       informat pl_zip4 $4. ;
       informat region best32. ;
       informat pstfip best32. ;
       informat ulocale best32. ;
       informat latitude10  best32.;
       informat longitude10  best32.;
       informat logr2010 best32. ;
       informat higr2010 best32. ;
       informat frame $4. ;
       informat tabflag best32. ;
       informat typology best32. ;
       informat relig best32. ;
       informat orient best32. ;
       informat diocese best32. ;
       informat level best32. ;
       informat numstuds best32. ;
       informat size best32. ;
       informat numteach best32. ;
       informat ucommtyp best32. ;
       informat tothrs best32. ;
       informat males best32. ;
       informat f_p135 best32. ;
       informat f_p140 best32. ;
       informat f_p145 best32. ;
       informat f_p150 best32. ;
       informat f_p155 best32. ;
       informat f_p160 best32. ;
       informat f_p165 best32. ;
       informat f_p170 best32. ;
       informat f_p175 best32. ;
       informat f_p180 best32. ;
       informat f_p185 best32. ;
       informat f_p190 best32. ;
       informat f_p195 best32. ;
       informat f_p200 best32. ;
       informat f_p205 best32. ;
       informat f_p210 best32. ;
       informat f_p215 best32. ;
       informat f_p220 best32. ;
       informat f_p225 best32. ;
       informat f_p230 best32. ;
       informat f_p235 best32. ;
       informat f_p240 best32. ;
       informat f_p245 best32. ;
       informat f_p250 best32. ;
       informat f_p255 best32. ;
       informat f_p260 best32. ;
       informat f_p265 best32. ;
       informat f_p270 best32. ;
       informat f_p275 best32. ;
       informat f_p280 best32. ;
       informat f_p285 best32. ;
       informat f_p290 best32. ;
       informat f_p295 best32. ;
       informat f_p300 best32. ;
       informat f_p305 best32. ;
       informat f_p310 best32. ;
       informat f_p316 best32. ;
       informat f_p318 best32. ;
       informat f_p332 best32. ;
       informat f_p320 best32. ;
       informat f_p325 best32. ;
       informat f_p330 best32. ;
       informat f_p335 best32. ;
       informat f_p340 best32. ;
       informat f_p345 best32. ;
       informat f_p350 best32. ;
       informat f_p360 best32. ;
       informat f_p365 best32. ;
       informat f_p370 best32. ;
       informat f_p385 best32. ;
       informat f_p390 best32. ;
       informat f_p395 best32. ;
       informat f_p400 best32. ;
       informat f_p405 best32. ;
       informat f_p410 best32. ;
       informat f_p415 best32. ;
       informat f_p420 best32. ;
       informat f_p425 best32. ;
       informat f_p430 best32. ;
       informat f_p435 best32. ;
       informat f_p440 best32. ;
       informat f_p445 best32. ;
       informat f_p450 best32. ;
       informat f_p455 best32. ;
       informat f_p460 best32. ;
       informat f_p465 best32. ;
       informat f_p467 best32. ;
       informat f_p468 best32. ;
       informat f_p470 best32. ;
       informat f_p480 best32. ;
       informat f_p485 best32. ;
       informat f_p490 best32. ;
       informat f_p492 best32. ;
       informat f_p495 best32. ;
       informat f_p500 best32. ;
       informat f_p505 best32. ;
       informat f_p510 best32. ;
       informat f_p515 best32. ;
       informat f_p520 best32. ;
       informat f_P522 best32. ;
       informat f_p525 best32. ;
       informat f_p530 best32. ;
       informat f_p535 best32. ;
       informat f_p540 best32. ;
       informat f_p542 best32. ;
       informat f_p545 best32. ;
       informat f_p550 best32. ;
       informat f_p555 best32. ;
       informat f_p575 best32. ;
       informat f_p580 best32. ;
       informat f_p585 best32. ;
       informat f_p590 best32. ;
       informat f_p600 best32. ;
       informat f_p602 best32. ;
       informat f_p605 best32. ;
       informat f_p610 best32. ;
       informat f_p620 best32. ;
       informat f_p622 best32. ;
       informat f_p625 best32. ;
       informat f_p630 best32. ;
       informat f_p635 best32. ;
       informat f_p640 best32. ;
       informat f_p645 best32. ;
       informat f_p650 best32. ;
       informat f_p655 best32. ;
       informat f_p660 best32. ;
       informat s_kg best32. ;
       informat p_indian best32. ;
       informat p_asian best32. ;
       informat p_pacific best32. ;
       informat p_hisp best32. ;
       informat p_white best32. ;
       informat p_black best32. ;
       informat p_two best32. ;
       informat sttch_rt best32. ;

       format pfnlwt best12. ;
       format repw1 best12. ;
       format repw2 best12. ;
       format repw3 best12. ;
       format repw4 best12. ;
       format repw5 best12. ;
       format repw6 best12. ;
       format repw7 best12. ;
       format repw8 best12. ;
       format repw9 best12. ;
       format repw10 best12. ;
       format repw11 best12. ;
       format repw12 best12. ;
       format repw13 best12. ;
       format repw14 best12. ;
       format repw15 best12. ;
       format repw16 best12. ;
       format repw17 best12. ;
       format repw18 best12. ;
       format repw19 best12. ;
       format repw20 best12. ;
       format repw21 best12. ;
       format repw22 best12. ;
       format repw23 best12. ;
       format repw24 best12. ;
       format repw25 best12. ;
       format repw26 best12. ;
       format repw27 best12. ;
       format repw28 best12. ;
       format repw29 best12. ;
       format repw30 best12. ;
       format repw31 best12. ;
       format repw32 best12. ;
       format repw33 best12. ;
       format repw34 best12. ;
       format repw35 best12. ;
       format repw36 best12. ;
       format repw37 best12. ;
       format repw38 best12. ;
       format repw39 best12. ;
       format repw40 best12. ;
       format repw41 best12. ;
       format repw42 best12. ;
       format repw43 best12. ;
       format repw44 best12. ;
       format repw45 best12. ;
       format repw46 best12. ;
       format repw47 best12. ;
       format repw48 best12. ;
       format repw49 best12. ;
       format repw50 best12. ;
       format repw51 best12. ;
       format repw52 best12. ;
       format repw53 best12. ;
       format repw54 best12. ;
       format repw55 best12. ;
       format repw56 best12. ;
       format repw57 best12. ;
       format repw58 best12. ;
       format repw59 best12. ;
       format repw60 best12. ;
       format repw61 best12. ;
       format repw62 best12. ;
       format repw63 best12. ;
       format repw64 best12. ;
       format repw65 best12. ;
       format repw66 best12. ;
       format repw67 best12. ;
       format repw68 best12. ;
       format repw69 best12. ;
       format repw70 best12. ;
       format repw71 best12. ;
       format repw72 best12. ;
       format repw73 best12. ;
       format repw74 best12. ;
       format repw75 best12. ;
       format repw76 best12. ;
       format repw77 best12. ;
       format repw78 best12. ;
       format repw79 best12. ;
       format repw80 best12. ;
       format repw81 best12. ;
       format repw82 best12. ;
       format repw83 best12. ;
       format repw84 best12. ;
       format repw85 best12. ;
       format repw86 best12. ;
       format repw87 best12. ;
       format repw88 best12. ;
       format csource best12. ;
       format P135 best12. ;
       format P140 best12. ;
       format P145 best12. ;
       format P150 best12. ;
       format P155 best12. ;
       format P160 best12. ;
       format P165 best12. ;
       format P170 best12. ;
       format P175 best12. ;
       format P180 best12. ;
       format P185 best12. ;
       format P190 best12. ;
       format P195 best12. ;
       format P200 best12. ;
       format P205 best12. ;
       format P210 best12. ;
       format P215 best12. ;
       format P220 best12. ;
       format P225 best12. ;
       format P230 best12. ;
       format P235 best12. ;
       format P240 best12. ;
       format P245 best12. ;
       format P250 best12. ;
       format P255 best12. ;
       format P260 best12. ;
       format P265 best12. ;
       format P270 best12. ;
       format P275 best12. ;
       format P280 best12. ;
       format P285 best12. ;
       format P290 best12. ;
       format P295 best12. ;
       format P300 best12. ;
       format P305 best12. ;
       format P320 best12. ;
       format P330 best12. ;
       format P325 best12. ;
       format P316 best12. ;
       format P318 best12. ;
       format P332 best12. ;
       format P310 best12. ;
       format P335 best12. ;
       format P340 best12. ;
       format P345 best12. ;
       format P350 best12. ;
       format P360 best12. ;
       format P365 best12. ;
       format P370 best12. ;
       format P385 best12. ;
       format P390 best12. ;
       format P395 best12. ;
       format P400 best12. ;
       format P405 best12. ;
       format P410 best12. ;
       format P415 best12. ;
       format P420 best12. ;
       format P425 best12. ;
       format P430 best12. ;
       format P435 best12. ;
       format P440 best12. ;
       format P445 best12. ;
       format P450 best12. ;
       format P455 best12. ;
       format P460 best12. ;
       format P465 best12. ;
       format P467 best12. ;
       format P468 best12. ;
       format P470 best12. ;
       format P480 best12. ;
       format P485 best12. ;
       format P490 best12. ;
       format P492 best12. ;
       format P495 best12. ;
       format P500 best12. ;
       format P505 best12. ;
       format P510 best12. ;
       format P515 best12. ;
       format P520 best12. ;
       format P522 best12. ;
       format P525 best12. ;
       format P530 best12. ;
       format P535 best12. ;
       format P540 best12. ;
       format P542 best12. ;
       format P545 best12. ;
       format P550 best12. ;
       format P555 best12. ;
       format P575 best12. ;
       format P580 best12. ;
       format P585 best12. ;
       format P590 best12. ;
       format P600 best12. ;
       format P602 best12. ;
       format P605 best12. ;
       format P610 best12. ;
       format P620 best12. ;
       format P622 best12. ;
       format P625 best12. ;
       format P630 best12. ;
       format P635 best12. ;
       format P640 best12. ;
       format P645 best12. ;
       format P650 best12. ;
       format P655 best12. ;
       format P660 best12. ;
       format P665 best12. ;
       format ppin $8. ;
       format pinst $50. ;
       format paddrs $50. ;
       format pcity $28. ;
       format pstabb $2. ;
       format pzip $5. ;
       format pzip4 $4. ;
       format pcnty $3. ;
       format pcntnm $40. ;
       format pl_add $50. ;
       format pl_cit $28. ;
       format pl_stabb $2. ;
       format pl_zip $5. ;
       format pl_zip4 $4. ;
       format region best12. ;
       format pstfip best12. ;
       format ulocale best12. ;
       format latitude10 best12. ;
       format longitude10 best12. ;
       format logr2010 best12. ;
       format higr2010 best12. ;
       format frame $4. ;
       format tabflag best12. ;
       format typology best12. ;
       format relig best12. ;
       format orient best12. ;
       format diocese best12. ;
       format level best12. ;
       format numstuds best12. ;
       format size best12. ;
       format numteach best12. ;
       format ucommtyp best12. ;
       format tothrs best12. ;
       format males best12. ;
       format f_p135 best12. ;
       format f_p140 best12. ;
       format f_p145 best12. ;
       format f_p150 best12. ;
       format f_p155 best12. ;
       format f_p160 best12. ;
       format f_p165 best12. ;
       format f_p170 best12. ;
       format f_p175 best12. ;
       format f_p180 best12. ;
       format f_p185 best12. ;
       format f_p190 best12. ;
       format f_p195 best12. ;
       format f_p200 best12. ;
       format f_p205 best12. ;
       format f_p210 best12. ;
       format f_p215 best12. ;
       format f_p220 best12. ;
       format f_p225 best12. ;
       format f_p230 best12. ;
       format f_p235 best12. ;
       format f_p240 best12. ;
       format f_p245 best12. ;
       format f_p250 best12. ;
       format f_p255 best12. ;
       format f_p260 best12. ;
       format f_p265 best12. ;
       format f_p270 best12. ;
       format f_p275 best12. ;
       format f_p280 best12. ;
       format f_p285 best12. ;
       format f_p290 best12. ;
       format f_p295 best12. ;
       format f_p300 best12. ;
       format f_p305 best12. ;
       format f_p310 best12. ;
       format f_p316 best12. ;
       format f_p318 best12. ;
       format f_p332 best12. ;
       format f_p320 best12. ;
       format f_p325 best12. ;
       format f_p330 best12. ;
       format f_p335 best12. ;
       format f_p340 best12. ;
       format f_p345 best12. ;
       format f_p350 best12. ;
       format f_p360 best12. ;
       format f_p365 best12. ;
       format f_p370 best12. ;
       format f_p385 best12. ;
       format f_p390 best12. ;
       format f_p395 best12. ;
       format f_p400 best12. ;
       format f_p405 best12. ;
       format f_p410 best12. ;
       format f_p415 best12. ;
       format f_p420 best12. ;
       format f_p425 best12. ;
       format f_p430 best12. ;
       format f_p435 best12. ;
       format f_p440 best12. ;
       format f_p445 best12. ;
       format f_p450 best12. ;
       format f_p455 best12. ;
       format f_p460 best12. ;
       format f_p465 best12. ;
       format f_p467 best12. ;
       format f_p468 best12. ;
       format f_p470 best12. ;
       format f_p480 best12. ;
       format f_p485 best12. ;
       format f_p490 best12. ;
       format f_p492 best12. ;
       format f_p495 best12. ;
       format f_p500 best12. ;
       format f_p505 best12. ;
       format f_p510 best12. ;
       format f_p515 best12. ;
       format f_p520 best12. ;
       format f_P522 best12. ;
       format f_p525 best12. ;
       format f_p530 best12. ;
       format f_p535 best12. ;
       format f_p540 best12. ;
       format f_p542 best12. ;
       format f_p545 best12. ;
       format f_p550 best12. ;
       format f_p555 best12. ;
       format f_p575 best12. ;
       format f_p580 best12. ;
       format f_p585 best12. ;
       format f_p590 best12. ;
       format f_p600 best12. ;
       format f_p602 best12. ;
       format f_p605 best12. ;
       format f_p610 best12. ;
       format f_p620 best12. ;
       format f_p622 best12. ;
       format f_p625 best12. ;
       format f_p630 best12. ;
       format f_p635 best12. ;
       format f_p640 best12. ;
       format f_p645 best12. ;
       format f_p650 best12. ;
       format f_p655 best12. ;
       format f_p660 best12. ;
       format s_kg best12. ;
       format p_indian best12. ;
       format p_asian best12. ;
       format p_pacific best12. ;
       format p_hisp best12. ;
       format p_white best12. ;
       format p_black best12. ;
       format p_two best12. ;
       format sttch_rt best12. ;
    input
                pfnlwt   
                repw1    
                repw2    
                repw3    
                repw4    
                repw5    
                repw6    
                repw7    
                repw8    
                repw9    
                repw10   
                repw11   
                repw12   
                repw13   
                repw14   
                repw15   
                repw16   
                repw17   
                repw18   
                repw19   
                repw20   
                repw21   
                repw22   
                repw23   
                repw24   
                repw25   
                repw26   
                repw27   
                repw28   
                repw29   
                repw30   
                repw31   
                repw32   
                repw33   
                repw34   
                repw35   
                repw36   
                repw37   
                repw38   
                repw39   
                repw40   
                repw41   
                repw42   
                repw43   
                repw44   
                repw45   
                repw46   
                repw47   
                repw48   
                repw49   
                repw50   
                repw51   
                repw52   
                repw53   
                repw54   
                repw55   
                repw56   
                repw57   
                repw58   
                repw59   
                repw60   
                repw61   
                repw62   
                repw63   
                repw64   
                repw65   
                repw66   
                repw67   
                repw68   
                repw69   
                repw70   
                repw71   
                repw72   
                repw73   
                repw74   
                repw75   
                repw76   
                repw77   
                repw78   
                repw79   
                repw80   
                repw81   
                repw82   
                repw83   
                repw84   
                repw85   
                repw86   
                repw87   
                repw88   
                csource  
                P135     
                P140     
                P145     
                P150     
                P155     
                P160     
                P165     
                P170     
                P175     
                P180     
                P185     
                P190     
                P195     
                P200     
                P205     
                P210     
                P215     
                P220     
                P225     
                P230     
                P235     
                P240     
                P245     
                P250     
                P255     
                P260     
                P265     
                P270     
                P275     
                P280     
                P285     
                P290     
                P295     
                P300     
                P305     
                P320     
                P330     
                P325     
                P316     
                P318     
                P310     
                P332     
                P335     
                P340     
                P345     
                P350     
                P360     
                P365     
                P370     
                P385     
                P390     
                P395     
                P400     
                P405     
                P410     
                P415     
                P420     
                P425     
                P430     
                P435     
                P440
                P445 
                P450 
                P455 
                P460 
                P465 
                P467 
                P468 
                P470 
                P480 
                P485 
                P490 
                P492 
                P495 
                P500 
                P505 
                P510 
                P515 
                P520 
                P522 
                P525 
                P530 
                P535 
                P540 
                P542 
                P545 
                P550 
                P555 
                P575 
                P580 
                P585 
                P590 
                P600 
                P602 
                P605 
                P610 
                P620 
                P622 
                P625 
                P630 
                P635 
                P640 
                P645 
                P650 
                P655 
                P660 
                P665 
                ppin $ 
                pinst $ 
                paddrs $ 
                pcity $ 
                pstabb $ 
                pzip $ 
                pzip4 $ 
                pcnty $ 
                pcntnm $ 
                pl_add $ 
                pl_cit $ 
                pl_stabb $ 
                pl_zip $ 
                pl_zip4 $ 
                region 
                pstfip 
                ulocale 
                latitude10 
                longitude10 
                logr2010 
                higr2010 
                frame $ 
                tabflag 
                typology 
                relig 
                orient 
                diocese 
                level 
                numstuds 
                size 
                numteach 
                ucommtyp 
                tothrs 
                males 
                f_p135 
                f_p140 
                f_p145 
                f_p150 
                f_p155 
                f_p160 
                f_p165 
                f_p170 
                f_p175 
                f_p180 
                f_p185 
                f_p190 
                f_p195 
                f_p200 
                f_p205 
                f_p210 
                f_p215 
                f_p220 
                f_p225 
                f_p230 
                f_p235 
                f_p240 
                f_p245 
                f_p250 
                f_p255 
                f_p260 
                f_p265 
                f_p270 
                f_p275 
                f_p280 
                f_p285 
                f_p290 
                f_p295 
                f_p300 
                f_p305 
                f_p310 
                f_p316 
                f_p318 
                f_p320 
                f_p325 
                f_p330 
                f_p332 
                f_p335 
                f_p340 
                f_p345 
                f_p350 
                f_p360 
                f_p365 
                f_p370 
                f_p385 
                f_p390 
                f_p395 
                f_p400 
                f_p405 
                f_p410 
                f_p415 
                f_p420 
                f_p425 
                f_p430 
                f_p435 
                f_p440 
                f_p445 
                f_p450 
                f_p455 
                f_p460 
                f_p465 
                f_p467 
                f_p468 
                f_p470 
                f_p480 
                f_p485 
                f_p490 
                f_p492 
                f_p495 
                f_p500 
                f_p505 
                f_p510 
                f_p515 
                f_p520 
                f_p522 
                f_p525 
                f_p530 
                f_p535 
                f_p540 
                f_p542 
                f_p545 
                f_p550 
                f_p555 
                f_p575 
                f_p580 
                f_p585 
                f_p590 
                f_p600 
                f_p602 
                f_p605 
                f_p610 
                f_p620 
                f_p622 
                f_p625 
                f_p630 
                f_p635 
                f_p640 
                f_p645 
                f_p650 
                f_p655 
                f_p660 
                s_kg 
                p_indian 
                p_asian 
                p_pacific 
                p_hisp
                p_white 
                p_black
                p_two 
                sttch_rt ;


	  label 
   pfnlwt  	=	"Final Weight for School"
   repw1   	=	"Replicate Weights 1"
   repw2   	=	"Replicate Weights 2"
   repw3   	=	"Replicate Weights 3"
   repw4   	=	"Replicate Weights 4"
   repw5   	=	"Replicate Weights 5"
   repw6   	=	"Replicate Weights 6"
   repw7   	=	"Replicate Weights 7"
   repw8   	=	"Replicate Weights 8"
   repw9   	=	"Replicate Weights 9"
   repw10  	=	"Replicate Weights 10"
   repw11  	=	"Replicate Weights 11"
   repw12  	=	"Replicate Weights 12"
   repw13  	=	"Replicate Weights 13"
   repw14  	=	"Replicate Weights 14"
   repw15  	=	"Replicate Weights 15"
   repw16  	=	"Replicate Weights 16"
   repw17  	=	"Replicate Weights 17"
   repw18  	=	"Replicate Weights 18"
   repw19  	=	"Replicate Weights 19"
   repw20  	=	"Replicate Weights 20"
   repw21  	=	"Replicate Weights 21"
   repw22  	=	"Replicate Weights 22"
   repw23  	=	"Replicate Weights 23"
   repw24  	=	"Replicate Weights 24"
   repw25  	=	"Replicate Weights 25"
   repw26  	=	"Replicate Weights 26"
   repw27  	=	"Replicate Weights 27"
   repw28  	=	"Replicate Weights 28"
   repw29  	=	"Replicate Weights 29"
   repw30  	=	"Replicate Weights 30"
   repw31  	=	"Replicate Weights 31"
   repw32  	=	"Replicate Weights 32"
   repw33  	=	"Replicate Weights 33"
   repw34  	=	"Replicate Weights 34"
   repw35  	=	"Replicate Weights 35"
   repw36  	=	"Replicate Weights 36"
   repw37  	=	"Replicate Weights 37"
   repw38  	=	"Replicate Weights 38"
   repw39  	=	"Replicate Weights 39"
   repw40  	=	"Replicate Weights 40"
   repw41  	=	"Replicate Weights 41"
   repw42  	=	"Replicate Weights 42"
   repw43  	=	"Replicate Weights 43"
   repw44  	=	"Replicate Weights 44"
   repw45  	=	"Replicate Weights 45"
   repw46  	=	"Replicate Weights 46"
   repw47  	=	"Replicate Weights 47"
   repw48  	=	"Replicate Weights 48"
   repw49  	=	"Replicate Weights 49"
   repw50  	=	"Replicate Weights 50"
   repw51  	=	"Replicate Weights 51"
   repw52  	=	"Replicate Weights 52"
   repw53  	=	"Replicate Weights 53"
   repw54  	=	"Replicate Weights 54"
   repw55  	=	"Replicate Weights 55"
   repw56  	=	"Replicate Weights 56"
   repw57  	=	"Replicate Weights 57"
   repw58  	=	"Replicate Weights 58"
   repw59  	=	"Replicate Weights 59"
   repw60  	=	"Replicate Weights 60"
   repw61  	=	"Replicate Weights 61"
   repw62  	=	"Replicate Weights 62"
   repw63  	=	"Replicate Weights 63"
   repw64  	=	"Replicate Weights 64"
   repw65  	=	"Replicate Weights 65"
   repw66  	=	"Replicate Weights 66"
   repw67  	=	"Replicate Weights 67"
   repw68  	=	"Replicate Weights 68"
   repw69  	=	"Replicate Weights 69"
   repw70  	=	"Replicate Weights 70"
   repw71  	=	"Replicate Weights 71"
   repw72  	=	"Replicate Weights 72"
   repw73  	=	"Replicate Weights 73"
   repw74  	=	"Replicate Weights 74"
   repw75  	=	"Replicate Weights 75"
   repw76  	=	"Replicate Weights 76"
   repw77  	=	"Replicate Weights 77"
   repw78  	=	"Replicate Weights 78"
   repw79  	=	"Replicate Weights 79"
   repw80  	=	"Replicate Weights 80"
   repw81  	=	"Replicate Weights 81"
   repw82  	=	"Replicate Weights 82"
   repw83  	=	"Replicate Weights 83"
   repw84  	=	"Replicate Weights 84"
   repw85  	=	"Replicate Weights 85"
   repw86  	=	"Replicate Weights 86"
   repw87  	=	"Replicate Weights 87"
   repw88  	=	"Replicate Weights 88"
   csource 	=	"Method of Interview"
   P135    	=	"5A Ungraded Offered"
   P140    	=	"5A Ungraded Enrollment	"
   P145    	=	"5B Nursery/Prekindergarten Offered	"
   P150    	=	"5B Nursery/Prekindergarten Enrollment	"
   P155    	=	"5C Kindergarten Offered"
   P160    	=	"5C Kindergarten Enrollment	"
   P165    	=	"5D Transitional Kindergarten Offered"
   P170    	=	"5D Transitional Kindergarten Enrollment"
   P175    	=	"5E Transitional First Grade Offered"
   P180    	=	"5E Transitional First Grade Enrollment	"
   P185    	=	"5F First Grade Offered	"
   P190    	=	"5F First Grade Enrollment"
   P195    	=	"5G Second Grade Offered"
   P200    	=	"5G Second Grade Enrollment"
   P205    	=	"5H Third Grade Offered	"
   P210    	=	"5H Third Grade Enrollment"
   P215    	=	"5I Fourth Grade Offered"
   P220    	=	"5I Fourth Grade Enrollment"
   P225    	=	"5J Fifth Grade Offered	"
   P230    	=	"5J Fifth Grade Enrollment"
   P235    	=	"5K Sixth Grade Offered	"
   P240    	=	"5K Sixth Grade Enrollment"
   P245    	=	"5L Seventh Grade Offered"
   P250    	=	"5L Seventh Grade Enrollment"
   P255    	=	"5M Eighth Grade Offered"
   P260    	=	"5M Eighth Grade Enrollment"
   P265    	=	"5N Ninth Grade Offered	"
   P270    	=	"5N Ninth Grade Enrollment"
   P275    	=	"5O Tenth Grade Offered	"
   P280    	=	"5O Tenth Grade Enrollment"
   P285    	=	"5P Eleventh Grade Offered"
   P290    	=	"5P Eleventh Grade Enrollment	"
   P295    	=	"5Q Twelfth Grade Offered	"
   P300    	=	"5Q Twelfth Grade Enrollment	"
   P305    	=	"6 Total Student Enrollment	"
   P320    	=	"7A Hispanic Students	"
   P330    	=	"7B White Students	"
   P325    	=	"7C Black Students	"
   P316    	=	"7D Asian Students	"
   P318    	=	"7E Native Hawaiian/Pacific Islander Students	"
   P310    	=	"7F American Indian/ Alaska Native Students	"
   P332    	=	"7G Students of two or more races"
   P335    	=	"8A Is School Coeducational	"
   P340    	=	"8B Number of Male Students	"
   P345    	=	"9A Students in 12th Grade Last Year	"
   P350    	=	"9B How Many In 12th Grade Last Year	"
   P360    	=	"9D Percent To 4 Year College	"
   P365    	=	"10A Half Day Or Full Day	"
   P370    	=	"10B Days Per Week	"
   P385    	=	"11 Full-Time Teachers	"
   P390    	=	"11 More Than 3/4 Time Teachers	"
   P395    	=	"11 More Than 1/2 Time Teachers	"
   P400    	=	"11 More Than 1/4 Time Teachers	"
   P405    	=	"11 Less Than 1/4 Time Teachers	"
   P410    	=	"11 Total Number Of Teachers	"
   P415    	=	"12A Type of School	"
   P420    	=	"12B School Support Home Schooling	"
   P425    	=	"13 Is School Located In Private Home	"
   P430    	=	"14A Does School Have Religious Orientation	"
   P435    	=	"14B School Affiliated W/Religious	"
   P440    	=	"14C Religious Orientation/Affiliation	"
   P445    	=	"14C What Type of Catholic School	"
   P450    	=	"15 No Associations	"
   P455    	=	"15 Accelerated Christian Education	"
   P460    	=	"15 American Association of Christian Schools	"
   P465    	=	"15 Association of Christian Schools International	"
   P467    	=	"15 Association of Christian Teachers And Schools	"
   P468    	=	"15 Association of Classical and Christian Schools	"
   P470    	=	"15 Christian Schools International	"
   P480    	=	"15 Evangelical Lutheran Education Association	"
   P485    	=	"15 Friends Council on Education	"
   P490    	=	"15 General Conference of SDA Church	"
   P492    	=	"15 Islamic School League of America	"
   P495    	=	"15 Jesuit Secondary Education Association	"
   P500    	=	"15 National Association of Episcopal Schools	"
   P505    	=	"15 National Catholic Educational Association	"
   P510    	=	"15 National Christian School Association	"
   P515    	=	"15 National Society of Hebrew Day Schools	"
   P520    	=	"15 Oral Roberts University Educational Fellowship	"
   P522    	=	"15 The Jewish Community Day School Network"
   P525    	=	"15 Solomon Schechter Day Schools	"
   P530    	=	"15 Southern Baptist Association of Christian Schools	"
   P535    	=	"15 Other Religious School Associations	"
   P540    	=	"15 American Montessori Society	"
   P542    	=	"15 Association Montessori International	"
   P545    	=	"15 Other Montessori associations	"
   P550    	=	"15 Association Military Colleges And Schools	"
   P555    	=	"15 Association Waldorf Schools of North America	"
   P575    	=	"15 National Association of Private Special Edu. Centers"
   P580    	=	"15 Other Associations For Exceptional Children	"
   P585    	=	"15 European Council For Intnational Schools	"
   P590    	=	"15 National Association For The Edu. of Young Children"
   P600    	=	"15 National Association of Laboratory Schools	"
   P602    	=	"15 National Coalition of Girls' Schools	"
   P605    	=	"15 Other Special Emphasis Associations	"
   P610    	=	"15 Alternative School Network	"
   P620    	=	"15 National Association of Independent Schools	"
   P622    	=	"15 State or regional independent school association	"
   P625    	=	"15 National Coalition of Alternative Community Schools	"
   P630    	=	"15 National Independent Private Schools Association	"
   P635    	=	"15 The Association of Boarding Schools	"
   P640    	=	"15 Other school associations	"
   P645    	=	"16 Days In School Year	"
   P650    	=	"17 Hours In School Day For Students	"
   P655    	=	"17 Minutes In School Day For Students	"
   P660    	=	"18 Library or library media center	"
   P665    	=	"19 Minutes To Complete Questionnaire	"
   ppin    	=	"Permanent Identification Number	"
   pinst   	=	"School name	"
   paddrs  	=	"Mailing address	"
   pcity   	=	"City of mailing address	"
   pstabb  	=	"State postal code of mailing address	"
   pzip    	=	"Zip code of mailing address	"
   pzip4   	=	"Zip4 code of mailing address	"
   pcnty   	=	"FIPS County Code (mailing address of school)	"
   pcntnm  	=	"County name	"
   pl_add  	=	"Street address for school's physical location	"
   pl_cit  	=	"City for school's physical location	"
   pl_stabb	=	"State for school's physical location	"
   pl_zip  	=	"Zip code for school's physical location	"
   pl_zip4 	=	"Zip4 code for school's physical location	"
   region  	=	"Census Region"
   pstfip  	=	"FIPS State Code  (mailing address of school)"
   ulocale 	=	"Urban-centric locale code (NCES assigned)"
   latitude10	=	"Latitude"
   longitude10	=	"Longitude"
   logr2010	=	"2009-2010 Lowest Grade Level Recode	"
   higr2010	=	"2009-2010 Highest Grade Level Recode	"
   frame   	=	"Universe frame to which school belongs	"
   tabflag 	=	"Tabulation flag	"
   typology	=	"School Typology	"
   relig   	=	"Affiliation	"
   orient  	=	"School orientation	"
   diocese 	=	"Diocese or archdiocese for Catholic schools"
   level   	=	"Level of Instruction	"
   numstuds	=	"Total number of students in school (K-12, UG)"
   size    	=	"Size of school (K-12, UG)	"        	
   numteach	=	"Number of K-12 teachers (FTE)"
   ucommtyp	=	"Urban-centric community type (NCES assigned)"
   tothrs  	=	"Length of school day in hours	"
   males   	=	"Number of male students (K-12, UG)"
   f_p135  	=	"Imputation Flag For P135"
   f_p140  	=	"Imputation Flag For P140"
   f_p145  	=	"Imputation Flag For P145"
   f_p150  	=	"Imputation Flag For P150"
   f_p155  	=	"Imputation Flag For P155"
   f_p160  	=	"Imputation Flag For P160"
   f_p165  	=	"Imputation Flag For P165"
   f_p170  	=	"Imputation Flag For P170"
   f_p175  	=	"Imputation Flag For P175"
   f_p180  	=	"Imputation Flag For P180"
   f_p185  	=	"Imputation Flag For P185"
   f_p190  	=	"Imputation Flag For P190"
   f_p195  	=	"Imputation Flag For P195"
   f_p200  	=	"Imputation Flag For P200"
   f_p205  	=	"Imputation Flag For P205"
   f_p210  	=	"Imputation Flag For P210"
   f_p215  	=	"Imputation Flag For P215"
   f_p220  	=	"Imputation Flag For P220"
   f_p225  	=	"Imputation Flag For P225"
   f_p230  	=	"Imputation Flag For P230"
   f_p235  	=	"Imputation Flag For P235"
   f_p240  	=	"Imputation Flag For P240"
   f_p245  	=	"Imputation Flag For P245"
   f_p250  	=	"Imputation Flag For P250"
   f_p255  	=	"Imputation Flag For P255"
   f_p260  	=	"Imputation Flag For P260"
   f_p265  	=	"Imputation Flag For P265"
   f_p270  	=	"Imputation Flag For P270"
   f_p275  	=	"Imputation Flag For P275"
   f_p280  	=	"Imputation Flag For P280"
   f_p285  	=	"Imputation Flag For P285"
   f_p290  	=	"Imputation Flag For P290"
   f_p295  	=	"Imputation Flag For P295"
   f_p300  	=	"Imputation Flag For P300"
   f_p305  	=	"Imputation Flag For P305"
   f_p310  	=	"Imputation Flag For P310"
   f_p316  	=	"Imputation Flag For P316"
   f_p318  	=	"Imputation Flag For P318"
   f_p320  	=	"Imputation Flag For P320"
   f_p325  	=	"Imputation Flag For P325"
   f_p330  	=	"Imputation Flag For P330"
   f_p332  	=	"Imputation Flag For P332"
   f_p335  	=	"Imputation Flag For P335"
   f_p340  	=	"Imputation Flag For P340"
   f_p345  	=	"Imputation Flag For P345"
   f_p350  	=	"Imputation Flag For P350"
   f_p360  	=	"Imputation Flag For P360"
   f_p365  	=	"Imputation Flag For P365"
   f_p370  	=	"Imputation Flag For P370"
   f_p385  	=	"Imputation Flag For P385"
   f_p390  	=	"Imputation Flag For P390"
   f_p395  	=	"Imputation Flag For P395"
   f_p400  	=	"Imputation Flag For P400"
   f_p405  	=	"Imputation Flag For P405"
   f_p410  	=	"Imputation Flag For P410"
   f_p415  	=	"Imputation Flag For P415"
   f_p420  	=	"Imputation Flag For P420"
   f_p425  	=	"Imputation Flag For P425"
   f_p430  	=	"Imputation Flag For P430"
   f_p435  	=	"Imputation Flag For P435"
   f_p440  	=	"Imputation Flag For P440"
   f_p445  	=	"Imputation Flag For P445"
   f_p450  	=	"Imputation Flag For P450"
   f_p455  	=	"Imputation Flag For P455"
   f_p460  	=	"Imputation Flag For P460"
   f_p465  	=	"Imputation Flag For P465"
   f_p467  	=	"Imputation Flag For P467"
   f_p468  	=	"Imputation Flag For P468"
   f_p470  	=	"Imputation Flag For P470"
   f_p480  	=	"Imputation Flag For P480"
   f_p485  	=	"Imputation Flag For P485"
   f_p490  	=	"Imputation Flag For P490"
   f_p492  	=	"Imputation Flag For P492"
   f_p495  	=	"Imputation Flag For P495"
   f_p500  	=	"Imputation Flag For P500"
   f_p505  	=	"Imputation Flag For P505"
   f_p510  	=	"Imputation Flag For P510"
   f_p515  	=	"Imputation Flag For P515"
   f_p520  	=	"Imputation Flag For P520"
   f_p522  	=	"Imputation Flag For P522"
   f_p525  	=	"Imputation Flag For P525"
   f_p530  	=	"Imputation Flag For P530"
   f_p535  	=	"Imputation Flag For P535"
   f_p540  	=	"Imputation Flag For P540"
   f_p542  	=	"Imputation Flag For P542"
   f_p545  	=	"Imputation Flag For P545"
   f_p550  	=	"Imputation Flag For P550"
   f_p555  	=	"Imputation Flag For P555"
   f_p575  	=	"Imputation Flag For P575"
   f_p580  	=	"Imputation Flag For P580"
   f_p585  	=	"Imputation Flag For P585"
   f_p590  	=	"Imputation Flag For P590"
   f_p600  	=	"Imputation Flag For P600"
   f_p602  	=	"Imputation Flag For P602"
   f_p605  	=	"Imputation Flag For P605"
   f_p610  	=	"Imputation Flag For P610"
   f_p620  	=	"Imputation Flag For P620"
   f_p622  	=	"Imputation Flag For P622"
   f_p625  	=	"Imputation Flag For P625"
   f_p630  	=	"Imputation Flag For P630"
   f_p635  	=	"Imputation Flag For P635"
   f_p640  	=	"Imputation Flag For P640"
   f_p645  	=	"Imputation Flag For P645"
   f_p650  	=	"Imputation Flag For P650"
   f_p655  	=	"Imputation Flag For P655"
   f_p660  	=	"Imputation Flag For P660"
   s_kg    	=	"Total number of kindergarten students	"
   p_indian	=	"Percentage of American Indian or Alaska Native students"
   p_asian 	=	"Percentage of Asian students"
   p_pacific=	"Percentage of Native Hawaiian or Pacific Islander students"
   p_hisp  	=	"Percentage of Hispanic students"
   p_white 	=	"Percentage of White students"
   p_black 	=	"Percentage of Black students"
   p_two    =   "Percentage of students of two or more races"
   sttch_rt	=	"Student teacher ratio"
   ;
    if _ERROR_ then call symputx('_EFIERR_',1);  /* set ERROR detection macro variable */
    run;


proc format; 
value tabflagf
    1 = 'Schools offering ungraded or grade 1 or above'
    2 = 'Schools offering no grade higher than KG';

value  $framef
    'LIST'= 'School is part of list frame'
    'AREA'= 'School is part of area frame';

value  stfipf
    01 = 'ALABAMA'
    02 = 'ALASKA'
    04 = 'ARIZONA'
    05 = 'ARKANSAS'
    06 = 'CALIFORNIA'
    08 = 'COLORADO'
    09 = 'CONNECTICUT'
    10 = 'DELAWARE'
    11 = 'DISTRICT OF COLUMBIA'
    12 = 'FLORIDA'
    13 = 'GEORGIA'
    15 = 'HAWAII'
    16 = 'IDAHO'
    17 = 'ILLINOIS'
    18 = 'INDIANA'
    19 = 'IOWA    '
    20 = 'KANSAS'
    21 = 'KENTUCKY'
    22 = 'LOUISIANA'
    23 = 'MAINE'
    24 = 'MARYLAND'
    25 = 'MASSACHUSETTS'
    26 = 'MICHIGAN'
    27 = 'MINNESOTA'
    28 = 'MISSISSIPPI'
    29 = 'MISSOURI'
    30 = 'MONTANA'
    31 = 'NEBRASKA'
    32 = 'NEVADA'
    33 = 'NEW HAMPSHIRE'
    34 = 'NEW JERSEY'
    35 = 'NEW MEXICO'
    36 = 'NEW YORK'
    37 = 'NORTH CAROLINA'
    38 = 'NORTH DAKOTA'
    39 = 'OHIO'
    40 = 'OKLAHOMA'
    41 = 'OREGON'
    42 = 'PENNSYLVANIA'
    44 = 'RHODE ISLAND'
    45 = 'SOUTH CAROLINA'
    46 = 'SOUTH DAKOTA'
    47 = 'TENNESSEE'
    48 = 'TEXAS'
    49 = 'UTAH'
    50 = 'VERMONT'
    51 = 'VIRGINIA'
    53 = 'WASHINGTON'
    54 = 'WEST VIRGINIA'
    55 = 'WISCONSIN'
    56 = 'WYOMING';

Value $Stabbr
  				"AL" ="AL Alabama"
				"AK" ="AK Alaska"
				"AZ" ="AZ Arizona"
				"AR" ="AR Arkansas"
				"CA" ="CA California"
				"CO" ="CO Colorado"
				"CT" ="CT Connecticut"
				"DE" ="DE Delaware"
				"DC" ="DC District of Columbia"
				"FL" ="FL Florida"
				"GA" ="GA Georgia"
				"HI" ="HI Hawaii"
				"ID" ="ID Idaho"
				"IL" ="IL Illinois"
				"IN" ="IN Indiana"
				"IA" ="IA Iowa"
				"KS" ="KS Kansas"
				"KY" ="KY Kentucky"
				"LA" ="LA Louisiana"
				"ME" ="ME Maine"
				"MD" ="MD Maryland"
				"MA" ="MA Massachusetts"
				"MI" ="MI Michigan"
				"MN" ="MN Minnesota"
				"MS" ="MS Mississippi"
				"MO" ="MO Missouri"
				"MT" ="MT Montana"
				"NE" ="NE Nebraska"
				"NV" ="NV Nevada"
				"NH" ="NH New Hampshire"
				"NJ" ="NJ New Jersey"
				"NM" ="NM New Mexico"
				"NY" ="NY New York"
				"NC" ="NC North Carolina"
				"ND" ="ND North Dakota"
				"OH" ="OH Ohio"
				"OK" ="OK Oklahoma"
				"OR" ="OR Oregon"
				"PA" ="PA Pennsylvania"
				"RI" ="RI Rhode Island"
				"SC" ="SC South Carolina"
				"SD" ="SD South Dakota"
				"TN" ="TN Tennessee"
				"TX" ="TX Texas"
				"UT" ="UT Utah"
				"VT" ="VT Vermont"
				"VA" ="VA Virginia"
				"WA" ="WA Washington"
				"WV" ="WV West Virginia"
				"WI" ="WI Wisconsin"
				"WY" ="WY Wyoming";

value   yesno
			1='Yes'
			2='No';

value   assnf
			0='Not member'
			1='Member';

value   p450f
			0='Does belong to an organization/association'
			1='Does not belong to an organization/association';

value	 	ISRf
			1 ='Interview'		
			2 ='Noninterview'		
			3 ='Out-of-scope';		
					
value		CSOURCEf			
			. = 'Valid Skip'
			1 = 'Mail'
    		2 = 'Internet'
     		3 = 'Regional Office follow-up'
            4 = 'CATI (computer-assisted telephone interview)';
					
value  	P335f	
			1 ='Yes'		
			2 ='No, it is an all-female school'		
			3 ='No, it is an all-male school';		
					
value	 	 P365f	
			0 ='N/A'
			1 ='Full day		'
			2 ='Half day		'
			3 ='Both offered	';	
					
value	 	P415f	
			1 ='Regular elementary or secondary		'
			2 ='Montessori		'
			3 ='Special program emphasis		'
			4 ='Special education		'
			5 ='Career/technical/vocational'		
			6 ='Alternative/other		'
			7 ='Early childhood program/child care center';
					
value	 	P440f	
			01 ='Roman Catholic		'
			02 ='African Methodist Episcopal		'
			03 ='Amish		'
			04 ='Assembly of God		'
			05 ='Baptist		'
			06 ='Brethren		'
			07 ='Calvinist		'
			08 ='Christian (no specific denomination)		'
			09 ='Church of Christ		'
			10 ='Church of God		'
			11 ='Church of God in Christ		'
			12 ='Church of the Nazarene		'
			13 ='Disciples of Christ		'
			14 ='Episcopal		'
			15 ='Friends		'
			16 ='Greek Orthodox	'	
			17 ='Islamic		'
			18 ='Jewish		'
			19 ='Latter Day Saints		'
			20 ='Lutheran Church - Missouri Synod		'
			21 ='Evangelical Lutheran Church in America	'	
			22 ='Wisconsin Evangelical Lutheran Synod	'	
			23 ='Other Lutheran		'
			24 ='Mennonite		'
			25 ='Methodist		'
			26 ='Pentecostal	'	
			27 ='Presbyterian	'	
			28 ='Seventh-Day Adventist		'
			29 ='Other		';
					
value	 	P445f	
			1 ='Parochial'		
			2 ='Diocesan'		
			3 ='Private	';	

value	 	REGIONf	
			1 ='Northeast '
			2 ='Midwest '		
			3 ='South '		
			4 ='West';		
					
				
value	 	ULOCALEf	
			11 ='City, Large'
			12 ='City, Midsize'
			13 ='City, Small'
			21 ='Suburb, Large'
			22 ='Suburb, Midsize'
			23 ='Suburb, Small'
			31 ='Town, Fringe'
			32 ='Town, Distant'
			33 ='Town, Remote'
			41 ='Rural, Fringe'
			42 ='Rural, Distant'
			43 ='Rural, Remote';
			
value 		UCOMMTYPf
	     	1 = "City (Ulocale = 11, 12, 13)"
     		2 = "Suburb (Ulocale = 21, 22, 23)"
     		3 = "Town (Ulocale = 31, 32, 33)"
     		4 = "Rural (Ulocale = 41, 42, 43)";

value	 	LOGR2010f	
			01 ='All Ungraded'		
			02 ='Lowest grade in school is PK'
			03 ='Lowest grade in school is KG'
			04 ='Lowest grade in school is transitional KG'		
			05 ='Lowest grade in school is transitional 1st grade'	
			06 ='Lowest grade in school is 1st grade'		
			07 ='Lowest grade in school is 2nd grade'		
			08 ='Lowest grade in school is 3rd grade'		
			09 ='Lowest grade in school is 4th grade'		
			10 ='Lowest grade in school is 5th grade'		
			11 ='Lowest grade in school is 6th grade'		
			12 ='Lowest grade in school is 7th grade'		
			13 ='Lowest grade in school is 8th grade'		
			14 ='Lowest grade in school is 9th grade'		
			15 ='Lowest grade in school is 10th grade'		
			16 ='Lowest grade in school is 11th grade'		
			17 ='Lowest grade in school is 12th grade';		
					
value	 	HIGR2010f	
			01 ='All Ungraded'		
			02 ='Highest grade in school is PK'	
			03 ='Highest grade in school is KG'		
			04 ='Highest grade in school is transitional KG'		
			05 ='Highest grade in school is trans. 1st grade'		
			06 ='Highest grade in school is 1st grade'		
			07 ='Highest grade in school is 2nd grade'		
			08 ='Highest grade in school is 3rd grade'		
			09 ='Highest grade in school is 4th grade'		
			10 ='Highest grade in school is 5th grade'		
			11 ='Highest grade in school is 6th grade'		
			12 ='Highest grade in school is 7th grade'		
			13 ='Highest grade in school is 8th grade'		
			14 ='Highest grade in school is 9th grade'		
			15 ='Highest grade in school is 10th grade'		
			16 ='Highest grade in school is 11th grade'		
			17 ='Highest grade in school is 12th grade';		
					
value	 	TYPOLOGYf	
			1 ='Catholic, parochial '		
			2 ='Catholic, diocesan '		
			3 ='Catholic, private '		
			4 ='Other religious, conservative Christian'  		
			5 ='Other relig., affiliated w/ established denomination'
			6 ='Other relig., not affiliated w/ any denomination'
			7 ='Nonsectarian, regular school'
			8 ='Nonsectarian, special program'
			9 ='Nonsectarian, special education'; 
					
value	 	RELIGf		
			1 ='Catholic (P430=1 and P440=1)'		
			2 ='Other religious (P430=1 and P440 ne 1)'		
			3 ='Nonsectarian (P430=2)';	
	
value	 	LEVELf	
			1='Elementary '
			2='Secondary  '
			3='Combined elementary and secondary';
					
value	 	SIZEf	
			1='Less than 50 students'		
			2='50-149 students	'	
			3='150-299 students	'	
			4='300-499 students	'	
			5='500-749 students	'	
			6='750 students or more';		
					
	
value	 	UCOMMTYPf	
			1 ='City   (Ulocale =11, 12, 13)'		
			2 ='Suburb (Ulocale =21, 22, 23)'		
			3 ='Town   (Ulocale =31, 32, 33)'
			4 ='Rural  (Ulocale =41, 42, 43)';	
	
value	 	ImpFlagf	
			0 ='Not imputed  (original data)'		
			1 ='Ratio adjustment of original data' 		
			2 ='Imputed by using data from other variables'
			3 ='Imputed by using a donor value'
			4 ='Clerical imputation'
            5 ='Data adjusted by analyst during review';		
					
					
value	 	ORIENTf		
			01 ='Roman Catholic	'	
			02 ='African Methodist Episcopal		'
			03 ='Amish		'
			04 ='Assembly of God'		
			05 ='Baptist		'
			06 ='Brethren		'
			07 ='Calvinist		'
			08 ='Christian (no specific denomination)'		
			09 ='Church of Christ		'
			10 ='Church of God		'
			11 ='Church of God in Christ'		
			12 ='Church of the Nazarene	'	
			13 ='Disciples of Christ	'	
			14 ='Episcopal		'
			15 ='Friends		'
			16 ='Greek Orthodox	'	
			17 ='Islamic		'
			18 ='Jewish		'
			19 ='Latter Day Saints		'
			20 ='Lutheran Church - Missouri Synod		'
			21 ='Evangelical Lutheran Church in America	'	
			22 ='Wisconsin Evangelical Lutheran Synod	'	
			23 ='Other Lutheran		'
			24 ='Mennonite		'
			25 ='Methodist		'
			26 ='Pentecostal	'	
			27 ='Presbyterian	'	
			28 ='Seventh-Day Adventist'		
			29 ='Other		'
			30 ='Nonsectarian';		
					
value	 	DIOCESEf
			0101 ='Diocese of Birmingham, AL	'	
			0102 ='Diocese of Mobile, AL		'
			0201 ='Archdiocese of Anchorage, AK	'	
			0202 ='Diocese of Fairbanks, AK		'
			0203 ='Diocese of Juneau, AK		'
			0401 ='Diocese of Phoenix, AZ		'
			0402 ='Diocese of Tucson, AZ		'
			0501 ='Diocese of Little Rock, AR	'	
			0601 ='Archdiocese of Los Angeles, CA'		
			0602 ='Archdiocese of San Francisco, CA	'	
			0603 ='Diocese of Fresno, CA		'
			0604 ='Diocese of Monterey, CA		'
			0605 ='Diocese of Oakland, CA		'
			0606 ='Diocese of Orange, CA		'
			0607 ='Diocese of Sacramento, CA	'	
			0608 ='Diocese of San Bernardino, CA'		
			0609 ='Diocese of San Diego, CA		'
			0610 ='Diocese of San Jose, CA		'
			0611 ='Diocese of Santa Rosa, CA	'	
			0612 ='Diocese of Stockton, CA		'
			0801 ='Archdiocese of Denver, CO	'	
			0802 ='Diocese of Colorado Springs, CO'		
			0803 ='Diocese of Pueblo, CO		'
			0901 ='Archdiocese of Hartford, CT	'	
			0902 ='Diocese of Bridgeport, CT	'	
			0903 ='Diocese of Norwich, CT		'
			1001 ='Diocese of Wilmington, DE	'	
			1101 ='Archdiocese of Washington, DC'		
			1201 ='Archdiocese of Miami, FL		'
			1202 ='Diocese of Pensacola-Tallahassee, FL'		
			1203 ='Diocese of Orlando, FL		'
			1204 ='Diocese of Palm Beach, FL	'	
			1205 ='Diocese of St. Augustine, FL	'	
			1206 ='Diocese of St. Petersburg, FL'		
			1207 ='Diocese of Venice, FL		'
			1301 ='Archdiocese of Atlanta, GA	'	
			1302 ='Diocese of Savannah, GA		'
			1501 ='Diocese of Honolulu, HI		'
			1601 ='Diocese of Boise, ID		'
			1701 ='Archdiocese of Chicago, IL'		
			1702 ='Diocese of Belleville, IL'		
			1703 ='Diocese of Joliet, IL	'	
			1704 ='Diocese of Peoria, IL	'	
			1705 ='Diocese of Rockford, IL	'	
			1706 ='Diocese of Springfield, IL'		
			1801 ='Archdiocese of Indianapolis, IN'		
			1802 ='Diocese of Evansville, IN		'
			1803 ='Diocese of Ft. Wayne-South Bend, IN'		
			1804 ='Diocese of Gary, IN		'
			1805 ='Diocese of Lafayette, IN	'	
			1901 ='Archdiocese of Dubuque, IA'		
			1902 ='Diocese of Davenport, IA '		
			1903 ='Diocese of Des Moines, IA'		
			1904 ='Diocese of Sioux City, IA'		
			2001 ='Archdiocese of Kansas City, KS'		
			2002 ='Diocese of Dodge City, KS	'	
			2003 ='Diocese of Salina, KS	'	
			2004 ='Diocese of Wichita, KS	'	
			2101 ='Archdiocese of Louisville, KY'		
			2102 ='Diocese of Covington, KY		'
			2103 ='Diocese of Lexington, KY		'
			2104 ='Diocese of Owensboro, KY		'
			2201 ='Archdiocese of New Orleans, LA'		
			2202 ='Diocese of Alexandria, LA	'	
			2203 ='Diocese of Baton Rouge, LA	'	
			2204 ='Diocese of Houma-Thibodaux, LA'		
			2205 ='Diocese of Lafayette, LA		'
			2206 ='Diocese of Lake Charles, LA	'	
			2207 ='Diocese of Shreveport, LA	'	
			2301 ='Diocese of Portland, ME		'
			2401 ='Archdiocese of Baltimore, MD	'	
			2501 ='Archdiocese of Boston, MA'		
			2502 ='Diocese of Fall River, MA'		
			2503 ='Diocese of Springfield, MA'		
			2504 ='Diocese of Worcester, MA	'	
			2601 ='Archdiocese of Detroit, MI'		
			2602 ='Diocese of Grand Rapids, MI'		
			2603 ='Diocese of Gaylord, MI		'
			2604 ='Diocese of Kalamazoo, MI		'
			2605 ='Diocese of Lansing, MI		'
			2606 ='Diocese of Marquette, MI		'
			2607 ='Diocese of Saginaw, MI	'	
			2701 ='Archdiocese of St. Paul-Minneapolis, MN'
			2702 ='Diocese of Crookston, MN		'
			2703 ='Diocese of Duluth, MN		'
			2704 ='Diocese of New Ulm, MN		'
			2705 ='Diocese of St. Cloud, MN		'
			2706 ='Diocese of Winona, MN		'
			2801 ='Diocese of Biloxi, MS		'
			2802 ='Diocese of Jackson, MS		'
			2901 ='Archdiocese of St. Louis, MO	'	
			2902 ='Diocese of Jefferson City, MO'		
			2903 ='Diocese of Kansas City-St. Joseph, MO		'
			2904 ='Diocese of Springfield-Cape Girardeau, MO	'	
			3001 ='Diocese of Great Falls-Billings, MT	'	
			3002 ='Diocese of Helena, MT		'
			3101 ='Archdiocese of Omaha, NE		'
			3102 ='Diocese of Grand Island, NE	'	
			3103 ='Diocese of Lincoln, NE		'
			3201 ='Diocese of Las Vegas, NV		'
			3202 ='Diocese of Reno, NV		'
			3301 ='Diocese of Manchester, NH'		
			3401 ='Archdiocese of Newark, NJ'		
			3402 ='Diocese of Camden, NJ	'	
			3403 ='Diocese of Metuchen, NJ	'	
			3404 ='Diocese of Paterson, NJ	'	
			3405 ='Diocese of Trenton, NJ	'	
			3501 ='Archdiocese of Santa Fe, NM'		
			3502 ='Diocese of Gallup, NM		'
			3503 ='Diocese of Las Cruces, NM	'	
			3601 ='Archdiocese of New York, NY'		
			3602 ='Diocese of Albany, NY		'
			3603 ='Diocese of Brooklyn, NY		'
			3604 ='Diocese of Buffalo, NY		'
			3605 ='Diocese of Ogdensburg, NY	'	
			3606 ='Diocese of Rochester, NY		'
			3607 ='Diocese of Rockville Centre, NY'		
			3608 ='Diocese of Syracuse, NY		'
			3701 ='Diocese of Charlotte, NC'		
			3702 ='Diocese of Raleigh, NC	'	
					
			3801 ='Diocese of Bismarck, ND	'	
			3802 ='Diocese of Fargo, ND		'
					
			3901 ='Archdiocese of Cincinnati, OH'		
			3902 ='Diocese of Cleveland, OH		'
			3903 ='Diocese of Columbus, OH		'
			3904 ='Diocese of Steubenville, OH	'	
			3905 ='Diocese of Toledo, OH		'
			3906 ='Diocese of Youngstown, OH	'	
			4001 ='Archdiocese of Oklahoma City, OK'		
			4002 ='Diocese of Tulsa, OK		'
					
			4101 ='Archdiocese of Portland, OR'		
			4102 ='Diocese of Baker, OR		'
					
			4201 ='Archdiocese of Philadelphia, PA'		
			4202 ='Diocese of Allentown, PA		'
			4203 ='Diocese of Altoona-Johnstown, PA'		
			4204 ='Diocese of Erie, PA		'
			4205 ='Diocese of Greensburg, PA'		
			4206 ='Diocese of Harrisburg, PA'		
			4207 ='Diocese of Pittsburgh, PA'		
			4208 ='Diocese of Scranton, PA	'	
					
			4401 ='Diocese of Providence, RI'		
					
			4501 ='Diocese of Charleston, SC'		
					
			4601 ='Diocese of Rapid City, SD	'	
			4602 ='Diocese of Sioux Falls, SD	'	
					
			4701 ='Diocese of Knoxville, TN		'
			4702 ='Diocese of Memphis, TN		'
			4703 ='Diocese of Nashville, TN		'
					
			4801 ='Archdiocese of San Antonio, TX'		
			4802 ='Diocese of Amarillo, TX		'
			4803 ='Diocese of Austin, TX		'
			4804 ='Diocese of Beaumont, TX		'
			4805 ='Diocese of Brownsville, TX	'	
			4806 ='Diocese of Corpus Christi, TX'		
			4807 ='Diocese of Dallas, TX		'
			4808 ='Diocese of El Paso, TX		'
			4809 ='Diocese of Ft. Worth, TX		'
			4810 ='Diocese of Galveston-Houston, TX'		
			4811 ='Diocese of Lubbock, TX		'
			4812 ='Diocese of San Angelo, TX	'	
			4813 ='Diocese of Tyler, TX		'
			4814 ='Diocese of Victoria, TX	'	
			4815 ='Diocese of Laredo, TX	'	
			4901 ='Diocese of Salt Lake, UT	'	
			5001 ='Diocese of Burlington, VT'		
			5101 ='Diocese of Arlington, VA	'	
			5102 ='Diocese of Richmond, VA	'	
					
			5301 ='Archdiocese of Seattle, WA'		
			5302 ='Diocese of Spokane, WA	'	
			5303 ='Diocese of Yakima, WA	'	
					
			5401 ='Diocese of Wheeling-Charleston, WV'		
					
			5501 ='Archdiocese of Milwaukee, WI	'	
			5502 ='Diocese of Green Bay, WI		'
			5503 ='Diocese of La Crosse, WI		'
			5504 ='Diocese of Madison, WI		'
			5505 ='Diocese of Superior, WI		'
					
			5601 ='Diocese of Cheyenne, WY		';
					
run;				

*******************************************************************;
*** The following lines of code have been commented out. If the ***;
*** user should wish to run file frequencies, or proc contents  ***;
*** they may submit these lines separtely or remove the "/*"    ***;
*** and "*/" characters before running this code. User may also ***;
*** wish to comment out the final school weight when running    ***;
*** frequency code.                                             ***;
*******************************************************************;
/*

*** Frequencies of Categorical Variables ***;

Proc Freq Data=PSS0910_PU;
Table CSOURCE	P135	P145	P155	P165	P175	P185	P195	P205	P215	
P225	P235	P245	P255	P265	P275	P285	P295	P335	P345	P365	
P370	P415	P420	P425	P430	P435	P440	P445	P450	P455	P460	
P465	P467	P468	P470	P480	P485	P490	P492	P495	P500	P505	
P510	P515	P520	P525	P530	P535	P540	P542	P545	P550	P555	
P575	P580	P585	P590	P600	P602	P605	
P610	P620	P622	P625	P630	P635	P640	P655	P660	REGION	
PSTFIP	PSTABB  ULOCALE	LOGR2010	HIGR2010	FRAME	TABFLAG	TYPOLOGY	RELIG	ORIENT	
DIOCESE	LEVEL	SIZE	UCOMMTYP	F_P135	F_P140	
F_P145	F_P150	F_P155	F_P160	F_P165	F_P170	F_P175	F_P180	F_P185	F_P190	F_P195	
F_P200	F_P205	F_P210	F_P215	F_P220	F_P225	F_P230	F_P235	F_P240	F_P245	F_P250	
F_P255	F_P260	F_P265	F_P270	F_P275	F_P280	F_P285	F_P290	F_P295	F_P300	F_P305	
F_P310	F_P316	F_P320	F_P325	F_P330	F_P335	F_P340	F_P345	F_P350	F_P360	
F_P365	F_P370	F_P385	F_P390	F_P395	F_P400	F_P405	F_P410	F_P415	F_P420	
F_P425	F_P430	F_P435	F_P440	F_P445	F_P450	F_P455	F_P460	F_P465	F_P467	F_P468	
F_P470	F_P480	F_P485	F_P490	F_P492	F_P495	F_P500	F_P505	F_P510	F_P515	F_P520	
F_P522  F_P525	F_P530	F_P535	F_P540	F_P542	F_P545	F_P550	F_P555		
F_P575	F_P580	F_P585	F_P590	F_P600	F_P602	F_P605	F_P610	F_P620	
F_P622	F_P625	F_P630	F_P635	F_P640	F_P645	F_P650	F_P655	F_P660/Missing;

Format CSOURCE CSOURCEF. PSTABB $STABBR. PSTFIP STFIPF. P335 P335F. P365 P365f. P415 P415F. 
P445 P445f. UCOMMTYP UCOMMTYPf. FRAME $FRAMEF. 
HIGR2010 HIGR2010F. LEVEL LEVELF. LOGR2010 LOGR2010F. ORIENT ORIENTF. 
REGION REGIONF. RELIG RELIGF. SIZE SIZEF. TABFLAG TABFLAGF. 
TYPOLOGY TYPOLOGYF. 
F_P135	F_P140	
F_P145	F_P150	F_P155	F_P160	F_P165	F_P170	F_P175	F_P180	F_P185	F_P190	F_P195	
F_P200	F_P205	F_P210	F_P215	F_P220	F_P225	F_P230	F_P235	F_P240	F_P245	F_P250	
F_P255	F_P260	F_P265	F_P270	F_P275	F_P280	F_P285	F_P290	F_P295	F_P300	F_P305	
F_P310	F_P316	F_P320	F_P325	F_P330	F_P335	F_P340	F_P345	F_P350	F_P360	
F_P365	F_P370	F_P385	F_P390	F_P395	F_P400	F_P405	F_P410	F_P415	F_P420	
F_P425	F_P430	F_P435	F_P440	F_P445	F_P450	F_P455	F_P460	F_P465	F_P467	F_P468	
F_P470	F_P480	F_P485	F_P490	F_P492	F_P495	F_P500	F_P505	F_P510	F_P515	F_P520	
F_P522  F_P525	F_P530	F_P535	F_P540	F_P542	F_P545	F_P550	F_P555		
F_P575	F_P580	F_P585	F_P590	F_P600	F_P602	F_P605	F_P610	F_P620	
F_P622	F_P625	F_P630	F_P635	F_P640	F_P645	F_P650	F_P655	F_P660 IMPFLAGF.;
*WEIGHT PFNLWT; 
Title 'Frequencies of Categorical Variables: PSS 2009-2010';
Run;

*** Data File Contents ***;

PROC CONTENTS DATA=WORK.PSS0910_PU Varnum;
Title 'PRIVATE SCHOOL SURVEY, 2009-2010';
RUN;

*/





