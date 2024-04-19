import 'package:flutter/material.dart';
import 'package:list_makanan_flutter/detail_page.dart';
import 'package:list_makanan_flutter/makanan.dart';

class ListItem extends StatelessWidget {
  final Makanan makanan;

  const ListItem(
      {super.key,required this.makanan});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10)),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(255, 178, 178, 178),
              offset: Offset(1.0, 2.0),
              blurRadius: 6.0,
            ),
          ],
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 85,
              height: 75,
              color: Colors.grey,
              child: Image.asset(
                makanan.gambar,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  makanan.nama,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  makanan.deskripsi,
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailPage(makanan: makanan),
          ),
        );
      },
    );
  }
}
