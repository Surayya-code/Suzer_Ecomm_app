import 'package:flutter/material.dart';
import 'package:suzer_ecom_appp/global/sized_box/sized_box.dart';
import 'package:suzer_ecom_appp/global/styles/app_paddings.dart';
import 'package:suzer_ecom_appp/global/styles/app_text_styles.dart';

class GlobalAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final bool showActions;
  final bool showOnlySearch;
  final bool showBack;
  final bool centerTitle;

  const GlobalAppBar({
    super.key,
    required this.title,
    this.showActions = false,
    this.showOnlySearch = false,
    this.showBack = true,
    this.centerTitle = false,
  });

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        centerTitle: centerTitle,
        automaticallyImplyLeading: showBack,
        leading: showBack ? const BackButton() : null,
        title: Text(
          title,
          style: AppTextStyles.appBarTitleTextStyle,
        ),
        actions: [
          if (showActions)
            Padding(
              padding: AppPaddings.symmetricHorizontal16,
              child: Row(
                children: [
                  const Icon(Icons.search_rounded),
                  if (showOnlySearch) ...[
                    AppSizedBox.sizedBox16w,
                    const Icon(Icons.more_vert_rounded),
                  ],
                ],
              ),
            ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
