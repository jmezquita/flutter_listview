import 'package:flutter/material.dart';
import 'package:flutter_listview/designer_model.dart';

class DesignerWidget extends StatelessWidget {
  final DesignerModel designermodel;

  const DesignerWidget(this.designermodel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _photo = Container(
      margin: const EdgeInsets.only(left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage(designermodel.pathImage))),
    );

    final _userName = Container(
      margin: const EdgeInsets.only(left: 15.0),
      child: Text(
        "${designermodel.nombre} ${designermodel.apellidos}",
        textAlign: TextAlign.left,
        style: const TextStyle(
            fontSize: 17.0, fontWeight: FontWeight.w900, color: Colors.black45),
      ),
    );

    final _userinfo = Container(
      margin: const EdgeInsets.only(left: 15.0, top: 5.0),
      child: Text(
        "Experiences: ${designermodel.yearExperiences} years",
        textAlign: TextAlign.left,
        style: const TextStyle(fontSize: 13.0, color: Colors.black38),
      ),
    );

    final _buttenEmail = Container(
        margin: const EdgeInsets.only(right: 25.0),
        height: 40,
        width: 40,
          child:
              Icon(Icons.mail, color: designermodel.readMsg ? Colors.black45 : Colors.white,),

        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: designermodel.readMsg ? Colors.grey.withOpacity(0.5): Colors.red)
            );
/*
    final _buttonSend = InkWell(
        child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: IconButton(
                icon: const Icon(Icons.email),
                iconSize: 50.0,
                color: designermodel.readMsg ? Colors.grey : Colors.red,
                onPressed: () {
                  /*Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => DeliveryScreen()),
                            );*/
                },
              ),
            )));
*/
    return Row(
  
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        _photo,

   Flexible(
            fit: FlexFit.tight,
            child:  Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[_userName, _userinfo],
        ), 
),

       
        _buttenEmail
    

        /*
        Container(
          margin: const EdgeInsets.only(left: 10.0),
          child: const Center(
            child: Icon(
              Icons.favorite,
              color: Colors.pink,
              size: 36.0,
              semanticLabel: 'Text to announce in accessibility modes',
            ),
          ),
        )
        */
      ],
    );
  }
}
