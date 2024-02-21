import 'package:braingain_app/service/index.dart';
import 'package:braingain_app/ui/page/index/file_tile.dart';
import 'package:braingain_app/ui/widget/constrained_list_view.dart';
import 'package:braingain_app/ui/widget/illustration.dart';
import 'package:flutter/material.dart';
import 'package:undraw/undraw.dart';

class IndexPage extends StatefulWidget {
  const IndexPage({super.key});

  static const route = 'index';

  static Future<Object?> open(BuildContext context) =>
      Navigator.of(context).pushNamed(route);

  @override
  State<IndexPage> createState() => _IndexPageState();
}

class _IndexPageState extends State<IndexPage> implements IndexListener {
  List<IndexStatus> _status = <IndexStatus>[];

  @override
  void initState() {
    super.initState();
    IndexService.addListener(this);
  }

  @override
  void dispose() {
    IndexService.removeListener(this);
    super.dispose();
  }

  @override
  void onStatusUpdate(List<IndexStatus> list) {
    setState(() {
      _status = list;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_status.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('Index'),
        ),
        body: const Center(
          child: TextIllustration(
            text: 'Index your documents to extract knowledge',
            illustration: UnDrawIllustration.art_lover,
          ),
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Index'),
        actions: [
          IconButton(
            tooltip: 'Clean index',
            onPressed: () {
              IndexService.clean();
            },
            icon: const Icon(Icons.cleaning_services_outlined),
          ),
        ],
      ),
      body: ConstrainedListView(
        children: _status
            .map((status) => FileUploadProgress(status: status))
            .toList(),
      ),
    );
  }
}
