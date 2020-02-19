import 'package:flutter/material.dart';
class SubmitButton extends StatelessWidget {
  final double percentage;
  final Widget child;
  final Function onPressed;
  final bool isErrorVisible;
  final EdgeInsets padding;

  const SubmitButton({
    Key key,
    @required this.onPressed,
    @required this.child,
    this.percentage = 1,
    this.isErrorVisible = false,
    this.padding = const EdgeInsets.all(0),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 18).add(padding),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          RawMaterialButton(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
            elevation: 0,
            child: Stack(
              alignment: Alignment.center,
              children: <Widget>[
                Align(
                  alignment: Alignment.centerLeft,
                  child: SizeTransition(
                    sizeFactor: Tween<double>(begin: 0, end: 1)
                        .animate(AlwaysStoppedAnimation(percentage.isNaN ? 0 : percentage)),
                    axisAlignment: -1,
                    axis: Axis.horizontal,
                    child: Container(
                      height: 48,
                      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(4)),
                    ),
                  ),
                ),
                child,
              ],
            ),
            fillColor: Colors.red,
            onPressed: onPressed,
          ),
           (isErrorVisible ?  Padding(
               padding: EdgeInsets.only(top: 6.0),
               child: Text('Error Message',
                   )) : Container())
        ],
      ),
    );
  }
}
