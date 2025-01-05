import 'package:flutter/material.dart';

class StreamBuilderWidget<T> extends StatelessWidget {
  final Stream<T> stream;
  final AsyncWidgetBuilder<T> builder;

  const StreamBuilderWidget(
      {super.key, required this.stream, required this.builder});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: this.stream,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting ||
            snapshot.connectionState == ConnectionState.none) {
          return const Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Text('Error fetching data: ${snapshot.error}');
        } else if (snapshot.hasData) {
          return const Center(child: Text('No elements'));
        }
        return builder(context, snapshot);
      },
    );
  }
}
