import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/presentation/capture_id_guidelines_page_viewmodel.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:digital_onboarding/utils/ut_error_dialog.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

class CaptureIdGuidelinesPage extends StatefulWidget {
  const CaptureIdGuidelinesPage({
    super.key,
  });

  @override
  State<CaptureIdGuidelinesPage> createState() => _CaptureIdGuidelinesPageState();
}

class _CaptureIdGuidelinesPageState extends State<CaptureIdGuidelinesPage> {
  late CaptureIdGuidelinesPageVM viewmodel;

  @override
  void initState() {
    super.initState();
    viewmodel = context.read<CaptureIdGuidelinesPageVM>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DobAppBar(
        title: "Snap Photo ID",
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(KPadding.page),
          child: ListView(
            children: [
              const TextGuidelines(),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.network("https://picsum.photos/id/1/600/400"),
              ),
              SnapPhotoButton(
                onPressed: () {
                  _performEkyc();
                },
              ),
              const SizedBox(height: 16.0),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _performEkyc() async {
    final task = viewmodel.performEkyc();
    context.loaderOverlay.show();
    final result = await task.run();
    result.fold((failure) {
      context.loaderOverlay.hide();
      showErrorDialog(context: context, failure: failure);
      // todo: push to exception page
    }, (ekycInfo) {
      context.loaderOverlay.hide();
      context.pushNamed(Pages.form, extra: ekycInfo);
    });
  }
}

//region TextGuidelines
class TextGuidelines extends StatelessWidget {
  const TextGuidelines({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Please ensure the following:-",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        SizedBox(height: kSpacingSmall),
        TextGuidelineItem(
          text: "Use a valid and original ID",
        ),
        SizedBox(height: kSpacingSmall),
        TextGuidelineItem(
          text: "Place the ID within the frame",
        ),
        SizedBox(height: kSpacingSmall),
        TextGuidelineItem(
          text: "Avoid glare and reflection",
        ),
        SizedBox(height: kSpacingSmall),
        TextGuidelineItem(
          text: "Avoid blocking or covering the ID",
        ),
      ],
    );
  }
}
//endregion

//region TextGuidelineItem
class TextGuidelineItem extends StatelessWidget {
  final String text;

  const TextGuidelineItem({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text('\u2022'),
        const SizedBox(width: kSpacingMedium),
        Expanded(
          child: Text(text),
        ),
      ],
    );
  }
}
//endregion

//region SnapPhotoButton
class SnapPhotoButton extends StatelessWidget {
  final void Function() onPressed;

  const SnapPhotoButton({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 150.0,
        child: OutlinedButton(
          onPressed: onPressed,
          child: const Center(child: Text("Snap Photo")),
        ),
      ),
    );
  }
}
//endregion
