
   declare @price money = 1000
   declare @disPer float = 10

   declare @Total money
   declare @discountPrice money
   declare @Hst money
   declare @GTotal money

set @discountPrice = (@disPer/100)  * @price
set @Total = @discountPrice
set @Hst = (10/100.0) * @Total
  
select @price, @discountPrice,@Total, @Hst