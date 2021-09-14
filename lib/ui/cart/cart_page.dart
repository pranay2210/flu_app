import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:tiara_app/models/enum_types.dart';
import 'package:tiara_app/ui/config/resources.dart';
import 'package:tiara_app/ui/config/strings.dart';
import 'package:tiara_app/ui/config/styling.dart';
import 'package:tiara_app/ui/homepage/data/home_page_process.dart';
import 'package:tiara_app/ui/viewmodel/cart_screen_view_models.dart';
import 'package:tiara_app/ui/widgets/alert_dialog_box.dart';
import 'package:tiara_app/ui/widgets/cart_item.dart';

class CartPage extends StatefulWidget {
  @override
  _CartPageState createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {
  ViewState _viewState = ViewState.THREE_COLUMN_VIEW;
  bool _isLoading = true;

  List<CartItemViewModel> _cartItems = List();

  _CartPageState() {
    loadCartItems();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: <Widget>[
      Container(
          margin: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            Column(
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                      padding: EdgeInsets.all(5),
                      child: Text(Strings.cartPageTitle,
                          style: AppTheme.pageTitleStyle)),
                ),
                Table(
                  children: [
                    TableRow(children: [
                      Align(
                          alignment: FractionalOffset.topLeft,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              RaisedButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(4.0),
                                    side: BorderSide(
                                        color: AppTheme.rangeSliderColor)),
                                onPressed: () =>
                                    AlertDialogBox.showPopupAlertBox(
                                        context: context,
                                        titleText: Strings.messageTitle,
                                        contentText:
                                            Strings.clearCartWarningMessage,
                                        positiveButtonText:
                                            Strings.yesButtonTitle,
                                        onPositiveButtonClick: () =>
                                            clearCartAndReloadData(),
                                        negativeButtonText:
                                            Strings.noButtonTitle),
                                color: AppTheme.rangeSliderColor,
                                textColor: Colors.white,
                                child: Text(Strings.buttonClearCart,
                                    style: TextStyle(fontSize: 14)),
                              ),
                              SizedBox(width: 10),
                              FlatButton(
                                shape: new RoundedRectangleBorder(
                                    borderRadius:
                                        new BorderRadius.circular(4.0),
                                    side: BorderSide(
                                        color: AppTheme.rangeSliderColor)),
                                color: Colors.white,
                                textColor: AppTheme.rangeSliderColor,
                                padding: EdgeInsets.all(8.0),
                                onPressed: () =>
                                    AlertDialogBox.showPopupAlertBox(
                                        context: context,
                                        titleText: Strings.messageTitle,
                                        contentText: Strings.inProgressMessage,
                                        positiveButtonText:
                                            Strings.okButtonTitle),
                                child: Text(
                                  Strings.buttonSaveCart,
                                  style: TextStyle(
                                    fontSize: 14.0,
                                  ),
                                ),
                              ),
                            ],
                          )),
                      Align(
                          alignment: Alignment.centerRight,
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              IconButton(
                                  onPressed: () => setState(() =>
                                      _viewState = ViewState.TWO_COLUMN_VIEW),
                                  icon: Image.asset(
                                      _viewState == ViewState.TWO_COLUMN_VIEW
                                          ? "assets/icons/2grid-view-active.png"
                                          : "assets/icons/2grid-view.png",
                                      width: 20,
                                      height: 20),
                                  tooltip: "2 Column View"),
                              Container(
                                  color: Color(0xffe1e1e1),
                                  width: 1,
                                  height: 20),
                              IconButton(
                                  onPressed: () => setState(() =>
                                      _viewState = ViewState.THREE_COLUMN_VIEW),
                                  icon: Image.asset(
                                      _viewState == ViewState.THREE_COLUMN_VIEW
                                          ? "assets/icons/3grid-view-active.png"
                                          : "assets/icons/3grid-view.png",
                                      width: 20,
                                      height: 20),
                                  tooltip: "3 Column View")
                            ],
                          ))
                    ])
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  color: AppTheme.dividerColor,
                  height: 1,
                  width: MediaQuery.of(context).size.width,
                )
              ],
            ),
            Expanded(
                child: _cartItems.length > 0
                    ? StaggeredGridView.countBuilder(
                        crossAxisCount:
                            ViewStateHelper.getColumnCount(_viewState),
                        itemCount: _cartItems.length,
                        itemBuilder: (BuildContext context, int index) =>
                            CartItem(
                                viewModel: _cartItems[index],
                                viewState: _viewState,
                                onItemRemove: (cartItem) =>
                                    removeCartItemAndReloadData(cartItem),
                                onQuantityChange: (cartItem) =>
                                    HomePageProcess().updateCartItem(cartItem)),
                        staggeredTileBuilder: (int index) =>
                            StaggeredTile.fit(1))
                    : _isLoading
                        ? Container()
                        : Align(
                            alignment: Alignment.center,
                            child: Text(
                              Strings.noItemsAddedInCart,
                              textAlign: TextAlign.center,
                              style: AppTheme.informativeCenterMessage,
                            )))
          ])),
      _isLoading
          ? Loaders.irysDiamondLoader
          : Container(width: 0, height: 0, color: Colors.transparent)
    ]));
  }

  void loadCartItems() async {
    var data = await HomePageProcess().getAllCartItems();
    setState(() {
      _isLoading = false;
      _cartItems = data;
    });
  }

  void clearCartAndReloadData() async {
    if (_cartItems.length > 0) {
      await HomePageProcess().removeAllItemsFromCart();
      AlertDialogBox.showPopupAlertBox(
          context: context,
          titleText: Strings.dataSyncTitle,
          contentText: Strings.removedAllCartItems,
          positiveButtonText: Strings.okButtonTitle);
      loadCartItems();
    }
  }

  void removeCartItemAndReloadData(CartItemViewModel cartItem) async {
    await HomePageProcess().removeItemFromCart(cartItem);
    AlertDialogBox.showPopupAlertBox(
        context: context,
        titleText: Strings.dataSyncTitle,
        contentText: Strings.removedCartItemMessageFormat
            .replaceFirst("%s", cartItem.itemName),
        positiveButtonText: Strings.okButtonTitle);
    loadCartItems();
  }
}
