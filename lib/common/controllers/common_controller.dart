// ignore_for_file: deprecated_member_use

import 'dart:async';
import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../services/functions.dart';
import '../models/search_alert_model.dart';
// import 'dart:js' as js;

class CommonController extends GetxController with GetTickerProviderStateMixin {
  @override
  void onInit() async {
    super.onInit();
    commonPrint('<=========================================>');
    commonPrint('Common controller Initialized');
    commonPrint('<=========================================>');
    await checkDeviceDetails();
    lockOppositeOrientation();
  }

  @override
  void onClose() {
    super.onClose();
    disposeKeyboard();
    FocusScope.of(Get.context!).unfocus();
  }

  void lockOppositeOrientation() {
    // try {
      // Get the opposite orientation using JavaScript
      // final oppositeOrientation = context.callMethod('getOppositeOrientation');

      // if (oppositeOrientation != null) {
        // Lock the orientation using JavaScript
        // context.callMethod('lockOrientation', ['landscape']);

        // Update the log
    //   } else {}
    // } catch (error) {
      // Handle error and update the log
    // }
  }

  // =========================================
  // I N I T I A L A Z A T I O N  - V A R I A B L E S
  // -----------------------------------------
  // =========================================

  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<double> animation = CurvedAnimation(
    parent: _controller,
    curve: Curves.fastOutSlowIn,
  );

  DateTime currentBackPressTime = DateTime.now();
  DateTime selectedDate = DateTime.now();
  // String formattedTime = DateFormat.jm().format(DateTime.now());

  String selectedCurrency = '';
  String? fcmToken = '';
  String daySelected = '';
  String selectedDateStr = '';
  String selectedDateDisplay = '';
  String selectedYesOrNO = '';
  String selectedCurrencyAr = '';
  String currencyId = '';
  bool searchPressed = false;
  String screenType = 'SCREEN1';
  bool hideBack = true;
  bool isSunmi = false;
  String yearSelected = '';
  bool hidePassword = false;

  String selectedPaymentMode = 'cash_label';

  // String selectedPaymentModeAr = '';
  double convertionFactor = 0;

  bool isLoading = false;
  bool isAddbranch = false;

  String yesorNo = "";
  String stockAffect = "ALL";
  String dateFormatSelected = "";
  String monthSelected = "";
  String dateTimeFormatSelected = "";
  String activeOrInactive = "";
  String taxTypeSelected = "";
  String creditDebitSelected = "";
  String tableChargeType = "FX";
  String amountOrPercentage = "PE";
  String? categoryId;
  String? merchPgChargeId;
  String? downloadPDFUrl = "";
  String? downloadPExcelUrl = "";
  String? fullPathPDF = "";
  String? fullPathExcel = "";
  String? searchBy;
  String? searchById;
  String deviceSpec = '';

  bool loading = false;
  dynamic defaultPrinter;

  double widthReceipt = 370; //
  bool printerConnected = false;
  List activeInActiveList = [
    {'text': 'active_label', 'id': 'A'},
    {'text': 'inactive_label', 'id': 'I'}
  ];
  List examTimes = [
    {
      'id': '30',
      'text': '30 minutes',
    },
    {
      'id': '60',
      'text': '1 hour',
    },
    {
      'id': '90',
      'text': '1 hour,30 minutes',
    },
    {
      'id': '120',
      'text': '2 hour',
    },
    {
      'id': '160',
      'text': '2 hour,30 minutes',
    }
  ];

  List<SearchAlertModel> searchModelList = [];

  // Map<Permission, PermissionStatus>? statuses = {};
  late List<NetworkInterface> interfaces;
  // ConnectivityResult _connectionStatus = ConnectivityResult.none;
  // final Connectivity _connectivity = Connectivity();
  // late StreamSubscription<ConnectivityResult> _connectivitySubscription;

  Future clearSearchList() async {}

  // ================================================>
  // INITIALIZATION  - SCROLL - CONTROLLERS  - INDEX
  // ================================================>
  ScrollController scrollController = ScrollController();

  // ------------------------------------------------
  // INITIALIZATION  -  TEXT EDITING CONTROLLER
  // ------------------------------------------------
  TextEditingController companyNameCtrl = TextEditingController();
  TextEditingController companyNameCtrlAr = TextEditingController();

  //test
  TextEditingController searchTextController = TextEditingController();
  FocusNode focusNode = FocusNode();

  DateTime fromDate = DateTime.now().add(const Duration(days: -100));
  DateTime toDate = DateTime.now();
  List yesOrNoLIst = [
    {'text': 'yes_label', 'id': 'Y'},
    {'text': 'no_label', 'id': 'N'}
  ];

  final List<String> monthTitles = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'Jun',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  final List monthList = [
    {'text': 'January', 'textAr': 'يناير', 'id': '1'},
    {'text': 'February', 'textAr': 'فبراير', 'id': '2'},
    {'text': 'March', 'textAr': 'مارس', 'id': '3'},
    {'text': 'April', 'textAr': 'أبريل', 'id': '4'},
    {'text': 'May', 'textAr': 'مايو', 'id': '5'},
    {'text': 'Jun', 'textAr': 'يونيو', 'id': '6'},
    {'text': 'July', 'textAr': 'يوليو', 'id': '7'},
    {'text': 'August', 'textAr': 'أغسطس', 'id': '8'},
    {'text': 'September', 'textAr': 'سبتمبر', 'id': '9'},
    {'text': 'October', 'textAr': 'اكتوبر', 'id': '10'},
    {'text': 'November', 'textAr': 'نوفمبر', 'id': '11'},
    {'text': 'December', 'textAr': 'ديسمبر', 'id': '12'},
  ];

  final List<String> upToCurrentYearList = [
    DateTime.now().year.toString(),
    ((DateTime.now().year) - 1).toString(),
    ((DateTime.now().year) - 2).toString(),
    ((DateTime.now().year) - 3).toString()
  ];
  int thisYear = DateTime.now().year;
  int thismonth = DateTime.now().month;

  // List<MonthYearModel> monYearList = [];

  // Future monthYear() async {
  //   monYearList.clear();
  //   for (int i = 1; i < 5; i++) {
  //     var prevMonth =
  //         DateTime(DateTime.now().year, DateTime.now().month - i, 1);
  //     monYearList.add(MonthYearModel(
  //       id: i.toString(),
  //       month: prevMonth.month.toString(),
  //       year: prevMonth.year.toString(),
  //       monthLabel: Month.monthData[prevMonth.month.toString()],
  //     ));
  //   }
  // }
  // ================================================>
  // LOCAL   -   FUNCTIONS   -   I N D E X
  // ------------------------------------------------
  //  1. updateOrientation
  //  2. onWillPop
  //  3. timerUpdate
  //  4. scrollUpdateJump
  //  5. scrollUpdateAnimate
  //  6.
  //  7.
  //  8.
  //  9.
  // 10.
  // =========================================

  Future clearData() async {
    // currencyRateData.clear();
  }

  Future removeControllerData() async {
    // Get.delete<InventoryController>(force: true);
    // Get.delete<InventorySalesController>();
    clearData();
  }

  launchURL(String url) async {
    // if (await canLaunchUrl(Uri.parse(url))) {
    //   await launchUrl(Uri.parse(url));
    // } else {
    //   throw 'Could not launch $url';
    // }
  }

  //test input
  void openKeyboardAndFocusTextInput() {
    focusNode.requestFocus();
    SystemChannels.textInput.invokeMethod('TextInput.show');
  }

  void disposeKeyboard() {
    Get.focusScope!.unfocus();
    searchTextController.dispose();
    focusNode.dispose();
    super.dispose();
  }

//=========================================>
// callNumber
//=========================================>
  Future<void> callNumber(String phoneNumber) async {
    // canLaunchUrl(Uri(scheme: 'tel', path: phoneNumber.substring(4)))
    //     .then((bool result) async {
    //   if (result) {
    //     final Uri launchUri = Uri(
    //       scheme: 'tel',
    //       path: phoneNumber.substring(4),
    //     );
    //     await launchUrl(launchUri);
    //   } else {}
    // });
  }

//=========================================>
// openUrl
//=========================================>
  Future openUrl(uri) async {
    // canLaunchUrl(uri).then((bool result) async {
    //   if (result) {
    //     launchUrl(uri);
    //   } else {}
    // });
  }

// Future openMessenger(uri) async {
//     canLaunchUrl(uri).then((bool result) async {
//       if (result) {
//         launchUrl(uri);
//       } else {
//       }
//     });
//   }
//=========================================>
// openWhatsapp
//=========================================>
  Future openWhatsapp(Uri uri) async {
    // if (await canLaunchUrl(uri)) {
    //   await launchUrl(uri);
    // } else {
    //   throw 'Could not open whatsapp ';
    // }
  }

  // var deviceSize = window.physicalSize;
  var fixedSize = 700;
  // var deviceHeight = WidgetsBinding.instance.window.physicalSize.height;
  // var deviceWidth = WidgetsBinding.instance.window.physicalSize.width;
  // var screenWidth =
  //     (window.physicalSize.shortestSide / window.devicePixelRatio / 1.33);
  // var screenHeight =
  //     (window.physicalSize.longestSide / window.devicePixelRatio / 1.33);

//=========================================>
// updateOrientation
//=========================================>
  Future updateOrientation() async {
    final data = MediaQueryData.fromWindow(WidgetsBinding.instance.window);

    if (data.size.shortestSide > 550) {
      SystemChrome.setPreferredOrientations([
        DeviceOrientation.landscapeLeft,
        DeviceOrientation.landscapeRight,
      ]);
      // isPortrait = false;
      update();
    } else {
      SystemChrome.setPreferredOrientations(
          [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]);
      // isPortrait = true;
      update();
      // update(['orientation']);
    }
  }

  // static Future<bool> isTablet(BuildContext context) async {
  //   bool isTab = false;
  //   if (Platform.isIOS) {
  //     DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
  //     IosDeviceInfo iosInfo = await deviceInfo.iosInfo;
  //     if (iosInfo.model?.toLowerCase() == "ipad") {
  //       isTab = true;
  //     } else {
  //       isTab = false;
  //     }
  //     return isTab;
  //   } else {
  //     var shortestSide = MediaQuery.of(context).size.shortestSide;
  //     if (shortestSide > 550) {
  //       isTab = true;
  //     } else {
  //       isTab = false;
  //     }
  //     return isTab;
  //   }
  // }

//=========================================>
// onWillPop
//=========================================>
  Future<bool> onWillPop() async {
    DateTime now = DateTime.now();
    if (now.difference(currentBackPressTime) > const Duration(seconds: 2)) {
      currentBackPressTime = now;
      update();
      return Future.value(false);
    }
    Get.clearRouteTree();
    SystemChannels.platform.invokeMethod('SystemNavigator.pop');
    update();
    return Future.value(true);
  }

//=========================================>
// timerUpdate
//=========================================>
  timerUpdate() {
    Timer.periodic(const Duration(minutes: 1), (timer) {
      // formattedTime = DateFormat.jm().format(DateTime.now());
    });
    update(['time-update']);
  }

//=========================================>
// scrollUpdateJump
//=========================================>
  Future<void> scrollUpdateJump(double offset) async {
    scrollController.jumpTo(offset);
    update(['scroll-update']);
  }

//=========================================>
// scrollUpdateAnimate
//=========================================>
  Future<void> scrollUpdateAnimate(double offset) async {
    await scrollController
        .animateTo(
      offset,
      duration: const Duration(seconds: 3),
      curve: Curves.fastOutSlowIn,
    )
        .then((value) {
      // isKeyboardOpen.value = false;
      update(['scroll-update']);
    });
    update(['scroll-update']);
  }

  // Create week date picker with passed parameters
// Widget buildWeekDatePicker (DateTime selectedDate, DateTime firstAllowedDate, DateTime lastAllowedDate, ValueChanged<DatePeriod> onNewSelected) {
//  // add some colors to default settings
//     DatePickerRangeStyles styles = DatePickerRangeStyles(
//       selectedPeriodLastDecoration: BoxDecoration(
//           color: Colors.red,
//           borderRadius: BorderRadiusDirectional.only(
//               topEnd: Radius.circular(10.0),
//               bottomEnd: Radius.circular(10.0))),
//       selectedPeriodStartDecoration: BoxDecoration(
//         color: Colors.green,
//         borderRadius: BorderRadiusDirectional.only(
//             topStart: Radius.circular(10.0), bottomStart: Radius.circular(10.0)),
//       ),
//       selectedPeriodMiddleDecoration: BoxDecoration(
//           color: Colors.yellow, shape: BoxShape.rectangle),
//     );
//   return WeekPicker(
//       selectedDate: selectedDate,
//       onChanged: onNewSelected,
//       firstDate: firstAllowedDate,
//       lastDate: lastAllowedDate,
//       datePickerStyles: styles
//   );
// }

  // Future setDate(BuildContext context,
  //     {Function(
  //       DateTime date,
  //       String dateStr,
  //     )? callBack,
  //     String? dateFormat,
  //     DateTime? firstDate,
  //     DateTime? lastDate,
  //     DateTime? initialDate}) async {
  //   final String localCode = '01_rtl'.tr == 'left' ? 'en' : 'ar';

  //   DateTime? dateTime = await showRoundedDatePicker(
  //     height: 200,
  //     // imageHeader: AssetImage(AssetsUtils.logoGif),
  //     locale: locale(localCode),
  //     context: context,
  //     initialDate: initialDate ?? selectedDate,
  //     firstDate: firstDate ?? DateTime(DateTime.now().year - 1),
  //     lastDate: lastDate ?? DateTime(DateTime.now().year + 1),
  //     borderRadius: 16,
  //   );
  //   if (dateTime != null) {
  //     selectedDate = dateTime;
  //     selectedDateStr = DateFormat(('yyyy-MM-dd'), 'en').format(dateTime);
  //     // selectedDateStr = DateFormat(('dd-MM-yyyy'), 'en').format(dateTime);

  //     if (callBack != null) {
  //       callBack(selectedDate, selectedDateStr);
  //     }

  //     update(['common-date']);
  //   }
  // }

  // Future setDateTime(BuildContext context,
  //     {Function(DateTime date, String dateStr)? callBack}) async {
  //   final String localCode = '01_rtl'.tr == 'left' ? 'en' : 'ar';
  //   DateTime? dateTime = await showRoundedDatePicker(
  //     height: 200,
  //     // imageHeader: AssetImage(AssetsUtils.logoGif),
  //     locale: locale(localCode),
  //     context: context,
  //     initialDate: DateTime.now(),
  //     firstDate: DateTime(DateTime.now().year - 1),
  //     lastDate: DateTime(DateTime.now().year + 1),
  //     borderRadius: 16,
  //   );
  //   if (dateTime != null) {
  //     selectedDate = dateTime;
  //     selectedDateStr =
  //         DateFormat('yyyy-MM-dd hh:mm:ss', 'en').format(dateTime);

  //     // ignore: use_build_context_synchronously
  //     final timePicked = await showRoundedTimePicker(
  //       // ignore: use_build_context_synchronously
  //       context: context,
  //       initialTime: TimeOfDay.now(),
  //     );
  //     if (timePicked != null) {
  //       selectedDate = dateTime;
  //       selectedDateStr = DateFormat('yyyy-MM-dd hh:mm:ss', 'en').format(
  //           DateTime(dateTime.year, dateTime.month, dateTime.day,
  //               timePicked.hour, timePicked.minute));
  //     } else {
  //       selectedDate = dateTime;
  //       selectedDateStr = DateFormat('yyyy-MM-dd hh:mm:ss', 'en').format(
  //           DateTime(dateTime.year, dateTime.month, dateTime.day,
  //               TimeOfDay.now().hour, TimeOfDay.now().minute));
  //     }

  //     if (callBack != null) {
  //       callBack(selectedDate, selectedDateStr);
  //     }

  //     update(['common-date-time']);
  //   } else {
  //     selectedDate = DateTime.now();
  //     selectedDateStr =
  //         DateFormat('yyyy-MM-dd hh:mm:ss', 'en').format(DateTime.now());

  //     if (callBack != null) {
  //       callBack(selectedDate, selectedDateStr);
  //     }

  //     update(['common-date-time']);
  //   }
  // }

  // ================================================>
  // API   -   FUNCTIONS   -   I N D E X
  // ------------------------------------------------
  //  1. fetchCurrencyRateList
  //  2. fetchVoucherSeriesList
  //  3.
  //  4.
  //  5.
  //  6.
  //  7.
  // ===============================================>

  Future askPermission() async {
    // ignore: unused_local_variable
    if (Platform.isAndroid || Platform.isIOS) {
      // statuses = await [Permission.storage, Permission.location].request();
      // commonPrint(statuses?[Permission.storage]);
      // commonPrint(statuses?[Permission.location]);
    }
    // Map<Permission, PermissionStatus> statuses = await [
    //   Permission.storage,
    // ].request();
  }

  getCurrentLocation() async {
    // if (Platform.isAndroid || Platform.isIOS) {
    //   if (Get.find<CommonController>().statuses?[Permission.location] ==
    //       PermissionStatus.granted) {
    //     fetchCurrentAddress();
    //   } else {
    //     await Permission.location.request();
    //     getCurrentLocation();
    //   }
    // } else {
    //   fetchCurrentAddress();
    // }

    update(['merchant-address']);
  }

  Future<void> fetchCurrentAddress() async {
    // Position position = await Geolocator.getCurrentPosition(
    //     desiredAccuracy: LocationAccuracy.medium);
    // List<Placemark> placeMarks =
    //     await placemarkFromCoordinates(position.latitude, position.longitude);
    // List<Placemark> placeMarksAr = await placemarkFromCoordinates(
    //     position.latitude, position.longitude,
    //     localeIdentifier: 'ar_SA');
    // addresses.address1 =
    //     placeMarks[0].administrativeArea ?? placeMarks[0].locality;
    // addresses.latitude = position.latitude;
    // addresses.longitude = position.longitude;

    // addressCtrl.text =
    //     '${placeMarks[0].name!}, ${placeMarks[0].thoroughfare}, ${placeMarks[0].locality}, ${placeMarks[0].administrativeArea}, ${placeMarks[0].country}';
    // addressCtrlAr.text =
    // '${placeMarksAr[0].name!}, ${placeMarksAr[0].thoroughfare}, ${placeMarksAr[0].locality}, ${placeMarksAr[0].administrativeArea}, ${placeMarksAr[0].country}';

    // commonPrint(position.latitude);
    update(['merchant-address']);
  }

//-------------------------------------------------------
//------- pdf - local functions ----------
//-------------------------------------------------------

//------------------  fetchPdf ------------------
  Future launchPdf(
      {String? displayNo,
      bool? isShare = false,
      bool isPop = true,
      String? title}) async {
    loading = true;

    update(['view-pdf']);

    // await DioServices().launchPdfScreen(
    //     url: downloadPDFUrl ?? '',
    //     pdfBottomTile: () {
    //       commonPdfWithExcelBottomTile(
    //         displayNo: displayNo ?? '',
    //       );
    //       commonPrint(downloadPDFUrl);
    //     },
    //     isPop: isPop,
    //     title: title);
  }

//=========================================>
//   downloadFile
//=========================================>
  Future downloadFile({
    String? displayNo,
    bool? isShare = false,
    String? docName = 'file',
    bool isExcel = false,
    bool showFilePath = false,
  }) async {
    // String fullPath = await setFilePath(
    //     displayNo: displayNo, docName: docName, isExcel: isExcel);
    // commonPrint(fullPath);
    // commonPrint(isExcel ? downloadPExcelUrl : downloadPDFUrl);
    // commonPrint('apiUrl');
    // await DioServices()
    //     .downloadPdf(
    //   url: isExcel ? downloadPExcelUrl : downloadPDFUrl,
    //   path: fullPath,
    //   isShare: isShare,
    //   showFilePath: showFilePath,
    // )
    // .then((value) {
    // downloadLoading = false;
    //   update(['download-load']);
    // }).then((value) {
    // Get.find<PrinterController>().generateReceipt();
    // Get.find<PrinterController>()
    //     .printReceipt(null, pdf: null, path: fullPath);
    // });
  }

//=========================================>
//   shareFile
//=========================================>
  Future shareFile({
    required String displayNo,
    String? docName,
    bool isExcel = false,
  }) async {
    // String fullPath = await setFilePath(
    //     displayNo: displayNo, docName: docName, isExcel: isExcel);
    // commonPrint(fullPath);
    // commonPrint('fullPath');
    // await downloadFile(displayNo: displayNo, isShare: true, docName: docName)
    //     .then((value) async {
    //   if (Platform.isIOS) {
    //     final box = Get.context!.findRenderObject() as RenderBox?;
    //     await Share.shareXFiles([XFile(fullPath)],
    //             sharePositionOrigin: box!.localToGlobal(Offset.zero) & box.size)
    //         .then((value) async => {await deleteFile(fullPath)});
    //   } else {
    //     // Share.shareXFiles(
    //     //   [XFile(fullPath)],

    //     await Share.shareFiles(
    //       [fullPath],
    //     ).then((value) async {
    //       // await deleteFile(fullPath);
    //     });
    //   }
    // });
  }

//=========================================>
//   setFilePath
//=========================================>

  // Future setFilePath(
  // {String? displayNo = 'file',
  //   String? docName = 'file',
  //   bool isExcel = false}) async {
  // String fullPath = '';
  // String dispNo = displayNo!.replaceAll('/', '');
  // if (Platform.isIOS) {
  //   var tempDir = await getApplicationDocumentsDirectory();
  //   if (isExcel) {
  //     fullPath = '01_rtl'.tr == 'left'
  //         ? '${tempDir.path}/${docName}_$dispNo.xlsx'
  //         : '${tempDir.path}/${dispNo}_$docName.xlsx';
  //   } else {
  //     if (dispNo == "") {
  //       fullPath = '01_rtl'.tr == 'left'
  //           ? '${tempDir.path}/$docName.pdf'
  //           : '${tempDir.path}/$docName.pdf';
  //     } else {
  //       fullPath = '01_rtl'.tr == 'left'
  //           ? '${tempDir.path}/${docName}_$dispNo.pdf'
  //           : '${tempDir.path}/${dispNo}_$docName.pdf';
  //     }
  //   }
  // } else {
  //   if (isExcel) {
  //     fullPath = '01_rtl'.tr == 'left'
  //         ? '/storage/emulated/0/Download/${docName}_$dispNo.xlsx'
  //         : '/storage/emulated/0/Download/${dispNo}_$docName.xlsx';
  //   } else {
  //     if (dispNo == "" || dispNo == "file") {
  //       fullPath = '01_rtl'.tr == 'left'
  //           ? '/storage/emulated/0/Download/$docName.pdf'
  //           : '/storage/emulated/0/Download/$docName.pdf';
  //     } else {
  //       fullPath = '01_rtl'.tr == 'left'
  //           ? '/storage/emulated/0/Download/${docName}_$dispNo.pdf'
  //           : '/storage/emulated/0/Download/${dispNo}_$docName.pdf';
  //     }
  //   }
  // }
  // return fullPath;
  // }

//=========================================>
//   deleteFile
//=========================================>
  // Future deleteFile(path) async {
  //   File file = File(path);
  //   // file.delete();
  //   try {
  //     await file.delete().then((value) => commonPrint(value));
  //   } catch (e) {
  //     return 0;
  //   }
  // }

//=========================================>
//   printPdfFile
//=========================================>
  // printPdfFile({
  //   required String displayNo,
  //   String? docName,
  // }) async {
  //   var tempDir = await getTemporaryDirectory();

  //   String dispNo = displayNo.replaceAll('/', '');
  //   String fullPath = '01_rtl'.tr == 'left'
  //       ? '${tempDir.path}/${docName}_$dispNo.pdf'
  //       : '${tempDir.path}/${dispNo}_$docName.pdf';

  //   commonPrint(fullPath);
  //   commonPrint(downloadPDFUrl);
  //   commonPrint('apiUrl');
  //   await DioServices()
  //       .downloadPdfForPrint(url: downloadPDFUrl, path: fullPath, isShare: true)
  //       .then((pdfData) async {
  //     downloadLoading = false;
  //     final authController = Get.find<AuthController>();
  //     if (authController.merchantDetail.setting?.printPaperType == 'TH') {
  //       if (Get.find<PrinterController>().defaultPrinter != null) {
  //         await Get.find<PrinterController>()
  //             .printReceipt(null, null, pdf: pdfData, path: fullPath);
  //       } else {
  //         await Printing.layoutPdf(
  //                 onLayout: (PdfPageFormat format) async => pdfData)
  //             .then((value) => null);
  //         await deleteFile(fullPath);
  //       }
  //       // await deleteFile(fullPath);
  //     } else {
  //       await Printing.layoutPdf(
  //               onLayout: (PdfPageFormat format) async => pdfData)
  //           .then((value) => null);
  //       await deleteFile(fullPath);
  //     }
  //   });
  //   update(['download-load']);
  // }

  Future<void> initConnectivity() async {
    // late ConnectivityResult result;
    // // Platform messages may fail, so we use a try/catch PlatformException.
    // try {
    //   result = await _connectivity.checkConnectivity();
    // } on PlatformException catch (e) {
    //   developer.log('Could n\'t check connectivity status', error: e);
    //   return;
    // }

    // // If the widget was removed from the tree while the asynchronous platform
    // // message was in flight, we want to discard the reply rather than calling
    // // setState to update our non-existent appearance.

    // return _updateConnectionStatus(result);
  }

  // Future<void> _updateConnectionStatus(ConnectivityResult result) async {
  //   _connectionStatus = result;
  //   initConnectivity();
  // }

  // void checkIsAnyMonthSelect() {
  //   if (selectedMonthList.contains(true)) {
  //     nonMonthly = true;
  //     update(['non_monthly']);
  //   } else {
  //     nonMonthly = false;
  //     update(['non_monthly']);
  //   }
  // }

  Future<bool> checkVPNActive() async {
    await initConnectivity();
    // commonPrint("message" + _connectionStatus.name.toString());
//
    // switch (_connectionStatus) {
    //   case ConnectivityResult.vpn:
    return true;
    //   case ConnectivityResult.wifi:
    //     return false;
    //   default:
    //     return false;
    // }
  }

  String vpnMessage = '';
  Future<bool> isVpnActive() async {
    bool isVpnActive;
    if (kIsWeb) {
      return false;
    } else {
      List<NetworkInterface> interfaces = await NetworkInterface.list(
          includeLoopback: false, type: InternetAddressType.any);
      Get.find<CommonController>().interfaces = interfaces;
      vpnMessage = '';
      if (interfaces.isNotEmpty) {
        isVpnActive = interfaces.any((interface) {
          // commonPrint("VPN: " + interface.name.toString());
          // vpnMessage = vpnMessage + " - " + interface.name.toString() + ", ";

          return interface.name.contains("tun") ||
              interface.name.contains("ppp") ||
              interface.name.contains("tap") ||
              // interface.name.contains("ipsec0") || (removed due to  v92  issue in 14 pro max iphone )
              interface.name.contains("pptp");
        });
        return isVpnActive;
      } else {
        isVpnActive = false;
        return isVpnActive;
      }
    }
  }

  // @override
  // void dispose() {
  //   // _connectivitySubscription.cancel();
  //   super.dispose();
  // }

// ================================================>
// Save Bank Details Api Functions
// ================================================>

  Future setupFireBase() async {
    // await Firebase.initializeApp();
    // Permission.notification.request();

    // // notification.NotificationPermissions.requestNotificationPermissions();
    // if (!Platform.isMacOS) {
    //   await Permission.notification.isDenied.then(
    //     (bool value) {
    //       if (value) {
    //         Permission.notification.request();
    //       }
    //     },
    //   );
    // } else {}

    //   FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);
    //   await PushNotificationService().setupInteractedMessage();
    //   fcmToken = await FirebaseMessaging.instance.getToken();
    //   commonPrint("fcmToken:" + fcmToken.toString());
    //   RemoteMessage? initialMessage =
    //       await FirebaseMessaging.instance.getInitialMessage();
    //   if (initialMessage != null) {
    //     // App received a notification when it was killed
    //   }
  }

  Future<void> checkDeviceDetails() async {
    // DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();

    // if (Platform.isAndroid) {
    //   final deviceData = await deviceInfo.androidInfo;
    //   commonPrint('manuu');
    //   commonPrint(deviceData.manufacturer.toString().toUpperCase());
    //   if (deviceData.manufacturer.toString().toUpperCase().contains('SUNMI')) {
    //     isSunmi = true;
    //   }
    // }
    // }
  }

// Future<void> firebaseMessagingBackgroundHandler(RemoteMessage message) async {
//   const AndroidNotificationChannel channel = AndroidNotificationChannel(
//     'high_importance_channel', // id
//     'High Importance Notifications', // title
//     description:
//         'This channel is used for important notifications.', // description
//     importance: Importance.max,
//   );
//   await FlutterLocalNotificationsPlugin()
//       .resolvePlatformSpecificImplementation<
//           AndroidFlutterLocalNotificationsPlugin>()
//       ?.createNotificationChannel(channel);

//   final FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin =
//       FlutterLocalNotificationsPlugin();
//   if (flutterLocalNotificationsPlugin != null) {
//     await flutterLocalNotificationsPlugin
//         .resolvePlatformSpecificImplementation<
//             AndroidFlutterLocalNotificationsPlugin>()
//         ?.createNotificationChannel(channel);
//   }
//   const AndroidInitializationSettings androidSettings =
//       AndroidInitializationSettings('@drawable/ic_stat_logo');
//   const DarwinInitializationSettings iOSSettings = DarwinInitializationSettings(
//     requestSoundPermission: false,
//     requestBadgePermission: false,
//     requestAlertPermission: false,
//   );
//   const InitializationSettings initSettings = InitializationSettings(
//       android: androidSettings, iOS: iOSSettings, macOS: iOSSettings);
//   flutterLocalNotificationsPlugin?.initialize(
//     initSettings,
//     onDidReceiveNotificationResponse: (NotificationResponse details) {},
//   );
//   final RemoteNotification? notification = message.notification;
//   final AndroidNotification? android = message.notification?.android;
// // If `onMessage` is triggered with a notification, construct our own
//   // local notification to show to users using the created channel.
//   if (notification != null && android != null) {
//     flutterLocalNotificationsPlugin?.show(
//         notification.hashCode,
//         notification.title,
//         notification.body,
//         NotificationDetails(
//             android: AndroidNotificationDetails(channel.id, channel.name,
//                 channelDescription: channel.description,
//                 icon: android.smallIcon,
//                 visibility: NotificationVisibility.private,
//                 priority: Priority.high),
//             macOS: const DarwinNotificationDetails(
//                 presentSound: true, presentBadge: true, presentAlert: true)));
//   }
}
