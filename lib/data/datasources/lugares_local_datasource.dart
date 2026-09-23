import '../../domain/entities/lugar_turistico.dart';

class LugaresLocalDataSource {
  List<LugarTuristico> obtenerLugares() {
    return [
      const LugarTuristico(
        id: '1',
        nombre: 'Jardin Principal',
        descripcion:
            'El corazon de Dolores Hidalgo, rodeado de portales y cafes.',
        imagenAsset: 'assets/images/FBillie.jpg',
        audioAsset: 'audio/AJen.mp3',
        videoAsset: 'assets/video/VBillie.mp4',
      ),
      const LugarTuristico(
        id: '2',
        nombre: 'Parroquia de Nuestra Senora de los Dolores',
        descripcion: 'El lugar donde Miguel Hidalgo dio el Grito de Independencia en 1810.',
        imagenAsset: 'assets/images/FBillie.jpg',
        audioAsset: 'audio/AJen.mp3',
      ),
      const LugarTuristico(
        id: '3',
        nombre: 'Museo Casa de Hidalgo',
        descripcion: 'La casa donde vivio el cura Miguel Hidalgo antes de la Independencia.',
        imagenAsset: 'assets/images/FBillie.jpg',
        audioAsset: 'audio/AJen.mp3',
      ),
    ];
  }
}
