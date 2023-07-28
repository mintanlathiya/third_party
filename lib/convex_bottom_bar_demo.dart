import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class ConvexBottombarDemoUi extends StatefulWidget {
  const ConvexBottombarDemoUi({super.key});

  @override
  State<ConvexBottombarDemoUi> createState() => _ConvexBottombarDemoUiState();
}

class _ConvexBottombarDemoUiState extends State<ConvexBottombarDemoUi> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: const Center(
            //  child: Text(count.toString()),
            ),
        bottomNavigationBar: ConvexAppBar(
          items: const [
            TabItem(icon: Icons.home, title: 'Home'),
            TabItem(icon: Icons.map, title: 'Discovery'),
            TabItem(icon: Icons.add, title: 'Add'),
            TabItem(icon: Icons.message, title: 'Message'),
            TabItem(icon: Icons.people, title: 'Profile'),
          ],
          style: TabStyle.fixedCircle,
          onTap: (int i) {
            print('click index=$i');
          },
        )
        // bottomNavigationBar: ConvexButton.fab(
        //   onTap: () => setState(() => count++),
        // ),
        );
  }
}
