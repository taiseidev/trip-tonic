import 'package:flutter/material.dart';
import 'package:trip_tonic/src/presentation/ui/atoms/icon_button_atoms.dart';
import 'package:trip_tonic/src/presentation/ui/molecules/app_bar_title_molecules.dart';
import 'package:trip_tonic/src/presentation/ui/pages/main/main_page.dart';

class PrimaryAppBarOrganisms extends StatelessWidget with PreferredSizeWidget {
  const PrimaryAppBarOrganisms({
    super.key,
    required this.currentTabType,
    this.onPressedLeading,
    this.leadingIcon,
    this.onPressedActions,
    this.actionsIcon,
  });

  final VoidCallback? onPressedLeading;
  final IconData? leadingIcon;
  final VoidCallback? onPressedActions;
  final IconData? actionsIcon;
  final TabType currentTabType;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      surfaceTintColor: Colors.white,
      leading: leadingIcon != null
          ? IconButtonAtoms(
              icon: leadingIcon!,
              onPressed: onPressedLeading!,
            )
          : const SizedBox.shrink(),
      title: AppBarTitleMolecules(type: currentTabType),
      actions: [
        currentTabType == TabType.profile
            ? Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButtonAtoms(
                  onPressed: onPressedActions!,
                  icon: actionsIcon!,
                ),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size(double.infinity, 56);
}
