import 'package:flutter/material.dart';

void navigate(BuildContext context,Function ()newpage) {
  Navigator.push(context, MaterialPageRoute(builder: (context) => newpage()));
}
