import 'package:flutter/material.dart';
import 'package:third_party/shared_demo/textformfield_shared.dart';

class SharedPrefrenceExDemo extends StatefulWidget {
  const SharedPrefrenceExDemo({super.key});

  @override
  State<SharedPrefrenceExDemo> createState() => _SharedPrefrenceExDemoState();
}

class _SharedPrefrenceExDemoState extends State<SharedPrefrenceExDemo> {
  GlobalKey<FormState> key = GlobalKey();

  @override
  void dispose() {
    TextFormFieldShard.txtNameEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: key,
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                TextFormField(
                  controller: TextFormFieldShard.txtNameEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Name',
                    labelText: 'Name',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: TextFormFieldShard.txtSurNameEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'SurName',
                    labelText: 'SurName',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: TextFormFieldShard.txtAgeEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Age',
                    labelText: 'Age',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                TextFormField(
                  controller: TextFormFieldShard.txtUrlEditingController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Url',
                    labelText: 'Url',
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                MaterialButton(
                  onPressed: () {
                    TextFormFieldShard.addUser();
                    TextFormFieldShard.clearUserdata();
                    setState(() {});
                  },
                  child: const Text('Submit'),
                ),
                TextFormFieldShard.userData.isEmpty
                    ? const Text('there is not data')
                    : Expanded(
                        child: ListView.builder(
                          itemCount: TextFormFieldShard.userData.length,
                          itemBuilder: (context, index) {
                            return GestureDetector(
                              onTap: () {
                                TextFormFieldShard.selectedIndex = index;
                                TextFormFieldShard
                                        .txtNameEditingController.text =
                                    TextFormFieldShard.userData[index][0];
                                TextFormFieldShard
                                        .txtSurNameEditingController.text =
                                    TextFormFieldShard.userData[index][1];
                                TextFormFieldShard
                                        .txtAgeEditingController.text =
                                    TextFormFieldShard.userData[index][2];
                                TextFormFieldShard
                                        .txtUrlEditingController.text =
                                    TextFormFieldShard.userData[index][3];

                                setState(() {});
                              },
                              child: Dismissible(
                                key: UniqueKey(),
                                onDismissed: (direction) {
                                  TextFormFieldShard.userData.removeAt(index);
                                  setState(() {});
                                },
                                child: Row(
                                  children: [
                                    Column(
                                      children: [
                                        CircleAvatar(
                                          backgroundImage: NetworkImage(
                                              TextFormFieldShard.userData[index]
                                                  [3]),
                                          radius: 20,
                                        )
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                            'Name :  ${TextFormFieldShard.userData[index][0]}'),
                                        Text(
                                            'SurName :  ${TextFormFieldShard.userData[index][1]}'),
                                        Text(
                                            'Age :  ${TextFormFieldShard.userData[index][2]}'),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
