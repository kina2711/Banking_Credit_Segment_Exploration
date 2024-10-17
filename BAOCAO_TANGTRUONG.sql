----------------------------
-- III. GROWTH OVER THE YEARS
-----------------------------

--1. Calculate the sum of latest_Value for each year

WITH GIATRIHDTD_CTT AS (
    SELECT 
        '2021' AS Nam,
        SUM(latest_Value) AS Tong_Gia_Tri
    FROM (
        SELECT DISTINCT
            COL.col_ID,
            col.latest_Value
        FROM COLLATERAL AS COL
        LEFT JOIN MORTGAGE_AGREEMENT AS MA ON COL.HDTC_id = MA.HDTC_id
        LEFT JOIN CREDIT_CONTRACT AS CC ON COL.HDTC_id = CC.sogiaodich
        LEFT JOIN CREDIT_PLAN AS CP ON CC.debid = CP.debid
        WHERE CP.ngaydauky <= '2021-12-31'
          AND CP.ngaycuoiky >= '2021-12-31'
          AND CC.crcontract_end_date > '2021-12-31'
    ) AS X

    UNION ALL

    SELECT 
        '2022' AS Nam,
        SUM(latest_Value) AS Tong_Gia_Tri
    FROM (
        SELECT DISTINCT
            COL.col_ID,
            col.latest_Value
        FROM COLLATERAL AS COL
        LEFT JOIN MORTGAGE_AGREEMENT AS MA ON COL.HDTC_id = MA.HDTC_id
        LEFT JOIN CREDIT_CONTRACT AS CC ON COL.HDTC_id = CC.sogiaodich
        LEFT JOIN CREDIT_PLAN AS CP ON CC.debid = CP.debid
        WHERE CP.ngaydauky <= '2022-12-31'
          AND CP.ngaycuoiky >= '2022-12-31'
          AND CC.crcontract_end_date > '2022-12-31'
    ) AS X

    UNION ALL

    SELECT 
        '2023' AS Nam,
        SUM(latest_Value) AS Tong_Gia_Tri
    FROM (
        SELECT DISTINCT
            COL.col_ID,
            col.latest_Value
        FROM COLLATERAL AS COL
        LEFT JOIN MORTGAGE_AGREEMENT AS MA ON COL.HDTC_id = MA.HDTC_id
        LEFT JOIN CREDIT_CONTRACT AS CC ON COL.HDTC_id = CC.sogiaodich
        LEFT JOIN CREDIT_PLAN AS CP ON CC.debid = CP.debid
        WHERE CP.ngaydauky <= '2023-12-31'
          AND CP.ngaycuoiky >= '2023-12-31'
          AND CC.crcontract_end_date > '2023-12-31'
    ) AS X
)

-- Calculate growth rate compared to base year 2021

SELECT
    Nam,
    Tong_Gia_Tri,
    CASE 
        WHEN Nam = '2021' THEN 100
        WHEN Nam = '2022' THEN (Tong_Gia_Tri / (SELECT Tong_Gia_Tri FROM GIATRIHDTD_CTT WHERE Nam = '2021')) * 100
        WHEN Nam = '2023' THEN (Tong_Gia_Tri / (SELECT Tong_Gia_Tri FROM GIATRIHDTD_CTT WHERE Nam = '2022')) * 100
    END AS TyLe_TangTruong
FROM GIATRIHDTD_CTT

--2. Calculate total credit balance for each year

WITH GTTSBD_CTT AS (
    SELECT 
        YEAR(ngaydauky) AS Nam,
        SUM(B.sodudauky) AS Tong_Gia_Tri
    FROM credit_contract A
    INNER JOIN CREDIT_PLAN B ON A.debid = B.debid
    WHERE 
        (ngaydauky <= '2021-12-31' AND ngaycuoiky >= '2021-12-31' AND crcontract_end_date > '2021-12-31')
        OR (ngaydauky <= '2022-12-31' AND ngaycuoiky >= '2022-12-31' AND crcontract_end_date > '2022-12-31')
        OR (ngaydauky <= '2023-12-31' AND ngaycuoiky >= '2023-12-31' AND crcontract_end_date > '2023-12-31')
    GROUP BY YEAR(ngaydauky)
)

-- Calculate growth rate compared to base year 2021

SELECT
    Nam,
    Tong_Gia_Tri,
    CASE 
        WHEN Nam = 2021 THEN 100
        WHEN Nam = 2022 THEN (Tong_Gia_Tri / (SELECT Tong_Gia_Tri FROM GTTSBD_CTT WHERE Nam = 2021)) * 100
        WHEN Nam = 2023 THEN (Tong_Gia_Tri / (SELECT Tong_Gia_Tri FROM GTTSBD_CTT WHERE Nam = 2022)) * 100
    END AS TyLe_TangTruong
FROM GTTSBD_CTT
