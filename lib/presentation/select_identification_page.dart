import 'package:digital_onboarding/domain/entities/id_document.dart';
import 'package:digital_onboarding/presentation/_shared/widgets/lazy_future_builder.dart';
import 'package:digital_onboarding/presentation/_viewmodels/app_data_viewmodel.dart';
import 'package:digital_onboarding/presentation/select_identification_page_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SelectIdentificationPage extends StatefulWidget {
  const SelectIdentificationPage({super.key});

  @override
  State<SelectIdentificationPage> createState() => _SelectIdentificationPageState();
}

class _SelectIdentificationPageState extends State<SelectIdentificationPage> {
  late AppDataVM appDataVM;

  Future<void>? getIdDocumentsFuture;

  @override
  void initState() {
    super.initState();
    appDataVM = context.watch<AppDataVM>();
    getIdDocumentsFuture = appDataVM.getIdDocuments();
  }

  @override
  Widget build(BuildContext context) {
    return LazyFutureBuilder(
      future: getIdDocumentsFuture,
      onCompleted: (_) {
        return Scaffold(
          appBar: AppBar(
            title: Text("Select Identification Type"),
          ),
          body: Column(
            children: [
              Text(
                "ID Verification",
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 16.0),
              const IdentificationGrid(),
            ],
          ),
        );
      },
    );
  }
}

// ! IdentificationGrid
class IdentificationGrid extends StatefulWidget {
  const IdentificationGrid({
    super.key,
  });

  @override
  State<IdentificationGrid> createState() => _IdentificationGridState();
}

class _IdentificationGridState extends State<IdentificationGrid> {
  late AppDataVM appDataVM;
  late SelectIdentificationPageVM viewmodel;

  Future<List<IdDocument>?>? getIdDocumentsFuture;

  @override
  void initState() {
    super.initState();
    appDataVM = context.watch<AppDataVM>();
    viewmodel = context.read<SelectIdentificationPageVM>();
    getIdDocumentsFuture = appDataVM.getIdDocuments();
  }

  @override
  Widget build(BuildContext context) {
    return LazyFutureBuilder(
      future: getIdDocumentsFuture,
      onCompleted: (documents) {
        if (documents == null || documents.isEmpty) {
          return const Center(child: Text("No Data"));
        }

        return GridView.count(
          primary: false,
          shrinkWrap: true,
          padding: const EdgeInsets.all(16.0),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          children: List.generate(
            documents.length,
            (index) {
              final document = documents[index];
              return IdentificationCard(
                text: document.name,
                onTap: () {
                  _saveIdDocument(document);
                },
              );
            },
          ),
        );
      },
    );
  }

  Future<void> _saveIdDocument(IdDocument document) async {
    showDialog(
      context: context,
      builder: (ctx) {
        return LazyFutureBuilder(
          future: viewmodel.saveIdDocument(document),
          onCompleted: (_) {
            return AlertDialog(
              title: Text("Success"),
            );
          },
          onError: (ex) {
            return AlertDialog(
              title: Text("Failed"),
            );
          },
        );
      },
    );
  }
}

// ! IdentificationCard
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
