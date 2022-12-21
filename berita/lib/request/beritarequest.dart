import 'package:berita/model/beritamodel.dart';
import 'package:dio/dio.dart';

class BeritaRequest {
  // Tambahkan Function untuk request untuk Data Resep Makanan
  Future<BeritaModel> getberita() async {
    Response response = await Dio()
        .get('https://api-berita-indonesia.vercel.app/antara/terbaru');
    return BeritaModel.fromJson(response.data);
  }

  getBerita() {}
}
