class Product {
 
 final String productName;
 final String productPrice;
 final String productDescription;
 final String productImage;
 final bool hasOffer;
 final num? discountPercentage;

 Product(
 {
 required this.productName,
 required this.productDescription,
 required this.productImage,
 required this.productPrice,
 this.discountPercentage,
 required this.hasOffer
 });

}