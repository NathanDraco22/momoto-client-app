part of '../site_detail_screen.dart';

class _PhotosSection extends StatelessWidget {
  const _PhotosSection({
    required this.siteId,
  });

  final String siteId;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Hero(
          tag: siteId,
          child: PageView(
            children: [
              Image.network(
                "https://i0.wp.com/thethrillofpursuit.com/wp-content/uploads/2024/03/isla-de-ometepe-sunset.jpg",
                fit: BoxFit.cover,
              ),
            ],
          ),
        ),

        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 12,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              color: Theme.of(context).scaffoldBackgroundColor,
            ),
          ),
        ),
      ],
    );
  }
}
