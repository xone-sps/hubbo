import 'package:flutter/material.dart';
import 'package:hubbo/components/AppSignIn.dart';
class AppSingUp extends StatelessWidget {
  String defaultFontFamily = 'Roboto-Light.ttf';
  double defaultFontSize = 14;
  double defaultIconSize = 17;
  bool _check =true;
  String nameString, emailString, passwordString,phoneString;
  bool _togleVisibility = true;
  final formkey = GlobalKey<FormState>();
  void setState(){
    _togleVisibility = !_togleVisibility;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20, top: 35, bottom: 30),
        width: double.infinity,
        height: double.infinity,
        color: Colors.white70,
        child: Form(
          key: formkey,
          child: Column(
            children: <Widget>[
              Flexible(
                flex: 1,
                child: InkWell(
                  child: Container(
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.close),

                    ),

                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
              ),
              Flexible(
                flex: 15,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: 190,
//                    height: 190,
                      alignment: Alignment.center,
                      child: Image.asset("assets/images/hubbo_logo.png"),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('Register for Volunteer'),
                    SizedBox(
                      height: 15,
                    ),
                    textPhone(),
                    SizedBox(
                      height: 15,
                    ),
                    textEmail(),
                    SizedBox(
                      height: 15,
                    ),
                    textPassword(),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Checkbox(
                              activeColor: Color(0xFF3296ed),
                              value: _check,
                              onChanged: (bool newValue) {
                                  _check != newValue;
                              },
                            ),
                            Text(
                              "get news from hubbo",
                              style: TextStyle(
                                color: Color(0xFF666666),
                                fontFamily: defaultFontFamily,
                                fontSize: defaultFontSize,
                                fontStyle: FontStyle.normal,
                              ),
                              textAlign: TextAlign.left,
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 15,
                    ),
                     buttonSignUp(),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
              Flexible(
                flex: 1,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: Text(
                          "Already have an account? ",
                          style: TextStyle(
                            color: Color(0xFF666666),
                            fontFamily: defaultFontFamily,
                            fontSize: defaultFontSize,
                            fontStyle: FontStyle.normal,
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => AppSignIn()),
                          );
                        },
                        child: Container(
                          child: Text(
                            "Sign In",
                            style: TextStyle(
                              color: Color(0xFF3296ed),
                              fontFamily: defaultFontFamily,
                              fontSize: defaultFontSize,
                              fontStyle: FontStyle.normal,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  Widget textPhone(){
    return Row(
      children: <Widget>[
        Flexible(
          flex: 1,
          child: TextFormField(
            showCursor: true,
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius:
                BorderRadius.all(Radius.circular(25.0)),
                borderSide: BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              filled: true,
              contentPadding: EdgeInsets.only(left: 25),
              prefixIcon: Icon(
                Icons.person,
                color: Color(0xFF666666),
                size: defaultIconSize,
              ),
              fillColor: Color(0xFFF2F3F5),
              hintStyle: TextStyle(
                color: Color(0xFF666666),
                fontFamily: defaultFontFamily,
                fontSize: defaultFontSize,
              ),
              hintText: "Full Name",
            ),
            validator: (String value){
              if(value.isEmpty){
                return 'ກາລຸນາປ້ອນຊື່';
              } else{
                return null;
              }
            },
            onSaved: (String value) {
              nameString = value.trim();
            },
          ),
        ),
      ],
    );
  }
  Widget textEmail(){
    return TextFormField(
      showCursor: true,
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.only(left: 25),
        prefixIcon: Icon(
          Icons.email,
          color: Color(0xFF666666),
          size: defaultIconSize,
        ),
        fillColor: Color(0xFFF2F3F5),
        hintStyle: TextStyle(
            color: Color(0xFF666666),
            fontFamily: defaultFontFamily,
            fontSize: defaultFontSize),
        hintText: "Email",
      ),
      validator: (String value){
        if(!((value.contains('@')) && (value.contains('.')))){
          return 'ກາລຸນາປ້ອນທີ່ຢູ່ Email';
        }
        return null;
      },
    );
  }

  Widget textPassword(){
    return  TextFormField(
      showCursor: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
          borderSide: BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
        filled: true,
        contentPadding: EdgeInsets.only(left: 25,right: 25),
        prefixIcon: Icon(
          Icons.lock_outline,
          color: Color(0xFF666666),
          size: defaultIconSize,
        ),
          suffixIcon: IconButton(
            onPressed: () {
                _togleVisibility = !_togleVisibility;
            },
            icon: _togleVisibility
                ? Icon(
              Icons.visibility_off,
              color: Color(0xff9bca5d),
            )
                : Icon(
              Icons.visibility,
              color: Color(0xff9bca5d),
            ),
          ),
        fillColor: Color(0xFFF2F3F5),
        hintStyle: TextStyle(
          color: Color(0xFF666666),
          fontFamily: defaultFontFamily,
          fontSize: defaultFontSize,
        ),
        hintText: "Password",
      ),
      validator: (String value){
        if(value.isEmpty){
          return 'ກາລຸນາໃສ່ລະຫັດຜ່ານ';
        } else {
          return null;
        }
      },
    );
  }
  Widget buttonSignUp(){
    return  Container(
      width: double.infinity,
      child: RaisedButton(
        padding: EdgeInsets.all(17.0),
        onPressed: () {
          if (formkey.currentState.validate()) {
            formkey.currentState.save();
//            Navigator.of(context).push(
//                MaterialPageRoute(builder: (BuildContext context) => Home()));
          }
        },
        child: Text(
          "Sign Up",
          style: TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontFamily: 'Poppins-Medium.ttf',
          ),
          textAlign: TextAlign.center,
        ),
        color: Color(0xFF3296ed),
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.circular(15.0),
            side: BorderSide(color: Color(0xFF3296ed))),
      ),
      decoration: BoxDecoration(
          shape: BoxShape.circle, color: Color(0xFFF2F3F7)),
    );
  }
}
