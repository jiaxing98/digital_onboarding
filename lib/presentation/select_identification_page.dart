import 'package:digital_onboarding/core/constants/layout.dart';
import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/dob_app_bar.dart';
import 'package:digital_onboarding/presentation/select_identification_page_viewmodel.dart';
import 'package:digital_onboarding/routes.dart';
import 'package:digital_onboarding/utils/ut_error_dialog.dart';
import 'package:digital_onboarding/utils/ut_future_builder.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:provider/provider.dart';

class SelectIdentificationPage extends StatefulWidget {
  const SelectIdentificationPage({super.key});

  @override
  State<SelectIdentificationPage> createState() => _SelectIdentificationPageState();
}

class _SelectIdentificationPageState extends State<SelectIdentificationPage> {
  late SelectIdentificationPageVM viewmodel;

  Future<List<IdDocument>>? getIdDocumentsFuture;

  @override
  void initState() {
    super.initState();
    getIdDocumentsFuture = viewmodel.getIdDocuments();
  }

  @override
  Widget build(BuildContext context) {
    return UTFutureBuilder(
      future: getIdDocumentsFuture,
      onCompleted: (documents) {
        return Scaffold(
          appBar: const DobAppBar(
            title: "Select Identification Type",
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(KPadding.page),
              child: Column(
                children: [
                  const Text(
                    "ID Verification",
                    style: TextStyle(fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16.0),
                  IdentificationGrid(documents: documents),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

//region IdentificationGrid
class IdentificationGrid extends StatefulWidget {
  final List<IdDocument> documents;

  const IdentificationGrid({
    super.key,
    required this.documents,
  });

  @override
  State<IdentificationGrid> createState() => _IdentificationGridState();
}

class _IdentificationGridState extends State<IdentificationGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      shrinkWrap: true,
      padding: const EdgeInsets.all(16.0),
      crossAxisSpacing: 10,
      mainAxisSpacing: 10,
      crossAxisCount: 2,
      childAspectRatio: 1.5,
      children: List.generate(
        widget.documents.length,
        (index) {
          final document = widget.documents[index];
          return IdentificationCard(
            text: document.name,
            onTap: () {
              _saveIdDocument(document);
            },
          );
        },
      ),
    );
  }

  Future<void> _saveIdDocument(IdDocument document) async {
    final viewmodel = context.read<SelectIdentificationPageVM>();
    final task = viewmodel.saveIdDocument(document);

    context.loaderOverlay.show();
    final result = await task.run();
    result.fold((failure) {
      context.loaderOverlay.hide();
      showErrorDialog(context: context, failure: failure);
    }, (_) {
      context.loaderOverlay.hide();
      context.pushNamed(Pages.guidelines);
    });
  }
}

//endregion

//region IdentificationCard
class IdentificationCard extends StatefulWidget {
  final String text;
  final void Function() onTap;

  const IdentificationCard({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  State<IdentificationCard> createState() => _IdentificationCardState();
}

class _IdentificationCardState extends State<IdentificationCard> {
  bool isSelected = false;

  Future debounce() async {
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      isSelected = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapUp: (details) {
        debounce();
      },
      onTapDown: (details) {
        widget.onTap();
        setState(() {
          isSelected = true;
        });
      },
      child: Container(
        width: 160.0,
        height: 80.0,
        decoration: isSelected
            ? BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(10.0),
              )
            : BoxDecoration(
                border: Border.all(
                  width: 1.0,
                  color: Colors.grey,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
        child: Center(
          child: Text(
            widget.text,
            style: TextStyle(
              fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ),
      ),
    );
  }
}
//endregion
