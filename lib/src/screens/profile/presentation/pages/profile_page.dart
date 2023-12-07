import 'package:effective_flutter_lab/src/common/assets/assets.dart';
import 'package:effective_flutter_lab/src/common/extensions/context_extensions.dart';
import 'package:effective_flutter_lab/src/common/extensions/widget_extensions.dart';
import 'package:effective_flutter_lab/src/config/styles/styles.dart';
import 'package:effective_flutter_lab/src/screens/profile/domain/models/service_model.dart';
import 'package:effective_flutter_lab/src/screens/profile/domain/models/tariffs_model.dart';
import 'package:effective_flutter_lab/src/screens/profile/presentation/widgets/profile_services_card.dart';
import 'package:effective_flutter_lab/src/screens/profile/presentation/widgets/tariffs_cell.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    const servicesList = <ServiceModel>[
      ServiceModel(
        icon: AppAssets.sberprime,
        title: 'СберПрайм',
        subtitle: 'Платёж 9 июля',
        description: '199 ₽ в месяц',
      ),
      ServiceModel(
        icon: AppAssets.percentFilled,
        title: 'Переводы',
        subtitle: 'Автопродление 21 августа',
        description: '199 ₽ в месяц',
      ),
    ];

    final tariffsList = <TariffsModel>[
      const TariffsModel(
        icon: AppAssets.speedometer,
        title: 'Изменить суточный лимит',
        subtitle: 'Изменить суточный лимит',
      ),
      const TariffsModel(
        icon: AppAssets.percent,
        title: 'Переводы без комиссии',
        subtitle: 'Показать остаток в этом месяце',
      ),
      const TariffsModel(
        icon: AppAssets.arrowsForwardBack,
        title: 'Информация о тарифах и лимитах',
        subtitle: null,
      ),
    ];

    final interestsList = <String>[
      'Еда',
      'Саморазвитие',
      'Технологии',
      'Дом',
      'Досуг',
      'Забота о себе',
      'Наука',
    ];

    return Builder(
      builder: (context) {
        return CustomScrollView(
          slivers: [
            SliverOverlapInjector(
              handle: NestedScrollView.sliverOverlapAbsorberHandleFor(context),
            ),
            const SliverGap(32),
            Text(
              context.localizations.profileServicesTitle,
              style: context.theme.textTheme.titleSmall,
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 16),
            const SliverGap(8),
            Text(
              context.localizations.profileServicesDescription,
              style: context.theme.textTheme.bodyMedium?.copyWith(
                color: context.theme.colorScheme.primary.withOpacity(.55),
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 16),
            SizedBox(
              height: 175,
              child: ListView.separated(
                itemCount: servicesList.length,
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return ProfileServicesCard(
                    icon: servicesList[index].icon,
                    title: servicesList[index].title,
                    subtitle: servicesList[index].subtitle,
                    description: servicesList[index].description,
                  );
                },
                separatorBuilder: (context, index) {
                  return const Gap(8);
                },
              ),
            ).sliverToBox,
            const SliverGap(26),
            Text(
              context.localizations.profileTariffsTitle,
              style: context.theme.textTheme.titleSmall,
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 16),
            const SliverGap(8),
            Text(
              context.localizations.profileTariffsDescription,
              style: context.theme.textTheme.bodyMedium?.copyWith(
                color: context.theme.colorScheme.primary.withOpacity(.55),
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 16),
            const SliverGap(12),
            SliverList.separated(
              itemCount: tariffsList.length,
              itemBuilder: (context, index) {
                return TariffsCell(
                  model: tariffsList[index],
                  onTap: () {}, //TODO: Add functionality
                );
              },
              separatorBuilder: (context, index) {
                return Divider(
                  height: 2,
                  color: context.theme.colorScheme.primary.withOpacity(.12),
                ).paddingOnly(left: 65);
              },
            ),
            const SliverGap(34),
            Text(
              context.localizations.profileInterestsTitle,
              style: context.theme.textTheme.titleSmall,
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 16),
            const SliverGap(8),
            Text(
              context.localizations.profileInterestsDescription,
              style: context.theme.textTheme.bodyMedium?.copyWith(
                color: context.theme.colorScheme.primary.withOpacity(.55),
              ),
            ).sliverToBox.sliverPaddingSymmetric(horizontal: 16),
            const SliverGap(16),
            Wrap(
              runSpacing: 8,
              spacing: 8,
              children: List.generate(
                interestsList.length,
                (index) {
                  return Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: context.theme.colorScheme.primary.withOpacity(.08),
                      borderRadius: BorderRadius.circular(AppDimensions.circle),
                    ),
                    child: Text(interestsList[index]),
                  );
                },
              ),
            ).paddingSymmetric(horizontal: 16).sliverToBox,
            SliverGap(MediaQuery.paddingOf(context).bottom + 32),
          ],
        );
      },
    );
  }
}
