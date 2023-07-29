import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';

class AweSomeDialogDemoUi extends StatefulWidget {
  const AweSomeDialogDemoUi({super.key});

  @override
  State<AweSomeDialogDemoUi> createState() => _AweSomeDialogDemoUiState();
}

class _AweSomeDialogDemoUiState extends State<AweSomeDialogDemoUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AnimatedButton(
            text: 'warning dialog',
            color: Colors.red,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                borderSide: const BorderSide(
                  color: Colors.green,
                  width: 2,
                ),
                width: 280,
                dialogType: DialogType.warning,
                animType: AnimType.bottomSlide,
                showCloseIcon: true,
                title: 'warning',
                desc: 'this is the description of the awesome dialog box',
                btnCancelOnPress: () {},
                dismissOnTouchOutside: true,
                dismissOnBackKeyPress: false,
                onDismissCallback: (type) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Dismissed by $type'),
                    ),
                  );
                },
              ).show();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          AnimatedButton(
            text: 'question dialog',
            color: Colors.amber,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.question,
                animType: AnimType.bottomSlide,
                showCloseIcon: true,
                title: 'question',
                desc: 'this is the description of the awesome dialog box',
                btnCancelOnPress: () {},
              ).show();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          AnimatedButton(
            text: 'success dialog',
            color: Colors.green,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.success,
                animType: AnimType.bottomSlide,
                showCloseIcon: true,
                title: 'success',
                desc: 'this is the description of the awesome dialog box',
                btnCancelOnPress: () {},
              ).show();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          AnimatedButton(
            text: 'error dialog',
            color: Colors.redAccent,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.error,
                animType: AnimType.bottomSlide,
                showCloseIcon: true,
                title: 'error',
                desc: 'this is the description of the awesome dialog box',
                btnCancelOnPress: () {},
              ).show();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          AnimatedButton(
            text: 'info dialog',
            color: Colors.blue,
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.info,
                animType: AnimType.rightSlide,
                title: 'Dialog Title',
                desc: 'Dialog description here.............',
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
              ).show();
            },
          ),
          const SizedBox(
            height: 15,
          ),
          AnimatedButton(
            text: 'Passing Data Back from Dialog',
            pressEvent: () {
              AwesomeDialog(
                context: context,
                dialogType: DialogType.noHeader,
                buttonsBorderRadius: const BorderRadius.all(
                  Radius.circular(2),
                ),
                animType: AnimType.rightSlide,
                title: 'Passing Data Back',
                titleTextStyle: const TextStyle(
                  fontSize: 32,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w600,
                ),
                desc: 'Dialog description here...',
                showCloseIcon: true,
                btnCancelOnPress: () {},
                btnOkOnPress: () {},
                autoDismiss: false,
                onDismissCallback: (type) {
                  Navigator.of(context).pop(type);
                },
                barrierColor: Colors.purple[900]?.withOpacity(0.54),
              ).show();
            },
          ),
        ],
      )),
    );
  }
}
