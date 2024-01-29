select * from tblgold

--1>Create a line chart to visualize the trend of 'Close' 
--  prices over time.

select DATENAME(year, Date) as year, Closing
from tblgold;

--1>Create a line chart to visualize the trend of 'Opening' 
--  prices over time.

select DATENAME(year, Date) as year, Opening
from tblgold;

--2>Build a bar chart to compare the 'Volume' for each 
--  date.

select Date , Volume
from tblgold

--3>Create a donut chart to represent the proportion of 
--  'Volume' for the top 3 dates with the highest volume.

select top 3 Date, Volume
from tblgold
order by Date desc

--4>Build a combo chart to visualize both 'Close' prices 
--  and 'Volume' on the same chart.

select date, closing, opening
from tblgold
where Datename(year, date) = 2024;

--5>Generate a bar chart to display the average 'Close'
--  price for each month.

select DATENAME(month, Date) as Month, AVG(closing) as average_Closing
from tblgold
group by DATENAME(month, Date) 

--6>Generate a bar chart to display the average 'Close'
--  price for each month.

select DATENAME(month, Date) as Month, AVG(Opening) as average_Opening
from tblgold
group by DATENAME(month, Date) 

--7>Build a card visualization to display the total number
--  of entries in the dataset.

select count(column1)
from tblgold