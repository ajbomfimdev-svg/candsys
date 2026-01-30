import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_radio_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'op_model.dart';
export 'op_model.dart';

class OpWidget extends StatefulWidget {
  const OpWidget({
    super.key,
    required this.opcoes,
    this.question,
    this.id,
    required this.referenciaPesquisa,
  });

  final List<String>? opcoes;
  final SurveyQuestionsRow? question;
  final int? id;
  final String? referenciaPesquisa;

  @override
  State<OpWidget> createState() => _OpWidgetState();
}

class _OpWidgetState extends State<OpWidget> {
  late OpModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OpModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<SurveyQuestionsRow>>(
      future: SurveyQuestionsTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'id',
          widget.id,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Center(
            child: SizedBox(
              width: 50.0,
              height: 50.0,
              child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(
                  FlutterFlowTheme.of(context).primary,
                ),
              ),
            ),
          );
        }
        List<SurveyQuestionsRow> radioButtonSurveyQuestionsRowList =
            snapshot.data!;

        final radioButtonSurveyQuestionsRow =
            radioButtonSurveyQuestionsRowList.isNotEmpty
                ? radioButtonSurveyQuestionsRowList.first
                : null;

        return FlutterFlowRadioButton(
          options: widget.opcoes!.toList(),
          onChanged: (val) async {
            safeSetState(() {});
            if (widget.question != null) {
              _model.encontrouResposta = await SurveyResponsesTable().queryRows(
                queryFn: (q) => q
                    .eqOrNull(
                      'question_id',
                      widget.question?.id,
                    )
                    .eqOrNull(
                      'referencia_pesquisa',
                      widget.referenciaPesquisa,
                    ),
              );
              if (_model.encontrouResposta != null &&
                  (_model.encontrouResposta)!.isNotEmpty) {
                await SurveyResponsesTable().delete(
                  matchingRows: (rows) => rows
                      .eqOrNull(
                        'question_id',
                        widget.question?.id,
                      )
                      .eqOrNull(
                        'referencia_pesquisa',
                        widget.referenciaPesquisa,
                      ),
                );
                await SurveyResponsesTable().insert({
                  'survey_id': widget.question?.surveyId,
                  'question_id': widget.question?.id,
                  'user_pesquisador': currentUserUid,
                  'response': true,
                  'resposta_escolhida': _model.radioButtonValue,
                  'referencia_pesquisa': widget.referenciaPesquisa,
                  'pergunta': widget.question?.questionText,
                });
              } else {
                await SurveyResponsesTable().insert({
                  'survey_id': widget.question?.surveyId,
                  'question_id': widget.question?.id,
                  'user_pesquisador': currentUserUid,
                  'response': true,
                  'resposta_escolhida': _model.radioButtonValue,
                  'referencia_pesquisa': widget.referenciaPesquisa,
                  'pergunta': widget.question?.questionText,
                });
              }
            } else {
              _model.encontrouResposta2 =
                  await SurveyResponsesTable().queryRows(
                queryFn: (q) => q
                    .eqOrNull(
                      'question_id',
                      widget.id,
                    )
                    .eqOrNull(
                      'referencia_pesquisa',
                      widget.referenciaPesquisa,
                    ),
              );
              if (_model.encontrouResposta2 != null &&
                  (_model.encontrouResposta2)!.isNotEmpty) {
                await SurveyResponsesTable().delete(
                  matchingRows: (rows) => rows
                      .eqOrNull(
                        'question_id',
                        widget.id,
                      )
                      .eqOrNull(
                        'referencia_pesquisa',
                        widget.referenciaPesquisa,
                      ),
                );
                await SurveyResponsesTable().insert({
                  'survey_id': radioButtonSurveyQuestionsRow?.surveyId,
                  'question_id': widget.id,
                  'user_pesquisador': currentUserUid,
                  'response': true,
                  'resposta_escolhida': _model.radioButtonValue,
                  'referencia_pesquisa': widget.referenciaPesquisa,
                  'pergunta': radioButtonSurveyQuestionsRow?.questionText,
                });
              } else {
                await SurveyResponsesTable().insert({
                  'survey_id': radioButtonSurveyQuestionsRow?.surveyId,
                  'question_id': widget.id,
                  'user_pesquisador': currentUserUid,
                  'response': true,
                  'resposta_escolhida': _model.radioButtonValue,
                  'referencia_pesquisa': widget.referenciaPesquisa,
                  'pergunta': radioButtonSurveyQuestionsRow?.questionText,
                });
              }
            }

            safeSetState(() {});
          },
          controller: _model.radioButtonValueController ??=
              FormFieldController<String>(null),
          optionHeight: 32.0,
          textStyle: FlutterFlowTheme.of(context).labelMedium.override(
                font: GoogleFonts.poppins(
                  fontWeight:
                      FlutterFlowTheme.of(context).labelMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).labelMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).labelMedium.fontStyle,
              ),
          selectedTextStyle: FlutterFlowTheme.of(context).bodyMedium.override(
                font: GoogleFonts.poppins(
                  fontWeight:
                      FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                  fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
                ),
                letterSpacing: 0.0,
                fontWeight: FlutterFlowTheme.of(context).bodyMedium.fontWeight,
                fontStyle: FlutterFlowTheme.of(context).bodyMedium.fontStyle,
              ),
          buttonPosition: RadioButtonPosition.left,
          direction: Axis.vertical,
          radioButtonColor: FlutterFlowTheme.of(context).primary,
          inactiveRadioButtonColor: FlutterFlowTheme.of(context).secondaryText,
          toggleable: false,
          horizontalAlignment: WrapAlignment.start,
          verticalAlignment: WrapCrossAlignment.start,
        );
      },
    );
  }
}
