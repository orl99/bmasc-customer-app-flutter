import 'package:flutter/material.dart';
class TraficLights extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Estatus Trafico', style: TextStyle(color: Colors.white54),),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
           children: [
             Column(
               children: [
                this._lightContainerBox(10, Colors.green),
            ]),
             Column(
               children: [
                this._lightContainerBox(3, Colors.red),
            ]),
           ],
          ),
        ],
      ),
    );
  }

  Widget _lightContainerBox(int lightStatusInt, Color color, ) {
    return Column(
           children: [
            Container(
                width: 35.0,
                height: 35.0,
                decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(50.0)
                ),
            ),
            SizedBox(height: 7.5,),
            Text(lightStatusInt.toString())
        ]);
  }
}