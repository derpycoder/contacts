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
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.archive),
            title: Text('Archive'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.import_contacts),
            title: Text('Contacts'),
            trailing: Icon(Icons.offline_pin),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.group_add),
            title: Text('Add Group'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.mode_comment),
            title: Text('About'),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Made with",
                    style: TextStyle(color: Colors.black45),
                  ),
                  Icon(
                    Icons.favorite,
                    color: Colors.pinkAccent,
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Abhijit Kar, 2018",
                  style: TextStyle(color: Colors.black45),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
