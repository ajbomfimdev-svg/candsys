// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

class MoedaBRField extends StatefulWidget {
  const MoedaBRField({
    Key? key,
    this.width,
    this.height,
    required this.bordercolor,
    required this.fontColor,
    required this.borderRadius,
    required this.initialValue,
    this.backgroundColor =
        Colors.white, // Define um valor padrão de cor de fundo
  }) : super(key: key);

  final double? width;
  final double? height;
  final Color bordercolor;
  final Color fontColor;
  final double borderRadius;
  final String initialValue;
  final Color backgroundColor; // Adiciona um novo campo para a cor de fundo

  @override
  _PriceFieldState createState() => _PriceFieldState();
}

class _PriceFieldState extends State<MoedaBRField> {
  late TextEditingController _priceEditingController;
  final currencyFormat = NumberFormat("#,##0.00", "pt_BR");

  @override
  void initState() {
    super.initState();
    _priceEditingController = TextEditingController();
    _priceEditingController.text = widget.initialValue;
  }

  @override
  void dispose() {
    _priceEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      decoration: BoxDecoration(
        color:
            widget.backgroundColor, // Usa a cor de fundo definida pelo usuário
        borderRadius: BorderRadius.circular(
            widget.borderRadius), // Arredonda as bordas do background
      ),
      child: TextField(
        controller: _priceEditingController,
        keyboardType: TextInputType.number,
        inputFormatters: [
          FilteringTextInputFormatter.digitsOnly,
          TextInputFormatter.withFunction((oldValue, newValue) {
            final text = newValue.text;
            final selection = newValue.selection;
            if (text.length > 8) {
              return oldValue;
            }
            if (text.isEmpty) {
              return TextEditingValue(text: '', selection: selection);
            } else if (text.length == 1) {
              final number = int.tryParse(text);
              if (number == null) {
                return oldValue;
              } else {
                final newText = '0.${number.toString()}';
                return TextEditingValue(
                  text: newText,
                  selection: TextSelection.collapsed(offset: newText.length),
                );
              }
            } else {
              final price = double.parse(text.replaceAll('.', '')) / 100;
              final newText = currencyFormat.format(price);
              FFAppState().update(() {
                FFAppState().propPrice = price;
              });
              final newSelectionIndex =
                  newText.length - (text.length - selection.end);
              return TextEditingValue(
                text: newText,
                selection: TextSelection.collapsed(offset: newSelectionIndex),
              );
            }
          })
        ],
        onChanged: (value) {},
        style: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w500,
          color: widget.fontColor,
        ),
        decoration: InputDecoration(
          hintText: '1.000,00',
          hintStyle: TextStyle(
            color: Color.fromARGB(255, 174, 174, 174),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(
              color: Color.fromARGB(255, 118, 118, 118),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(widget.borderRadius),
            borderSide: BorderSide(color: widget.bordercolor),
          ),
          prefix: Text(
            'R\$ ',
            style: TextStyle(
              color: widget.fontColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
