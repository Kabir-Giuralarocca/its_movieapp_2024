import 'package:flutter/material.dart';
import 'package:its_movieapp_2024/ui/widgets/app_title.dart';
import 'package:material_symbols_icons/material_symbols_icons.dart';

class TitleAppBar extends StatelessWidget implements PreferredSizeWidget {
  const TitleAppBar({
    super.key,
    this.centerTitle = true,
    this.title,
    this.back,
    this.actions,
  });
  final bool centerTitle;
  final String? title;
  final VoidCallback? back;
  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: centerTitle,
      title: title != null ? Text(title!) : AppTitle(),
      leading: back != null
          ? IconButton(
              onPressed: back,
              icon: const Icon(Symbols.arrow_back),
            )
          : null,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
