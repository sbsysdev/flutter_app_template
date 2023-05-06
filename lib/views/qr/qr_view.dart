// flutter
import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
// types
import 'package:app/types/base_theme.dart';

class QrView extends StatelessWidget {
  const QrView({super.key});

  static const routeName = '/qr';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<BaseTheme>()!;

    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: const Text('Qr Code'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8, right: 8),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  _showGenerateQR(context);
                },
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: theme.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Generate QR',
                          style: TextStyle(color: theme.font.shade100),
                        ),
                      ),
                    )),
              ),
              const SizedBox(height: 16),
              InkWell(
                onTap: () {
                  _showScanQR(context);
                },
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(8)),
                      color: theme.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Scan QR',
                          style: TextStyle(color: theme.font.shade100),
                        ),
                      ),
                    )),
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    ));
  }

  Future<dynamic> _showGenerateQR(BuildContext context) {
    final theme = Theme.of(context).extension<BaseTheme>()!;

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: theme.primary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Generate QR'),
                  Center(
                    child: QrImage(
                      data: 'Lamisma123*',
                      backgroundColor: Colors.white,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  Future<dynamic> _showScanQR(BuildContext context) {
    final theme = Theme.of(context).extension<BaseTheme>()!;

    return showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return WillPopScope(
          onWillPop: () async => false,
          child: Dialog(
            backgroundColor: Colors.transparent,
            child: Container(
              decoration: BoxDecoration(
                color: theme.primary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Scan QR'),
                  SizedBox(
                    height: 300,
                    child: MobileScanner(
                      fit: BoxFit.contain,
                      controller: MobileScannerController(
                        detectionSpeed: DetectionSpeed.normal,
                        detectionTimeoutMs: 500,
                        facing: CameraFacing.back,
                        torchEnabled: true,
                      ),
                      onDetect: (barcodes) {
                        final List<Barcode> codes = barcodes.barcodes;

                        for (final code in codes) {
                          debugPrint('Barcode found! ${code.rawValue}');
                        }

                        Navigator.of(context).pop();
                      },
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('Close'),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
