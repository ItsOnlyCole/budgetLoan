

class Data {
  double moneyTotal;
  double moneyForSpending;
  double moneyForBills;
  double moneySavedForLoans;
  var loans = new List();

  void createLoans() {
    var loans = new List();
    loans.add(Loan("Student Loan", 10, 2, 4.23, 10000, 2000, 735.21, 8735.21));
  }

  Data() {
    this.moneyForSpending=200.0;
    this.moneyForBills=750;
    this.moneySavedForLoans=50.0;
    this.moneyTotal=1000;

    loans.add(Loan("Student Loan", 10, 2, 4.23, 10000, 2000, 735.21, 8735.21));
  }

  String getLoanName(Loan loan) {
    return loan.loanName;
  }

  String formatData(double data) {
    return data.toStringAsFixed(data.truncateToDouble() == data ? 0 : 2);
  }
}
class Loan {
  String loanName;
  int durationInYears;
  int currentYearInLoan;
  double interestRate;
  double originalLoanAmount;
  double amountPaid;
  double interestAccrued;
  double remainingAmount;

  Loan(String loanName, int durationInYears, int currentYearInLoan, double interestRate, double originalLoanAmount, double amountPaid, double interestAccrued, double remainingAmount) {
    this.loanName = loanName;
    this.durationInYears = durationInYears;
    this.currentYearInLoan = currentYearInLoan;
    this.interestRate = interestRate;
    this.originalLoanAmount = originalLoanAmount;
    this.amountPaid = amountPaid;
    this.interestAccrued = interestAccrued;
    this.remainingAmount = remainingAmount;
  }

  payLoan(double payAmount) {
    amountPaid += payAmount;
    remainingAmount -= payAmount;
  }

  String getLoanName() {
    return loanName;
  }
  int getDurationInYears() {
    return durationInYears;
  }
  int getCurrentYearInLoan() {
    return currentYearInLoan;
  }
  double getInterestRate() {
    return interestRate;
  }
  double getOriginalLoanAmount() {
    return originalLoanAmount;
  }
  double getAmountPaid() {
    return amountPaid;
  }
  double getInterestAccrued() {
    return interestAccrued;
  }
  double getRemainingAmmount() {
    return remainingAmount;
  }
}
