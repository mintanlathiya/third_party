import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CachedNetworkImageDemoUi extends StatefulWidget {
  const CachedNetworkImageDemoUi({super.key});

  @override
  State<CachedNetworkImageDemoUi> createState() =>
      _CachedNetworkImageDemoUiState();
}

class _CachedNetworkImageDemoUiState extends State<CachedNetworkImageDemoUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(
          height: 15,
        ),
        padding: const EdgeInsets.all(15),
        itemCount: 5,
        itemBuilder: (context, index) => ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: CachedNetworkImage(
            key: UniqueKey(),
            imageUrl:
                'https://images-eu.ssl-images-amazon.com/images/G/31/Symbol/2023/GW_July/QC/mencombo_low_1._SY304_CB600774446_.jpg',
            fit: BoxFit.cover,
            height: 200,
            width: double.infinity,
            //maxHeightDiskCache: 200,
            placeholder: (context, url) => const CircularProgressIndicator(),
            errorWidget: (context, url, error) => Container(
              color: Colors.black12,
              child: const Icon(
                Icons.error,
                size: 40,
                color: Colors.blue,
              ),
            ),
          ),
        ),
      )),
    );
  }
}
