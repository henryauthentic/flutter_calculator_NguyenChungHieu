import 'package:flutter/material.dart';
import 'calculator_button.dart'; // Đổi tên file này nếu cần

typedef Btn = CalcButton;

class CalculatorLayout extends StatelessWidget {
  final Function(String) onNum;
  final Function(String) onOp;
  final VoidCallback onEqual;
  final VoidCallback onClear;
  //final VoidCallback onBackspace;
  final VoidCallback onParentheses;
  final VoidCallback onPercent;
  final VoidCallback onToggleSign;

  const CalculatorLayout({
    super.key,
    required this.onNum,
    required this.onOp,
    required this.onEqual,
    required this.onClear,
    //required this.onBackspace,
        required this.onParentheses,
    required this.onPercent,
    required this.onToggleSign,
  });

  @override
  Widget build(BuildContext context) {
    // SỬA ĐỔI: Bỏ Container cố định
    // Chỉ cần trả về GridView trực tiếp.
    // Thêm `shrinkWrap: true` để nó vừa với nội dung
    // trong Column.
    return GridView.count(
      shrinkWrap: true, // Quan trọng khi đặt GridView trong Column
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 4, // 4 cột
      mainAxisSpacing: 10, // row gap
      crossAxisSpacing: 10, // col gap
      children: [
        // Hàng 1
        Btn(text: "C", color: const Color(0xFF963E3E), onTap: onClear),
        //Btn(text: "CE", color: const Color(0xFF963E3E), onTap: onBackspace),
        Btn(text: "( )", color: const Color(0xFF272727), onTap: onParentheses),
        Btn(text: "%", color: const Color(0xFF272727), onTap: onPercent),
        Btn(text: "÷", color: const Color(0xFF394734), accent: true, onTap: () => onOp("÷")),

        // Hàng 2
        Btn(text: "7", color: const Color(0xFF272727), onTap: () => onNum("7")),
        Btn(text: "8", color: const Color(0xFF272727), onTap: () => onNum("8")),
        Btn(text: "9", color: const Color(0xFF272727), onTap: () => onNum("9")),
        Btn(text: "×", color: const Color(0xFF394734), accent: true, onTap: () => onOp("×")),

        // Hàng 3
        Btn(text: "4", color: const Color(0xFF272727), onTap: () => onNum("4")),
        Btn(text: "5", color: const Color(0xFF272727), onTap: () => onNum("5")),
        Btn(text: "6", color: const Color(0xFF272727), onTap: () => onNum("6")),
        Btn(text: "-", color: const Color(0xFF394734), accent: true, onTap: () => onOp("-")),

        // Hàng 4
        Btn(text: "1", color: const Color(0xFF272727), onTap: () => onNum("1")),
        Btn(text: "2", color: const Color(0xFF272727), onTap: () => onNum("2")),
        Btn(text: "3", color: const Color(0xFF272727), onTap: () => onNum("3")),
        Btn(text: "+", color: const Color(0xFF394734), accent: true, onTap: () => onOp("+")),

        // Hàng 5
        Btn(text: "±", color: const Color(0xFF272727), onTap: onToggleSign),
        Btn(text: "0", color: const Color(0xFF272727), onTap: () => onNum("0")),
        Btn(text: ".", color: const Color(0xFF272727), onTap: () => onNum(".")),
        Btn(text: "=", color: const Color(0xFF076544), accent: true, onTap: onEqual),
      ],
    );
  }
}