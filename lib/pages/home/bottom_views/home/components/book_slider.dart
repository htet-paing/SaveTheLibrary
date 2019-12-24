import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/built_book_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/pages/home/bottom_views/home/home_view_model.dart';
import 'package:save_the_library/widgets/horizontal_slider.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class BookSlider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 360.0,
      child: Container(
        child: Consumer<HomeViewModel>(
          builder: (context, homeViewModel, _) {
            return HorizontalSlider<BuiltBook>(
              items: homeViewModel.bookList,
              title: "Book Reviews",
              itemBuilder: (context, book) {
                return InkWell(
                  child: Container(
                    width: 160.0,
                    //TODO: custom card and container's properties goes here
                    child: Card(
                      child: Stack(
                        children: <Widget>[
                          CachedNetworkImage(
                            imageUrl:
                                'https://savethelibrarymyanmar.org/${book.featureImagePath}',
                            fit: BoxFit.cover,
                          ),
                          Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                              begin: Alignment.bottomCenter,
                              end: Alignment.topCenter,
                              colors: [
                                Colors.black87,
                                Colors.black54,
                                const Color(0x00000000),
                              ],
                            )),
                            //Text('${book.bookName}')
                          ),
                          Padding(
                              padding: EdgeInsets.only(top: 140.0, left: 5.0),
                              child: Text(
                                "${book.bookName}",
                                style: TextStyle(color: Colors.white),
                              ))
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
            );
          },
        ),
      ),
    );
  }
}
