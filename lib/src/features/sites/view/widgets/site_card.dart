import 'package:flutter/material.dart';

class SiteCard extends StatelessWidget {
  const SiteCard({super.key, required this.index, required this.onTap});

  final int index;

  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned.fill(
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Hero(
              tag: index.toString(),
              child: Image.network(
                "https://i0.wp.com/thethrillofpursuit.com/wp-content/uploads/2024/03/isla-de-ometepe-sunset.jpg",
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),

        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
              stops: [0.12, 0.45],
              colors: [
                Colors.grey.shade900,
                Colors.transparent,
              ],
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Text(
                  "Isla de Ometepe",
                  style: Theme.of(context).textTheme.titleMedium?.copyWith(
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.start,
                ),
              ),
            ),
          ),
        ),

        Align(
          alignment: Alignment.topRight,
          child: IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.favorite,
              color: Colors.white,
            ),
          ),
        ),

        Positioned.fill(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              splashColor: Colors.white.withValues(alpha: 0.2),
              highlightColor: Colors.blue.withValues(alpha: 0.4),
              borderRadius: BorderRadius.circular(10),
              onTap: onTap,
            ),
          ),
        ),
      ],
    );
  }
}
