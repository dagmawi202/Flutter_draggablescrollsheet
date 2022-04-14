import 'dart:async';

import 'package:flutter/material.dart';

class AddCommentResult {
  final String text;
  final bool submit;

  AddCommentResult(this.text, this.submit);
}

class AddCommentView extends StatefulWidget {
  final String initialCommentValue;

  const AddCommentView({
    Key? key,
    required this.initialCommentValue,
  }) : super(key: key);

  @override
  State<AddCommentView> createState() => _AddCommentViewState();
}

class _AddCommentViewState extends State<AddCommentView> {
  TextEditingController _textEditingController = TextEditingController();

  StreamSubscription<bool>? _keyboardSubscription;

  @override
  void initState() {
    super.initState();

    _textEditingController.value = TextEditingValue(
      text: widget.initialCommentValue,
      selection: TextSelection.collapsed(
        offset: widget.initialCommentValue.length,
      ),
    );

    _initKeyboardSubscription();
  }

  @override
  void dispose() {
    _keyboardSubscription?.cancel();
    _textEditingController.dispose();
    super.dispose();
  }

  _initKeyboardSubscription() async {
    await Future.delayed(Duration(milliseconds: 400));

    // final keyboardVisibilityController = KeyboardVisibilityController();
    // _keyboardSubscription =
    //     keyboardVisibilityController.onChange.listen((bool visible) {
    //   if (!visible) {
    //     Navigator.of(context).pop(
    //       AddCommentResult(
    //         _textEditingController.text,
    //         false,
    //       ),
    //     );
    //   }
    // });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        await _keyboardSubscription?.cancel();

        Navigator.of(context).pop(
          AddCommentResult(
            _textEditingController.text,
            false,
          ),
        );
        return false;
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 24,
        ),
        child: Row(
          children: [
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TextField(
                textInputAction: TextInputAction.send,
                keyboardAppearance: Brightness.light,
                controller: _textEditingController,
                onSubmitted: (_) {
                  _submit();
                },
                onChanged: (_) {
                  setState(() {});
                },
                textCapitalization: TextCapitalization.sentences,
                expands: false,
                maxLength: 150,
                minLines: 1,
                maxLines: 1,
                autofocus: true,
                decoration: InputDecoration(
                  counterText: '',
                  filled: true,
                  border: InputBorder.none,
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.transparent,
                    ),
                    borderRadius: BorderRadius.circular(1000),
                  ),
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  contentPadding: EdgeInsets.only(
                    top: 12,
                    left: 16,
                    right: 16,
                    bottom: 12,
                  ),
                  alignLabelWithHint: true,
                ),
              ),
            ),
            if (_textEditingController.text.isNotEmpty)
              GestureDetector(
                onTap: _submit,
                behavior: HitTestBehavior.opaque,
                child: Padding(
                  padding: const EdgeInsets.only(left: 15),
                  child: Icon(Icons.send),
                ),
              ),
            SizedBox(
              width: 15,
            ),
          ],
        ),
      ),
    );
  }

  _submit() async {
    if (_textEditingController.text.trim().isNotEmpty) {
      await _keyboardSubscription?.cancel();

      Navigator.of(context).pop(
        AddCommentResult(
          _textEditingController.text,
          true,
        ),
      );
    }
  }
}
