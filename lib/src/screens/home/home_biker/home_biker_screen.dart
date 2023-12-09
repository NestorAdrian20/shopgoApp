import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shopgo/config/routes/app_route.gr.dart';
import 'package:auto_route/auto_route.dart';
///import 'package:syncfusion_flutter_charts/charts.dart';
//import 'package:intl/intl.dart';

//import '../widgets/drawer_screen.dart';

@RoutePage()
class HomeBikerScreen extends StatefulWidget {
  const HomeBikerScreen({
    super.key,
  });

  @override
  State<HomeBikerScreen> createState() => _HomeBikerScreenState();
}

class _HomeBikerScreenState extends State<HomeBikerScreen> {
  //late List<GDPData> _chartData;
  //late TooltipBehavior _tooltipBehavior;

  @override
  /*void initState() {
    _chartData = getChartData();
    _tooltipBehavior = TooltipBehavior(enable: true);
    super.initState();
  }*/
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //drawer: const DrawerApp(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: null,
        title: const Text('ShopGo'),
        actions: <Widget>[
          IconButton(
            icon: SvgPicture.asset('assets/icons/profile.svg'),
            tooltip: 'Profile',
            onPressed: () async {
              await AutoRouter.of(context).push(const ProfileRoute());
            },
          ),
          const SizedBox(height: 40,),
          
          /*SafeArea(
        child: Scaffold(
      body: SfCartesianChart(
        title: ChartTitle(text: 'Continent wise GDP - 2021'),
        legend: const Legend(isVisible: true),
        tooltipBehavior: _tooltipBehavior,
        series: <ChartSeries>[
          BarSeries<GDPData, String>(
              name: 'GDP',
              dataSource: _chartData,
              xValueMapper: (GDPData gdp, _) => gdp.continent,
              yValueMapper: (GDPData gdp, _) => gdp.gdp,
              dataLabelSettings: const DataLabelSettings(isVisible: true),
              enableTooltip: true)
        ],
        primaryXAxis: CategoryAxis(),
        primaryYAxis: NumericAxis(
            edgeLabelPlacement: EdgeLabelPlacement.shift,
            numberFormat: NumberFormat.simpleCurrency(decimalDigits: 0),
            title: AxisTitle(text: 'GDP in billions of U.S. Dollars')),
      ),
    ),),*/

        ],
      ),
      body: Column(
  crossAxisAlignment: CrossAxisAlignment.start,
  mainAxisSize: MainAxisSize.min,
  children: <Widget>[
    const SizedBox(height: 30,),
        Row(
        children: <Widget>[
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Colors.green
                  ),
            onPressed: () async{
              await AutoRouter.of(context).push(const HomeBikerRouteServices());
            },
              child: const Text('Sin pedir')
            )
          ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Colors.green
                  ),
            onPressed: () async{
              await AutoRouter.of(context).push(const CardServicesEPBiker());
            },
              child: const Text('Por realizar')
            ),
        ),
        Expanded(
          child: TextButton(
            style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    padding: const EdgeInsets.all(10.0),
                    textStyle: const TextStyle(fontSize: 15),
                    backgroundColor: Colors.green
                  ),
            onPressed: () async{
              await AutoRouter.of(context).push(const CardServicesFinalizadoBiker());
            },
              child: const Text('Realizados')
            ),
        ),
      const SizedBox(height: 30,)
      ],
    ),
  ],
),
    );
  }
  /*List<GDPData> getChartData() {
    final List<GDPData> chartData = [
      GDPData('Oceania', 1600),
      GDPData('Africa', 2490),
      GDPData('S America', 2900),
      GDPData('Europe', 23050),
      GDPData('N America', 24880),
      GDPData('Asia', 34390),
    ];
    return chartData;
  }*/
}
/*
class GDPData {
  GDPData(this.continent, this.gdp);
  final String continent;
  final double gdp;
}*/