import 'package:berita/cubit/beritastate.dart';
import 'package:berita/model/beritamodel.dart';
import 'package:berita/request/beritarequest.dart';
import 'package:bloc/bloc.dart';

class BeritaCubit extends Cubit<BeritaState> {
  BeritaCubit() : super(BeritaInitial());

  // Tambahakan Cubit BeritaRequest
  final BeritaRequest beritaRequest = BeritaRequest();

  // Tambahakan Model BeritaModel
  BeritaModel beritaModel = BeritaModel();

  // Tambahakan Function getDataBerita yang akan digunanan nanti di Screen
  getDataResepMakanan() async {
    emit(BeritaInitial());
    beritaModel = await beritaRequest.getBerita();
    emit(DataBerita(beritaModel));
  }

  void getDataBerita() {}
}
