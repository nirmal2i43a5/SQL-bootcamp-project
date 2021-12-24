create proc InsertValueIntoMenuTable
(
	@FoodID int,
	@Price money,
	@Status bit,
	@CatID int
)
AS
BEGIN
	insert into tbl_Menu (FoodID, Price, [Status], CatID)
	values (@FoodID, @Price, @Status, @CatID)
END