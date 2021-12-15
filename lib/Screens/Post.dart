import 'package:flutter/material.dart';
// import 'package:linked_in/src/MainPageScreen.dart';
// import 'package:linked_in/widgets/appButtons.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Post extends StatelessWidget {
  // final Post post;
  // PostCard(this.post);

  void _settingModalBottomSheet(context) {
    showModalBottomSheet(
        context: context,
        builder: (BuildContext bc) {
          return Container(
            child: Wrap(
              children: <Widget>[
                ListTile(
                    leading: Icon(Icons.save),
                    title: Text('Save'),
                    onTap: () => {}),
                ListTile(
                  leading: Icon(Icons.share),
                  title: Text('Share'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.remove_red_eye_outlined),
                  title: Text('Who else can this post?'),
                  onTap: () => {},
                ),
                ListTile(
                  leading: Icon(Icons.flag),
                  title: Text('Report'),
                  onTap: () => {},
                ),
              ],
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(color: Colors.white),
        margin: EdgeInsets.only(top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                children: [
                  Flexible(
                    child: Row(
                      children: [
                        CircleAvatar(
                            foregroundImage: NetworkImage(
                                "https://images.unsplash.com/photo-1599566150163-29194dcaad36?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTh8fHBlcnNvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60"),
                            backgroundColor: Colors.grey[350],
                            minRadius: 30),
                        Container(
                          child: Column(
                            children: [
                              Text(
                                "Ahmed Emad",
                                overflow: TextOverflow.fade,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                              Text(
                                "25",
                              ),
                            ],
                            crossAxisAlignment: CrossAxisAlignment.start,
                          ),
                          margin: EdgeInsets.only(left: 10),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Icon(Icons.notifications),
                    onPressed: () {
                      _settingModalBottomSheet(context);
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: Text("eee"
                  // style: TextStyle(fontWeight: FontWeight.w600),
                  ),
            ),
            Container(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 300,
                child: Container(
                  //     child: TextField(
                  //   maxLines: 8,
                  //   decoration: InputDecoration.collapsed(hintText: "Enter your text here"),
                  // ),
                  child: TextField(
                    maxLines: 8,
                    decoration: InputDecoration.collapsed(
                        hintText: "Enter your text here"),
                  ),
                ),
              ),
              decoration: BoxDecoration(color: Colors.grey[350]),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: Row(
                //   crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Text(
                        '147',
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                  Text('4 comments')
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Flexible(
                    // child: AppButton(
                    //     label: "Send", icon: Icons.send, onPress: () {})),
                    child: IconButton(
                        // label: "Share",
                        icon: Icon(Icons.send),
                        // icon: FontAwesomeIcons.share,
                        onPressed: () {})),
              ],
            )
          ],
        ));
  }
}
