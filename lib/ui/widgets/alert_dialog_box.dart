import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tiara_app/ui/config/styling.dart';

typedef void PositiveButtonClickCallback();
typedef void NegativeButtonClickCallback();

class AlertDialogBox {
  static void showPopupAlertBox(
      {@required BuildContext context,
      @required String titleText,
      @required String contentText,
      @required String positiveButtonText,
      String negativeButtonText,
      PositiveButtonClickCallback onPositiveButtonClick,
      NegativeButtonClickCallback onNegativeButtonClick}) {
    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              contentPadding: EdgeInsets.all(3),
              backgroundColor: Colors.white,
              title: Center(
                  child: Text(
                titleText,
                style: TextStyle(fontSize: 20, color: AppTheme.themeColor),
              )),
              content: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    child: Row(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(10),
                          child: Text(
                            contentText,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 18,
                              color: AppTheme.themeColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: negativeButtonText == null
                          ? Center(
                              child: RaisedButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(4.0),
                                      side: BorderSide(
                                          color: AppTheme.rangeSliderColor)),
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    if (onPositiveButtonClick != null)
                                      onPositiveButtonClick();
                                  },
                                  color: AppTheme.rangeSliderColor,
                                  textColor: Colors.white,
                                  child: Text(
                                    positiveButtonText,
                                    style: TextStyle(
                                        fontSize: 14.0, color: Colors.white),
                                  )))
                          : Center(
                              child: Wrap(
                              alignment: WrapAlignment.center,
                              direction: Axis.horizontal,
                              children: <Widget>[
                                RaisedButton(
                                    shape: new RoundedRectangleBorder(
                                        borderRadius:
                                            new BorderRadius.circular(4.0),
                                        side: BorderSide(
                                            color: AppTheme.rangeSliderColor)),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                      if (onPositiveButtonClick != null)
                                        onPositiveButtonClick();
                                    },
                                    color: AppTheme.rangeSliderColor,
                                    textColor: Colors.white,
                                    child: Text(
                                      positiveButtonText,
                                      style: TextStyle(
                                          fontSize: 14.0, color: Colors.white),
                                    )),
                                SizedBox(width: 10),
                                FlatButton(
                                  shape: new RoundedRectangleBorder(
                                      borderRadius:
                                          new BorderRadius.circular(4.0),
                                      side: BorderSide(
                                          color: AppTheme.rangeSliderColor)),
                                  color: Colors.white,
                                  textColor: AppTheme.rangeSliderColor,
                                  onPressed: () {
                                    Navigator.of(context).pop();
                                    if (onNegativeButtonClick != null)
                                      onNegativeButtonClick();
                                  },
                                  child: Text(
                                    negativeButtonText,
                                    style: TextStyle(
                                      fontSize: 14.0,
                                    ),
                                  ),
                                ),
                              ],
                            ))),
                ],
              ));
        });
  }
}
