#Stock Picker Program for TOP Ruby Path. 

The challenge is to create a method that takes a
dummy array of stock prices and automatically
chooses what the best times to buy and sell were.

Time to iterate and compare!

NOTES

I ended up nesting a couple of #each methods on the array passed into the 
stock_picker that compared index values of each item(to prevent profits being calculated with previous days 'prices'). If the index of the 'sell price' was higher than the 'buy price' then subtraction was performed, the resulting profit and the indexes of the 'buy price' and 'sell price' stored in an hash like this...
    {profit => [buy_price, sell_price]}

The profit and the corresponding buy and sell values of the original array were then printed as a string before the method returns an array of both index values.
