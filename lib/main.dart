import 'package:flutter/material.dart';

import 'package:widgets_application/Aspect%20ratio.dart';
import 'package:widgets_application/Auto%20complete.dart';
import 'package:widgets_application/Chip.dart';
import 'package:widgets_application/Data%20table.dart';
import 'package:widgets_application/Drawer.dart';
import 'package:widgets_application/FittedBox.dart';
import 'package:widgets_application/IntrinsicHeight.dart';
import 'package:widgets_application/ListView.dart';
import 'package:widgets_application/Opacity.dart';
import 'package:widgets_application/Pop%20up.dart';
import 'package:widgets_application/Positioned.dart';
import 'package:widgets_application/Post.dart';
import 'package:widgets_application/Tabbar.dart';
import 'package:widgets_application/Text.dart';
import 'package:widgets_application/Textbutton.dart';
import 'package:widgets_application/card.dart';
import 'package:widgets_application/checkbox.dart';
import 'package:widgets_application/circular_process_indicator.dart';
import 'package:widgets_application/clipOval.dart';
import 'package:widgets_application/clipRect.dart';
import 'package:widgets_application/column.dart';
import 'package:widgets_application/container.dart';
import 'package:widgets_application/date_and_time.dart';
import 'package:widgets_application/decoratedbox.dart';
import 'package:widgets_application/dropdown.dart';
import 'package:widgets_application/elevated_button.dart';
import 'package:widgets_application/expanded.dart';

import 'package:widgets_application/flexible.dart';
import 'package:widgets_application/future%20builder.dart';
import 'package:widgets_application/get%20dio.dart';
import 'package:widgets_application/home.dart';
import 'package:widgets_application/icon.dart';
import 'package:widgets_application/image.dart';
import 'package:widgets_application/inkwell.dart';
import 'package:widgets_application/limitedBox.dart';
import 'package:widgets_application/listview.builder.dart';
import 'package:widgets_application/media%20query.dart';
import 'package:widgets_application/outlined_button.dart';
import 'package:widgets_application/overflow.dart';
import 'package:widgets_application/page%20view.dart';
import 'package:widgets_application/radiobutton.dart';
import 'package:widgets_application/refresh_indicator.dart';
import 'package:widgets_application/row.dart';
import 'package:widgets_application/scroll%20confriguration.dart';

import 'package:widgets_application/scrollbar.dart';
import 'package:widgets_application/search%20navigation%20bar.dart';
import 'package:widgets_application/silder.dart';
import 'package:widgets_application/simple%20dialog.dart';
import 'package:widgets_application/single_child_scrollview.dart';
import 'package:widgets_application/spacer.dart';

import 'package:widgets_application/switch.dart';
import 'package:widgets_application/textfield.dart';
import 'package:widgets_application/textform%20field.dart';
import 'package:widgets_application/time_picker.dart';
import 'package:widgets_application/transform.dart';
import 'package:widgets_application/wrap.dart';


import 'DraggableScrollableSheet.dart';
import 'FractionallySizedBox.dart';

import 'RecorderableListView.dart';
import 'bottom_navigation.dart';

import 'dialog.dart';
import 'floating_action_button.dart';
import 'listview separated.dart';
import 'nested scroll.dart';





void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(


      color: Colors.pink,
      highContrastTheme: ThemeData.dark(),
      themeAnimationDuration: Durations.long4,
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(),
      title: 'Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Demo Home Page'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      primary: false,
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              button("Container", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ContainerPage()),
                );
              }),

              button("GetApi", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   GetApi()),
                );
              }),
              button("Get dio", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   GetDio()),
                );
              }),
              // button("Post Api", () {
              //   Navigator.push(
              //     context,
              //     MaterialPageRoute(builder: (context) =>   Home()),
              //   );
              // }),

              button("Drawer", () {

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>   DrawerPage()),
                );
              }),
              button("Column", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ColumnPage()),
                );
              }),
              button("Row", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const RowPage()),
                );
              }),
              button("Flexible", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const FlexiblePage()),
                );
              }),
              button("Expanded", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ExpandedPage()),
                );
              }),
              button("Text", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const TextPage()),
                );
              }),
              button("Textbutton", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const TextButtonPage()),
                );
              }),
              button("Elevated Button", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ElevatedButtonPage()),
                );
              }),

              button("Outlined Button", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const OutlinedButtonPage()),
                );
              }),
              button("Tabbar", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Tabbar()),
                );
              }),
              button("Floating action button", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const FloatingButton()),
                );
              }),
              button("bottom navigation", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const BottomNavigation()),
                );
              }),

              button("Drop Down", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Dropdown()),
                );
              }),
              button("Pop up", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Popup()),
                );
              }),
              button("textfield", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Textfield()),
                );
              }),
              button("Textform field", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const TextfieldForm()),
                );
              }),
              button("Checkbox", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Checkboxpage()),
                );
              }),
              button("RadioButton", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const RadioButton()),
                );
              }),
              button("Cards", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const Cards()),
                );
              }),
              button("Image", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const ImagePage()),
                );
              }),
              button("Icon", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const IconPage()),
                );
              }),
              button("Inkwell", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  const InkwellPage()),
                );
              }),
              button("Listview", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  MyListView()),
                );
              }),

              button("Listview builder", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ListViewBuilderExample()),
                );
              }),
              button("Listview separated", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ListViewSeparated()),
                );
              }),
              button("Date Picker", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  DatePicker()),
                );
              }),
              button("Time Picker", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  TimePickerPage()),
                );
              }),
              button("Circular process", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  CircularProcess()),
                );
              }),
              button("Media Query", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MediaQueryDatapage()),
                );
              }),
              button("Dialog", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DialogPage()),
                );
              }),

              button("Simple Dialog", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SimpleDialogPage()),
                );
              }),

              button("Spacer", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SpacerPage()),
                );
              }),
              button("Aspect Ratio", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>AspectRatioPage()),
                );
              }),
              button("FractionallySize", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  FractionallySizedBoxExample()),
                );
              }),
              button("LimitedBox", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  LimitedBoxPage()),
                );
              }),

              button("Intrinsic Height", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  IntrinsicHeightPage()),
                );
              }),

              button("FittedBox", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  FittedBoxPage()),
                );
              }),
              button("Overflow", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Overflow()),
                );
              }),
              button("Positioned", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  PositionedPage()),
                );
              }),

              button("Single child scrollview", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Singlechild()),
                );
              }),
              button("Scrollbar", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ScrollbarPage()),
                );
              }),
              button("Draggable Scroll Page", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  DraggableScrollPage()),
                );
              }),
              button("Nested scroll", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  Nestedscroll()),
                );
              }),
              button("Page View", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  PageviewPage()),
                );
              }),
              button("Refresh Indicator", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  RefreshPage()),
                );
              }),
              button("Recorderable Page ", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  RecorderablePage()),
                );
              }),

              button("Scroll ConfrigurationPage", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  ScrollConfigurationPage()),
                );
              }),
              button("Future Builder", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  FutureBuilderExample()),
                );
              }),

              button("Switch", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>  SwitchPage()),
                );
              }),
              button("Search navigation", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SearchNavigation()),
                );
              }),
              button("Slider", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SliderApp()),
                );
              }),
              button("Chip", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ChipPage()),
                );
              }),
              button("DecoratedBox", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DecoratedBoxPage()),
                );
              }),
              button("Wrap", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => WrapPage()),
                );
              }),
              button("CilpOval", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClipOvalApp()),
                );
              }),
              button("ClipRect", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => ClipRectApp()),
                );
              }),

              button("Opacity", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OpacityPage()),
                );
              }),
              button("Transform", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TransformPage()),
                );
              }),

              button("Data table", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DataTablePage()),
                );
              }),
              button("Auto Complete", () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AutoCompletePage()),
                );
              }),













            ],
          ),
        ),
      ),
    );
  }

  Widget button(String btnText, VoidCallback onPress) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ElevatedButton(
        onPressed: onPress,
        child: Text(
          btnText,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
