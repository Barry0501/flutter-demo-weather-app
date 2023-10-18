import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:rxdart/rxdart.dart';

enum NavigatorEvent {
  pop,
  push,
  replace,
}

class NavigatorData {
  final String? routeName;
  final NavigatorEvent event;

  NavigatorData(this.routeName, this.event);
}

class MyRouteObserver extends RouteObserver<PageRoute<dynamic>> {
  MyRouteObserver({
    this.action,
    this.name,
  });

  final Function(NavigatorData?)? action;
  final String? name;

  final _onRouteChange = BehaviorSubject<NavigatorData?>();

  Stream<NavigatorData?> get onRouteChange =>
      _onRouteChange.asBroadcastStream();
  String? get currentName => _onRouteChange.value?.routeName;

  void close() {
    _onRouteChange.close();
  }

  void _sendScreenView(PageRoute<dynamic> route, NavigatorEvent event) {
    final screenName = route.settings.name;
    log('[$name] : route name: $screenName');
    final data = NavigatorData(screenName, event);
    action?.call(data);
    _onRouteChange.sink.add(data);

    // do something with it, ie. send it to your analytics service collector
  }

  @override
  void didPush(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPush(route, previousRoute);
    if (route is PageRoute) {
      _sendScreenView(route, NavigatorEvent.push);
    }
  }

  @override
  void didReplace({Route<dynamic>? newRoute, Route<dynamic>? oldRoute}) {
    super.didReplace(newRoute: newRoute, oldRoute: oldRoute);
    if (newRoute is PageRoute) {
      _sendScreenView(newRoute, NavigatorEvent.replace);
    }
  }

  @override
  void didPop(Route<dynamic> route, Route<dynamic>? previousRoute) {
    super.didPop(route, previousRoute);
    if (previousRoute is PageRoute && route is PageRoute) {
      _sendScreenView(previousRoute, NavigatorEvent.pop);
    }
  }
}
