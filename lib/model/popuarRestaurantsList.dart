
class RestaurantsList{
  String? imagePath;
  String? name;
  //String? label;
  String? rating;
  String? ratingCount;
  String? label;

  RestaurantsList({this.imagePath,this.name,this.rating,this.ratingCount,this.label});

  static List<RestaurantsList> list=[
    RestaurantsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'
    ),
    RestaurantsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'
    ),
    RestaurantsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'
    ),
    RestaurantsList(
        imagePath: 'images/res1.png',
        name: 'Minute by tuk tuk',
        rating: '4.9',
        ratingCount: '(124 ratings) Cafe',
        label: 'Western Food'
    )
  ];
}