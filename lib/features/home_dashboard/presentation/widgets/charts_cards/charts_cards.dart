import 'package:flutter/material.dart';
class ChartsCards extends StatelessWidget {
  final TextStyle _subtitleTextStyle = TextStyle(color: Colors.white54, fontSize: 15.0);
  final String firstSubTitle;
  final String mainTitle;
  final String secondTitle;
  final Widget optionalAppendWidget;
  bool isSelected = false;

  ChartsCards({
    @required firstSubTitle,
    @required mainTitle,
    @required secondTitle,
    @required isSelected,
    Widget optionalAppendWidget}) : this.firstSubTitle = firstSubTitle, this.mainTitle = mainTitle, this.secondTitle = secondTitle, this.optionalAppendWidget = optionalAppendWidget, this.isSelected = isSelected;


  @override
  Widget build(BuildContext context) {
    // if(this.optionalAppendWidget != null) {
      return Container(
         child: Stack(
           children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
                color: Colors.white10,
            ),
             width: double.infinity,
             padding: const EdgeInsets.symmetric(horizontal: 10.0,vertical: 15.0),
             child: (this.optionalAppendWidget != null) ? this.optionalAppendWidget : this._infoData(),
           ),
           (isSelected) ? this._selectedStyle() : SizedBox()
         ]
         ),
      );

    // } else {
    //   return Container(
    //     child: Stack(
    //       children: [
    //       Container(
    //         decoration: BoxDecoration(
    //           borderRadius: BorderRadius.circular(20.0),
    //           color: Colors.white10,
    //         ),
    //         width: double.infinity,
    //         padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
    //         child: this._infoData(),
    //       ),
    //       (isSelected) ? this._selectedStyle() : SizedBox()
    //     ]
    //     ),
    //   );
    // }
  }

  Widget _infoData() {
    return Column(
       crossAxisAlignment: CrossAxisAlignment.start,
       children: [
         Text('${this.firstSubTitle}', style: this._subtitleTextStyle),
         SizedBox(height: 5.0),
         Text('${this.mainTitle}', style: TextStyle(color: Colors.white, fontSize: 30.0, fontWeight: FontWeight.bold)),
         SizedBox(height: 5.0),
         Text('${this.secondTitle}', style: this._subtitleTextStyle),
       ],
     );
  }

  Widget _selectedStyle() {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color.fromRGBO(66, 146, 255, 0.14),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 5,
            top: 5,
            child: Icon(Icons.check_circle)
          )
        ]
      ),
    );
  }
}