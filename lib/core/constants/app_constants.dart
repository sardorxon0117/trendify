import 'package:trendify/features/onBoarding/screens/walkthroughs.dart';

import 'image_constrants.dart';

class AppConstants {
  AppConstants._();

  // App info
  static const String app_name = "Trendify";

  // splashDuration

  static const int splashDurationMinutes = 3;

  // Walkthroughs

  static const List<WalkthroughItem> WalkthroughItems = [
    WalkthroughItem(
      image: ImageConstrants.walk1,
      title: AppConstants.walkthroughsTitle1,
      subtitle: AppConstants.walkthroughsSubtitle1,
    ),
    WalkthroughItem(
      image: ImageConstrants.walk2,
      title: AppConstants.walkthroughsTitle2,
      subtitle: AppConstants.walkthroughsSubtitle2,
    ),
    WalkthroughItem(
      image: ImageConstrants.walk3,
      title: AppConstants.walkthroughsTitle3,
      subtitle: AppConstants.walkthroughsSubtitle3,
    ),
  ];

  static const String walkthroughsTitle1 = "Explore Fashion Trends with Trendify";
  static const String walkthroughsSubtitle1 = "Dive into the world of fashion with Trendify, where you can discover the latest and hottest styles curated just for you.";
  static const String walkthroughsTitle2 = "Your Style, Your Trendify Experience";
  static const String walkthroughsSubtitle2 = "Trendify goes beyond fashion - it's a personalized style journey. Start your fashion adventure with Trendify today.";
  static const String walkthroughsTitle3 = "Seamless Fashion, Seamless Shopping";
  static const String walkthroughsSubtitle3 = "Trendify offers an effortless shopping experience, making your style journey smoother than ever.";
  static const String skip = "Skip";
  static const String continuee = "Continue";
  static const String getStarted = "Let's Get Started";

  // Welcome screen

  static const String welcomeTitle = "Let's Get Started!";
  static const String welcomeSubtitle = "Let's dive in into your account";
  static const String signUp = 'Sign up';
  static const String signIn = 'Sign in';
  static const String privacyPolicy = 'Privacy Policy';
  static const String termsOfService = 'Terms of Service';

  static const String continueWithGoogle = 'Continue with Google';
  static const String continueWithApple = 'Continue with Apple';
  static const String continueWithFacebook = 'Continue with Facebook';
  static const String continueWithTwitter = 'Continue with Twitter';

  // SignUp screen

  static const String joinTrendifyToday = 'Join Trendify Today 👤';
  static const String embarkFashionJourneyTailoredYou = 'Embark on a fashion journey tailored for you.';
  static const String email = 'Email';
  static const String password = 'Password';
  static const String iAgreeToTrendify = 'I agree to Trendify';
  static const String alreadyAccount = 'Already have an account? ';
  static const String or = 'or';
  static const String termsConditions = ' Terms & Conditions.';
  static const String welcomeBack = 'Welcome Back! 👋';
  static const String signAccessYourPersonalizedFashion = 'Sign in to access your personalized fashion.';
  static const String rememberMe = 'Remember me';
  static const String forgotPassword = 'Forgot Password?';

  // Forgot Password screen

  static const String forgotYourPassword = 'Forgot Your Password? 🔑';
  static const String forgotPasswordTitle = "We've got you covered. Enter your registered email to reset your password. We will send an OTP code to your email for the next steps.";
  static const String yourRegisteredEmail = "Your Registered Email";
  static const String chesking = "checking...";
  static const String fieldEmpty = "The field is empty.";
  static const String thisNotEmail = "This is not an email.";
  static const String correctEmail = "Correct email.";
  static const String sendOTPCode = "Send OTP Code";

  // Enter OTP screen

  static const String enterOTPCode  = "Enter OTP Code 🔐";
  static const String enterOTPCodeTitle  = "Please check your email inbox for a message from Trendify. Enter the one-time verification code below.";
  static const String canResendCode  = "You can resend the code in ";
  static const String seconds  = " seconds";
  static const String resendCode  = "Resend code";

  // New Password screen

  static const String longPasswordCharacter  = "Password must be at least 8 characters long.";
  static const String passwordNotMatch  = "Passwords do not match.";
  static const String correctPassword  = "Correct password.";
  static const String confirmNewPassword  = "Confirm New Password";
  static const String newPassword  = "New Password";
  static const String secureYourAccount  = "Secure Your Account 🔒";
  static const String secureYourAccountTitle  = "Almost there! Create a new password for your Trendify account to keep it secure. Remember to choose a strong and unique password.";
  static const String saveNewPassword  = "Save New Password";

  // Successful Changed Pasword screen

  static const String you_reAllSet  = "You're All Set!";
  static const String you_reAllSetTitle  = "Your password has been successfully changed.";
  static const String goToHomepage  = "Go to Homepage";

  // Home screen

  static const String searchTrends  = "Search Trends...";
  static const String deepSpace  = "Deep Space";

  static const String discover  = "Discover";
  static const String women  = "Women";
  static const String men  = "Men";
  static const String shoe  = "Shoe";
  static const String bag  = "Bag";
  static const String luxury  = "Luxury";
  static const String kids  = "Kids";
  static const String sports  = "Sports";
  static const String beauty  = "Beauty";
  static const String lifestyle  = "Lifestyle";
  static const String other  = "Other";

  static const String newArrival  = "New Arrival";
  static const String hotDealsThisWeek  = "Hot Deals This Week";
  static const String viewAll  = "View All";

}

class WalkthroughItem {
  final String image;
  final String title;
  final String subtitle;

  const WalkthroughItem({
    required this.image,
    required this.title,
    required this.subtitle,
  });
}

class Product {
  String image;
  String productName;
  String price;
  String fav;
  String category;

  Product({
    required this.image,
    required this.productName,
    required this.price,
    required this.fav,
    required this.category,
  });
}

final List<Product> products = [
  // Woman
  Product(
    image: "assets/productImages/Urban Blend Long Sleeve Shirt.png",
    productName: "Urban Blend Long Sleeve Shirt",
    price: "185.00",
    fav: "4.8",
    category: "Women",
  ),
  Product(
    image: "assets/productImages/Elite Style Modal Elegance.png",
    productName: "Elite Style Modal Elegance",
    price: "190.00",
    fav: "4.9",
    category: "Women",
  ),
  Product(
    image: "assets/productImages/Urban Flex Comfort Hoodie.png",
    productName: "Urban Flex Comfort Hoodie",
    price: "175.00",
    fav: "4.7",
    category: "Women",
  ),
  Product(
    image: "assets/productImages/Svelte Style Premium Fit.png",
    productName: "Svelte Style Premium Fit",
    price: "165.50",
    fav: "4.6",
    category: "Women",
  ),
  Product(
    image: "assets/productImages/Street Style Cozy Pullover.png",
    productName: "Street Style Cozy Pullover",
    price: "185.00",
    fav: "4.5",
    category: "Women",
  ),
  Product(
    image: "assets/productImages/Moda Chic Luxury Hooded.png",
    productName: "Moda Chic Luxury Hooded",
    price: "200.00",
    fav: "4.8",
    category: "Women",
  ),

  // Men
  Product(
    image: "assets/productImages/Street Style Comfort Tee.png",
    productName: "Street Style Comfort Tee",
    price: "155.00",
    fav: "4.7",
    category: "Men",
  ),
  Product(
    image: "assets/productImages/Luxe Blend Formal Wear.png",
    productName: "Luxe Blend Formal Wear",
    price: "160.00",
    fav: "4.6",
    category: "Men",
  ),
  Product(
    image: "assets/productImages/Urban Elegance Business Suit.png",
    productName: "Urban Elegance Business Suit",
    price: "215.00",
    fav: "4.5",
    category: "Men",
  ),
  Product(
    image: "assets/productImages/Trend Craft Fleece Style.png",
    productName: "Trend Craft Fleece Style",
    price: "210.50",
    fav: "4.9",
    category: "Men",
  ),

  // Shoes
  Product(
    image: "assets/productImages/Street Walk Loafers Classic.png",
    productName: "Street Walk Loafers Classic",
    price: "210.00",
    fav: "4.9",
    category: "Shoe",
  ),
  Product(
    image: "assets/productImages/Nike Urban Stride Sneakers Stylish.png",
    productName: "Nike Urban Stride Sneakers Stylish",
    price: "200.00",
    fav: "4.7",
    category: "Shoe",
  ),
  Product(
    image: "assets/productImages/Vogue Step Boots Trendy.png",
    productName: "Vogue Step Boots Trendy",
    price: "195.00",
    fav: "4.8",
    category: "Shoe",
  ),
  Product(
    image: "assets/productImages/Nike Trendy Kicks Athletic Performance.png",
    productName: "Nike Trendy Kicks Athletic Performance",
    price: "185.00",
    fav: "4.5",
    category: "Shoe",
  ),
];

class Category {
  String title;
  String image;

  Category({required this.title, required this.image});
}


List<Category> categories = [
  Category(title: AppConstants.women, image: ImageConstrants.women),
  Category(title: AppConstants.men, image: ImageConstrants.men),
  Category(title: AppConstants.shoe, image: ImageConstrants.shoe),
  Category(title: AppConstants.bag, image: ImageConstrants.bag),
  Category(title: AppConstants.luxury, image: ImageConstrants.luxury),
  Category(title: AppConstants.kids, image: ImageConstrants.kids),
  Category(title: AppConstants.sports, image: ImageConstrants.sports),
  Category(title: AppConstants.beauty, image: ImageConstrants.beauty),
  Category(title: AppConstants.lifestyle, image: ImageConstrants.lifestyle),
  Category(title: AppConstants.other, image: ImageConstrants.other),
];