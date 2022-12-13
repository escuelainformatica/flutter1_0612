import 'package:flutter/cupertino.dart';

class FilaCupertino extends StatefulWidget {

  String texto="";
  FilaCupertino(this.texto); // constructor

  @override
  State<StatefulWidget> createState() {
    return FilaCupertinoEstado();
  }


}
class FilaCupertinoEstado extends State<FilaCupertino> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Text(this.widget.texto),
          Container(width: 20,),
          Text(this.widget.texto),
          Container(width: 20,),
          Text(this.widget.texto),
          Container(width: 20,),
          Text(this.widget.texto),
        ],
      ),
    );
  }

}