import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/pdf/pdf.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/pages/book_detail/book_detail_page.dart';
import 'package:save_the_library/pages/home/bottom_views/home/home_view_model.dart';
import 'package:save_the_library/pages/resource_center/resource_center_page.dart';
import 'package:save_the_library/widgets/horizontal_slider.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

class ResourceSlider extends StatefulWidget {
  ResourceSlider({Key key}) : super(key: key);

  @override
  _ResourceSliderState createState() => _ResourceSliderState();
}

class _ResourceSliderState extends State<ResourceSlider> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.0,
      child: Container(
        child: Consumer<HomeViewModel>(
          builder: (context, homeViewModel, _) {
            return HorizontalSlider<BuiltPdf>(
              //BuiltPdfList
              items: homeViewModel.pdfList,
              title: "Resources Center",
              itemBuilder: (context, pdfInfo) {
                return InkWell(
                  child: Container(
                    width: 160.0,
                    //TODO: custom card and container's properties goes here
                    child: Card(
                      child: Wrap(
                        children: <Widget>[
                          CachedNetworkImage(
                            imageUrl:
                                'https://savethelibrarymyanmar.org/images/${pdfInfo.image}',
                            fit: BoxFit.cover,
                            height:
                                230.0, //change according to the width of the image cards
                          ),
                          Text('${pdfInfo.pdfTitle}')
                        ],
                      ),
                    ),
                  ),
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ResourceCenterPage(),
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
