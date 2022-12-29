import 'package:apple_store/1-stateful_widget/cart.dart';
import 'package:apple_store/1-stateful_widget/store.dart';
import 'package:apple_store/common/bottom_bar.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  /// 현재 선택된 index
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: const [
          /// Store
          Store(),

          /// Cart
          Cart(),
        ],
      ),
      bottomNavigationBar: BottomBar(
        currentIndex: currentIndex,
        cartTotal: "0",
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
      ),
    );
  }
}
