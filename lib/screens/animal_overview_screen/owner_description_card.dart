import 'package:flutter/material.dart';

class OwnerDescriptionCard extends StatelessWidget {
  final String owner;

  const OwnerDescriptionCard({
    Key key,
    @required this.owner,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: EdgeInsets.all(0),
      leading: Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: CircleAvatar(
          child: Placeholder(),
        ),
      ),
      title: Text(owner[0]),
      subtitle: const Text('Owner\' name'),
    );
  }
}
