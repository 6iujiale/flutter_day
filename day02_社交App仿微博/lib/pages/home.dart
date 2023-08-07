import 'package:flutter/material.dart';
import 'package:ljl_day02_2/pages/me.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage> {
  //朋友圈九宫格
  List<Widget> _pyq() {
    List<Widget> list = [];
    for (int i = 1; i < 10; i++) {
      list.add(
        Image.asset("Images/content${i.toString()}.jpg", fit: BoxFit.cover),
      );
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(245, 245, 245, 1),
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "主页",
          style: TextStyle(
            fontSize: 26,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        leading: ClipOval(
          child: Image.asset("Images/Avatar.jpg"),
        ),
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const UserInfos(),
                Padding(
                    padding: EdgeInsets.fromLTRB(10, 0, 10, 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "冲冲冲~旅游冲浪~",
                          style: TextStyle(fontSize: 20),
                        ),
                        GridView.count(
                          crossAxisCount: 3,
                          shrinkWrap: true,
                          crossAxisSpacing: 5, //水平组件间距
                          mainAxisSpacing: 5, //垂直组件间距
                          children: _pyq(),
                        ),
                        const Divider(
                          color: Color.fromRGBO(243, 243, 243, 1),
                          // color: Colors.black,
                          thickness: 2, //粗细x
                        ),
                        Comment_section(),
                      ],
                    )),
              ],
            ),
          ),
          const SizedBox(height: 25),
          Container(
            color: Colors.white,
            child: Column(
              children: [
                const UserInfos(),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "中国牛",
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(
                        color: Color.fromRGBO(243, 243, 243, 1),
                        // color: Colors.black,
                        thickness: 2, //粗细x
                      ),
                      Comment_section(),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

//用户信息
class UserInfos extends StatelessWidget {
  const UserInfos({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: ClipOval(
        child: Image.asset(
          "Images/Avatar.jpg",
          height: 45,
          width: 45,
        ),
      ),
      title: const Text(
        "HHH",
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      subtitle: const Text("08-28 来自Android",
          style: TextStyle(color: Color.fromRGBO(172, 172, 172, 1))),
    );
  }
}

//评论区
// Comment_section

class Comment_section extends StatefulWidget {
  const Comment_section({super.key});

  @override
  State<Comment_section> createState() => _Comment_sectionState();
}

class _Comment_sectionState extends State<Comment_section> {
  bool isLiked = false;
  int count = 1;
  var isLiked2 = false;
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      childAspectRatio: 4.1,
      shrinkWrap: true,
      children: [
        ElevatedButton.icon(
          onPressed: () {},
          icon: Image.asset("Images/ic_home_forward.png"),
          label: const Text(
            "转发",
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {},
          icon: Image.asset("Images/ic_home_comment.webp"),
          label: const Text(
            "评论",
            style: TextStyle(color: Colors.black),
          ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
        ElevatedButton.icon(
          onPressed: () {
            setState(() {
              this.isLiked = !this.isLiked;
              if (this.isLiked = true) {
                this.isLiked2 = true;
              }
              // this.isLiked2=!this.isLiked2;
              print("我是${this.isLiked2}");
            });
          },
          // icon: Image.asset("Images/ic_home_like.webp"),
          icon: isLiked
              ? Image.asset("Images/ic_home_liked.webp")
              : Image.asset("Images/ic_home_like.webp"),
          label: isLiked2
              ? Text(
                  "${count++}",
                  style: const TextStyle(color: Colors.red),
                )
              : const Text(
                  "点赞",
                  style: TextStyle(color: Colors.black),
                ),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.white),
          ),
        ),
      ],
    );
  }
}
