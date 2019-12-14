import 'package:cached_network_image/cached_network_image.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/library/built_library_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class LibrariesSliderWidget extends StatefulWidget {
  LibrariesSliderWidget({Key key}) : super(key: key);

  @override
  _LibrariesSliderWidgetState createState() => _LibrariesSliderWidgetState();
}

class _LibrariesSliderWidgetState extends State<LibrariesSliderWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: Container(
        child: FutureBuilder<Response<BuiltLibraryList>>(
          future: Provider.of<ApiService>(context).getLibraries(),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){

              return SmartSlider(//BuiltPdfList
                title: "Libraries",
                onGet: () => snapshot,
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
                              imageUrl: 'https://savethelibrarymyanmar.org/images/${library.image}',
                              fit: BoxFit.cover,
                              height: 230.0,//change according to the width of the image cards
                            ),
                            Text('${library.name}')
                          ],
                        ),
                      ),
                    ),
                    onTap: () => Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context) => BookDetailPage(//not finished
                          bookId: library.id,
                        ),
                      ),
                    ),
                  );
                }
              );
            } else {
                return SizedBox(
                  height: 50.0,
                  width: 50.0,
                  child: Center(child: CircularProgressIndicator())
                );
            }
          } 
        ),
      ),
    );
  }
}