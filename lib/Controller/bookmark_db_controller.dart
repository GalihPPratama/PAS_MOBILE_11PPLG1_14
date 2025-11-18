import 'package:get/get.dart';
import 'package:pas_mobile_11pplg1_14/Helpers/DBHelper.dart';

class BookmarkDbController extends GetxController {
  var favorites = <Map<String, dynamic>>[].obs;
  final _db = BookmarkDB();

  @override
  void onInit() {
    super.onInit();
    loadBookmark();
  }

  Future<void> loadBookmark() async {
    final data = await _db.getBookmark();

    favorites.assignAll(List<Map<String, dynamic>>.from(data));
  }

  bool isBookmark(Map<String, dynamic> item) {
    return favorites.any((fav) => fav["id"] == item["id"]);
  }

  Future<void> toggleFavorite(Map<String, dynamic> item) async {
    final id = item["id"];

    if (isBookmark(item)) {
      /// Hapus dari DB
      await _db.deleteBookmark(id);

      /// Hapus dari RxList
      favorites.removeWhere((fav) => fav["id"] == id);
    } else {
      /// Buat Map baru
      final newItem = {
        "id": id,
        "title": item["title"],
        "price": item["price"],
        "category": item["category"],
        "image": item["image"],
      };

      /// Tambah ke DB
      await _db.addBookmark(newItem);

      /// Tambah ke RxList
      favorites.add(newItem);
    }
  }
}
