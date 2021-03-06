import 'package:flutter/material.dart';
import '../screens/community_home.dart';
import '../screens/event_description_screen.dart';

class CardEvent extends StatelessWidget {
  final String title;
  final bool isParcipating;
  final DateTime? date;
  const CardEvent(
      {Key? key, required this.title, this.date, required this.isParcipating})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: const Color.fromARGB(255, 164, 102, 212),
        onTap: () {
          if (isParcipating) {
            Navigator.pushNamed(context, CommunityHome.routeName, arguments: {
              "id": title,
            });
          } else {
            Navigator.pushNamed(context, EventDescriptionScreen.routeName,
                arguments: {
                  'id': title,
                });
          }
        },
        child: SizedBox(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(title,
                  maxLines: 2, style: Theme.of(context).textTheme.headline5),
              Text(date?.toString() ?? ""),
            ]),
          ),
        ),
      ),
    );
  }
}
