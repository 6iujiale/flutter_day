import 'package:flutter/material.dart';
import 'package:ljl_day01_2/pages/login.dart';

/*void main() {
  runApp(MaterialApp(
    home: RegisterPage(),
  ));
}*/

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  var check = true;
  var _passwd1;
  var _passwd2;


  void _regist() {}
  @override
  Widget build(BuildContext context) {
    bool flag = false;
    return Scaffold(
      body: ListView(children: [
        Center(
          child: Image.asset("images/Logo.png"),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          child: Column(
            children: [
              TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                    labelText: "邮箱号",
                    hintText: "请输入邮箱号",
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(209, 207, 205, 1), fontSize: 20),
                    prefixIcon: Icon(
                      Icons.email,
                      color: Color.fromRGBO(209, 207, 205, 1),
                    ),
                    border: OutlineInputBorder(
                      //圆角边框
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    )),
              ),
              SizedBox(height: 26),
              TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                    labelText: "手机号",
                    hintText: "请输入手机号",
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(209, 207, 205, 1), fontSize: 20),
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
              SizedBox(height: 26),
              TextFormField(
                  maxLines: 1,
                  obscureText: true,//隐藏文本
                  decoration: const InputDecoration(
                      labelText: "密码",
                      hintText: "请输入密码号",
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
                        borderSide: BorderSide(color: Colors.black, width: 2),
                      )),
                 /* obscureText: true,
                  onSaved: (value) {
                    _passwd1 = value;
                  },
                  validator: (value){
                    return value!.length<6 ? '密码长度不够6位' : null;
                  },*/
                ),
              SizedBox(height: 26),
              TextFormField(
                maxLines: 1,
                decoration: const InputDecoration(
                    labelText: "确认密码",
                    hintText: "请输入密码号",
                    labelStyle: TextStyle(
                        color: Color.fromRGBO(209, 207, 205, 1), fontSize: 20),
                    prefixIcon: Icon(
                      Icons.key,
                      color: Color.fromRGBO(209, 207, 205, 1),
                    ),
                    border: OutlineInputBorder(
                      //圆角边框
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                      borderSide: BorderSide(color: Colors.black, width: 2),
                    )),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Checkbox(
                    value: this.check,
                    onChanged: (value) {
                      setState(() {
                        this.check = !this.check;
                      });
                    },
                  ),
                  const Text(
                    "同意",
                    style: TextStyle(
                        fontSize: 18,
                        color: Color.fromRGBO(169, 168, 168, 1.0)),
                  ),
                  const Text(
                    "《Lion用户协议》",
                    style: TextStyle(
                      fontSize: 20,
                      color: Color.fromRGBO(69, 168, 168, 1.0),
                    ),
                  ),
                ],
              ),
              Container(
                width: 400,
                height: 60,
                margin: const EdgeInsets.only(bottom: 22),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        const Color.fromRGBO(116, 102, 229, 1),
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ))),
                  onPressed: null,
                  child: const Text(
                    "注册",
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                ),
              ),
              // const Text("已有账号，返回登录",style: TextStyle(fontSize: 17,color: Color.fromRGBO(213,213,213,1)),),
              TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return LoginPage();
                  }));
                },
                child: const Text(
                  "已有账号，返回登录",
                  style: TextStyle(
                      fontSize: 17, color: Color.fromRGBO(213, 213, 213, 1)),
                ),
              )
            ],
          ),
        ),
      ]),
    );
  }
}
