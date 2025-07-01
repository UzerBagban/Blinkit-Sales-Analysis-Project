/*Displaying All The Data In Table*/
SELECT * FROM blinkit_data

/*Counting The Total Number Of Items*/
SELECT COUNT(*) AS No_Of_Items FROM blinkit_data

/*Converts The 'LF' & 'low fat' Into 'Low Fat' And 'reg' Into 'Regular'*/
UPDATE blinkit_data
SET Item_Fat_Content =
CASE
WHEN Item_Fat_Content IN ('LF', 'low fat') THEN 'Low Fat'
WHEN Item_Fat_Content = 'reg' THEN 'Regular'
ELSE Item_Fat_Content
END

/*Select All The unique Value In 'Item_Fat_Content'*/
SELECT DISTINCT(Item_Fat_Content) FROM blinkit_data

/*Getting The Sum Of Sales*/
SELECT SUM(Sales) AS Total_Sales
FROM blinkit_data

/*Using 'CAST' To Show The Total_Sales In Millons*/
SELECT CAST(SUM(Sales)/ 1000000 AS DECIMAL(10,2)) AS Total_Sales_Millons
FROM blinkit_data

/*Getting Average Of Sales*/
SELECT AVG(Sales) AS Avg_Sales FROM blinkit_data

/*Using 'CAST' To Show The Avg_Sales*/
SELECT CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales FROM blinkit_data

/*Using 'CAST' To Show The Total Sales Of 'Low Fat' Items In Millons*/
SELECT CAST(SUM(Sales)/ 1000000 AS DECIMAL(10,2)) AS Total_Low_Fat_Sales_Millons
FROM blinkit_data
WHERE Item_Fat_Content = 'Low Fat'

/*Using 'CAST' To Show The Total Sales Of year 2022 In Millons*/
SELECT CAST(SUM(Sales)/ 1000000 AS DECIMAL(10,2)) AS Total_Low_Fat_Sales_Millons
FROM blinkit_data
WHERE Outlet_Establishment_Year = 2022

/*Using 'CAST' To Show The Average Rating*/
SELECT CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating FROM blinkit_data

/*Finding Sum, Average Of Sales And Number Of Items 
And Average Rating For 'Item_Fat_Content' In Year 2022*/
SELECT Item_Fat_Content,
		CAST(SUM(Sales) AS DECIMAL(10,2)) As Total_Sales,
		CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating 

FROM blinkit_data
WHERE Outlet_Establishment_Year = 2022
GROUP BY Item_Fat_Content
ORDER BY Total_Sales DESC

/*Total Sales By Item Type*/
SELECT TOP 5 Item_Type,
		CAST(SUM(Sales) AS DECIMAL(10,2)) As Total_Sales,
		CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating 

FROM blinkit_data
GROUP BY Item_Type
ORDER BY Total_Sales DESC

/*Fat Content By Outlet For Total Sales*/
SELECT Outlet_Location_Type,
		ISNULL([Low Fat], 0) AS Low_Fat,
		ISNULL([Regular], 0) AS Regular
FROM
(
	SELECT Outlet_Location_Type, Item_Fat_Content,
		CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales
	FROM blinkit_data
	GROUP BY Outlet_Location_Type, Item_Fat_Content
) AS SourceTable
PIVOT
(
	SUM(Total_Sales)
	FOR Item_Fat_Content IN ([Low Fat], [Regular])
) AS PivotTable
ORDER BY Outlet_Location_Type;

/*Total Sales By Outlet Establishment*/
SELECT Outlet_Establishment_Year,
		CAST(SUM(Sales) AS DECIMAL(10,2)) As Total_Sales,
		CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating
FROM blinkit_data
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year ASC

/*Percentage Of Sales By Outlet Size*/
SELECT
	Outlet_Size,
	CAST(SUM(Sales) AS DECIMAL(10,2)) AS Total_Sales,
	CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Size
ORDER BY Total_Sales DESC;

/*Sales By Outlet Location*/
SELECT Outlet_Location_Type,
		CAST(SUM(Sales) AS DECIMAL(10,2)) As Total_Sales,
		CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating,
		CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Location_Type
ORDER BY Total_Sales DESC

/*All Metrics By Outlet Type*/
SELECT Outlet_Type,
		CAST(SUM(Sales) AS DECIMAL(10,2)) As Total_Sales,
		CAST(AVG(Sales) AS DECIMAL(10,1)) AS Avg_Sales,
		COUNT(*) AS No_Of_Items,
		CAST(AVG(Rating) AS DECIMAL(10,2)) AS Avg_Rating,
		CAST((SUM(Sales) * 100.0 / SUM(SUM(Sales)) OVER()) AS DECIMAL(10,2)) AS Sales_Percentage
FROM blinkit_data
GROUP BY Outlet_Type
ORDER BY Total_Sales DESC