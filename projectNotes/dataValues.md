# DataValues
Different values and objects to consider for our database and app

### Money Pools
* bills_total - A total dollar amount for bills that need to be paid each month
* spending_total - A total dollar amount for extra spending money
* loan_total - The total amount of a loan that needs to be paid
* loan_remainder - The remaining amount that needs to be paid for a loan
* loan_additionSavings - A collection of additional funds saved for loan that haven't been used yet
* loan_additionalTotalSavings - The total amount of addition funds saved for loan.

### Transactions
* Transaction (Object)
  * Transaction ID 
  * Date
  * Amount
  * +/- (Income/Expense)
  * Description
  * Type of Transaction
    * Bill
    * Expense
    * Income
    * Loan Payment
      * A part of Bills
    * Additional Loan Payment
      * Can Pull from loan_additionalSavings or spending_total
### Loans
* Loan (Object) - Can be Student Loan, Car Loan, etc
  * Loan ID
  * Loan Name
  * Starting Amount
  * Loan Time Length
  * Interest
  * Interest Frequency
  * Interest Start Date
  * Minimum Payment Amount
  * Amount Paid Off
  * Remaining Amount
  * Time til paid off
  * Additional Money Paid Due to Interest (Based on payments)
  * Money Saved by additional Payments
  * Time Saved by additional Payments
### Bills
* Bill (Object)
  * Bill ID
  * Bill Start Date
  * Bill Frequency
  * Bill Amount
  * Bill Description
### Income
* Income (Object)
  * Income ID
  * Income Name
  * Income Start Date
  * Income Frequency
  * Income Amount
  * Income Description
