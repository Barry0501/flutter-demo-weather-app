import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/build_context_ext.dart';
import '../../../utils/uidata.dart';
import '../../shared/widgets/auto_hide_keyboard.dart';
import '../bloc/home_bloc.dart';
import '../widgets/search_textfield_widget.dart';

class HomePage extends StatefulWidget {
  static const String routeName = 'home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc get homeBloc => context.read();

  @override
  void initState() {
    super.initState();

    homeBloc.add(FetchWeatherEvent(location: 'paris'));
  }

  @override
  Widget build(BuildContext context) {
    return AutoHideKeyboard(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Weather'),
          elevation: 0,
          bottom: const PreferredSize(
            preferredSize: Size.fromHeight(66),
            child: SearchTextFieldWidget(),
          ),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(UIData.welcome),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text(
                'Search and add cities to follow here',
                style: context.textTheme.titleLarge,
              ),
            ),
          ],
        )),
      ),
    );
  }
}
