import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:saffron_ias_flutter_mobile/constants/theme.dart';
// import 'package:http/http.dart' as http;

class PdfViewerScreen extends StatefulWidget {
  const PdfViewerScreen({super.key});

  @override
  State<PdfViewerScreen> createState() => PdfViewerScreenState();
}

class PdfViewerScreenState extends State<PdfViewerScreen> {
  late PdfControllerPinch pdfControllerPinch;
  int totalPageCount = 0, currentPage = 1;
  bool showPdfDetails = true;

  @override
  void initState() {
    super.initState();
    pdfControllerPinch = PdfControllerPinch(
        document: PdfDocument.openAsset('assets/pdfs/jan_2022.pdf'));

    // document: PdfDocument.openFile("https://github.com/ScerIO/packages.flutter/raw/fd0c92ac83ee355255acb306251b1adfeb2f2fd6/packages/native_pdf_renderer/example/assets/sample.pdf"));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: showPdfDetails
            ? AppBar(
                title: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "XYZ-IAS ",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    IconButton(
                      onPressed: () {
                        pdfControllerPinch.previousPage(
                            duration: const Duration(microseconds: 500),
                            curve: Curves.bounceInOut);
                      },
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      "$currentPage / $totalPageCount",
                      style: const TextStyle(fontSize: 18, color: Colors.white),
                    ),
                    IconButton(
                      onPressed: () {
                        pdfControllerPinch.nextPage(
                            duration: const Duration(microseconds: 500),
                            curve: Curves.bounceInOut);
                      },
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                backgroundColor: ColorTheme.primaryColor,
              )
            : null,
        body: Column(
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  setState(() {
                    showPdfDetails = !showPdfDetails;
                  });
                },
                child: PdfViewPinch(
                  scrollDirection: Axis.vertical,
                  padding: 15,
                  controller: pdfControllerPinch,
                  onDocumentLoaded: (document) {
                    setState(() {
                      totalPageCount = document.pagesCount;
                    });
                  },
                  onPageChanged: (page) {
                    setState(() {
                      currentPage = page;
                    });
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
