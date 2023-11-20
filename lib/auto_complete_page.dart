
import 'package:flutter/material.dart';

class AutoCompletePage extends StatelessWidget {
  const AutoCompletePage({Key? key}) : super(key: key);

  static const List<String> listItems =["apple","banana","orange" ,"cucumber" , "address"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Autocomplete<String>(
          optionsBuilder: (TextEditingValue textEditingValue){
            if(textEditingValue.text ==""){
              return const Iterable<String>.empty();
            }

            return listItems.where((String item){
              return item.contains(textEditingValue.text.toLowerCase());
            });

          },

          onSelected: (String item){
            print("the $item was selected");
          } ,
        ),
      ),
    );
  }
}
