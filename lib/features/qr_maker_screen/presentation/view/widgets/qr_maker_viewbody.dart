import 'package:flutter/material.dart';
import 'package:qrmaker/core/text_styles.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class QrMakerViewbody extends StatelessWidget {
  const QrMakerViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          AppLocalizations.of(context)!.qr_maker,
          style: TextStyles.title,
        ),
        backgroundColor: Theme.of(context).primaryColor,
      ),
      body: Center(
        child: Text(
          AppLocalizations.of(context)!.qr_code,
          style: TextStyles.bodyText,
        ),
      ),
    );
  }
}
