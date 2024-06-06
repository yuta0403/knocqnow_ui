import 'package:flutter/material.dart';
//画面遷移は未実装

class FriendProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Neumorphism style colors
    Color backgroundColor = Colors.grey[300]!;
    Color shadowLightColor = Colors.white;
    Color shadowDarkColor = Colors.grey.shade500;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              // Profile picture
              neumorphicContainer(
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      NetworkImage('https://example.com/profile.jpg'),
                      //TODO:LINEのように画像を入れられる
                ),
                shadowLightColor: shadowLightColor,
                shadowDarkColor: shadowDarkColor,
              ),
              SizedBox(height: 20),
              // Name
              Text(
                '上戸 雄太',//TODO:ボタンにする
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              // Friend count
              Text(
                'UserID',//TODO:ボタンにする
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              Text(
                'ログイン状況',//TODO:ボタンにする
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[600],
                ),
              ),
              SizedBox(height: 30),
              // Buttons for actions
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  neumorphicIcon(//ボタンにする予定
                    icon: Icons.star,
                    context: context,
                    shadowLightColor: shadowLightColor,
                    shadowDarkColor: shadowDarkColor,
                  ),
                  neumorphicIcon(//ボタンにする予定
                    icon: Icons.notifications_active,
                    context: context,
                    shadowLightColor: shadowLightColor,
                    shadowDarkColor: shadowDarkColor,
                  ),
                  neumorphicIcon(//ボタンにする予定
                    icon: Icons.settings,
                    context: context,
                    shadowLightColor: shadowLightColor,
                    shadowDarkColor: shadowDarkColor,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget neumorphicContainer(
      {required Widget child,
      required Color shadowLightColor,
      required Color shadowDarkColor}) {
    return Container(
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: shadowLightColor,
            offset: Offset(-4, -4),
            blurRadius: 15,
          ),
          BoxShadow(
            color: shadowDarkColor,
            offset: Offset(4, 4),
            blurRadius: 15,
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: child,
      ),
    );
  }

  Widget neumorphicIcon(
      {required IconData icon,
      required BuildContext context,
      required Color shadowLightColor,
      required Color shadowDarkColor}) {
    return GestureDetector(
      onTap: () {
        // Add your action here
      },
      child: neumorphicContainer(
        child: Icon(icon, size: 30),
        shadowLightColor: shadowLightColor,
        shadowDarkColor: shadowDarkColor,
      ),
    );
  }
}
