import 'package:flutter/material.dart';

import '../../../core/extensions/build_context_ext.dart';
import '../../../utils/app_colors.dart';
import '../home_coordinator.dart';

class SearchTextFieldWidget extends StatefulWidget {
  const SearchTextFieldWidget({super.key});

  @override
  State<SearchTextFieldWidget> createState() => _SearchTextFieldWidgetState();
}

class _SearchTextFieldWidgetState extends State<SearchTextFieldWidget> {
  final _searchCtrl = TextEditingController();

  @override
  void dispose() {
    _searchCtrl.dispose();
    super.dispose();
  }

  void _onPressedBtnDone() {
    FocusScope.of(context).unfocus();
    final textSearch = _searchCtrl.text.trim();
    if (textSearch.isNotEmpty) {
      context.startWeatherDetailPage(textSearch);
      _searchCtrl.clear();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: TextField(
        controller: _searchCtrl,
        onEditingComplete: _onPressedBtnDone,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          hintMaxLines: 1,
          hintText: 'Search for a city or zip code...',
          filled: true,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          suffixIcon: GestureDetector(
            onTap: _onPressedBtnDone,
            child: Container(
              margin: const EdgeInsets.all(6),
              padding: const EdgeInsets.all(6),
              decoration: BoxDecoration(
                color: AppColors.black,
                borderRadius: BorderRadius.circular(6),
              ),
              alignment: Alignment.center,
              width: 60,
              child: Text(
                'Search',
                style: context.textTheme.bodyMedium,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
