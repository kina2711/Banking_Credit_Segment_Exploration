WITH SOLIEU_TSĐB AS --- HOP DONG TIN DUNG -------
(	SELECT *
	FROM
	(
	SELECT	DAUKY.*, PHATSINH.*
	FROM 
		(
			select 	a.debid				'DK_KHOANNO'
				,a.sogiaodich			'DK_HDTC' 
				,a.crcontract_date 		'DK_NGAYBD'	
				,a.crcontract_end_date		'DK_NGAYKT'
			from credit_contract a 
			inner join CREDIT_PLAN b on a.debid = b.debid 
			where	b.ngaydauky <= '2022-12-31' and b.ngaycuoiky >= '2022-12-31'
					and a.crcontract_end_date > '2022-12-31'
		) DAUKY
		FULL OUTER JOIN
		(
			select	debid 				as [PS_KHOANNO]
				,sogiaodich 			AS [PS_HDTC]
				,crcontract_date 		AS [PS_NGAYBD]
				,crcontract_end_date 		AS [PS_NGAYKT]
			from	credit_contract
			where	YEAR( crcontract_date ) = 2023
		) PHATSINH ON DAUKY.DK_KHOANNO = PHATSINH.PS_KHOANNO
	) X 
	LEFT JOIN
	(
		select 
				a.debid 			[CK_KHOANNO]
				,HDTC_id 			[CK_HDTC]
				,crcontract_date 		[CK_NGAYBD]
				,crcontract_end_date 		[CK_NGAYKT]
		from CREDIT_PLAN a
		inner join credit_contract b on b.debid = a.debid
		left join Mortgage_Agreement c on b.sogiaodich = c.HDTC_id
		where 
			a.ngaydauky <= '2023-12-31'
			and a.ngaycuoiky >= '2023-12-31'
			and b.crcontract_end_date > '2023-12-31'
	) Z ON ISNULL(X.DK_KHOANNO,'') +  ISNULL(X.PS_KHOANNO,'') = Z.CK_KHOANNO
	LEFT JOIN
	(
		SELECT 
			crc.debid 				TT_KHOANNO
			,crc.sogiaodich 			TT_HDTC
			,crc.crcontract_date 			TT_NGAYBD
			,crc.crcontract_end_date 		TT_NGAYKT
		FROM
			credit_contract crc
			INNER JOIN
			mortgage_agreement ma ON crc.sogiaodich = ma.HDTC_id
		WHERE
		YEAR(crc.crcontract_end_date) = 2023
	) W ON ISNULL(X.DK_KHOANNO,'') +  ISNULL(X.PS_KHOANNO,'') = W.TT_KHOANNO
),

TSBD AS (
		SELECT		HDTC_id 'HDTC_ID', 
				COUNT(COL_ID) 'SO_TSBD'
				--SUM(latest_Value ) 'GIATRITSBD'
		FROM		Collateral A
		GROUP BY	HDTC_id 
),

DATA_RAW AS (
SELECT	A.*,
		B.HDTC_ID AS [TS_HCTC_ID]
		,B.SO_TSBD
		--,B.GIATRITSBD
FROM		SOLIEU_TSĐB A
INNER JOIN  TSBD B 
		ON A.DK_HDTC = B.HDTC_ID
		OR A.PS_HDTC = B.HDTC_ID
		OR A.CK_HDTC = B.HDTC_ID
		OR A.TT_HDTC = B.HDTC_ID)

-- JOIN with Collateral table to get information about TSBĐ code

--drop table QUYMO_TSBĐ
SELECT A.*, B.col_ID, B.latest_Value 
INTO QUYMO_TSBĐ
FROM DATA_RAW A
INNER JOIN Collateral B
		ON A.DK_HDTC = B.HDTC_ID
		OR A.PS_HDTC = B.HDTC_ID
		OR A.CK_HDTC = B.HDTC_ID
		OR A.TT_HDTC = B.HDTC_ID
		OR A.TS_HCTC_ID = B.HDTC_id
ORDER BY A.DK_KHOANNO

SELECT * FROM QUYMO_TSBĐ

-- QUANTITY OF SECURITIES AND TOTAL VALUE OF SECURITIES

-- DK
SELECT COUNT(*)							AS [DAUKY_SO_LUONG_TSBĐ]
	,SUM(latest_Value)					AS [DAUKY_GIA_TRI_TSBĐ]
FROM(
	SELECT DISTINCT
		col_ID
		,latest_Value
	FROM QUYMO_TSBĐ
	WHERE DK_KHOANNO IS NOT NULL) DAU_KY

-- PHAT SINH MOI

-- 6 THANG DK

SELECT 
	COUNT(PHAT_SINH.col_ID)				AS [PST6TDN_SO_LUONG_TSBĐ]
	,SUM(PHAT_SINH.latest_Value)		AS [PST6TDN_GIA_TRI_TSBĐ]
	FROM 
		(SELECT DISTINCT
			col_ID
			,latest_Value
		FROM QUYMO_TSBĐ
		WHERE DK_KHOANNO IS NULL
		AND PS_NGAYBD BETWEEN '2023-01-01' AND '2023-06-30') PHAT_SINH
	LEFT JOIN
		(SELECT DISTINCT
			col_ID
			,latest_Value
		FROM QUYMO_TSBĐ
		WHERE DK_KHOANNO IS NOT NULL) DAU_KY
	ON PHAT_SINH.col_ID = DAU_KY.col_ID
	WHERE DAU_KY.col_ID IS NULL

-- 6 THANG CK

SELECT 
	COUNT(PHAT_SINH_6TCN.col_ID)			AS [PST6TCN_SO_LUONG_TSBĐ]
	,SUM(PHAT_SINH_6TCN.latest_Value)		AS [PST6TCN_GIA_TRI_TSBĐ]
	FROM 
		(SELECT DISTINCT
			col_ID
			,latest_Value
		FROM QUYMO_TSBĐ
		WHERE DK_KHOANNO IS NULL
		AND PS_NGAYBD BETWEEN '2023-07-01' AND '2023-12-31') PHAT_SINH_6TCN
	LEFT JOIN
		(SELECT DISTINCT
			col_ID
			,latest_Value
		FROM QUYMO_TSBĐ
		WHERE DK_KHOANNO IS NOT NULL) DAU_KY
	ON PHAT_SINH_6TCN.col_ID = DAU_KY.col_ID
	LEFT JOIN
		(SELECT DISTINCT
			col_ID
			,latest_Value
		FROM QUYMO_TSBĐ
		WHERE DK_KHOANNO IS NULL
		AND PS_NGAYBD BETWEEN '2023-01-01' AND '2023-06-30') PHAT_SINH_6TDN
	ON PHAT_SINH_6TCN.col_ID = PHAT_SINH_6TDN.col_ID
	WHERE DAU_KY.col_ID IS NULL
	    AND PHAT_SINH_6TDN.col_ID IS NULL	

-- PHAT SINH GIAM

-- 6 THANG DK

SELECT 
	COUNT(*)							AS [PSG6TDN_SO_LUONG_TSBĐ]
	,SUM(TAT_TOAN.latest_Value)			AS [PSG6TDN_GIA_TRI_TSBĐ]
FROM(
	SELECT DISTINCT
		col_ID
		,latest_Value
	FROM QUYMO_TSBĐ
	WHERE CK_KHOANNO IS NULL
	AND TT_NGAYKT BETWEEN '2023-01-01' AND '2023-06-30') TAT_TOAN
LEFT JOIN 
	(SELECT DISTINCT
		col_ID
		,latest_Value
	FROM QUYMO_TSBĐ
	WHERE TT_KHOANNO IS NULL) CUOI_KY
ON TAT_TOAN.col_ID = CUOI_KY.col_ID
WHERE CUOI_KY.col_ID IS NULL

-- 6 THANG CK

SELECT 
	COUNT(*)									AS [PSG6TCN_SO_LUONG_TSBĐ]
	,SUM(TAT_TOAN_6TCN.latest_Value)			AS [PSG6TCN_GIA_TRI_TSBĐ]
FROM(
	SELECT DISTINCT
		col_ID
		,latest_Value
	FROM QUYMO_TSBĐ
	WHERE CK_KHOANNO IS NULL
	AND TT_NGAYKT BETWEEN '2023-07-01' AND '2023-12-31') TAT_TOAN_6TCN
LEFT JOIN 
	(SELECT DISTINCT
		col_ID
		,latest_Value
	FROM QUYMO_TSBĐ
	WHERE TT_KHOANNO IS NULL) CUOI_KY
ON TAT_TOAN_6TCN.col_ID = CUOI_KY.col_ID
LEFT JOIN
	(SELECT DISTINCT
		col_ID
		,latest_Value
	FROM QUYMO_TSBĐ
	WHERE CK_KHOANNO IS NULL
	AND TT_NGAYKT BETWEEN '2023-01-01' AND '2023-06-30') TAT_TOAN_6TDN
ON TAT_TOAN_6TCN.col_ID = TAT_TOAN_6TDN.col_ID
WHERE CUOI_KY.col_ID IS NULL
AND TAT_TOAN_6TDN.col_ID IS NULL

-- CK
SELECT 
	COUNT(*)							AS [CK_SO_LUONG_TSBĐ]
	,SUM(latest_Value)					AS [CK_GIA_TRI_TSBĐ]
FROM(
	SELECT DISTINCT
		col_ID
		,latest_Value
	FROM QUYMO_TS
	WHERE TT_KHOANNO IS NULL) CUOI_KY
