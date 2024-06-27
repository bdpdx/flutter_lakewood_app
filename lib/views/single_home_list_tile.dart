import 'package:flutter/material.dart';
import 'package:flutter_lakewood_app/styles/text_styles.dart';

class SingleHomeListTile extends StatelessWidget {
  final ImageProvider imageProvider;
  final String title;
  final String subtitle;
  final String description;
  final VoidCallback onTap;

  const SingleHomeListTile({
    super.key,
    required this.imageProvider,
    required this.title,
    required this.subtitle,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: const EdgeInsets.all(10.0),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Container(
              width: MediaQuery.of(context).size.width / 3,
              height: 100.0,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  bottomLeft: Radius.circular(10.0),
                ),
                image: DecorationImage(
                  image: imageProvider,
                  fit: BoxFit.cover,
                ),
              )
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: TextStyles.listPageCardTitle),
                    const SizedBox(height: 1.0),
                    Text(subtitle, style: TextStyles.listPageCardSubtitle),
                    const SizedBox(height: 10.0),
                    Text(description, style: TextStyles.listPageCardDescription),
                  ],
                )
              ),
            ),
          ],
        ),
      ),
    );
  }
}