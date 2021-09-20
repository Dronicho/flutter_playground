import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_playground/fonts/math_icons_icons.dart';
import 'package:flutter_portal/flutter_portal.dart';

import 'extensions/partition.dart';
import 'fonts/basic_math_icons_icons.dart';
import 'fonts/constant_math_icons.dart';

class KeyboardKeyData {
  final String latex;
  final IconData icon;
  
  final int flex;
  final Color? color;
  final Color? iconColor;

  const KeyboardKeyData(
      {required this.latex,
      required this.icon,
      this.flex = 1,
      this.color,
      this.iconColor});
}

final constantMath = const KeyboardTabData(const [
  [
    KeyboardKeyData(
        latex: '123',
        icon: ConstantMath.divide,
        color: const Color(0xFFFFEA00)),
    KeyboardKeyData(latex: '123', icon: ConstantMath.one),
    KeyboardKeyData(latex: '123', icon: ConstantMath.two),
    KeyboardKeyData(latex: '123', icon: ConstantMath.three),
  ],
  [
    KeyboardKeyData(
        latex: '123',
        icon: ConstantMath.multiply,
        color: const Color(0xFFFFEA00)),
    KeyboardKeyData(latex: '123', icon: ConstantMath.four),
    KeyboardKeyData(latex: '123', icon: ConstantMath.five),
    KeyboardKeyData(latex: '123', icon: ConstantMath.six),
  ],
  [
    KeyboardKeyData(
        latex: '123', icon: ConstantMath.add, color: const Color(0xFFFFEA00)),
    KeyboardKeyData(latex: '123', icon: ConstantMath.seven),
    KeyboardKeyData(latex: '123', icon: ConstantMath.eight),
    KeyboardKeyData(latex: '123', icon: ConstantMath.nine),
  ],
  [
    KeyboardKeyData(
        latex: '123',
        icon: ConstantMath.subtract,
        color: const Color(0xFFFFEA00)),
    KeyboardKeyData(latex: '123', icon: ConstantMath.zero, flex: 2),
    KeyboardKeyData(latex: '123', icon: ConstantMath.comma),
  ],
  [
    KeyboardKeyData(
        latex: '123', icon: ConstantMath.equal, color: const Color(0xFFFFEA00)),
    KeyboardKeyData(
        latex: '123',
        iconColor: Colors.white,
        icon: ConstantMath.arrow_left,
        color: const Color(0xFf1F304B)),
    KeyboardKeyData(
        latex: '123',
        iconColor: Colors.white,
        icon: ConstantMath.arrow_right,
        color: const Color(0xFf1F304B)),
    KeyboardKeyData(
        latex: '123',
        iconColor: Colors.white,
        icon: ConstantMath.delete,
        color: const Color(0xFf1F304B)),
  ]
  // KeyboardKeyData(latex: '123', icon: ConstantMath.redo),
  // KeyboardKeyData(latex: '123', icon: ConstantMath.undo),
  // KeyboardKeyData(latex: '123', icon: ConstantMath.zero),
  //
  //
  //
  //
  //
  // KeyboardKeyData(latex: '123', icon: ConstantMath.not_equal),
  // KeyboardKeyData(latex: '123', icon: ConstantMath.approximately_equal),
  // KeyboardKeyData(latex: '123', icon: ConstantMath.decimal),
  // KeyboardKeyData(latex: '123', icon: ConstantMath.shift),
  // KeyboardKeyData(latex: '123', icon: ConstantMath.shift_active),
], Colors.white);

final basicIcons = const KeyboardTabData(const [
  [
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.dx),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.close_parenthesis),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.exponent),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.fraction),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.square_root),
  ],
  [
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.smaller),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.greater),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.plus_minus),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.percent),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.x_lines),
  ],
  [
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.i),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.e),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.log),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.ln),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.infinity),
  ],
  [
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.lim),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.prime),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.f____),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.integral_1),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.evaluation),
  ],
  [
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.pi),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.x),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.y),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.theta),
    KeyboardKeyData(latex: '123', icon: BasicMathIcons.function),
  ]
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.bracket_left),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.bracket_right),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.mixed_number),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.subscript),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.nth_root),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.smaller_equal),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.greater_equal),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.lim_x_to),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.dx_dy),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.integral),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.y_deriv),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.derivative),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.curly_bracket_left),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.curly_bracket_right),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.lim_x_to_infinity_1),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.dd),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.lim_x_to_infinity),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.d),
  // KeyboardKeyData(latex: '123', icon: BasicMathIcons.d_1),
], const Color(0xFFE6E6E6));

class KeyboardTabData {
  final List<List<KeyboardKeyData>> keyRows;
  final Color color;

  const KeyboardTabData(this.keyRows, this.color);

  KeyboardTabData copyWith(
          {List<List<KeyboardKeyData>>? keyRows, Color? color}) =>
      KeyboardTabData(keyRows ?? this.keyRows, color ?? this.color);
}

class KeyboardDemo extends StatefulWidget {
  @override
  _KeyboardDemoState createState() => _KeyboardDemoState();
}

class _KeyboardDemoState extends State<KeyboardDemo> {
  TextEditingController _controller = TextEditingController();
  bool _readOnly = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          SizedBox(height: 50),
          TextField(
            controller: _controller,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3),
              ),
            ),
            style: TextStyle(fontSize: 24),
            autofocus: true,
            showCursor: true,
            readOnly: _readOnly,
          ),
          IconButton(
            icon: Icon(Icons.keyboard),
            onPressed: () {
              setState(() {
                // _readOnly = !_readOnly;
                context.read<KeyboardCubit>().toggleKeyboard();
              });
            },
          ),
          // Spacer(),
          // CustomKeyboard(
          //   onTextInput: (myText) {
          //     _insertText(myText);
          //   },
          //   onBackspace: () {
          //     _backspace();
          //   },
          // ),
        ],
      ),
    );
  }

  void _insertText(String myText) {
    final text = _controller.text;
    final textSelection = _controller.selection;
    final newText = text.replaceRange(
      textSelection.start,
      textSelection.end,
      myText,
    );
    final myTextLength = myText.length;
    _controller.text = newText;
    _controller.selection = textSelection.copyWith(
      baseOffset: textSelection.start + myTextLength,
      extentOffset: textSelection.start + myTextLength,
    );
  }

  void _backspace() {
    final text = _controller.text;
    final textSelection = _controller.selection;
    final selectionLength = textSelection.end - textSelection.start;

    // There is a selection.
    if (selectionLength > 0) {
      final newText = text.replaceRange(
        textSelection.start,
        textSelection.end,
        '',
      );
      _controller.text = newText;
      _controller.selection = textSelection.copyWith(
        baseOffset: textSelection.start,
        extentOffset: textSelection.start,
      );
      return;
    }

    // The cursor is at the beginning.
    if (textSelection.start == 0) {
      return;
    }

    // Delete the previous character
    final previousCodeUnit = text.codeUnitAt(textSelection.start - 1);
    final offset = _isUtf16Surrogate(previousCodeUnit) ? 2 : 1;
    final newStart = textSelection.start - offset;
    final newEnd = textSelection.start;
    final newText = text.replaceRange(
      newStart,
      newEnd,
      '',
    );
    _controller.text = newText;
    _controller.selection = textSelection.copyWith(
      baseOffset: newStart,
      extentOffset: newStart,
    );
  }

  bool _isUtf16Surrogate(int value) {
    return value & 0xF800 == 0xD800;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class KeyBoardGrid extends StatelessWidget {
  const KeyBoardGrid({Key? key, required this.data}) : super(key: key);

  final KeyboardTabData data;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: data.keyRows
          .map((keys) => Row(
            mainAxisAlignment: MainAxisAlignment.center,
                children: keys
                    .map((e) => Expanded(
                          flex: e.flex,
                          child: TextKey(
                            iconColor: e.iconColor ?? const Color(0xFF1C1C1F),
                            color: e.color ?? data.color,
                            latex: e.latex,
                            icon: e.icon,
                            onTextInput: (_) {},
                          ),
                        ))
                    .toList(),
              ))
          .toList(),
    );
  }
}

class CustomKeyboard extends StatefulWidget {
  CustomKeyboard({
    Key? key,
    this.onTextInput,
    this.onBackspace,
  }) : super(key: key);

  final ValueSetter<String>? onTextInput;
  final VoidCallback? onBackspace;

  @override
  _CustomKeyboardState createState() => _CustomKeyboardState();
}

class _CustomKeyboardState extends State<CustomKeyboard>
    with SingleTickerProviderStateMixin {
  late final TabController _controller;

  void _textInputHandler(String text) => widget.onTextInput?.call(text);

  void _backspaceHandler() => widget.onBackspace?.call();

  @override
  void initState() {
    super.initState();
    _controller = TabController(vsync: this, length: 4);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Portal(
      child: Container(
        height: 46 * 6 + 46,
        color: Color(0xFFF2F2F2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [_buildTabs(), _buildKeyboardContainer()],
        ),
      ),
    );
  }

  Widget _buildTabs() {
    return SizedBox(
      child: TabBar(
          indicatorSize: TabBarIndicatorSize.label,
          labelColor: Colors.white,
          unselectedLabelColor: const Color(0xFF1F304B),
          indicator:
              CircleTabIndicator(color: const Color(0xFF1F304B), verticalOffset: 4, horizontalOffset: 16),
          controller: _controller,
          tabs: [
            Tab(text: 'Basic'),
            Tab(text: 'Trig'),
            Tab(text: 'Greek'),
            Tab(text: 'Abc'),
          ]),
    );
  }

  Widget get tab {
    switch (_controller.index) {
      case 0:
        return Expanded(flex: 5, child: KeyBoardGrid(data: basicIcons));
      case 1:
        return Expanded(
            flex: 5,
            child:
                KeyBoardGrid(data: basicIcons.copyWith(color: Colors.black)));
      case 2:
        return Expanded(
            flex: 5,
            child:
                KeyBoardGrid(data: basicIcons.copyWith(color: Colors.yellow)));
      default:
        return Expanded(
            flex: 5,
            child: KeyBoardGrid(data: basicIcons.copyWith(color: Colors.red)));
    }
  }

  Widget _buildKeyboardContainer() {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          tab,
          Expanded(
            flex: 4,
            child: KeyBoardGrid(data: constantMath),
          ),
        ],
      ),
    );
  }
}

class CircleTabIndicator extends Decoration {
  final BoxPainter _painter;

  CircleTabIndicator(
      {required Color color,
      required double verticalOffset,
      required double horizontalOffset})
      : _painter = _CirclePainter(color, verticalOffset, horizontalOffset);

  @override
  BoxPainter createBoxPainter([VoidCallback? onChanged]) => _painter;
}

class _CirclePainter extends BoxPainter {
  final Paint _paint;
  final double verticalOffset;
  final double horizontalOffset;

  _CirclePainter(Color color, this.verticalOffset, this.horizontalOffset)
      : _paint = Paint()
          ..color = color
          ..isAntiAlias = true;

  @override
  void paint(Canvas canvas, Offset offset, ImageConfiguration cfg) {
    // final Offset circleOffset =
    //     offset + Offset(cfg.size!.width / 2, cfg.size!.height - radius - 5);
    final Rect rect =
        Offset(offset.dx - horizontalOffset, offset.dy + verticalOffset) &
            Size(cfg.size!.width + horizontalOffset * 2,
                cfg.size!.height - verticalOffset * 2);
    canvas.drawRRect(BorderRadius.circular(50).toRRect(rect), _paint);
    // canvas.drawOval(rect, _paint);
  }
}

class TextKey extends StatefulWidget {
  const TextKey(
      {Key? key,
      required this.latex,
      required this.icon,
      this.onTextInput,
      this.flex = 1,
      this.color = Colors.white,
      this.iconColor = const Color(0xFF1C1C1F)})
      : super(key: key);

  final Color iconColor;
  final Color color;
  final String latex;
  final IconData icon;
  final ValueSetter<String>? onTextInput;
  final int flex;

  @override
  _TextKeyState createState() => _TextKeyState();
}

class _TextKeyState extends State<TextKey> {
  bool _visible = false;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(3.0),
      child: Material(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
        color: widget.color,
        child: InkWell(
          onLongPress: () {
            setState(() {
              _visible = !_visible;
            });
          },
          borderRadius: BorderRadius.circular(4),
          onTap: () {
            widget.onTextInput?.call(widget.latex);
          },
          child: Container(
            height: 46,
            child: Center(
                child: Icon(widget.icon, size: 32, color: widget.iconColor)),
          ),
        ),
      ),
    );
  }
}

class BackspaceKey extends StatelessWidget {
  const BackspaceKey({
    Key? key,
    this.onBackspace,
    this.flex = 1,
  }) : super(key: key);

  final VoidCallback? onBackspace;
  final int flex;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: Padding(
        padding: const EdgeInsets.all(1.0),
        child: Material(
          color: Colors.blue.shade300,
          child: InkWell(
            onTap: () {
              onBackspace?.call();
            },
            child: Container(
              child: Center(
                child: Icon(Icons.backspace),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class AidaKeyboard extends StatefulWidget {
  AidaKeyboard({Key? key}) : super(key: key);

  @override
  _AidaKeyboardState createState() => _AidaKeyboardState();
}

class _AidaKeyboardState extends State<AidaKeyboard>
    with SingleTickerProviderStateMixin {
  // OverlayEntry? _keyboardOverlay;

  late AnimationController _controller;
  late Animation<Offset> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 150));
    _animation = Tween<Offset>(begin: Offset.zero, end: Offset(0, 1))
        .animate(_controller);
  }

  void openKeyboard() {
    _controller.forward();
  }

  void closeKeyboard() {
    _controller.reverse();
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<KeyboardCubit, bool>(
        listener: (context, state) {
          print(state);
          if (state) {
            openKeyboard();
          } else {
            closeKeyboard();
          }
        },
        child: SlideTransition(
          position: Tween<Offset>(
            begin: Offset(0, 1),
            end: Offset.zero,
          ).animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeInOut)),
          child: CustomKeyboard(),
        ));
  }
}

class KeyboardCubit extends Cubit<bool> {
  KeyboardCubit() : super(false);

  void toggleKeyboard() {
    _setKeyboardVisibility(!state);
  }

  void openKeyboard() {
    _setKeyboardVisibility(true);
  }

  void closeKeyboard() {
    _setKeyboardVisibility(false);
  }

  void _setKeyboardVisibility(bool state) {
    emit(state);
  }
}

class Keyboard extends InheritedWidget {
  Keyboard({Key? key, required this.child}) : super(key: key, child: child);

  final Widget child;
  bool _visible = false;

  bool get visible => _visible;

  void openKeyboard() {
    _setKeyboardVisibility(true);
  }

  void closeKeyboard() {
    _setKeyboardVisibility(false);
  }

  void _setKeyboardVisibility(bool state) {
    _visible = state;
  }

  static Keyboard? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Keyboard>();
  }

  @override
  bool updateShouldNotify(Keyboard oldWidget) {
    return true;
  }
}

class KeyboardController extends ChangeNotifier {
  bool _visible = false;

  bool get visible => _visible;

  void openKeyboard() {
    _setKeyboardVisibility(true);
  }

  void closeKeyboard() {
    _setKeyboardVisibility(false);
  }

  void _setKeyboardVisibility(bool state) {
    _visible = state;
    notifyListeners();
  }
}
