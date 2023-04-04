import 'package:flutter/material.dart';

// import '../provider/image_provider.dart';

// class DetailImage extends StatelessWidget {
//   const DetailImage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final String path = ModalRoute.of(context)!.settings.arguments == null
//         ? "NULL"
//         : ModalRoute.of(context)!.settings.arguments as String;
//     if (path != "NULL") {
//       Image.asset(path);
//     }

//     //

//     return Scaffold(
//       appBar: AppBar(
//         centerTitle: true,
//         title: const Text('Detail photo'),
//       ),
//       body: Center(
//         child: Image.asset(path),
//       ),
//     );
//   }
// }

class DetailArguments {
  final String judul;
  final String link;

  DetailArguments({required this.judul, required this.link});
}

class DetailImage extends StatefulWidget {
  DetailImage({Key? key}) : super(key: key);

  @override
  State<DetailImage> createState() => _DetailImageState();
}

class _DetailImageState extends State<DetailImage> {
  @override
  Widget build(BuildContext context) {
    final detail =
        ModalRoute.of(context)?.settings.arguments as DetailArguments?;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("detail page"),
      ),
      body: Center(
        child: Image.asset(detail?.link??""),
      ),
    );
  }
}
