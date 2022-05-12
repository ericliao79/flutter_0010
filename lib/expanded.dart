import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Expanded'),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              // Expanded widget 只能是 Row 或 Column 或 Flex 的子 widget
              // child, flex 可設定
              Expanded(
                  // 根據 flex 分配剩餘空間
                  flex: 1,
                  // 子 widget
                  child: Container(
                      // 子 widget 的寬度等於父 widget 的寬度
                      color: Colors.red
                      // 隨便設定個顏色
                      )),
              Expanded(
                  // 根據 flex 分配剩餘空間
                  flex: 1,
                  // 子 widget
                  child: Container(
                      // 隨便設定個顏色
                      color: Colors.green)),
              Expanded(
                // 根據 flex 分配剩餘空間
                flex: 2,
                // 子 widget
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.purple),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(color: Colors.amber),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
