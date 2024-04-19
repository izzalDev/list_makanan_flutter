import 'package:flutter/material.dart';
import 'package:list_makanan_flutter/list_item.dart';
import 'package:list_makanan_flutter/styles.dart';
import 'package:list_makanan_flutter/makanan.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 20),
        const Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Icon(Icons.list_alt_sharp, size: 30),
          SizedBox(width: 10),
          Text('List Kuliner', style: textHeader1),
        ]),
        Expanded(
          child: Padding(
              padding: EdgeInsets.all(20),
              child: ListView.builder(
                itemCount: listMakanan.length,
                itemBuilder: (context, index) {
                  return ListItem(makanan: listMakanan[index]);
                },
              )),
        )
      ],
    );
  }
}
