import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:save_the_library/models/api/library/library.dart';
import 'package:save_the_library/pages/library_detail/library_detail_page.dart';

class LibraryItem extends StatelessWidget {
  final BuiltLibrary library;
  const LibraryItem({Key key, this.library}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => LibraryDetailPage(
              libraryId: library.id,
            ),
          ),
        ),
      },
      child: Padding(
        padding: const EdgeInsets.only(left: 5.0, right: 5.0, bottom: 5.0),
        child: Card(
          elevation: 5.0,
          child: Column(
            children: <Widget>[
              Container(
                height: 140.0,
                child: CachedNetworkImage(
                  imageUrl:
                      'https://savethelibrarymyanmar.org/images/${library.image}',
                  fit: BoxFit.cover,
                  width: 1000.0,
                ),
              ),
              // Shown library name on Library List Page
              Padding(
                padding: const EdgeInsets.all(3.0),
                child: Text(
                  library.name,
                  style: TextStyle(fontFamily: 'Pyidaungsu', fontSize: 15.0),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 5.0),
                child: Text(
                  library.townshipName,
                  style: TextStyle(
                      fontFamily: 'Pyidaungsu',
                      fontSize: 15.0,
                      color: Colors.black38),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//Commented Dec 10

// Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(top: 10.0, left: 10.0, bottom: 10.0),
//                       child: Text(
//                         "Save the Library",
//                         style: TextStyle(color: Colors.red),
//                       ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(top: 10.0, right: 10.0, bottom: 10.0),
//                       child: Text(
//                         "7 December, 2019",
//                         style: TextStyle(color: Colors.red),
//                       ),
//                     ),
//                   ],
//                 ),

//   Widget build(BuildContext context) {
//     return Card(
//       child: ListTile(
//         title: Text(library.name),
//         onTap: () {
//           Navigator.push(
//             context,
//             MaterialPageRoute(
//               builder: (context) => LibraryDetailPage(
//                 libraryId: library.id,
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
