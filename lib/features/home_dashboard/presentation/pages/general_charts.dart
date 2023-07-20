import 'package:bmasc_customer_app_flutter_1/features/home_dashboard/presentation/widgets/chart/chart.dart';
import 'package:bmasc_customer_app_flutter_1/features/home_dashboard/presentation/widgets/charts_cards/charts_cards.dart';
import 'package:bmasc_customer_app_flutter_1/features/home_dashboard/presentation/widgets/trafic_lights/trafic_lights.dart';
import 'package:flutter/material.dart';

class GeneralCharts extends StatefulWidget {
  GeneralCharts({Key key}) : super(key: key);

  @override
  _GeneralChartsState createState() => _GeneralChartsState();
}

class _GeneralChartsState extends State<GeneralCharts> {
  
  // Styles Flags
  bool selectedCard1 = false;
  bool selectedCard2 = false;
  bool selectedCard3 = false;
  bool selectedCard4 = false;
  // BoxDecoration

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        this._infoCards(),
        SizedBox(height: 20.0,),
        this._cardChartContainer()

      ],
    );
  }

  Widget _infoCards() {
    return Container(
         child: GridView.count(
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          crossAxisCount: 2,
          shrinkWrap: true,
          childAspectRatio: 100 / 80,
           children: [
                InkWell(
                  child: Container(
                    child: ChartsCards(
                      firstSubTitle: 'Pedimentos',
                      mainTitle: 293.toString(),
                      secondTitle: 'del año en curso',
                      isSelected: this.selectedCard1,
                    )
                  ),
                  onTap: () {
                    setState(() {
                      this.selectedCard2= false;
                      this.selectedCard4 = false;
                      this.selectedCard3 = false;
                      this.selectedCard1 = !this.selectedCard1;
                      // print(this.selectedCard1);
                    });
                  },
                ),
                InkWell(
                  child: Container(
                    child: ChartsCards(
                      firstSubTitle: 'Facturados',
                      mainTitle: 499.toString(),
                      secondTitle: 'del año en curso',
                      isSelected: this.selectedCard2,
                    )
                  ),
                  onTap: () {
                    setState(() {
                      this.selectedCard1 = false;
                      this.selectedCard4 = false;
                      this.selectedCard3 = false;
                      this.selectedCard2 = !this.selectedCard2;
                      // print(this.selectedCard2);
                    });
                  },
                ),
                InkWell(
                  child: Container(
                    child: ChartsCards(
                      optionalAppendWidget: TraficLights(),
                      isSelected: this.selectedCard3,
                    )),
                    onTap: () {
                      setState(() {
                        this.selectedCard1 = false;
                        this.selectedCard2 = false;
                        this.selectedCard4 = false;
                        this.selectedCard3 = !this.selectedCard3;
                        // print(this.selectedCard3);
                      });
                    },
                  ),
                InkWell(
                  child: Container(
                    child: ChartsCards(
                      firstSubTitle: 'Traking de pedimentso',
                      mainTitle: 10.toString(),
                      secondTitle: 'del mes en curso',
                      isSelected: this.selectedCard4,
                    )
                  ),
                  onTap: () {
                    setState(() {
                      this.selectedCard1 = false;
                      this.selectedCard2 = false;
                      this.selectedCard3 = false;
                      this.selectedCard4 = !this.selectedCard4;
                      // print(this.selectedCard4);
                    });
                  },
                ),
           ],
         ),
      );
  }

  Widget _cardChartContainer() {
    return Card(
      child: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: [
            // Mockito data
            ChartW(listaData: [32, 114, 67, 80, 40, 40, 80], monthsData: ['Ene', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul'],)
          ],
        ),
      ),
    );
  }
}