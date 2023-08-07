import 'package:flutter/material.dart';
import 'package:ljl_day01_2/pages/register.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Center(
            child: Image.asset("images/Logo.png"),
          ),
          Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFormField(
                    maxLines: 1,
                    decoration: const InputDecoration(
                        labelText: "手机号",
                        hintText: "请输入手机号",
                        labelStyle: TextStyle(
                            color: Color.fromRGBO(209, 207, 205, 1),
                            fontSize: 20),
                        prefixIcon: Icon(
                          Icons.phone,
                          color: Color.fromRGBO(209, 207, 205, 1),
                        ),
                        border: OutlineInputBorder(
                          //圆角边框
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          borderSide: BorderSide(color: Colors.black, width: 2),
                        )),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  TextFormField(
                      maxLines: 1,
                      decoration: const InputDecoration(
                          labelText: "密码",
                          hintText: "请输入密码",
                          labelStyle: TextStyle(
                              color: Color.fromRGBO(209, 207, 205, 1),
                              fontSize: 20),
                          prefixIcon: Icon(
                            Icons.key,
                            color: Color.fromRGBO(209, 207, 205, 1),
                          ),
                          border: OutlineInputBorder(
                            //圆角边框
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide:
                                BorderSide(color: Colors.black, width: 2),
                          )
                      ),
                    ),
                  const SizedBox(
                    height: 60,
                  ),
                  Container(
                    height: 60,
                    width: 400,
                    margin: const EdgeInsets.only(bottom: 10),
                    child: ElevatedButton(
                        style: ButtonStyle(
                            // backgroundColor: MaterialStateProperty.all(color:Colors.red),
                            backgroundColor: MaterialStateProperty.all(
                                const Color.fromRGBO(116, 102, 229, 1)),
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ))),
                        onPressed: null,
                        child: const Text(
                          "登录",
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        )),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("忘记密码",
                          style: TextStyle(
                              color: Color.fromRGBO(119, 117, 117, 1),
                              fontSize: 14)),
                      // Text("新用户注册",style:TextStyle(color: Color.fromRGBO(119, 117, 117, 1),fontSize: 14),),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (BuildContext context) {
                            return RegisterPage();
                          }));
                        },
                        child: const Text(
                          "新用户注册",
                          style: TextStyle(
                              color: Color.fromRGBO(119, 117, 117, 1),
                              fontSize: 14),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 60,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "-------其他登录方式-------",
                        style: TextStyle(
                            color: Color.fromRGBO(119, 117, 117, 1),
                            fontSize: 16),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 60),
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(211, 204, 253, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          "images/qq.png",
                          color: Colors.white,
                          scale: 5,
                        ),
                      ),
                      Container(
                        width: 60,
                        height: 60,
                        decoration: BoxDecoration(
                          color: const Color.fromRGBO(211, 204, 253, 1),
                          borderRadius: BorderRadius.circular(30),
                        ),
                        child: Image.asset(
                          "images/wx.png",
                          color: Colors.white,
                          scale: 5,
                        ),
                      )
                    ],
                  )
                ],
              ))
        ],
      ),
    );
  }
}
