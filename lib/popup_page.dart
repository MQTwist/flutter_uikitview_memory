import 'package:flutter/material.dart';

class PopupPage extends StatefulWidget {
  const PopupPage({super.key});

  @override
  State<PopupPage> createState() => _PopupPageState();
}

class _PopupPageState extends State<PopupPage> {
  @override
  void initState() {
    super.initState();
    print(">>>flutter PopupPage initState");
  }

  @override
  void dispose() {
    super.dispose();
    print(">>>flutter PopupPage dispose");
  }

  @override
  Widget build(BuildContext context) {
    print(">>>flutter PopupPage build");
    return Scaffold(
      appBar: AppBar(
        title: const Text('DialogPage'),
      ),
      body: Column(
        children: <Widget>[
          const SizedBox(width: double.infinity),
          ElevatedButton(
              onPressed: () {
                _showBottomSheet(context);
              },
              child: const Text("Touch me")),
          const SizedBox(height: 50),
          const SizedBox(
            width: 100,
            height: 100,
            child: UiKitView(viewType: "mqnative"),
          ),
        ],
      ),
    );
  }

  _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) {
          return Container(
            padding: const EdgeInsets.all(16),
            height: 400,
            child: const Column(
              children: [
                SizedBox(width: double.infinity),
                Text("选择操作"),
              ],
            ),
          );
        });
  }
}
