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
    return Column(
      children: <Widget>[
        ListTile(
          leading: CachedNetworkImage(
            width: 100.0,
            height: 56.0,
            imageUrl:
                'https://savethelibrarymyanmar.org/images/${library.image}',
            fit: BoxFit.cover,
            alignment: Alignment.center,
          ),
          title: Text(
            library.name,
            overflow: TextOverflow.ellipsis,
            softWrap: false,
            // style: TextStyle(fontSize: 14),
          ),
          isThreeLine: true,
          subtitle: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('${library.townshipName}'),
              Text('${library.villageTractName}'),
            ],
          ),
          trailing: IconButton(
            icon: Icon(Icons.bookmark_border),
            onPressed: () {
              //TODO: link with HIVE
            },
            tooltip: 'save library',
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LibraryDetailPage(
                  libraryId: library.id,
                ),
              ),
            );
          },
        ),
        Divider()
      ],
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
