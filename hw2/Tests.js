function OrderWorkflow_E2E() {
	StartApp();
	CreateOrder();
	EditOrder();
	DeletOrder();
	
}

#1 -> StartApp() -> CreateOrder() -> SaveData() -> EditOrder()

StartApp()
1. Validate app running --> If yest then exit
2. Start app
3. Validate that user may interact with window

CreateOrder()
1. App is present, Save initial system state (RowsCount)
2. Create order
3. RowsCount+1, Row with data entered created, save entered data

EditOrder()
1. Validate app running --> row exists --> 
2. Edit order 
3. row count before = row count after, data updated

DeletOrder()
1. Validate app running --> row exists --> save row count before
2. Delete order
3. RowCount-1


1. скачать апликуху
2. описать шаги
3. 