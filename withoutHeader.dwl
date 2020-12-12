%dw 2.0
output application/csv header=false
---
{
    "Client_Key": vars.clientKey,
	"First_Name": vars.initialPayload.Customer.First_Name,
	"Middle_Name": vars.initialPayload.Customer.Middle_Name,
	"Last_Name": vars.initialPayload.Customer.Last_Name,
	"BirthDate": ((vars.initialPayload.Customer.BirthDate as Date {format: "dd-MM-yyyy"} as String {format: "yyyy-MM-dd"}) ++ "T00:00:00") as DateTime as Number,
	"Height": vars.initialPayload.Customer.Height,
	"Weight": vars.initialPayload.Customer.Weight,
	"Billing_Street": vars.initialPayload.Customer.Billing_Street,
	"Billing_City": vars.initialPayload.Customer.Billing_City,
	"Billing_State": vars.initialPayload.Customer.Billing_State,
	"Billing_Postal Code": vars.initialPayload.Customer.Billing_Postal_Code,
	"Billing_Country": vars.initialPayload.Customer.Billing_Country,
	"Created_Date": now() as Number
}