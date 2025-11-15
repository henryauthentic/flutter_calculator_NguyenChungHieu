class CalculatorEngine {
  double _acc = 0;
  String _pendingOp = '';
  bool _hasAcc = false;

  String formatDouble(double v) {
    if (v % 1 == 0) return v.toInt().toString();
    return v.toString();
  }

  void reset() {
    _acc = 0;
    _pendingOp = '';
    _hasAcc = false;
  }

  void setFirst(double v) {
    _acc = v;
    _hasAcc = true;
  }

  double apply(String op, double left, double right) {
    switch (op) {
      case '+':
        return left + right;
      case '-':
        return left - right;
      case '×':
        return left * right;
      case '÷':
        return right == 0 ? double.nan : left / right;
      default:
        return right;
    }
  }

  double pressOperation(String op, double currentInput) {
    if (!_hasAcc) {
      setFirst(currentInput);
    } else {
      _acc = apply(_pendingOp, _acc, currentInput);
    }
    _pendingOp = op;
    return _acc;
  }

  double pressEqual(double currentInput) {
    if (!_hasAcc) return currentInput;
    double res = apply(_pendingOp, _acc, currentInput);
    reset();
    setFirst(res);
    return res;
  }
}
