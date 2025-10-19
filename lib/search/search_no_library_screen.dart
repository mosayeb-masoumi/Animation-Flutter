import 'package:flutter/material.dart';

class SearchNoLibraryScreen extends StatefulWidget {
  const SearchNoLibraryScreen({super.key});

  @override
  State<SearchNoLibraryScreen> createState() => _SearchNoLibraryScreenState();
}

class _SearchNoLibraryScreenState extends State<SearchNoLibraryScreen> {
  final TextEditingController _controller = TextEditingController();
  final FocusNode _focusNode = FocusNode();
  final List<String> allItems = [
    'Apple',
    'Ananas',
    'Banana',
    'Orange',
    'Grapes',
    'Mango',
    'Mamito',
    'Pineapple'
  ];

  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    _controller.addListener(_onSearchChanged);
  }

  void _onSearchChanged() {
    final query = _controller.text.toLowerCase();
    setState(() {
      filteredItems = allItems
          .where((item) => item.toLowerCase().contains(query))
          .toList();
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Custom Search Dropdown")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                focusNode: _focusNode,
                controller: _controller,
                decoration: const InputDecoration(
                  labelText: 'Search item',
                  border: OutlineInputBorder(),
                ),
              ),
              if (_focusNode.hasFocus && filteredItems.isNotEmpty)
                Container(
                  margin: const EdgeInsets.only(top: 5),
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: filteredItems.length,
                    itemBuilder: (context, index) {
                      final item = filteredItems[index];
                      return ListTile(
                        title: Text(item),
                        onTap: () {
                          _controller.text = item;
                          _focusNode.unfocus();
                          setState(() => filteredItems.clear());
                        },
                      );
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}