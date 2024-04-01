import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:learn_localization/app_cubit.dart';
import 'package:learn_localization/app_state.dart';
import 'package:learn_localization/core/resources/localizer/localizer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AppCubit(),
        ),
      ],
      child: const MyMaterialApp(),
    );
  }
}

class MyMaterialApp extends StatelessWidget {
  const MyMaterialApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocSelector<AppCubit, AppState, LocalizerData>(
      selector: (state) => context.read<AppCubit>().locale,
      builder: (context, state) {
        return MaterialApp(
          title: 'Flutter Demo',
          localizationsDelegates: Localizer.localizationsDelegates,
          supportedLocales: Localizer.languages,
          locale: state.locale,
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
            useMaterial3: true,
          ),
          home: const MyHomePage(title: 'Flutter Demo Home Page'),
        );
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              AppLocalizations.of(context)!.name,
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                context.read<AppCubit>().toggleLanguage;
              },
              child: Text(AppLocalizations.of(context)!.language),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: AppLocalizations.of(context)!.increment,
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
