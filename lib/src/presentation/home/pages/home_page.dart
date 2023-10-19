import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/extensions/build_context_ext.dart';
import '../../../utils/uidata.dart';
import '../../shared/widgets/auto_hide_keyboard.dart';
import '../bloc/home_bloc.dart';
import '../widgets/history_search_weather_item_widget.dart';
import '../widgets/search_textfield_widget.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/home';

  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeBloc get homeBloc => context.read();

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
        body: BlocBuilder<HomeBloc, HomeState>(
          builder: (context, state) {
            if (state is AddSearchHistorySuccess) {
              final lists = state.weathers;
              return ListView.builder(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 60),
                itemBuilder: (context, index) {
                  return HistorySearchWeatherItemWidget(
                    weather: lists[index],
                  );
                },
                itemCount: lists.length,
              );
            }
            return Center(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(UIData.welcome),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 16, 20, 0),
                  child: Text(
                    'Search history will show here\n(only location is founded)',
                    style: context.textTheme.titleLarge,
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ));
          },
        ),
      ),
    );
  }
}
