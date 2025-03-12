import 'package:flutter/material.dart';
import 'package:muslim_companion/core/data/quran.dart';
import 'package:muslim_companion/core/themes/light_theme.dart';
import 'package:muslim_companion/features/quran/views/widgets/sour_tile.dart';
import 'package:muslim_companion/generated/l10n.dart';

class QuranScreen extends StatelessWidget {
  const QuranScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverToBoxAdapter(
          child: Text(S.of(context).quran, style: LightTheme.kH2TextStyle),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
        SliverList.builder(
          itemCount: sourList.length,
          itemBuilder:
              (context, index) => SourTile(
                sour: sourList[index],
                isLast: index == sourList.length - 1,
                isFirst: index == 0,
              ),
        ),
        const SliverToBoxAdapter(child: SizedBox(height: 20)),
      ],
    );
  }
}
