import 'package:cached_network_image/cached_network_image.dart';
import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/built_book_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/pages/news_detail.dart/news_detail_page.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class BookReviewsWidget extends StatefulWidget {
  BookReviewsWidget({Key key}) : super(key: key);

  @override
  _BookReviewsWidgetState createState() => _BookReviewsWidgetState();
}

class _BookReviewsWidgetState extends State<BookReviewsWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.0,
      child: Container(
        child: FutureBuilder<Response<BuiltBookList>>(
          future: Provider.of<ApiService>(context).getBooks(1),
          builder: (context, snapshot) {
            if(snapshot.connectionState == ConnectionState.done){
              return SmartSlider(//BuiltBooksList
                title: "Book Reviews",
                onGet: () => snapshot,
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
                              imageUrl: 'https://savethelibrarymyanmar.org/${book.featureImagePath}',
                              fit: BoxFit.cover,
                            ),
                            Text('${book.bookName}')
                          ],
                        ),
                      ),
                    ),
                    onTap: () => Navigator.push(context, 
                      MaterialPageRoute(
                        builder: (context) => BookDetailPage(//not finished
                          bookId: book.id,
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