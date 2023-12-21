SELECT * FROM results.`exam-results-3-1_compressed (1)`;

/* students whith backlogs */
SELECT * FROM results.`exam-results-3-1_compressed (1)`
WHERE Backlogs != 0;

/* number of students with backlogs */
SELECT count(*) FROM results.`exam-results-3-1_compressed (1)`
WHERE Backlogs != 0;

/*students who got sgpa less than 8 */
SElECT count(*) from `exam-results-3-1_compressed (1)`
WHERE SGPA <= 8;


SET sql_safe_updates =0;

/* SUM OF INTERNAL AND EXTERNAL MARKS IN AWP*/

ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN AWP100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET AWP100 = AWP30+AWP70;
    
/* SUM OF INTERNAL AND EXTERNAL MARKS IN CMC*/

ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN CMC100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
SET CMC100=CMC30+CMC70;

/* SUM OF INTERNAL AND EXTERNAL MARKS IN CS*/

ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN CS100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET CS100 = CS30+CS70;

/* SUM OF INTERNAL AND EXTERNAL MARKS IN DSP*/

ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN DSP100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET DSP100 = DSP30+DSP70;

/* SUM OF INTERNAL AND EXTERNAL MARKS IN MM*/
    
ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN MM100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET MM100 = MM30+MM70;
    
/* SUM OF INTERNAL AND EXTERNAL MARKS IN VTD*/
    
ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN VTD100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET VTD100 = VTD30+VTD70;

/* SUM OF INTERNAL AND EXTERNAL MARKS IN MMLAB*/

ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN MMLAB100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET MMLAB100 = MMLAB30+MMLAB70;

/* SUM OF INTERNAL AND EXTERNAL MARKS IN PPLAB*/
    
ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN PPLAB100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET PPLAB100 = PPLAB30+PPLAB70;

/* SUM OF INTERNAL AND EXTERNAL MARKS IN SII*/

ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN SII100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET SII100 = SII30+SII70;
    
/* SUM OF INTERNAL AND EXTERNAL MARKS IN VTDLAB*/    
    
ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN VTDLAB100 INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET VTDLAB100 = VTDLAB30+VTDLAB70;
    
/* SUM OF ALL SUBJECT MARKS*/

ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN TOTAL INT ;

UPDATE `exam-results-3-1_compressed (1)`
    SET TOTAL = AWP100+CMC100+CS100+DSP100+MM100+VTD100+MMLAB100+PPLAB100+SII100+VTDLAB100;
    
/* GIVE GARDE ACCORDINGLY TO MARKS  */
    
ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN AWPGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET AWPGRADE=
    (CASE 
         WHEN AWP100 >= 90 THEN "O"
         WHEN AWP100 >=80 THEN "A+"
         WHEN AWP100 >=70 THEN "A"
         WHEN AWP100 >=60 THEN "B+"
         WHEN AWP100 >=50 THEN "B"
         WHEN AWP100 >=40 THEN "C"
         WHEN AWP100 <40 THEN "F"
	END
	);
    
    ALTER TABLE `exam-results-3-1_compressed (1)`
	ADD COLUMN CMCGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET CMCGRADE=
    (CASE 
         WHEN CMC100 >= 90 THEN "O"
         WHEN CMC100 >=80 THEN "A+"
         WHEN CMC100 >=70 THEN "A"
         WHEN CMC100 >=60 THEN "B+"
         WHEN CMC100 >=50 THEN "B"
         WHEN CMC100 >=40 THEN "C"
         WHEN CMC100 <40 THEN "F"
	END
	);
    ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN CSGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET CSGRADE=
    (CASE 
         WHEN CS100 >= 90 THEN "O"
         WHEN CS100 >=80 THEN "A+"
         WHEN CS100 >=70 THEN "A"
         WHEN CS100 >=60 THEN "B+"
         WHEN CS100 >=50 THEN "B"
         WHEN CS100 >=40 THEN "C"
         WHEN CS100 <40 THEN "F"
	END
	);
    ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN DSPGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET DSPGRADE=
    (CASE 
         WHEN DSP100 >= 90 THEN "O"
         WHEN DSP100 >=80 THEN "A+"
         WHEN DSP100 >=70 THEN "A"
         WHEN DSP100 >=60 THEN "B+"
         WHEN DSP100 >=50 THEN "B"
         WHEN DSP100 >=40 THEN "C"
         WHEN DSP100 <40 THEN "F"
	END
	);
    ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN MMGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET MMGRADE=
    (CASE 
         WHEN MM100 >= 90 THEN "O"
         WHEN MM100 >=80 THEN "A+"
         WHEN MM100 >=70 THEN "A"
         WHEN MM100 >=60 THEN "B+"
         WHEN MM100 >=50 THEN "B"
         WHEN MM100 >=40 THEN "C"
         WHEN MM100 <40 THEN "F"
	END
	);    
    ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN VTDGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET VTDGRADE=
    (CASE 
         WHEN VTD100 >= 90 THEN "O"
         WHEN VTD100 >=80 THEN "A+"
         WHEN VTD100 >=70 THEN "A"
         WHEN VTD100 >=60 THEN "B+"
         WHEN VTD100 >=50 THEN "B"
         WHEN VTD100 >=40 THEN "C"
         WHEN VTD100 <40 THEN "F"
	END
	);    


ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN MMLABGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET MMLABGRADE=
    (CASE 
         WHEN MMLAB100 >= 90 THEN "O"
         WHEN MMLAB100 >=80 THEN "A+"
         WHEN MMLAB100 >=70 THEN "A"
         WHEN MMLAB100 >=60 THEN "B+"
         WHEN MMLAB100 >=50 THEN "B"
         WHEN MMLAB100 >=40 THEN "C"
         WHEN MMLAB100 <40 THEN "F"
	END
	);    
    
    ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN PPLABGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET PPLABGRADE=
    (CASE 
         WHEN PPLAB100 >= 90 THEN "O"
         WHEN PPLAB100 >=80 THEN "A+"
         WHEN PPLAB100 >=70 THEN "A"
         WHEN PPLAB100 >=60 THEN "B+"
         WHEN PPLAB100 >=50 THEN "B"
         WHEN PPLAB100 >=40 THEN "C"
         WHEN PPLAB100 <40 THEN "F"
	END
	);    
    ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN VTDLABGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET VTDLABGRADE=
    (CASE 
         WHEN VTDLAB100 >= 90 THEN "O"
         WHEN VTDLAB100 >=80 THEN "A+"
         WHEN VTDLAB100 >=70 THEN "A"
         WHEN VTDLAB100 >=60 THEN "B+"
         WHEN VTDLAB100 >=50 THEN "B"
         WHEN VTDLAB100 >=40 THEN "C"
         WHEN VTDLAB100 <40 THEN "F"
	END
	);    
    ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN SIIGRADE VARCHAR(2) ;

UPDATE `exam-results-3-1_compressed (1)`
    SET SIIGRADE=
    (CASE 
         WHEN SII100 >= 90 THEN "O"
         WHEN SII100 >=80 THEN "A+"
         WHEN SII100 >=70 THEN "A"
         WHEN SII100 >=60 THEN "B+"
         WHEN SII100 >=50 THEN "B"
         WHEN SII100 >=40 THEN "C"
         WHEN SII100 <40 THEN "F"
	END
	); 
    
/* NUMBER OF STUDENTS FAIL IN AWP SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE AWPGRADE ='F';
    
/* MAX IN AWP SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE AWP100=(select MAX(AWP100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN CMC SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE CMC100=(select MAX(CMC100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN CS SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE CS100=(select MAX(CS100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN DSP SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE DSP100=(select MAX(DSP100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN MM SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE MM100=(select MAX(MM100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN VTD SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE VTD100=(select MAX(VTD100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN MMLAB SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE MMLAB100=(select MAX(MMLAB100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN PPLAB SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE PPLAB100=(select MAX(PPLAB100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN SII SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE SII100=(select MAX(SII100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN VTDLAB SUBJECT*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE VTDLAB100=(select MAX(VTDLAB100) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN TOTAL SUBJECTS*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE TOTAL=(select MAX(TOTAL) FROM `exam-results-3-1_compressed (1)`);
/* MAX IN SGPA*/
SELECT * FROM `exam-results-3-1_compressed (1)`
WHERE SGPA=(select MAX(SGPA) FROM `exam-results-3-1_compressed (1)`);
/* NUMBER OF STUDENT SECURED O GRADE IN AWP SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE AWPGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN CMC SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE CMCGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN CS SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE CSGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN DSP SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE DSPGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN MM SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE MMGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN VTD SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE VTDGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN MMLAB SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE MMLABGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN PPLAB SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE PPLABGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN SII SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE SIIGRADE='O';
/* NUMBER OF STUDENT SECURED O GRADE IN VTDLAB SUBJECT*/
SELECT COUNT(*) FROM `exam-results-3-1_compressed (1)`
WHERE VTDLABGRADE='O';
/* NUMBER OF STUDENT SECURED GRADES IN AWP SUBJECT*/
SELECT AWPGRADE,COUNT(*) AS TOTAL  FROM `exam-results-3-1_compressed (1)`
GROUP BY AWPGRADE
ORDER BY TOTAL ASC;
/* NUMBER OF STUDENT SECURED GRADES IN CMC SUBJECT*/
SELECT CMCGRADE,COUNT(*) AS TOTAL  FROM `exam-results-3-1_compressed (1)`
GROUP BY CMCGRADE
ORDER BY TOTAL ASC;
/* NUMBER OF STUDENT SECURED GRADE IN CS SUBJECT*/
SELECT CSGRADE,COUNT(*) AS TOTAL  FROM `exam-results-3-1_compressed (1)`
GROUP BY CSGRADE
ORDER BY TOTAL ASC;
/* NUMBER OF STUDENT SECURED GRADES IN MM SUBJECT*/
SELECT MMGRADE,COUNT(*) AS TOTAL  FROM `exam-results-3-1_compressed (1)`
GROUP BY MMGRADE
ORDER BY TOTAL ASC;
/* NUMBER OF STUDENT SECURED GRADES IN VTD SUBJECT*/
SELECT VTDGRADE,COUNT(*) AS TOTAL  FROM `exam-results-3-1_compressed (1)`
GROUP BY VTDGRADE
ORDER BY TOTAL ASC;
/*CRAETE TABLE FOR SECTIONS */
ALTER TABLE `exam-results-3-1_compressed (1)`
ADD COLUMN section VARCHAR(1);

UPDATE  `exam-results-3-1_compressed (1)`
SET SECTION =
	    (CASE 
             WHEN SNo  BETWEEN 1 AND 60 THEN 'A'
             WHEN SNo  BETWEEN 61 AND 120 THEN 'B'
	         WHEN SNo  BETWEEN 121 AND 180 THEN 'F'
             WHEN SNo  BETWEEN 181 AND 240 THEN 'C'
             WHEN SNo  BETWEEN 241 AND 320 THEN 'D'
             WHEN SNo  BETWEEN 321 AND 380 THEN 'E'
             WHEN SNo  BETWEEN 381 AND 459 THEN 'G'
	END);

/*NUMBER OF STUDENTS SECURED BACKLOG IN ANY 1 SUBJECT*/
SELECT section, count(*) FROM `exam-results-3-1_compressed (1)`
WHERE Backlogs > 0
GROUP BY section
ORDER BY SECTION ASC;
    
/*NUMBER OF STUDENTS SECURED SGPA >= 9*/
SELECT section ,count(*) FROM `exam-results-3-1_compressed (1)`
WHERE SGPA >= 9 
group by section
ORDER BY section ASC;

/*NUMBER OF STUDENTS SECURED SGPA >= 8*/
SELECT section , count(*) FROM `exam-results-3-1_compressed (1)`
WHERE SGPA >=8
GROUP BY section
ORDER BY SECTION ASC;

    