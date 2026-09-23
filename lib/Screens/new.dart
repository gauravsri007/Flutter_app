import 'package:flutter/material.dart';
import 'package:project_3/Screens/app_settings.dart';

class DealOfTheDaySection extends StatelessWidget {
  final List<DealProductData> deals;
  final VoidCallback? onViewAllTap;

  const DealOfTheDaySection({
    super.key,
    required this.deals,
    this.onViewAllTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.only(top: 64),
      child: Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header row: "Deals of the Day" + "View All"
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Deals of the Day",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                  ),
                ),
                ElevatedButton(
                  onPressed: onViewAllTap,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF1565C0),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 8,
                    ),
                    elevation: 0,
                  ),
                  child: const Text(
                    "View All",
                    style: TextStyle(fontSize: 13, fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 12),
      
          // Horizontal scrollable list of deal cards
          SizedBox(
            height: 230,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: deals.length,
              separatorBuilder: (context, index) => const SizedBox(width: 12),
              itemBuilder: (context, index) {
                final deal = deals[index];
                return DealProductCard(
                  badgeText: deal.badgeText,
                  badgeColor: deal.badgeColor,
                  imageUrl: 'product2.png',
                  productName: deal.productName,
                  price: deal.price,
                  originalPrice: deal.originalPrice,
                  onTap: deal.onTap,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class BoxRectangle extends StatelessWidget {
  final IconData? icon;
  final String text;
  const BoxRectangle({super.key, this.icon, this.text = ""});

  @override
  Widget build(BuildContext context) {
    return  Container(
                  height: 100,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1,color: Colors.grey),
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                  shape: BoxShape.rectangle,
                  color: Colors.grey[200],
                  ),
                  child: 
                  Column(children: 
              [Icon(icon ?? Icons.shopping_cart, size: 30,color: Colors.blue,),
              SizedBox(height: 10,),
              Text(text,style: TextStyle(fontSize: 12,color: AppColors.redColor,decoration: TextDecoration.none,
),)
               ]
               )
                );
  }
}

// Simple data model to hold each deal's info
class DealProductData {
  final String badgeText;
  final Color badgeColor;
  final String imageUrl;
  final String productName;
  final String price;
  final String originalPrice;
  final VoidCallback? onTap;

  const DealProductData({
    required this.badgeText,
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.originalPrice,
    this.badgeColor = const Color(0xFF1B5E20),
    this.onTap,
  });
}

class DealProductCard extends StatelessWidget {
  final String badgeText;
  final Color badgeColor;
  final String imageUrl;
  final String productName;
  final String price;
  final String originalPrice;
  final VoidCallback? onTap;

  const DealProductCard({
    super.key,
    required this.badgeText,
    required this.imageUrl,
    required this.productName,
    required this.price,
    required this.originalPrice,
    this.badgeColor = const Color(0xFF1B5E20),
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 150,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image with badge
            Stack(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                  child: Image.asset(
                    "assets/"+imageUrl,
                    height: 130,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => Container(
                      height: 130,
                      color: Colors.grey.shade200,
                      child: const Icon(
                        Icons.image_not_supported_outlined,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 8,
                  left: 8,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 8,
                      vertical: 4,
                    ),
                    decoration: BoxDecoration(
                      color: badgeColor,
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Text(
                      badgeText,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 11,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            // Product details
            Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    productName,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.black87,
                    ),
                  ),
                  const SizedBox(height: 6),
                  Row(
                    children: [
                      Text(
                        price,
                        style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(width: 6),
                      Text(
                        originalPrice,
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.grey.shade500,
                          decoration: TextDecoration.lineThrough,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}