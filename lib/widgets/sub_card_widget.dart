import 'package:flutter/material.dart';

class SubCardWidget extends StatelessWidget {
  final String imageAsset;
  final String title;
  final String subtitle;
  final String extradetails;
  final String description;
  final String apply;
  final String details;

  const SubCardWidget({
    required this.imageAsset,
    required this.title,
    required this.subtitle,
    required this.extradetails,
    required this.description,
    required this.apply,
    required this.details,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Image.asset(
                    imageAsset,
                    width: 50.0,
                    height: 50.0,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0,
                          ),
                        ),
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Row(
                children: [
                  const Icon(Icons.work_outline, size: 16.0, color: Colors.blue),
                  const SizedBox(width: 4.0),
                  const Text(
                    '5+ Year Exp..',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Icon(Icons.currency_rupee, size: 16.0, color: Colors.blue),
                  const SizedBox(width: 4.0),
                  const Text(
                    '10-15 laks',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                  const SizedBox(width: 16.0),
                  const Icon(Icons.location_on_outlined, size: 16.0, color: Colors.blue),
                  const SizedBox(width: 4.0),
                  const Text(
                    'Coimbatur, T..',
                    style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8.0),
              Text(
                description,
                style: TextStyle(
                  color: Colors.grey[600],
                  fontSize: 13.0,
                ),
              ),
              const SizedBox(height: 8.0),
              Text(
                apply,
                style: const TextStyle(
                  color: Colors.blue,
                  fontSize: 14.0,
                ),
              ),
              Divider(),
              const SizedBox(height: 8.0),
              Text(
                details,
                style: const TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 12.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
