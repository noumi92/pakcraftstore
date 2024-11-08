import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';
import '../appbar/appbar.dart';

class TextDemo extends StatelessWidget {
  const TextDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Text Demo',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("displayLarge",
                  style: Theme.of(context).textTheme.displayLarge),
              Text("displayMedium",
                  style: Theme.of(context).textTheme.displayMedium),
              Text("displaySmall",
                  style: Theme.of(context).textTheme.displaySmall),
              Text("headLineLarge Text",
                  style: Theme.of(context).textTheme.headlineLarge),
              Text("headLineMedium Text",
                  style: Theme.of(context).textTheme.headlineMedium),
              Text("headlineSmall Text",
                  style: Theme.of(context).textTheme.headlineSmall),
              Text("titleLarge Text",
                  style: Theme.of(context).textTheme.titleLarge),
              Text("titleMedium Text",
                  style: Theme.of(context).textTheme.titleMedium),
              Text("titleSmall Text",
                  style: Theme.of(context).textTheme.titleSmall),
              Text("bodyLarge Text",
                  style: Theme.of(context).textTheme.bodyLarge),
              Text("bodyMedium Text",
                  style: Theme.of(context).textTheme.bodyMedium),
              Text("bodySmall Text",
                  style: Theme.of(context).textTheme.bodySmall),
              Text("labelLarge Text",
                  style: Theme.of(context).textTheme.labelLarge),
              Text("labelMedium Text",
                  style: Theme.of(context).textTheme.labelMedium),
              Text("labelSmall Text",
                  style: Theme.of(context).textTheme.labelSmall),
            ],
          ),
        ),
      ),
    );
  }
}
