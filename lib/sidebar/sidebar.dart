import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  @override
  Drawer build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: Colors.green[300],
            ),
            accountEmail: Text("reachme@abhijit-kar.com"),
            accountName: Text("Abhijit Kar"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.green[200],
              backgroundImage: NetworkImage(
                  "https://www.abhijit-kar.com/assets/images/abhijit-kar.png"),
            ),
          ),
          ListTile(
            trailing: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: Icon(Icons.archive),
            title: Text('Archive'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: Icon(Icons.import_contacts),
            title: Text('Import Contacts'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: Icon(Icons.group_add),
            title: Text('Create Group'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            trailing: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
