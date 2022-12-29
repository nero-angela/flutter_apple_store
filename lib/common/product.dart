class Product {
  /// 상품 식별자
  final int id;

  /// 이름
  final String name;

  /// 설명
  final String desc;

  /// 가격
  final String price;

  /// 이미지
  final String imageUrl;

  const Product({
    required this.id,
    required this.name,
    required this.desc,
    required this.price,
    required this.imageUrl,
  });
}

/// Store 상품 목록
const List<Product> storeProductList = [
  Product(
    id: 1,
    name: 'iPhone 14 Pro',
    desc:
        'A magical new way to interact with iPhone Groundbreaking safety features designed to save lives.',
    price: "999\$",
    imageUrl: 'https://i.ibb.co/dJxYRs4/iphone14-pro.jpg',
  ),
  Product(
    id: 2,
    name: 'Apple watch',
    desc:
        'Hike, run, dive. There’s a band for that. Making the ultimate sports watch for athletes of all kinds required a unique approach. That’s why specialized bands for outdoor adventures, endurance training, and water sports are as meticulously crafted as the watch itself.',
    price: "799\$",
    imageUrl: 'https://i.ibb.co/bXjkHd8/apple-watch.jpg',
  ),
  Product(
    id: 3,
    name: 'Air Pods Pro',
    desc:
        'AirPods Pro have been reengineered for even richer audio experiences. Next-level Active Noise Cancellation and Adaptive Transparency reduce more external noise. Spatial Audio takes immersion to a remarkably personal level. Touch control now lets you adjust volume with a swipe. And a leap in power delivers 6 hours of battery life from a single charge.',
    price: "249\$",
    imageUrl: 'https://i.ibb.co/k5q4Yhm/airpod-pro.jpg',
  ),
  Product(
    id: 4,
    name: 'iPad Pro',
    desc:
        'Extreme dynamic range comes to the 12.9-inch iPad Pro.2 The Liquid Retina XDR display delivers true-to-life detail with a 1,000,000:1 contrast ratio, great for viewing and editing HDR photos and videos or enjoying your favorite movies and TV shows. It also features a breathtaking 1000 nits of full‑screen brightness and 1600 nits of peak brightness. And advanced display technologies like P3 wide color, True Tone, and ProMotion.',
    price: "1099\$",
    imageUrl: 'https://i.ibb.co/sVhhC55/ipad12-9.jpg',
  ),
  Product(
    id: 5,
    name: 'MacBook Air',
    desc:
        'MacBook Air comes in four gorgeous finishes — each with its own matching MagSafe charging cable.',
    price: "1199\$",
    imageUrl: 'https://i.ibb.co/bQVHgjM/macbook-air.jpg',
  ),
  Product(
    id: 6,
    name: 'Apple Studio Display',
    desc:
        '27-inch 5K Retina display. 12MP Ultra Wide camera with Center Stage. Studio-quality mics. Six-speaker sound system with Spatial Audio.',
    price: "1599\$",
    imageUrl: 'https://i.ibb.co/z5cKVsh/studio-display.jpg',
  ),
];
