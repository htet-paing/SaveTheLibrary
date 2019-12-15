import 'package:cached_network_image/cached_network_image.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/built_book_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/pages/news_detail.dart/news_detail_page.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class BookSlider extends StatefulWidget {
  BookSlider({Key key}) : super(key: key);

  @override
  _BookSliderState createState() => _BookSliderState();
}

class _BookSliderState extends State<BookSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.0,
      child: Container(
        child: SmartSlider(
          //BuiltBooksList
          title: "Book Reviews",
          onGet: (_) => Provider.of<ApiService>(context).getBooks(1),
          listGetter: (body) => body.data.toList(),
          itemBuilder: (context, item) {
            BuiltBook book = item as BuiltBook;
            return InkWell(
              child: Container(
                width: 160.0,
                //TODO: custom card and container's properties goes here
                child: Card(
                  child: Wrap(
                    children: <Widget>[
                      CachedNetworkImage(
                        imageUrl:
                            'https://savethelibrarymyanmar.org/${book.featureImagePath}',
                        fit: BoxFit.cover,
                      ),
                      Text('${book.bookName}')
                    ],
                  ),
                ),
              ),
              onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailPage(
                    //not finished
                    bookId: book.id,
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
