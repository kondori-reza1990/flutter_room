import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'screen/login_screen.dart';
import 'util/app_theme.dart';

void main() {
  runApp(const CounterFullApp());
}

class CounterFullApp extends StatefulWidget {
  const CounterFullApp({Key? key}) : super(key: key);

  @override
  State<CounterFullApp> createState() => _CounterFullAppState();
}

class _CounterFullAppState extends State<CounterFullApp> {
  int count = 0;
  bool isDark = false;
  IconData themeIcon = Icons.dark_mode;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const LoginScreen(), /*Scaffold(
        appBar: AppBar(
          title: Text("برنامه شمارنده"),
          //centerTitle: true,
        ),
        body: Center(
          child: Text("تعداد ضربه به دکمه ها: $count"),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  count++;
                  print(count);
                });
              },
              child: const Icon(Icons.add),
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  count--;
                  print(count);
                });
              },
              child: const Icon(Icons.minimize_rounded),
            ),
            SizedBox(width: 10,),
            FloatingActionButton(
              onPressed: () {
                setState(() {
                  isDark = !isDark;
                  if (isDark) {
                    themeIcon = Icons.light_mode;
                  } else {
                    themeIcon = Icons.dark_mode;
                  }
                  print(isDark);
                });
              },
              child: Icon(themeIcon),
            ),
          ],
        ),

      ),*/
      title: "Counter App",
      debugShowCheckedModeBanner: false,
      theme: AppThemeData.lightTheme,
      darkTheme: AppThemeData.darkTheme,
      themeMode: isDark ? ThemeMode.dark : ThemeMode.light,
      locale: const Locale("fa", "IR"),
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate
      ],
      supportedLocales: const [
        Locale("fa", "IR"),
        Locale("en"),
      ],
    );
  }
}

class CounterApp extends StatelessWidget {
  CounterApp({Key? key}) : super(key: key);

  int count = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Counter App"),
          centerTitle: true,
        ),
        body: Center(
          child: Text("Tapped: $count"),
        ),
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              count++;
              print(count);
            },
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  final List<ListItem> items = List<ListItem>.generate(
    1000,
        (i) => i % 10 == 0
        ? HeadingItem('Heading $i')
        : MessageItem('Sender $i', 'Message body $i'),
  );

  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const title = 'Mixed List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: ListView.builder(
          // Let the ListView know how many items it needs to build.
          itemCount: items.length,
          // Provide a builder function. This is where the magic happens.
          // Convert each item into a widget based on the type of item it is.
          itemBuilder: (context, index) {
            final item = items[index];

            return ListTile(
              title: item.buildTitle(context),
              subtitle: item.buildSubtitle(context),
            );
          },
        ),
      ),
    );
  }
}

/// The base class for the different types of items the list can contain.
abstract class ListItem {
  /// The title line to show in a list item.
  Widget buildTitle(BuildContext context);

  /// The subtitle line, if any, to show in a list item.
  Widget buildSubtitle(BuildContext context);
}

/// A ListItem that contains data to display a heading.
class HeadingItem implements ListItem {
  final String heading;

  HeadingItem(this.heading);

  @override
  Widget buildTitle(BuildContext context) {
    return Text(
      heading,
      style: Theme.of(context).textTheme.headlineSmall,
    );
  }

  @override
  Widget buildSubtitle(BuildContext context) => const SizedBox.shrink();
}

/// A ListItem that contains data to display a message.
class MessageItem implements ListItem {
  final String sender;
  final String body;

  MessageItem(this.sender, this.body);

  @override
  Widget buildTitle(BuildContext context) => Text(sender);

  @override
  Widget buildSubtitle(BuildContext context) => Text(body);
}