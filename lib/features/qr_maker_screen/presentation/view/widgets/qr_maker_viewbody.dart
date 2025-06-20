import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:qrmaker/core/text_styles.dart';
import 'package:qrmaker/core/widgets/text_form_field.dart';
import 'package:qrmaker/core/widgets/qr_container.dart';
import 'package:qrmaker/features/qr_maker_screen/presentation/manager/qr_maker_cubit.dart';
import 'package:qrmaker/core/widgets//qr_colors_container.dart';

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
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50.h),
                    _builldQrContainer(),
                    SizedBox(height: 30.0.h),
                    _buildCustomTextFormField(context),
                    SizedBox(height: 16.0.h),
                    _buildGenerateQrButton(context),
                    SizedBox(height: 50.0.h),
                    _buildQrContainerColors()
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  BlocBuilder<QrMakerCubit, QrMakerState> _builldQrContainer() {
    return BlocBuilder<QrMakerCubit, QrMakerState>(
      builder: (context, state) => Stack(
        children: [
          QrContainer(
            firstColor: QrMakerCubit.get(context).firstColor,
            secondColor: QrMakerCubit.get(context).secondColor,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: QrMakerCubit.get(context).qrImage,
          )
        ],
      ),
    );
  }

  BlocBuilder<QrMakerCubit, QrMakerState> _buildQrContainerColors() {
    return BlocBuilder<QrMakerCubit, QrMakerState>(
        builder: (context, state) => SizedBox(
              height: 70.h,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: [
                  QrColorsContainer(
                      firstColor: Colors.redAccent,
                      secondColor: Colors.red,
                      onTap: () => QrMakerCubit.get(context)
                          .changeColor(Colors.redAccent, Colors.red)),
                  QrColorsContainer(
                      firstColor: Colors.yellowAccent,
                      secondColor: Colors.yellow,
                      onTap: () => QrMakerCubit.get(context)
                          .changeColor(Colors.yellowAccent, Colors.yellow)),
                  QrColorsContainer(
                      firstColor: Colors.orangeAccent,
                      secondColor: Colors.orange,
                      onTap: () => QrMakerCubit.get(context)
                          .changeColor(Colors.orangeAccent, Colors.orange)),
                  QrColorsContainer(
                      firstColor: Colors.greenAccent,
                      secondColor: Colors.green,
                      onTap: () => QrMakerCubit.get(context)
                          .changeColor(Colors.greenAccent, Colors.green)),
                  QrColorsContainer(
                      firstColor: Colors.blueAccent,
                      secondColor: Colors.blue,
                      onTap: () => QrMakerCubit.get(context)
                          .changeColor(Colors.blueAccent, Colors.blue)),
                  QrColorsContainer(
                      firstColor: Colors.purpleAccent,
                      secondColor: Colors.purple,
                      onTap: () => QrMakerCubit.get(context)
                          .changeColor(Colors.purpleAccent, Colors.purple)),
                  QrColorsContainer(
                      firstColor: Theme.of(context).shadowColor,
                      secondColor: Theme.of(context).primaryColor,
                      onTap: () => QrMakerCubit.get(context).changeColor(
                          Theme.of(context).shadowColor,
                          Theme.of(context).primaryColor)),
                  QrColorsContainer(
                      firstColor: Colors.white,
                      secondColor: Colors.white,
                      onTap: () => QrMakerCubit.get(context)
                          .changeColor(Colors.white, Colors.white)),
                ],
              ),
            ));
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
