import 'package:flutter/cupertino.dart';

/// Team Class*/
class Team with ChangeNotifier{
  final String name;
  final String description;
  Team(this.name,this.description);
}