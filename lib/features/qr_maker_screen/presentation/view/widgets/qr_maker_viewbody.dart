import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:qrmaker/core/text_styles.dart';
import 'package:qrmaker/core/widgets/text_form_field.dart';
import 'package:qrmaker/core/widgets/qr_container.dart';
import 'package:qrmaker/features/qr_maker_screen/presentation/manager/qr_maker_cubit.dart';

class QrMakerViewbody extends StatelessWidget {
  const QrMakerViewbody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16.r),
            ),
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: BlocBuilder<QrMakerCubit, QrMakerState>(
                builder: (context, state) => Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.h),
                    Stack(
                      children: [
                        QrContainer(
                          firstColor: Theme.of(context).shadowColor,
                          secondColor: Theme.of(context).primaryColor,
                        ),
                        if (state is QrImageChanged)
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: QrMakerCubit.get(context).qrImage,
                          )
                      ],
                    ),
                    SizedBox(height: 30.0.h),
                    _buildCustomTextFormField(context),
                    SizedBox(height: 16.0.h),
                    _buildGenerateQrButton(context),
                    SizedBox(height: 50.0.h),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  ElevatedButton _buildGenerateQrButton(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onPressed: () {
        debugPrint(QrMakerCubit.get(context).text);
        QrMakerCubit.get(context).generateQRCode();
      },
      child: Text('Generate QR Code',
          style: TextStyles.bodyText.copyWith(
            color: Colors.white,
          )),
    );
  }

  CustomTextFormField _buildCustomTextFormField(BuildContext context) {
    return CustomTextFormField(
      onChanged: (value) {
        QrMakerCubit.get(context).changeText(value);
      },
      borderColor: Theme.of(context).primaryColor,
      textStyle: TextStyles.subtitle,
      borderWidth: 1.0,
    );
  }
}
