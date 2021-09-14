import 'dart:convert';
import 'dart:core' as prefix0;
import 'dart:core';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:hive/hive.dart';
import 'package:http/http.dart';
import 'package:tiara_app/ui/config/size_config.dart';
import 'package:tiara_app/ui/config/strings.dart';
import 'package:tiara_app/ui/widgets/alert_dialog_box.dart';

import 'auto_synch_config_page.dart';

class SplashPage extends StatefulWidget {
  @override
  _SplashPageState createState() => _SplashPageState();
}

class AlwaysDisabledFocusNode extends FocusNode {
  @override
  bool get hasFocus => false;
}

class _SplashPageState extends State<SplashPage> {
  AlertDialogBox alertDialogBox;
  static const color = Color(0xffb012340);
  static final ip1 = TextEditingController();
  static final ip2 = TextEditingController();
  static final ip3 = TextEditingController();
  static final ip4 = TextEditingController();

  static final port = TextEditingController();

  static final controllerKey1 = TextEditingController();
  static final controllerKey2 = TextEditingController();
  static final controllerKey3 = TextEditingController();
  static final controllerKey4 = TextEditingController();
  static final controllerKey5 = TextEditingController();

  static final FocusNode _serialKeyFN1 = new FocusNode();
  static final FocusNode _serialKeyFN2 = new FocusNode();
  static final FocusNode _serialKeyFN3 = new FocusNode();
  static final FocusNode _serialKeyFN4 = new FocusNode();
  static final FocusNode _serialKeyFN5 = new FocusNode();

  static final FocusNode _ipFN1 = new FocusNode();
  static final FocusNode _ipFN2 = new FocusNode();
  static final FocusNode _ipFN3 = new FocusNode();
  static final FocusNode _ipFN4 = new FocusNode();

  static final FocusNode portNoFN = new FocusNode();

  static final FocusNode domainFN = new FocusNode();

  bool isFetching = true;
  bool _loading = false;

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    ip1.dispose();
    ip2.dispose();
    ip3.dispose();
    ip4.dispose();
    port.dispose();
    textStyle = null;
    super.dispose();
  }

  var ipAddress;
  var finalKey;

  composeIP(ip1c, ip2c, ip3c, ip4c) {
    ipAddress = ip1c + '.' + ip2c + '.' + ip3c + '.' + ip4c;
    debugPrint(ipAddress);
    return ipAddress;
  }

  composeKey(k1, k2, k3, k4, k5) {
    finalKey = k1 + '-' + k2 + '-' + k3 + '-' + k4 + '-' + k5;
    debugPrint(finalKey);
    return finalKey;
  }

  static TextStyle textStyle = new TextStyle(
    fontSize: 18.0,
  );

  static TextStyle alertDialogText = new TextStyle(fontSize: 20, color: color);

  final double textBoxHeight = SizeConfig.heightMultiplier * 6;
  final double buttonHeight = SizeConfig.heightMultiplier * 4;

  BoxDecoration buttonBoxDecoration = BoxDecoration(
      color: color,
      borderRadius: new BorderRadius.only(
        topLeft: const Radius.circular(5.0),
        topRight: const Radius.circular(5.0),
        bottomLeft: const Radius.circular(5.0),
        bottomRight: const Radius.circular(5.0),
      ));

  Widget serailKey1() {
    return TextField(
      onChanged: (value) {
        if (value.length == 4)
          FocusScope.of(context).requestFocus(_serialKeyFN2);
      },
      controller: controllerKey1,
      focusNode: _serialKeyFN1,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.characters,
      style: textStyle,
      maxLength: 4,
      decoration: new InputDecoration(
        counterText: "",
        hintText: "XXXX",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
    );
  }

  Widget serailKey2() {
    return TextField(
      controller: controllerKey2,
      focusNode: _serialKeyFN2,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      style: textStyle,
      textCapitalization: TextCapitalization.characters,
      maxLength: 4,
      decoration: new InputDecoration(
        counterText: "",
        hintText: "XXXX",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onChanged: (value) {
        if (value.length == 4)
          FocusScope.of(context).requestFocus(_serialKeyFN3);
      },
    );
  }

//
  Widget serailKey3() {
    return TextField(
      controller: controllerKey3,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      maxLength: 4,
      style: textStyle,
      focusNode: _serialKeyFN3,
      textCapitalization: TextCapitalization.characters,
      decoration: new InputDecoration(
        counterText: "",
        hintText: "XXXX",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onChanged: (value) {
        if (value.length == 4)
          FocusScope.of(context).requestFocus(_serialKeyFN4);
      },
    );
  }

//
  Widget serailKey4() {
    return TextField(
      controller: controllerKey4,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      maxLength: 4,
      style: textStyle,
      focusNode: _serialKeyFN4,
      textCapitalization: TextCapitalization.characters,
      decoration: new InputDecoration(
        counterText: "",
        hintText: "XXXX",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onChanged: (value) {
        if (value.length == 4)
          FocusScope.of(context).requestFocus(_serialKeyFN5);
      },
    );
  }

//
  Widget serailKey5() {
    return TextField(
      controller: controllerKey5,
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      maxLength: 4,
      textCapitalization: TextCapitalization.characters,
      style: textStyle,
      focusNode: _serialKeyFN5,
      decoration: new InputDecoration(
        counterText: "",
        hintText: "XXXX",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onChanged: (value) {
        if (value.length == 4) FocusScope.of(context).requestFocus(_ipFN1);
      },
    );
  }

  Widget ipAdd1() {
    return TextField(
      textAlign: TextAlign.center,
      controller: ip1,
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      keyboardType:
          TextInputType.numberWithOptions(signed: false, decimal: false),
      maxLength: 3,
      style: textStyle,
      focusNode: _ipFN1,
      decoration: new InputDecoration(
        counterText: "",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onChanged: (value) {
        if (value.length == 3) FocusScope.of(context).requestFocus(_ipFN2);
      },
    );
  }

  Widget ipAdd2() {
    return TextField(
      textAlign: TextAlign.center,
      controller: ip2,
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      keyboardType:
          TextInputType.numberWithOptions(signed: false, decimal: false),
      maxLength: 3,
      style: textStyle,
      focusNode: _ipFN2,
      decoration: new InputDecoration(
        counterText: "",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onChanged: (value) {
        if (value.length == 3) FocusScope.of(context).requestFocus(_ipFN3);
      },
    );
  }

  Widget ipAdd3() {
    return TextField(
      textAlign: TextAlign.center,
      controller: ip3,
      style: textStyle,
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      keyboardType:
          TextInputType.numberWithOptions(signed: false, decimal: false),
      maxLength: 3,
      focusNode: _ipFN3,
      decoration: new InputDecoration(
        counterText: "",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onChanged: (value) {
        if (value.length == 3) FocusScope.of(context).requestFocus(_ipFN4);
      },
    );
  }

  Widget ipAdd4() {
    return TextField(
      textAlign: TextAlign.center,
      controller: ip4,
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      keyboardType:
          TextInputType.numberWithOptions(signed: false, decimal: false),
      maxLength: 3,
      style: textStyle,
      focusNode: _ipFN4,
      decoration: new InputDecoration(
        counterText: "",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onChanged: (value) {
        if (value.length == 3) FocusScope.of(context).requestFocus(portNoFN);
      },
    );
  }

  Widget domainName() {
    return TextField(
      textAlign: TextAlign.center,
      keyboardType: TextInputType.text,
      style: textStyle,
      maxLength: 17,
      focusNode: new AlwaysDisabledFocusNode(),
      decoration: new InputDecoration(
        counterText: "",
        border: new OutlineInputBorder(
          borderRadius: const BorderRadius.all(
            const Radius.circular(0.0),
          ),
        ),
      ),
      onEditingComplete: () => FocusScope.of(context).requestFocus(portNoFN),
    );
  }

  Widget portNo() {
    return TextField(
        controller: port,
        maxLength: 4,
        style: textStyle,
        textAlign: TextAlign.center,
        focusNode: portNoFN,
        inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
        keyboardType:
            TextInputType.numberWithOptions(signed: false, decimal: false),
        decoration: new InputDecoration(
          counterText: "",
          border: new OutlineInputBorder(
            borderRadius: const BorderRadius.all(
              const Radius.circular(0.0),
            ),
          ),
        ));
  }

  Future _login() async {
    setState(() {
      _loading = false;
    });
  }

  void _onLoading() {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        return Dialog(
          child: new Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              new CircularProgressIndicator(),
              new Text("Loading"),
            ],
          ),
        );
      },
    );
    new Future.delayed(new Duration(seconds: 3), () {
      Navigator.pop(context); //pop dialog
      _login();
    });
  }

  @override
  Widget build(BuildContext context) {
    //final box = Hive.box("configurations");
    // box.put('firstLaunch', false);
    return Stack(
      children: <Widget>[
        new Column(
          children: <Widget>[
            Expanded(
              child: new Container(
                height: MediaQuery.of(context).size.height * .40,
                color: color,
              ),
            ),
            Expanded(
              child: new Container(
                  height: MediaQuery.of(context).size.height * .50,
                  color: Colors.white,
                  child: Image.asset('assets/background/bg2.png',
                      width: MediaQuery.of(context).size.width,
                      color: Color.fromRGBO(255, 255, 255, 0.09),
                      colorBlendMode: BlendMode.modulate)),
            ),
            new Container(
              height: MediaQuery.of(context).size.height * .10,
              color: color,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'POWERED BY',
                    style: TextStyle(
                        fontSize: 15,
                        color: Colors.white.withOpacity(1.0),
                        fontWeight: FontWeight.w400),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Image.asset(
                    'assets/logo/iryslogo.png',
                    height: 100,
                    width: 80,
                  )
                ],
              ),
            ),
          ],
        ),
        new Container(
          alignment: Alignment.topCenter,
          padding: new EdgeInsets.only(
              top: SizeConfig.heightMultiplier * 18, right: 45.0, left: 45.0),
          child: new Container(
            height: SizeConfig.heightMultiplier * 60,
            child: new Card(
              color: Colors.white,
              elevation: 4.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.all(10),
                    child: Image.asset('assets/logo/tiarabluelogo.png',
                        height: SizeConfig.imageSizeMultiplier *
                            10 //MediaQuery.of(context).size.height * .07,
                        ),
                  ),
                  Divider(
                    color: Colors.black12,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.widthMultiplier * 3,
                        0, SizeConfig.widthMultiplier * 3, 0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      child: Text('Enter Serial Key',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black12.withOpacity(1.0),
                              fontWeight: FontWeight.w300),
                          textAlign: TextAlign.left),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(SizeConfig.widthMultiplier * 3,
                        0, SizeConfig.widthMultiplier * 3, 0),
                    child: new Row(
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.all(5),
                                height: textBoxHeight,
                                child: serailKey1())),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.all(5),
                                height: textBoxHeight,
                                child: serailKey2())),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.all(5),
                                height: textBoxHeight,
                                child: serailKey3())),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.all(5),
                                height: textBoxHeight,
                                child: serailKey4())),
                        Expanded(
                            child: Container(
                                padding: EdgeInsets.all(5),
                                height: textBoxHeight,
                                child: serailKey5())),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.widthMultiplier * 3,
                            0,
                            SizeConfig.widthMultiplier * 3,
                            0),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Text('IP Address',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black12.withOpacity(1.0),
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.left),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.fromLTRB(
                            SizeConfig.widthMultiplier * 4,
                            0,
                            SizeConfig.widthMultiplier * 8,
                            0),
                        child: Container(
                          padding: EdgeInsets.all(5),
                          child: Text('Domain Name',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.black12.withOpacity(1.0),
                                  fontWeight: FontWeight.w300),
                              textAlign: TextAlign.left),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(SizeConfig.widthMultiplier * 3,
                        0, SizeConfig.widthMultiplier * 3, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          height: textBoxHeight,
                          padding: EdgeInsets.all(5),
                          child: ipAdd1(),
                        )),
                        Expanded(
                            child: Container(
                          height: textBoxHeight,
                          padding: EdgeInsets.all(5),
                          child: ipAdd2(),
                        )),
                        Expanded(
                            child: Container(
                          height: textBoxHeight,
                          padding: EdgeInsets.all(5),
                          child: ipAdd3(),
                        )),
                        Expanded(
                            child: Container(
                          height: textBoxHeight,
                          padding: EdgeInsets.all(5),
                          child: ipAdd4(),
                        )),
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Text(
                            "OR",
                            style: TextStyle(
                                fontWeight: FontWeight.w300, fontSize: 16),
                          ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                              height: textBoxHeight,
                              padding: EdgeInsets.all(5),
                              child: domainName(),
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                        SizeConfig.widthMultiplier * 3.5,
                        0,
                        SizeConfig.widthMultiplier * 3,
                        0),
                    child: Text('Port Number',
                        style: TextStyle(
                            fontSize: 20,
                            color: Colors.black12.withOpacity(1.0),
                            fontWeight: FontWeight.w300),
                        textAlign: TextAlign.left),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.widthMultiplier * 3,
                        0, SizeConfig.widthMultiplier * 50, 0),
                    child: Container(
                      height: textBoxHeight,
                      padding: EdgeInsets.all(5),
                      child: portNo(),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(SizeConfig.widthMultiplier * 3,
                        0, SizeConfig.widthMultiplier * 0, 0),
                    child: Container(
                      height: buttonHeight,
                      // width: MediaQuery.of(context).size.width * 0.2,
                      decoration: buttonBoxDecoration,
                      //color: color,
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: FlatButton(
                          child: Text(
                            'REGISTER',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white.withOpacity(1.0),
                                fontWeight: FontWeight.normal),
                          ),
                          onPressed: onRegisterClick,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }

  onRegisterClick() async {
    var result = composeIP(ip1.text, ip2.text, ip3.text, ip4.text);
    var clientKey = composeKey(controllerKey1.text, controllerKey2.text,
        controllerKey3.text, controllerKey4.text, controllerKey5.text);
    var portResult = port.text;

    var url = "http://" + result + ":" + portResult;
    var keyReqURL = "http://" +
        result +
        ":" +
        portResult +
        "/api/validateKey?appKey=" +
        clientKey;

    final box = Hive.box("configurations");
    box.put('ipAddress', result);
    box.put('port', portResult);
    box.put('url', url);
    box.put('serialKey', clientKey);
    box.put('keyReqURL', keyReqURL);

    debugPrint(url);
    debugPrint(keyReqURL);

    final client = new HttpClient();

    try {
      isFetching = true;
      final request = await client.getUrl(Uri.parse(url));
      final resResponse = await request.close();
      debugPrint("Response Status Code : ${resResponse.statusCode}");

      debugPrint('Recived Res');
      debugPrint("Response Status Code : ${resResponse.toString()}");

      if (resResponse.statusCode == 200) {
        isFetching = true;

        Response keyAuthResponse = await get(keyReqURL);
        debugPrint('Key Recived Res');
        debugPrint(keyAuthResponse.body);

        if (keyAuthResponse.body != null && keyAuthResponse.body.isNotEmpty) {
          var data = json.decode(keyAuthResponse.body);

          var isValid = data["isValid"];
          debugPrint("isValid Response");
          debugPrint(isValid);
          if (isValid == "true") {
            isFetching = false;
            var box = Hive.box("configurations");
            box.put('firstLaunch', false);
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => AutoSynchConfigPage()));
          } else {
            AlertDialogBox.showPopupAlertBox(
                context: context,
                titleText: Strings.keyErrorTitle,
                contentText: Strings.keyErrorMessage,
                positiveButtonText: Strings.okButtonTitle);
          }
        } else {
          AlertDialogBox.showPopupAlertBox(
              context: context,
              titleText: Strings.connectionExceptionTitile,
              contentText: Strings.connectionExceptionMessage,
              positiveButtonText: Strings.okButtonTitle);
        }
      } else {
        debugPrint("ERROR: Connection Failed");
        AlertDialogBox.showPopupAlertBox(
            context: context,
            titleText: Strings.connectionExceptionTitile,
            contentText: Strings.connectionExceptionMessage,
            positiveButtonText: Strings.okButtonTitle);
      }
    } on SocketException {
      isFetching = false;
      AlertDialogBox.showPopupAlertBox(
          context: context,
          titleText: Strings.connectionExceptionTitile,
          contentText: Strings.connectionExceptionMessage,
          positiveButtonText: Strings.okButtonTitle);
    }
  }
}
