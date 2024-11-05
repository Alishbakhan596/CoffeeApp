class ItemModel {
  final String productName;
  final String productDescription;
  final String unitPrice;
  final String images;
  final String? productId;

  ItemModel({
    required this.productName,
    required this.productDescription,
    required this.unitPrice,
    required this.images,
    this.productId,
  });
}
