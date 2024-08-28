import 'package:flutter/material.dart';

class TabBarItem1 extends BottomNavigationBarItem {
  TabBarItem1(String title, String iconname):
      super(
        icon: Icon(Icons.home),
        label: title
      );
}

class TabBarItem2 extends BottomNavigationBarItem {
  TabBarItem2(String title, String iconname):
        super(
          icon: Icon(Icons.movie),
          label: title
      );
}

class TabBarItem3 extends BottomNavigationBarItem {
  TabBarItem3(String title, String iconname):
        super(
          icon: Icon(Icons.group),
          label: title
      );
}

class TabBarItem4 extends BottomNavigationBarItem {
  TabBarItem4(String title, String iconname):
        super(
          icon: Icon(Icons.mark_email_unread),
          label: title
      );
}

class TabBarItem5 extends BottomNavigationBarItem {
  TabBarItem5(String title, String iconname):
        super(
          icon: Icon(Icons.people),
          label: title
      );
}