import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:save_the_library/models/book/book.dart';
import 'package:save_the_library/models/book/built_book_list.dart';
import 'package:save_the_library/network/api_service.dart';
import 'package:save_the_library/widgets/smart_slider.dart';

import 'package:url_launcher/url_launcher.dart';

class ResourcesCenter extends StatefulWidget {
  ResourcesCenter({Key key}) : super(key: key);

  @override
  _ResourcesCenterState createState() => _ResourcesCenterState();
}

class _ResourcesCenterState extends State<ResourcesCenter> {

  @override
  Widget build(BuildContext context) {

    return Container(
      child: SmartSlider(//BuiltBooksList
        title: "Resources Center",
        onGet: (page) => Provider.of<ApiService>(context).getBooks(),
        listGetter: (body) => body.data.toList(),
        itemBuilder: (context, item) {
          BuiltBook book = item as BuiltBook;
          return Container(
            width: 160.0,              
          //TODO: custom card and container's properties goes here
            child: Card(
              child: Wrap(
                children: <Widget>[
                  Image.network('https://savethelibrarymyanmar.org/${book.featureImagePath}'),
                  Text('${book.bookName}')
                ],
              ),
            ),
          );
        }
      ),
    );
  } 

  Future<void> launchInBrowser(String url) async {
    if(await canLaunch(url)) { // methd from url_launcher
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
      );
    } else {
      throw 'Could not launch $url';
    }
  }
  
    
}

