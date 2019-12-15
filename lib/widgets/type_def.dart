import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';

typedef List<dynamic> ListGetter<T>(T body);
typedef Widget ItemBuilder(BuildContext context, dynamic item);
typedef Future<Response<T>> OnGet<T>(int page);
