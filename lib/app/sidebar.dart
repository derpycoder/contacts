import 'package:flutter/material.dart';

import './shared/values/colors.dart';
import './screens/profile.dart';

class Sidebar extends StatelessWidget {
  @override
  Drawer build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(
              color: rawGreen,
            ),
            accountEmail: Text("john@doe.com"),
            accountName: Text("John Doe"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: rawGreen,
              backgroundImage: AssetImage(
                  'assets/images/placeholders/green_male_avatar.png'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('Profile'),
            trailing: Icon(Icons.edit),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
              );
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
                    style: TextStyle(color: flaccidBlack),
                  ),
                  Icon(
                    Icons.favorite,
                    color: ripePink,
                  ),
                ],
              ),
              Center(
                child: Text(
                  "Abhijit Kar, 2018",
                  style: TextStyle(color: flaccidBlack),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
