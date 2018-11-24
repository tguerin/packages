import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/avd.dart';
import 'package:flutter_svg/flutter_svg.dart';

const List<String> assetNames = <String>[
  // 'assets/notfound.svg', // uncomment to test an asset that doesn't exist.
  'assets/flutter_logo.svg',
  'assets/dart.svg',
  'assets/simple/clip_path_3.svg',
  'assets/simple/clip_path_2.svg',
  'assets/simple/clip_path.svg',
  'assets/simple/fill-rule-inherit.svg',
  'assets/simple/group_fill_opacity.svg',
  'assets/simple/group_opacity.svg',
  'assets/simple/text.svg',
  'assets/simple/linear_gradient.svg',
  'assets/simple/linear_gradient_2.svg',
  'assets/simple/male.svg',
  'assets/simple/radial_gradient.svg',
  'assets/simple/rect_rrect.svg',
  'assets/simple/rect_rrect_no_ry.svg',
  'assets/simple/style_attr.svg',
  'assets/w3samples/aa.svg',
  'assets/w3samples/alphachannel.svg',
  'assets/simple/ellipse.svg',
  'assets/simple/dash_path.svg',
  'assets/simple/nested_group.svg',
  'assets/simple/stroke_inherit_circles.svg',
  'assets/wikimedia/chess_knight.svg',
  'assets/wikimedia/Ghostscript_Tiger.svg',
  'assets/wikimedia/Firefox_Logo_2017.svg',
];

const List<String> iconNames = <String>[
  'assets/deborah_ufw/new-action-expander.svg',
  'assets/deborah_ufw/new-camera.svg',
  'assets/deborah_ufw/new-gif-button.svg',
  'assets/deborah_ufw/new-gif.svg',
  'assets/deborah_ufw/new-image.svg',
  'assets/deborah_ufw/new-mention.svg',
  'assets/deborah_ufw/new-pause-button.svg',
  'assets/deborah_ufw/new-play-button.svg',
  'assets/deborah_ufw/new-send-circle.svg',
  'assets/deborah_ufw/numeric_25.svg',
];

const List<String> uriNames = <String>[
  'http://upload.wikimedia.org/wikipedia/commons/0/02/SVG_logo.svg',
  'https://dev.w3.org/SVG/tools/svgweb/samples/svg-files/410.svg',
  'https://upload.wikimedia.org/wikipedia/commons/b/b4/Chess_ndd45.svg',
];

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter SVG Demo'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _painters = <Widget>[];
  double _dimension;

  @override
  void initState() {
    super.initState();
    _dimension = 250.0;

    _painters.add(SvgPicture.string(
        '''<svg viewBox="0 0 30 10" xmlns="http://www.w3.org/2000/svg">
  <circle id="myCircle" cx="5" cy="5" r="4"/>
  <use href="#myCircle" x="10" fill="blue"/>
  <use href="#myCircle" x="20" fill="white" stroke="blue"/>
</svg>'''));
    _painters.add(
      SvgPicture.string(
        '''<?xml version="1.0" encoding="UTF-8"?>
<svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 39 10" version="1.1">
<defs>
<g>
<symbol overflow="visible" id="glyph0-0">
<path style="stroke:none;" d="M 7.0625 -2.328125 C 7.078125 -2.375 7.109375 -2.4375 7.109375 -2.46875 C 7.109375 -2.46875 7.109375 -2.578125 6.984375 -2.578125 C 6.890625 -2.578125 6.875 -2.515625 6.859375 -2.453125 C 6.203125 -0.984375 5.84375 -0.3125 4.140625 -0.3125 L 2.6875 -0.3125 C 2.546875 -0.3125 2.515625 -0.3125 2.46875 -0.3125 C 2.359375 -0.328125 2.328125 -0.34375 2.328125 -0.421875 C 2.328125 -0.453125 2.328125 -0.46875 2.375 -0.640625 L 3.0625 -3.375 L 4.046875 -3.375 C 4.890625 -3.375 4.890625 -3.15625 4.890625 -2.90625 C 4.890625 -2.84375 4.890625 -2.71875 4.828125 -2.421875 C 4.8125 -2.375 4.796875 -2.34375 4.796875 -2.3125 C 4.796875 -2.265625 4.828125 -2.203125 4.921875 -2.203125 C 5 -2.203125 5.03125 -2.25 5.078125 -2.40625 L 5.640625 -4.734375 C 5.640625 -4.796875 5.59375 -4.84375 5.515625 -4.84375 C 5.4375 -4.84375 5.40625 -4.78125 5.390625 -4.671875 C 5.171875 -3.90625 5 -3.671875 4.078125 -3.671875 L 3.140625 -3.671875 L 3.734375 -6.078125 C 3.828125 -6.4375 3.84375 -6.46875 4.28125 -6.46875 L 5.6875 -6.46875 C 6.890625 -6.46875 7.203125 -6.1875 7.203125 -5.359375 C 7.203125 -5.125 7.203125 -5.109375 7.15625 -4.828125 C 7.15625 -4.78125 7.140625 -4.703125 7.140625 -4.65625 C 7.140625 -4.609375 7.171875 -4.53125 7.265625 -4.53125 C 7.375 -4.53125 7.390625 -4.59375 7.40625 -4.78125 L 7.609375 -6.515625 C 7.640625 -6.78125 7.59375 -6.78125 7.34375 -6.78125 L 2.296875 -6.78125 C 2.109375 -6.78125 2 -6.78125 2 -6.578125 C 2 -6.46875 2.09375 -6.46875 2.28125 -6.46875 C 2.65625 -6.46875 2.9375 -6.46875 2.9375 -6.296875 C 2.9375 -6.25 2.9375 -6.234375 2.875 -6.046875 L 1.5625 -0.78125 C 1.46875 -0.390625 1.453125 -0.3125 0.65625 -0.3125 C 0.484375 -0.3125 0.375 -0.3125 0.375 -0.125 C 0.375 0 0.46875 0 0.65625 0 L 5.828125 0 C 6.0625 0 6.078125 -0.015625 6.140625 -0.171875 Z M 7.0625 -2.328125 "/>
</symbol>
<symbol overflow="visible" id="glyph0-1">
<path style="stroke:none;" d="M 0.875 -0.59375 C 0.84375 -0.4375 0.78125 -0.203125 0.78125 -0.15625 C 0.78125 0.015625 0.921875 0.109375 1.078125 0.109375 C 1.203125 0.109375 1.375 0.03125 1.453125 -0.171875 C 1.453125 -0.1875 1.578125 -0.65625 1.640625 -0.90625 L 1.859375 -1.796875 C 1.90625 -2.03125 1.96875 -2.25 2.03125 -2.46875 C 2.0625 -2.640625 2.140625 -2.9375 2.15625 -2.96875 C 2.296875 -3.28125 2.828125 -4.1875 3.78125 -4.1875 C 4.234375 -4.1875 4.3125 -3.8125 4.3125 -3.484375 C 4.3125 -3.234375 4.25 -2.953125 4.171875 -2.65625 L 3.890625 -1.5 L 3.6875 -0.75 C 3.65625 -0.546875 3.5625 -0.203125 3.5625 -0.15625 C 3.5625 0.015625 3.703125 0.109375 3.84375 0.109375 C 4.15625 0.109375 4.21875 -0.140625 4.296875 -0.453125 C 4.4375 -1.015625 4.8125 -2.46875 4.890625 -2.859375 C 4.921875 -2.984375 5.453125 -4.1875 6.546875 -4.1875 C 6.96875 -4.1875 7.078125 -3.84375 7.078125 -3.484375 C 7.078125 -2.921875 6.65625 -1.78125 6.453125 -1.25 C 6.375 -1.015625 6.328125 -0.90625 6.328125 -0.703125 C 6.328125 -0.234375 6.671875 0.109375 7.140625 0.109375 C 8.078125 0.109375 8.453125 -1.34375 8.453125 -1.421875 C 8.453125 -1.53125 8.359375 -1.53125 8.328125 -1.53125 C 8.234375 -1.53125 8.234375 -1.5 8.1875 -1.34375 C 8.03125 -0.8125 7.71875 -0.109375 7.171875 -0.109375 C 7 -0.109375 6.921875 -0.203125 6.921875 -0.4375 C 6.921875 -0.6875 7.015625 -0.921875 7.109375 -1.140625 C 7.296875 -1.671875 7.71875 -2.765625 7.71875 -3.34375 C 7.71875 -3.984375 7.3125 -4.40625 6.5625 -4.40625 C 5.828125 -4.40625 5.3125 -3.96875 4.9375 -3.4375 C 4.9375 -3.5625 4.90625 -3.90625 4.625 -4.140625 C 4.375 -4.359375 4.0625 -4.40625 3.8125 -4.40625 C 2.90625 -4.40625 2.421875 -3.765625 2.25 -3.53125 C 2.203125 -4.109375 1.78125 -4.40625 1.328125 -4.40625 C 0.875 -4.40625 0.6875 -4.015625 0.59375 -3.84375 C 0.421875 -3.484375 0.296875 -2.90625 0.296875 -2.875 C 0.296875 -2.765625 0.390625 -2.765625 0.40625 -2.765625 C 0.515625 -2.765625 0.515625 -2.78125 0.578125 -3 C 0.75 -3.703125 0.953125 -4.1875 1.3125 -4.1875 C 1.46875 -4.1875 1.609375 -4.109375 1.609375 -3.734375 C 1.609375 -3.515625 1.578125 -3.40625 1.453125 -2.890625 Z M 0.875 -0.59375 "/>
</symbol>
<symbol overflow="visible" id="glyph0-2">
<path style="stroke:none;" d="M 3.953125 -3.78125 C 3.78125 -3.78125 3.65625 -3.78125 3.515625 -3.65625 C 3.34375 -3.5 3.328125 -3.328125 3.328125 -3.265625 C 3.328125 -3.015625 3.515625 -2.90625 3.703125 -2.90625 C 3.984375 -2.90625 4.25 -3.15625 4.25 -3.546875 C 4.25 -4.03125 3.78125 -4.40625 3.078125 -4.40625 C 1.734375 -4.40625 0.40625 -2.984375 0.40625 -1.578125 C 0.40625 -0.671875 0.984375 0.109375 2.03125 0.109375 C 3.453125 0.109375 4.28125 -0.953125 4.28125 -1.0625 C 4.28125 -1.125 4.234375 -1.203125 4.171875 -1.203125 C 4.109375 -1.203125 4.09375 -1.171875 4.03125 -1.09375 C 3.25 -0.109375 2.15625 -0.109375 2.046875 -0.109375 C 1.421875 -0.109375 1.140625 -0.59375 1.140625 -1.203125 C 1.140625 -1.609375 1.34375 -2.578125 1.6875 -3.1875 C 2 -3.765625 2.546875 -4.1875 3.09375 -4.1875 C 3.421875 -4.1875 3.8125 -4.0625 3.953125 -3.78125 Z M 3.953125 -3.78125 "/>
</symbol>
<symbol overflow="visible" id="glyph1-0">
<path style="stroke:none;" d="M 6.84375 -3.265625 C 7 -3.265625 7.1875 -3.265625 7.1875 -3.453125 C 7.1875 -3.65625 7 -3.65625 6.859375 -3.65625 L 0.890625 -3.65625 C 0.75 -3.65625 0.5625 -3.65625 0.5625 -3.453125 C 0.5625 -3.265625 0.75 -3.265625 0.890625 -3.265625 Z M 6.859375 -1.328125 C 7 -1.328125 7.1875 -1.328125 7.1875 -1.53125 C 7.1875 -1.71875 7 -1.71875 6.84375 -1.71875 L 0.890625 -1.71875 C 0.75 -1.71875 0.5625 -1.71875 0.5625 -1.53125 C 0.5625 -1.328125 0.75 -1.328125 0.890625 -1.328125 Z M 6.859375 -1.328125 "/>
</symbol>
<symbol overflow="visible" id="glyph2-0">
<path style="stroke:none;" d="M 3.515625 -1.265625 L 3.28125 -1.265625 C 3.265625 -1.109375 3.1875 -0.703125 3.09375 -0.640625 C 3.046875 -0.59375 2.515625 -0.59375 2.40625 -0.59375 L 1.125 -0.59375 C 1.859375 -1.234375 2.109375 -1.4375 2.515625 -1.765625 C 3.03125 -2.171875 3.515625 -2.609375 3.515625 -3.265625 C 3.515625 -4.109375 2.78125 -4.625 1.890625 -4.625 C 1.03125 -4.625 0.4375 -4.015625 0.4375 -3.375 C 0.4375 -3.03125 0.734375 -2.984375 0.8125 -2.984375 C 0.96875 -2.984375 1.171875 -3.109375 1.171875 -3.359375 C 1.171875 -3.484375 1.125 -3.734375 0.765625 -3.734375 C 0.984375 -4.21875 1.453125 -4.375 1.78125 -4.375 C 2.484375 -4.375 2.84375 -3.828125 2.84375 -3.265625 C 2.84375 -2.65625 2.40625 -2.1875 2.1875 -1.9375 L 0.515625 -0.265625 C 0.4375 -0.203125 0.4375 -0.1875 0.4375 0 L 3.3125 0 Z M 3.515625 -1.265625 "/>
</symbol>
</g>
</defs>
<g id="surface1">
<g style="fill:rgb(0%,0%,0%);fill-opacity:1;">
  <use xlink:href="#glyph0-0" x="0.253906" y="9.717969"/>
</g>
<g style="fill:rgb(0%,0%,0%);fill-opacity:1;">
  <use xlink:href="#glyph1-0" x="10.946106" y="9.717969"/>
</g>
<g style="fill:rgb(0%,0%,0%);fill-opacity:1;">
  <use xlink:href="#glyph0-1" x="21.467206" y="9.717969"/>
</g>
<g style="fill:rgb(0%,0%,0%);fill-opacity:1;">
  <use xlink:href="#glyph0-2" x="30.215207" y="9.717969"/>
</g>
<g style="fill:rgb(0%,0%,0%);fill-opacity:1;">
  <use xlink:href="#glyph2-0" x="34.526206" y="5.605079"/>
</g>
</g>
</svg>''',
        color: Colors.black,
      ),
    );

    _painters.add(SvgPicture.string('''<?xml version="1.0" encoding="UTF-8"?>
<svg width="18px" height="18px" viewBox="0 0 18 18" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
    <!-- Generator: Sketch 51.2 (57519) - http://www.bohemiancoding.com/sketch -->
    <title>Close</title>
    <desc>Created with Sketch.</desc>

    <defs></defs>
    <g id="03.-Agenda" stroke="none" stroke-width="1" fill="none" fill-rule="evenodd" stroke-linecap="square">
        <g id="Filter" transform="translate(-338.000000, -22.000000)" stroke="#1A1A1A" stroke-width="4">
            <g id="Close" transform="translate(347.000000, 31.000000) rotate(-45.000000) translate(-347.000000, -31.000000) translate(339.000000, 23.000000)">
                <path d="M0,8 L16,8" id="Line-2"></path>
                <path d="M8,0 L8,16" id="Line-2"></path>
            </g>
        </g>
    </g>
</svg>'''));
    for (String assetName in assetNames) {
      _painters.add(
        SvgPicture.asset(assetName),
      );
    }

    for (int i = 0; i < iconNames.length; i++) {
      _painters.add(
        Directionality(
          textDirection: TextDirection.ltr,
          child: SvgPicture.asset(
            iconNames[i],
            color: Colors.blueGrey[(i + 1) * 100],
            matchTextDirection: true,
          ),
        ),
      );
    }

    for (String uriName in uriNames) {
      _painters.add(
        SvgPicture.network(
          uriName,
          placeholderBuilder: (BuildContext context) => Container(
              padding: const EdgeInsets.all(30.0),
              child: const CircularProgressIndicator()),
        ),
      );
    }
    _painters.add(AvdPicture.asset('assets/android_vd/battery_charging.xml'));
  }

  @override
  Widget build(BuildContext context) {
    if (_dimension > MediaQuery.of(context).size.width - 10.0) {
      _dimension = MediaQuery.of(context).size.width - 10.0;
    }
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(children: <Widget>[
        Slider(
            min: 5.0,
            max: MediaQuery.of(context).size.width - 10.0,
            value: _dimension,
            onChanged: (double val) {
              setState(() => _dimension = val);
            }),
        Expanded(
          child: GridView.extent(
            shrinkWrap: true,
            maxCrossAxisExtent: _dimension,
            padding: const EdgeInsets.all(4.0),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
            children: _painters.toList(),
          ),
        ),
      ]),
    );
  }
}
