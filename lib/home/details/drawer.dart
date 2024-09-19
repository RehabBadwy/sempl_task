import 'package:flutter/material.dart';

class DrawerExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          // Container مع صورة
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 40,
                left: 20,

              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage('https://via.placeholder.com',

                    ), // رابط للصورة
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kyan',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Kyan@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            ),
          ),
          // ListTile تحت الصورة
          Expanded(
            child: ListView(
              children: [
                ListTile(
                  leading: Icon(Icons.home),
                  title: Text('Home'),
                  onTap: () {
                    // الانتقال للصفحة الرئيسية
                  },
                ),
                ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Setting'),
                  onTap: () {
                    // الانتقال إلى صفحة الإعدادات
                  },
                ),
                ListTile(
                  leading: Icon(Icons.logout),
                  title: Text('Log out'),
                  onTap: () {
                    // تسجيل الخروج
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
