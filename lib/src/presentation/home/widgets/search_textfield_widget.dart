import 'package:flutter/material.dart';

import '../../../core/extensions/build_context_ext.dart';
import '../../../utils/app_colors.dart';

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

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
      child: TextField(
        controller: _searchCtrl,
        onEditingComplete: () {
          FocusScope.of(context).unfocus();
          // if (searchController.text.isNotEmpty) {
          //   Navigator.pushNamed(
          //     context,
          //     Routes.detailsView,
          //     arguments: ScreenArguments(cityName: searchController.text),
          //   );
          //   searchController.clear();
          //   FocusScope.of(context).unfocus();
          // } else {
          //   FocusScope.of(context).unfocus();
          // }
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          hintMaxLines: 1,
          hintText: 'Search for a city or zip code...',
          // suffixIconColor: AppColors.grey,
          filled: true,
          isDense: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
          suffixIcon: GestureDetector(
            onTap: () {
              print('sdsd');
            },
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
