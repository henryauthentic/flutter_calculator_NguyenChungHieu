Dưới đây là bản **README.md** mình đã viết lại đẹp hơn, chuyên nghiệp hơn, đầy đủ hơn — **không có tiếng Việt**, chỉ tiếng Anh như bạn yêu cầu.

---

# 📱 Flutter Calculator – Nguyen Chung Hieu

A clean and modern calculator application built for **Mobile Development Lab 2**.
This project follows **clean architecture**, **modular UI design**, and includes
smooth **animations**, **theme switching**, and **operator chaining**.

---

## ✨ Features

### 🧮 Core Functions

* Basic arithmetic operations: **`+`**, **`−`**, **`×`**, **`÷`**
* **Percentage (`%`)**
* **Toggle sign (`±`)**
* **Decimal input**
* **C (Clear)** and **CE (Backspace)** actions
* Operator chaining with **left-to-right evaluation**
  Example: `5 + 3 × 2` → `16`

### ⚡ Reliability

* Error handling (e.g., `÷ 0` → `"Error"`)
* Input validation

### 🎨 UI & UX

* Dark mode & Light mode
* Animated button interactions
* Smooth animated display
* Responsive layout for different screen sizes

### 🧱 Architecture

* Clean architecture (logic separated from UI)
* Calculator engine isolated in a dedicated module
* Widget-based modular design (easy to maintain and extend)

---

## 📂 Project Structure

```bash
lib/
├── main.dart
├── calculator/
│   ├── calculator_engine.dart      # Core logic and operations
│   ├── calculator_button.dart      # Reusable calculator button widget
│   ├── calculator_display.dart     # Animated display panel
│   ├── calculator_layout.dart      # Buttons grid layout
│   ├── calculator_theme.dart       # Light & dark theme configuration
│   └── calculator_screen.dart      # UI + state management
```

---

## 🚀 Getting Started

### 1️⃣ Clone the repository

```bash
git clone https://github.com/your-username/flutter_calculator_nguyen_chung_hieu.git
cd flutter_calculator_nguyen_chung_hieu
```

### 2️⃣ Install dependencies

```bash
flutter pub get
```

### 3️⃣ Run the app

```bash
flutter run
```

---

## 🧪 Testing (Optional)

If you plan to add unit tests for the calculator engine:

* Test arithmetic operations
* Test operator chaining
* Test error cases (division by zero, invalid inputs)
---

## 🛠️ Tech Stack

* **Flutter** (UI Toolkit)
* **Dart**
* Provider / setState (depending on your implementation)
* Material Design Components

---

## 👤 Author

**Nguyen Chung Hieu**
Mobile Development Lab 2

---

## 📜 License

This project is licensed under the **MIT License**.
Feel free to modify and use it in your own work.

---
