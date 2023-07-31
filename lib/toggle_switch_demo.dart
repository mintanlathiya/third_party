import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';

class ToggleSwitchDemoUi extends StatefulWidget {
  const ToggleSwitchDemoUi({super.key});

  @override
  State<ToggleSwitchDemoUi> createState() => _ToggleSwitchDemoUiState();
}

class _ToggleSwitchDemoUiState extends State<ToggleSwitchDemoUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
          child: Center(
              child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Basic toggle switch:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  totalSwitches: 3,
                  labels: const ['America', 'Canada', 'Mexico'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Basic toggle switch with custom height and font size:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  minHeight: 90.0,
                  fontSize: 16.0,
                  initialLabelIndex: 1,
                  activeBgColor: const [Colors.green],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.grey[900],
                  totalSwitches: 3,
                  labels: const ['Tall', 'Grande', 'Venti'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'With text or icon and custom widths:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  customWidths: const [90.0, 50.0],
                  cornerRadius: 20.0,
                  activeBgColors: const [
                    [Colors.cyan],
                    [Colors.redAccent]
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  labels: const ['YES', ''],
                  icons: const [null, FontAwesomeIcons.times],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'With icons, text and different active background colors:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  initialLabelIndex: 1,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  labels: const ['Male', 'Female'],
                  icons: const [FontAwesomeIcons.mars, FontAwesomeIcons.venus],
                  activeBgColors: const [
                    [Colors.blue],
                    [Colors.pink]
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'With border color, border width, icons, custom height and different active background colors:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  minHeight: 70.0,
                  initialLabelIndex: 2,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 3,
                  icons: const [
                    FontAwesomeIcons.mars,
                    FontAwesomeIcons.venus,
                    FontAwesomeIcons.transgender
                  ],
                  iconSize: 30.0,
                  borderWidth: 2.0,
                  borderColor: const [Colors.blueGrey],
                  activeBgColors: const [
                    [Colors.blue],
                    [Colors.pink],
                    [Colors.purple]
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'With gradient border color, divider color and gradient active background colors:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  minHeight: 70.0,
                  initialLabelIndex: 0,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 3,
                  icons: const [
                    FontAwesomeIcons.facebook,
                    FontAwesomeIcons.twitter,
                    FontAwesomeIcons.instagram
                  ],
                  iconSize: 30.0,
                  borderColor: const [
                    Color(0xff3b5998),
                    Color(0xff8b9dc3),
                    Color(0xff00aeff),
                    Color(0xff0077f2),
                    Color(0xff962fbf),
                    Color(0xff4f5bd5)
                  ],
                  dividerColor: Colors.blueGrey,
                  activeBgColors: const [
                    [Color(0xff3b5998), Color(0xff8b9dc3)],
                    [Color(0xff00aeff), Color(0xff0077f2)],
                    [
                      Color(0xfffeda75),
                      Color(0xfffa7e1e),
                      Color(0xffd62976),
                      Color(0xff962fbf),
                      Color(0xff4f5bd5)
                    ]
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'With bounceInOut animation:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  minHeight: 70.0,
                  initialLabelIndex: 0,
                  cornerRadius: 20.0,
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  totalSwitches: 2,
                  icons: const [
                    FontAwesomeIcons.lightbulb,
                    FontAwesomeIcons.solidLightbulb,
                  ],
                  iconSize: 30.0,
                  activeBgColors: const [
                    [Colors.black45, Colors.black26],
                    [Colors.yellow, Colors.orange]
                  ],
                  animate: true,
                  // with just animate set to true, default curve = Curves.easeIn
                  curve: Curves.bounceInOut,
                  // animate must be set to true when using custom curve
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'With radius style:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  cornerRadius: 20.0,
                  activeBgColors: [
                    [Colors.green[800]!],
                    [Colors.red[800]!]
                  ],
                  activeFgColor: Colors.white,
                  inactiveBgColor: Colors.grey,
                  inactiveFgColor: Colors.white,
                  initialLabelIndex: 1,
                  totalSwitches: 2,
                  labels: const ['True', 'False'],
                  radiusStyle: true,
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'With custom text styles, null initial label, double tap to de-activate:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  cornerRadius: 20.0,
                  inactiveFgColor: Colors.white,
                  initialLabelIndex: null,
                  doubleTapDisable: true, // re-tap active widget to de-activate
                  totalSwitches: 3,
                  labels: const ['Normal', 'Bold', 'Italic'],
                  customTextStyles: const [
                    null,
                    TextStyle(
                        color: Colors.brown,
                        fontSize: 18.0,
                        fontWeight: FontWeight.w900),
                    TextStyle(
                        color: Colors.black,
                        fontSize: 16.0,
                        fontStyle: FontStyle.italic)
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'With custom icons:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  minWidth: 90.0,
                  minHeight: 90.0,
                  cornerRadius: 20.0,
                  activeBgColors: const [
                    [Color(0xfffdbb0a)],
                    [Colors.black54],
                    [Colors.white54]
                  ],
                  inactiveFgColor: Colors.white,
                  initialLabelIndex: 2,
                  totalSwitches: 3,
                  customIcons: const [
                    Icon(
                      FontAwesomeIcons.ccVisa,
                      color: Color(0xff1a1f71),
                      size: 55.0,
                    ),
                    Icon(
                      FontAwesomeIcons.ccMastercard,
                      color: Color(0xffF79E1B),
                      size: 55.0,
                    ),
                    Icon(
                      FontAwesomeIcons.ccAmex,
                      color: Color(0xff27AEE3),
                      size: 55.0,
                    )
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Vertical toggle switch with active border:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  activeBorders: [
                    Border.all(
                      color: Colors.purple.shade300,
                      width: 3.0,
                    ),
                    Border.all(
                      color: Colors.yellow.shade500,
                      width: 3.0,
                    ),
                    Border.all(
                      color: Colors.orange.shade300,
                      width: 3.0,
                    ),
                    Border.all(
                      color: Colors.blue.shade300,
                      width: 3.0,
                    ),
                  ],
                  activeFgColor: Colors.black54,
                  isVertical: true,
                  minWidth: 150.0,
                  radiusStyle: true,
                  cornerRadius: 20.0,
                  initialLabelIndex: 2,
                  activeBgColors: [
                    [Colors.purple.shade100],
                    [Colors.yellow.shade100],
                    [Colors.orange.shade100],
                    [Colors.blue.shade100]
                  ],
                  labels: const ['Spring', 'Summer', 'Fall', 'Winter'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Custom widths greater than device width:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Scrollbar(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: ToggleSwitch(
                        customWidths: const [300.0, 100.0, 100.0],
                        cornerRadius: 20.0,
                        activeBgColors: const [
                          [Colors.green],
                          [Colors.redAccent],
                          [Colors.blue]
                        ],
                        activeFgColor: Colors.white,
                        inactiveBgColor: Colors.grey,
                        inactiveFgColor: Colors.white,
                        labels: const [
                          'Yes, the statement above is true',
                          'False',
                          'Other'
                        ],
                        onToggle: (index) {
                          print('switched to: $index');
                        },
                      ),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Multi-line text with custom text style inheriting activeFgColor and inactiveFgColor:',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  minHeight: 100.0,
                  minWidth: 100.0,
                  activeBgColor: [Colors.blueAccent.shade200],
                  activeFgColor: Colors.yellow,
                  customTextStyles: const [TextStyle(fontSize: 15.0)],
                  multiLineText: true,
                  centerText: true,
                  totalSwitches: 2,
                  labels: const ['This is multi-line text.', 'One line'],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                ),
                const Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Text(
                    'Cancel toggle:',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                ToggleSwitch(
                  initialLabelIndex: 0,
                  inactiveBgColor: Colors.black54,
                  activeBgColor: const [Colors.black],
                  totalSwitches: 3,
                  minHeight: 80.0,
                  minWidth: 80.0,
                  customIcons: [
                    const Icon(
                      FontAwesomeIcons.bitcoin,
                      color: Color(0xFFF2A900),
                      size: 50.0,
                    ),
                    const Icon(
                      FontAwesomeIcons.ethereum,
                      color: Color(0xFF5ca6ce),
                      size: 50.0,
                    ),
                    Icon(
                      FontAwesomeIcons.dollarSign,
                      color: Colors.green.shade700,
                      size: 50.0,
                    )
                  ],
                  onToggle: (index) {
                    print('switched to: $index');
                  },
                  cancelToggle: (index) async {
                    String selection = index == 0
                        ? 'Bitcoin'
                        : index == 1
                            ? 'Ethereum'
                            : 'Fiat';
                    return await showDialog(
                      context: context,
                      builder: (dialogContext) => AlertDialog(
                        content: Text("Select $selection?"),
                        actions: [
                          TextButton(
                              child: const Text("No",
                                  style: TextStyle(color: Colors.red)),
                              onPressed: () {
                                Navigator.pop(dialogContext, true);
                              }),
                          TextButton(
                              child: const Text("Yes",
                                  style: TextStyle(color: Colors.black)),
                              onPressed: () {
                                Navigator.pop(dialogContext, false);
                              })
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
          )),
        ),
      ),
    );
  }
}
