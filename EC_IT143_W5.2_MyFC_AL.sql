/******************************************************************************
NAME: Apolinario Langa
ASSIGNMENT: W5.2 My Communities Analysis
COMMUNITY: MyFC
******************************************************************************/

USE MyFC;
GO

/**************************************************************************
Question 1
Author: Apolinario Langa

How many players are on each team?
**************************************************************************/

SELECT
    t.t_code,
    COUNT(p.pl_id) AS PlayerCount
FROM tblPlayerDim p
INNER JOIN tblTeamDim t
    ON p.t_id = t.t_id
GROUP BY t.t_code
ORDER BY PlayerCount DESC;



/**************************************************************************
Question 2
Author: Apolinario Langa

Which team has the most players?
**************************************************************************/

SELECT TOP 1
    t.t_code,
    COUNT(p.pl_id) AS PlayerCount
FROM tblPlayerDim p
INNER JOIN tblTeamDim t
    ON p.t_id = t.t_id
GROUP BY t.t_code
ORDER BY PlayerCount DESC;



/**************************************************************************
Question 3
Author: Wamalwa Trophily Misiko

How many players play each position?
**************************************************************************/

SELECT
    p_id,
    COUNT(*) AS PlayerCount
FROM tblPlayerDim
GROUP BY p_id
ORDER BY PlayerCount DESC;



/**************************************************************************
Question 4
Author: Apolinario Langa

What jersey numbers are used most often?
**************************************************************************/

SELECT
    pl_num,
    COUNT(*) AS Frequency
FROM tblPlayerDim
GROUP BY pl_num
ORDER BY Frequency DESC;