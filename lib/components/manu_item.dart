import 'package:flutter/material.dart';
import 'package:easylist/routes.dart';

class MenuItem extends StatelessWidget {
  final String title;
  final String route;

  final Widget leading;
  final Widget trailing;
  final bool disabled;
  final TextStyle textStyle;

  final Widget titleExtra; // last minute hack

  MenuItem(
      {Key key,
      this.title,
      this.route,
      this.leading,
      this.trailing,
      this.titleExtra,
      this.textStyle,
      this.disabled = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget titleText = Text(
      title == null ? 'Loading' : title,
      style: textStyle,
    );

    Widget titleWidget = titleText;
    if (titleExtra != null) {
      titleWidget = Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 8.0),
            child: titleText,
          ),
          titleExtra,
        ],
      );
    }

    return ListTile(
      title: titleWidget,
      leading: leading,
      trailing: title == null ? CircularProgressIndicator() : trailing,
      onTap: route == null || disabled ? null : () => _performSegue(context),
    );
  }

  void _performSegue(BuildContext context) {
    Application.router.navigateTo(context, route, replace: true);
    return null;
  }
}
