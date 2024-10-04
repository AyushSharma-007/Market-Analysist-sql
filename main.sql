-- The Marketing Manager wants to know the 'Age' of the customers. Extract the age feature 
-- from the given dataset and display the statistical summary of the age?
-- (Statistical Summary: Show the dispersion of the data in the form of graphs.
--  Perform outlier treatment
--  Categorize data in Age Groups)
alter table market add age INT,
update market set age = 2024 - Year_Birth,
-- The Marketing manager wants to understand the total amount spent on various products so 
-- that we can find what percentage of the amount is spent on which product.
-- a. Find out the total amount spent by a customer.
-- b. Display the Percentage of the amount spent on Wines and other products.
SELECT (MntFishProducts+MntFruits+MntGoldProds+MntMeatProducts+MntSweetProducts) as total_product
FROM 
    market
  
-- The marketing manager wants to understand the performance of different marketing 
-- campaigns. Find out which marketing campaign is most successful? 
-- Use suitable graphs for visualization. (Hint: - use features like AcceptedCmp for campaign 
-- information)  
SELECT (MntFishProducts+MntFruits+MntGoldProds+MntMeatProducts+MntSweetProducts) as total_product,
MntFishProducts*100/(MntFishProducts+MntFruits+MntGoldProds+MntMeatProducts+MntSweetProducts) as MntFishProducts_percent,
MntFruits*100/(MntFishProducts+MntFruits+MntGoldProds+MntMeatProducts+MntSweetProducts) as MntFruits_percent,
MntGoldProds*100/(MntFishProducts+MntFruits+MntGoldProds+MntMeatProducts+MntSweetProducts) as MntGoldProds_percent,
MntMeatProducts*100/(MntFishProducts+MntFruits+MntGoldProds+MntMeatProducts+MntSweetProducts) as MntMeatProducts_percent,
MntSweetProducts*100/(MntFishProducts+MntFruits+MntGoldProds+MntMeatProducts+MntSweetProducts) as MntSweetProducts_percent
FROM 
    market



