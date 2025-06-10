part of '../site_detail_screen.dart';

class _DescriptionSection extends StatelessWidget {
  const _DescriptionSection();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10, bottom: 24),
      child: Column(
        spacing: 12,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Isla de Ometepe",
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          Text(
            _description,
            style: Theme.of(context).textTheme.bodyLarge,
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              FilledButton.tonalIcon(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const PanoramicScreen(),
                    ),
                  );
                },
                icon: Text(
                  "Panoramic View",
                  style: Theme.of(context).textTheme.titleMedium,
                ),
                label: const Icon(
                  Icons.panorama_photosphere,
                  size: 24,
                ),
              ),
            ],
          ),

          Text(
            "Activities",
            style: Theme.of(context).textTheme.headlineMedium,
          ),

          Wrap(
            spacing: 8,
            runSpacing: 8,
            direction: Axis.horizontal,
            alignment: WrapAlignment.center,
            children: [
              ActivityIcon(),
              ActivityIcon(),
              ActivityIcon(),
              ActivityIcon(),
              ActivityIcon(),
            ],
          ),

          Placeholder(),
        ],
      ),
    );
  }
}

class ActivityIcon extends StatelessWidget {
  const ActivityIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.sizeOf(context);
    return Container(
      padding: const EdgeInsets.all(8),
      width: screenSize.width * 0.45,
      height: 70,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black26),
      ),
      child: Row(
        spacing: 4,
        children: [
          Icon(
            Icons.sports_soccer,
          ),
          Expanded(child: Text("Here an Amazing Activity")),
        ],
      ),
    );
  }
}

String _description =
    "Granada, Nicaragua, is a vibrant city known for its stunning colonial architecture, rich history, and lively cultural scene. Explore its colorful streets, historic churches, and the serene shores of Lake Nicaragua.";
