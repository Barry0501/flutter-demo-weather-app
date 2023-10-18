import 'package:flutter/material.dart';

class AutoHideKeyboard extends StatelessWidget {
  final Widget child;

  const AutoHideKeyboard({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: context.hideKeyboard,
      // onTapDown: (_) => hideKeyboard(),
      behavior: HitTestBehavior.opaque,
      child: child,
    );
  }
}

extension BuildCtxHideKeyboard on BuildContext {
  void hideKeyboard() {
    final currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus) {
      currentFocus.unfocus();
    }
  }
}

class ScaffoldHideKeyboard extends Scaffold {
  ScaffoldHideKeyboard({
    Key? key,
    PreferredSizeWidget? appBar,
    required Widget body,
    bool resizeToAvoidBottomInset = true,
    Widget? floatingActionButton,
    FloatingActionButtonLocation? floatingActionButtonLocation,
    Widget? bottomNavigationBar,
    bool extendBody = false,
    Color? backgroundColor,
    Widget? endDrawer,
  }) : super(
          key: key,
          appBar: appBar,
          resizeToAvoidBottomInset: resizeToAvoidBottomInset,
          body: AutoHideKeyboard(child: body),
          floatingActionButton: floatingActionButton,
          floatingActionButtonLocation: floatingActionButtonLocation,
          bottomNavigationBar: bottomNavigationBar,
          extendBody: extendBody,
          backgroundColor: backgroundColor,
          endDrawer: endDrawer,
        );
}
