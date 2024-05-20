import 'package:flutter/material.dart';

class ChipsPage extends StatefulWidget {
  const ChipsPage({super.key});

  @override
  State<ChipsPage> createState() => _ChipsPageState();
}

class _ChipsPageState extends State<ChipsPage> {
  bool _isChoiceChipSelected = false;
  int _choiceChipSelectedIndex = 0;
  List<String> _choiceChipOptions = ['Option 1', 'Option 2', 'Option 3'];

  List<String> _inputChipLabels = ['Apple', 'Banana', 'Cherry'];

  List<String> _filterChipLabels = ['Apple', 'Banana', 'Cherry'];
  List<bool> _filterChipIsSelected = [false, false, false];

  String selectedActionChip = "";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.sizeOf(context);
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          height: size.height,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("Single Choice Chip"),
                ChoiceChip(
                  label: const Text('Choice Chip'),
                  selected: _isChoiceChipSelected,
                  onSelected: (_) {
                    _isChoiceChipSelected = _;
                    setState(() {});
                  },
                ),
                Text("List Choice Chip"),
                Wrap(
                    children: List<Widget>.generate(_choiceChipOptions.length,
                        (index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 2),
                    child: ChoiceChip(
                      label: Text(_choiceChipOptions[index]),
                      labelStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                      backgroundColor: Colors.orangeAccent,
                      checkmarkColor: Colors.green,
                      selectedColor: Colors.deepOrangeAccent,
                      selected: _choiceChipSelectedIndex == index,
                      onSelected: (bool selected) {
                        setState(() {
                          _choiceChipSelectedIndex =
                              (selected ? index : _choiceChipSelectedIndex)!;
                        });
                      },
                    ),
                  );
                })),
                SizedBox(
                  height: 20.0,
                ),
                Text("input Chip"),
                Wrap(
                    spacing: 8.0,
                    runSpacing: 4.0,
                    children: _inputChipLabels.map((String label) {
                      return InputChip(
                        avatar: CircleAvatar(
                          backgroundColor: Colors.blue.shade900,
                          child: Text(label[0].toUpperCase()),
                        ),
                        label: Text(label),
                        onDeleted: () {
                          setState(() {
                            _inputChipLabels.removeWhere((String entry) {
                              return entry == label;
                            });
                          });
                        },
                      );
                    }).toList()),
                SizedBox(
                  height: 20.0,
                ),
                Text("filter Chip"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: List<Widget>.generate(_filterChipLabels.length,
                      (int index) {
                    return FilterChip(
                      label: Text(_filterChipLabels[index]),
                      selected: _filterChipIsSelected[index],
                      onSelected: (bool selected) {
                        setState(() {
                          _filterChipIsSelected[index] = selected;
                        });
                      },
                    );
                  }),
                ),
                SizedBox(
                  height: 20.0,
                ),
                Text("action Chip"),
                Wrap(
                  spacing: 8.0,
                  runSpacing: 4.0,
                  children: _filterChipLabels.map((String label) {
                    return ActionChip(
                      label: Text(label),
                      onPressed: () {
                        print('$label chip pressed.');

                        setState(() {
                          selectedActionChip = '$label chip pressed.';
                        });

                      },
                    );
                  }).toList(),
                ),
                Text(selectedActionChip)
              ],
            ),
          ),
        ),
      ),
    );
  }
}
