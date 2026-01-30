import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'resposta_aberta_publico_model.dart';
export 'resposta_aberta_publico_model.dart';

class RespostaAbertaPublicoWidget extends StatefulWidget {
  const RespostaAbertaPublicoWidget({
    super.key,
    required this.pesquisa,
    required this.question,
  });

  final String? pesquisa;
  final int? question;

  @override
  State<RespostaAbertaPublicoWidget> createState() =>
      _RespostaAbertaPublicoWidgetState();
}

class _RespostaAbertaPublicoWidgetState
    extends State<RespostaAbertaPublicoWidget> {
  late RespostaAbertaPublicoModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => RespostaAbertaPublicoModel());

    _model.textController ??= TextEditingController();
    _model.textFieldFocusNode ??= FocusNode();
    _model.textFieldFocusNode!.addListener(
      () async {
        _model.survey = await SurveysTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'id',
            widget.pesquisa,
          ),
        );
        _model.question = await SurveyQuestionsTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'id',
            widget.question,
          ),
        );
        _model.respostaJaRegistrada = await SurveyResponsesTable().queryRows(
          queryFn: (q) => q.eqOrNull(
            'question_id',
            _model.question?.firstOrNull?.id,
          ),
        );
        if (_model.respostaJaRegistrada!.length > 0) {
          await SurveyResponsesTable().delete(
            matchingRows: (rows) => rows.eqOrNull(
              'question_id',
              widget.question,
            ),
          );
          await SurveyResponsesTable().insert({
            'survey_id': widget.pesquisa,
            'question_id': widget.question,
            'response': true,
            'pergunta': _model.question?.firstOrNull?.questionText,
            'resposta_aberta': _model.textController.text,
          });
        } else {
          await SurveyResponsesTable().insert({
            'survey_id': widget.pesquisa,
            'question_id': widget.question,
            'response': true,
            'pergunta': _model.question?.firstOrNull?.questionText,
            'resposta_aberta': _model.textController.text,
          });
        }

        safeSetState(() {});
      },
    );
    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: TextFormField(
        controller: _model.textController,
        focusNode: _model.textFieldFocusNode,
        autofocus: false,
        enabled: true,
        obscureText: false,
        decoration: InputDecoration(
          isDense: true,
          labelStyle: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.poppins(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
              ),
          hintText: 'Escreva sua resposta',
          hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.poppins(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                color: FlutterFlowTheme.of(context).accent2,
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
              ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).accent3,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0x00000000),
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          errorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).error,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(8.0),
          ),
          filled: true,
          fillColor: FlutterFlowTheme.of(context).secondaryBackground,
        ),
        style: FlutterFlowTheme.of(context).bodyMedium.override(
              font: GoogleFonts.poppins(
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
              letterSpacing: 0.0,
              fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
              fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
            ),
        maxLines: 3,
        cursorColor: FlutterFlowTheme.of(context).primaryText,
        enableInteractiveSelection: true,
        validator: _model.textControllerValidator.asValidator(context),
      ),
    );
  }
}
