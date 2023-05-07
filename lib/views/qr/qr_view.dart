// flutter
import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:mobile_scanner/mobile_scanner.dart' as scanner;
// types
import 'package:app/types/theme.dart';

class QrView extends StatelessWidget {
  const QrView({super.key});

  static const routeName = '/qr';
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).extension<AppTheme>()!;

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
                      color: theme.current.colors.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Generate QR',
                          style: TextStyle(color: theme.dark.colors.font),
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
                      color: theme.current.colors.primary,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: Text(
                          'Scan QR',
                          style: TextStyle(color: theme.dark.colors.font),
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
    final theme = Theme.of(context).extension<AppTheme>()!;

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
                color: theme.current.colors.primary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Generate QR',
                    style: TextStyle(
                      color: theme.dark.colors.font,
                    ),
                  ),
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      BarcodeWidget(
                        padding: const EdgeInsets.all(4.0),
                        barcode: Barcode.qrCode(
                          errorCorrectLevel: BarcodeQRCorrectionLevel.high,
                        ),
                        backgroundColor: Colors.white,
                        color: theme.current.colors.primary,
                        data: 'Lamisma123*',
                        width: 300,
                        height: 300,
                      ),
                      Container(
                        color: Colors.white,
                        width: 60,
                        height: 60,
                        child: const FlutterLogo(),
                      ),
                    ],
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
    final theme = Theme.of(context).extension<AppTheme>()!;

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
                color: theme.current.colors.primary,
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Scan QR',
                    style: TextStyle(
                      color: theme.dark.colors.font,
                    ),
                  ),
                  SizedBox(
                    height: 300,
                    child: scanner.MobileScanner(
                      fit: BoxFit.contain,
                      controller: scanner.MobileScannerController(
                        detectionSpeed: scanner.DetectionSpeed.normal,
                        detectionTimeoutMs: 500,
                        facing: scanner.CameraFacing.back,
                        torchEnabled: true,
                      ),
                      onDetect: (capture) {
                        final List<scanner.Barcode> codes = capture.barcodes;

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
