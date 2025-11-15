import 'package:flutter/material.dart';
import 'calculator_engine.dart';
import 'calculator_display.dart';
import 'calculator_layout.dart';

class CalculatorScreen extends StatefulWidget {
  final VoidCallback onToggleTheme;

  const CalculatorScreen({
    super.key,
    required this.onToggleTheme,
  });

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorEngine engine = CalculatorEngine();

  String _display = "0";
  bool _justAnswered = false;

  double _toDouble(String s) => double.tryParse(s) ?? 0;

  void _onNum(String n) {
    if (_justAnswered) {
      _display = "0";
      _justAnswered = false;
    }
    setState(() {
      if (_display == "0" && n != ".") {
        _display = n;
      } else {
        if (n == "." && _display.contains(".")) return;
        _display += n;
      }
    });
  }

  void _onOp(String op) {
    double current = _toDouble(_display);
    engine.pressOperation(op, current);
    setState(() => _display = "0");
  }

  void _onEqual() {
    double current = _toDouble(_display);
    double res = engine.pressEqual(current);

    setState(() {
      _display = res.isNaN ? "Error" : engine.formatDouble(res);
      _justAnswered = true;
    });
  }

  void _onClear() {
    engine.reset();
    setState(() => _display = "0");
  }

  // SỬA ĐỔI: Đã xoá hàm onBackspace
  // void _onBackspace() {
  //   setState(() {
  //     _display = _display.length > 1
  //         ? _display.substring(0, _display.length - 1)
  //         : "0";
  //   });
  // }
  
  // SỬA ĐỔI: Thêm hàm mới cho nút ( )
  void _onParentheses() {
    // TODO: Thêm logic xử lý ngoặc đơn ở đây
    // Ví dụ: setState(() => _display += "(" );
    print("Nút ( ) đã được bấm!");
  }

  void _onPercent() {
    double v = _toDouble(_display) / 100;
    setState(() => _display = engine.formatDouble(v));
  }

  void _onToggleSign() {
    setState(() {
      _display = _display.startsWith("-")
          ? _display.substring(1)
          : "-$_display";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C1C1C),
      appBar: AppBar(
        title: const Text("Calculator"),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16), // Padding 16px xung quanh
        child: Column(
          children: [
            // SỬA ĐỔI: Dùng Expanded và Align
            Expanded(
              child: Align(
                alignment: Alignment.bottomRight, // Căn lề dưới phải
                child: CalculatorDisplay(value: _display),
              ),
            ),

            const SizedBox(height: 16), // Khoảng cách 16px

            // SỬA ĐỔI: Truyền onParentheses thay vì onBackspace
            CalculatorLayout(
              onNum: _onNum,
              onOp: _onOp,
              onEqual: _onEqual,
              onClear: _onClear,
              // onBackspace: _onBackspace, // <-- Đã xoá
              onParentheses: _onParentheses, // <-- Đã thêm
              onPercent: _onPercent,
              onToggleSign: _onToggleSign,
            ),
          ],
        ),
      ),
    );
  }
}