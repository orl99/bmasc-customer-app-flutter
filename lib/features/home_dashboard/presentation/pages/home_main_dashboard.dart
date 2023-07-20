// Material packege
import 'package:bmasc_customer_app_flutter_1/core/components/drawer_component.dart';
import 'package:flutter/material.dart';

// Components


// Pages
import 'package:bmasc_customer_app_flutter_1/features/home_dashboard/presentation/pages/general_charts.dart';
class HomeDashboard extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Menu'),
        actions: [
          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image(image: AssetImage('assets/img/lala.png')),
              ),
            ),
          )
        ],
      ),
      drawer: DrawerNavComponent(),
      // appBar: AppbarComponent(titleAppBar: 'Dashboard Menu'),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              this._mainTitleHome(),
              SizedBox(height: 15.0),
              GeneralCharts()
            ],
          ),
        ),
      ),
    );
  }



  // Micro widgets
  Widget _mainTitleHome() {
    final  textStyle = TextStyle(fontSize: 38.0);
    final  textStyleSmall = TextStyle(fontSize: 15.0);
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Bienvenido Lala!', style: textStyle,),
          Text('A tu Dashboard personalizado de cliente', style: textStyleSmall,),
        ],
      ),
    );
  }
}