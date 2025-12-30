import 'package:flutter/material.dart';

class AnimatedListPage extends StatefulWidget {
  const AnimatedListPage({super.key});

  @override
  State<AnimatedListPage> createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> with SingleTickerProviderStateMixin {

  final GlobalKey<AnimatedListState> _listKey = GlobalKey<AnimatedListState>();
  final List<String> _items = [];
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _addItem() {
    final int index = _items.length;
    _items.add('Item ${index + 1}');
    _listKey.currentState!.insertItem(index);

    _controller.forward(from: 0);
  }

  void _removeItem(int index) {
    final removedItem = _items.removeAt(index);

    _listKey.currentState!.removeItem(
      index,
          (context, animation) {
        return _buildItem(
          removedItem,
          animation,
          removing: true,
        );
      },
      duration: const Duration(milliseconds: 400),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('AnimatedList Example')),
      body: AnimatedList(
        key: _listKey,
        initialItemCount: _items.length,
        itemBuilder: (context, index, animation) {
          return _buildItem(_items[index], animation);
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addItem,
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildItem(
      String item,
      Animation<double> animation, {
        bool removing = false,
      }) {
    final fade = Tween<double>(begin: 0, end: 1).animate(animation);
    final slide = Tween<Offset>(
      begin: const Offset(1, 0),
      end: Offset.zero,
    ).animate(animation);

    return FadeTransition(
      opacity: fade,
      child: SlideTransition(
        position: slide,
        child: Card(
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          child: ListTile(
            title: Text(item),
            trailing: IconButton(
              icon: const Icon(Icons.delete),
              onPressed: removing ? null : () => _removeItem(_items.indexOf(item)),
            ),
          ),
        ),
      ),
    );
  }
}
