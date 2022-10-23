import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:tech_tutor/Profile/constants/constants.dart';
import 'package:tech_tutor/Profile/profile_list_item.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kAppPrimaryColor,
      body: Stack(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(25),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppBarButton(
                        icon: Icons.arrow_back,
                      ),
                    ],
                  ),
                ),
                AvatarImage(),
                SizedBox(
                  height: 30,
                ),
                SocialIcons(),
                SizedBox(height: 30),
                Text(
                  'Ruchika',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.w700,
                      fontFamily: "Poppins"),
                ),
                Text(
                  '@CS_Jack7',
                  style: TextStyle(fontWeight: FontWeight.w300),
                ),
                SizedBox(height: 15),
                Text(
                  'A Passionate Researcher and Developer',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontFamily: "Poppins"),
                ),
                ProfileListItems(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class AppBarButton extends StatelessWidget {
  final IconData icon;

  const AppBarButton({required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 55,
      height: 55,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: kAppPrimaryColor,
          boxShadow: [
            BoxShadow(
              color: kLightBlack,
              offset: Offset(1, 1),
              blurRadius: 10,
            ),
            BoxShadow(
              color: kWhite,
              offset: Offset(-1, -1),
              blurRadius: 10,
            ),
          ]),
      child: Icon(
        icon,
        color: fCL,
      ),
    );
  }
}

class AvatarImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      padding: EdgeInsets.all(8),
      decoration: avatarDecoration,
      child: Container(
        decoration: avatarDecoration,
        padding: EdgeInsets.all(3),
        child: Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              image: AssetImage('assets/images/user.png'),
            ),
          ),
        ),
      ),
    );
  }
}

class SocialIcons extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        SocialIcon(
          color: Color(0xFF102397),
          iconData: LineAwesomeIcons.github,
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFFff4f38),
          iconData: Icons.account_box,
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFF38A1F3),
          iconData: twitter,
          onPressed: () {},
        ),
        SocialIcon(
          color: Color(0xFF2867B2),
          iconData: linkedin,
          onPressed: () {},
        )
      ],
    );
  }
}

class SocialIcon extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final Function onPressed;

  SocialIcon(
      {required this.color, required this.iconData, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return new Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: Container(
        width: 45.0,
        height: 45.0,
        decoration: BoxDecoration(shape: BoxShape.circle, color: color),
        child: RawMaterialButton(
          shape: CircleBorder(),
          onPressed: () => print("tapped"),
          child: Icon(iconData, color: Colors.white),
        ),
      ),
    );
  }
}

class ProfileListItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView(
        children: <Widget>[
          ProfileListItem(
            icon: LineAwesomeIcons.user_shield,
            text: 'My Account',
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.history,
            text: 'Settings',
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.question_circle,
            text: 'Help',
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.cog,
            text: 'Settings',
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.user_plus,
            text: 'Invite a Friend',
          ),
          ProfileListItem(
            icon: LineAwesomeIcons.alternate_sign_out,
            text: 'Logout',
            hasNavigation: false,
          ),
        ],
      ),
    );
  }
}
