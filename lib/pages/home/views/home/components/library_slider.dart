import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/library/built_library_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class LibrarySlider extends StatefulWidget {
  LibrarySlider({Key key}) : super(key: key);

  @override
  _LibrarySliderState createState() => _LibrarySliderState();
}

class _LibrarySliderState extends State<LibrarySlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: Container(
        child: SmartSlider(
          //BuiltPdfList
          title: "Libraries",
          onGet: (_) => Provider.of<ApiService>(context).getLibraries(),
          listGetter: (body) => body.data.toList(),
          itemBuilder: (context, item) {
            BuiltLibrary library = item as BuiltLibrary;
            return InkWell(
              child: Container(
                width: 160.0,
                //TODO: custom card and container's properties goes here
                child: Card(
                  child: Wrap(
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl:
                            'https://savethelibrarymyanmar.org/images/${library.image}',
                        fit: BoxFit.cover,
                        height:
                            230.0, //change according to the width of the image cards
                      ),
                      Text('${library.name}')
                    ],
                  ),
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(
                    //not finished
                    bookId: library.id,
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
