import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const CryptoCurrenciesListApp());
}

class CryptoCurrenciesListApp extends StatelessWidget {
  const CryptoCurrenciesListApp({super.key});
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.black,

        appBarTheme: AppBarTheme(
          backgroundColor: Colors.black,
          centerTitle: true,
          toolbarHeight: 70,
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w700,
          ),
        ),

        listTileTheme: ListTileThemeData(
          iconColor: Colors.white,
        ),

        textTheme: TextTheme(
          bodyMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 20,
          ),
          labelSmall: TextStyle(
            color: Colors.white.withValues(alpha: 0.6),
            fontWeight: FontWeight.w700,
            fontSize: 14,
          )
        ),

      ),
      home: const CryptoCurrenciesScreen(title: 'CryptoCurrenciesListApp'),
    );
  }
}

class CryptoCurrenciesScreen extends StatefulWidget {
  const CryptoCurrenciesScreen({super.key, required this.title});

  final String title;

  @override
  State<CryptoCurrenciesScreen> createState() => _CryptoCurrenciesScreenState();
}

class _CryptoCurrenciesScreenState extends State<CryptoCurrenciesScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView.separated(
        itemCount: 10,
        separatorBuilder: (context, index) => Divider(
          color: Colors.white.withValues(alpha: 0.2),
        ),
        itemBuilder: (context, i) => ListTile(
          leading: SvgPicture.asset(
            'assets/svg/icons8-биткоин.svg',
            height: 30,
            width: 30,
          ),
          
          title: Text(
            "Bitcoin",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          subtitle: Text(
            "20000\$",
            style: Theme.of(context).textTheme.labelSmall,
          ),
          trailing: Icon(Icons.arrow_forward_ios),
        )),
    );
  }
}



