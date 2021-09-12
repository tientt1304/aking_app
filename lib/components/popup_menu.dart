import 'package:flutter/material.dart';

class PopupMenu extends StatefulWidget {
  const PopupMenu({Key? key}) : super(key: key);

  @override
  _PopupMenuState createState() => _PopupMenuState();
}
enum WhyFarther { imcomplete, completed, all }
class _PopupMenuState extends State<PopupMenu> {
  //late WhyFarther  _selection;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton <WhyFarther>(
        onSelected: (WhyFarther result){
          setState(() {
            //_selection = result;
          });
        },
        icon: Icon(Icons.add),
        itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
          const PopupMenuItem(
            value: WhyFarther.imcomplete,
            child: Text('Imcomplete'),
          ),
          const PopupMenuItem(
            value: WhyFarther.completed,
            child: Text('Completed'),
          ),
          const PopupMenuItem(
            value: WhyFarther.all,
            child: Text('All tasks'),
          ),
        ],

      ),
    );
  }
}
