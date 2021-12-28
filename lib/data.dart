

import 'designer_model.dart';

class Data {

  final List<DesignerModel> _designerModel=[];
  
  
  List<DesignerModel> get designerModel=> _designerModel;
 

void load() {

_designerModel.add( DesignerModel(
  id: 1,
  pathImage: "assets/img/pm1.jpg",
  nombre: "Maria",
  apellidos: "Tavarez",
  yearExperiences: 1
));

_designerModel.add( DesignerModel(
   id: 2,
  pathImage: "assets/img/ph1.jpg",
  nombre: "Jose",
  apellidos: "Martinez",
  yearExperiences: 1
));

_designerModel.add( DesignerModel(
    id: 3,
  pathImage: "assets/img/ph2.jpg",
  nombre: "Juan ",
  apellidos: "Mezquita",
  yearExperiences: 1,
  readMsg: true,
));

_designerModel.add( DesignerModel(
    id: 4,
  pathImage: "assets/img/pm2.jpg",
  nombre: "Yosi",
  apellidos: "Tejada",
  yearExperiences: 1
));


_designerModel.add( DesignerModel(
    id: 5,
  pathImage: "assets/img/ph3.jpg",
  nombre: "Starling",
  apellidos: "Germosen",
  yearExperiences: 3
));


_designerModel.add( DesignerModel(
    id: 6,
  pathImage: "assets/img/ph4.jpg",
  nombre: "Wellinton ",
  apellidos: "Polanco",
  yearExperiences: 2,
  readMsg: true,
));


_designerModel.add( DesignerModel(
    id: 7,
  pathImage: "assets/img/ph5.jpg",
  nombre: "Jose",
  apellidos: "Caraballo",
  yearExperiences: 2
));


_designerModel.add( DesignerModel(
    id: 8,
  pathImage: "assets/img/ph6.jpg",
  nombre: "Manuel",
  apellidos: "Jimenez",
  yearExperiences: 1
));


_designerModel.add( DesignerModel(
    id: 9,
  pathImage: "assets/img/pm3.jpg",
  nombre: "Yofi",
  apellidos: "Mezquita",
  yearExperiences: 1
));


_designerModel.add( DesignerModel(
    id: 10,
  pathImage: "assets/img/pm4.jpg",
  nombre: "Zulerka",
  apellidos: "Mezquita",
  yearExperiences: 1,
   readMsg: true,
));


_designerModel.add( DesignerModel(
  id: 11,
  pathImage: "assets/img/ph7.jpg",
  nombre: "Juan",
  apellidos: "Peguero",
  yearExperiences: 1
));


_designerModel.add( DesignerModel(
  id: 12,
  pathImage: "assets/img/pm5.jpg",
  nombre: "Anabel",
  apellidos: "Polanco",
  yearExperiences: 1
));


_designerModel.add( DesignerModel(
  id: 13,
  pathImage: "assets/img/pm6.jpg",
  nombre: "Juana",
  apellidos: "Genao",
  yearExperiences: 1
));


_designerModel.add( DesignerModel(
  id: 14,
  pathImage: "assets/img/ph8.jpg",
  nombre: "kelvin",
  apellidos: "rojas",
  yearExperiences: 1,
  readMsg: true,
));


_designerModel.add( DesignerModel(
  id: 15,
  pathImage: "assets/img/ph9.jpg",
  nombre: "Francisco",
  apellidos: "Almonto",
  yearExperiences: 1
));


_designerModel.add( DesignerModel(
  id: 16,
  pathImage: "assets/img/ph1.jpg",
  nombre: "Fausto",
  apellidos: "Genao",
  yearExperiences: 1
));



}


}
