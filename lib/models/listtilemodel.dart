class TargetInvestmentModel {
  final int userId;
  final String profit;
  final String loanAmount;
  final String loanPeriod;
  final String currency;
  bool isCheck;

  TargetInvestmentModel(
      {required this.userId, required this.profit, required this.loanAmount, required this.loanPeriod, required this.currency, required this.isCheck});

  static List<TargetInvestmentModel> getUsers() {
    return <TargetInvestmentModel>[
      TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX38,000,000',
          profit: '12,000,000',
          loanPeriod: '12 months',
          currency: 'UGX',
          isCheck: true),
      TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX84,000,000',
          profit: '1,000,000',
          loanPeriod: '6 months',
          currency: 'UGX',
          isCheck: true),
      TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX33,000,000',
          profit: '4,500,000',
          loanPeriod: '12 months',
          currency: 'UGX',
          isCheck: true),
      TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX76,000,000',
          profit: '16,000,000',
          loanPeriod: '3 months',
          currency: 'UGX',
          isCheck: true),
      TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX56,000,000',
          profit: '11,000,000',
          loanPeriod: '12 months',
          currency: 'UGX',
          isCheck: true),
          TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX56,000,000',
          profit: '11,000,000',
          loanPeriod: '12 months',
          currency: 'UGX',
          isCheck: true),
          TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX56,000,000',
          profit: '11,000,000',
          loanPeriod: '12 months',
          currency: 'UGX',
          isCheck: true),
          TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX56,000,000',
          profit: '11,000,000',
          loanPeriod: '12 months',
          currency: 'UGX',
          isCheck: true),
          TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX56,000,000',
          profit: '11,000,000',
          loanPeriod: '12 months',
          currency: 'UGX',
          isCheck: true),
          TargetInvestmentModel(
          userId: 1,
          loanAmount: 'UGX56,000,000',
          profit: '11,000,000',
          loanPeriod: '12 months',
          currency: 'UGX',
          isCheck: true),
    ];
  }
}
