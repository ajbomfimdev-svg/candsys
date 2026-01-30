import '/auth/firebase_auth/auth_util.dart';
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'candidatos_model.dart';
export 'candidatos_model.dart';

class CandidatosWidget extends StatefulWidget {
  const CandidatosWidget({super.key});

  static String routeName = 'candidatos';
  static String routePath = '/candidatos';

  @override
  State<CandidatosWidget> createState() => _CandidatosWidgetState();
}

class _CandidatosWidgetState extends State<CandidatosWidget> {
  late CandidatosModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CandidatosModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<UsersRow>>(
      future: UsersTable().querySingleRow(
        queryFn: (q) => q.eqOrNull(
          'user_id',
          currentUserUid,
        ),
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).customColor1,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<UsersRow> candidatosUsersRowList = snapshot.data!;

        final candidatosUsersRow = candidatosUsersRowList.isNotEmpty
            ? candidatosUsersRowList.first
            : null;

        return GestureDetector(
          onTap: () {
            FocusScope.of(context).unfocus();
            FocusManager.instance.primaryFocus?.unfocus();
          },
          child: Scaffold(
            key: scaffoldKey,
            backgroundColor: FlutterFlowTheme.of(context).customColor1,
            body: SafeArea(
              top: true,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 60.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).customColor1,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 1.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            0.0,
                            2.0,
                          ),
                        )
                      ],
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              context.safePop();
                            },
                            child: Icon(
                              Icons.arrow_back_rounded,
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                              size: 28.0,
                            ),
                          ),
                        ),
                        Text(
                          'Candidatos',
                          style: FlutterFlowTheme.of(context)
                              .headlineMedium
                              .override(
                                font: GoogleFonts.poppins(
                                  fontWeight: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontWeight,
                                  fontStyle: FlutterFlowTheme.of(context)
                                      .headlineMedium
                                      .fontStyle,
                                ),
                                color: FlutterFlowTheme.of(context)
                                    .primaryBackground,
                                fontSize: 22.0,
                                letterSpacing: 0.0,
                                fontWeight: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontWeight,
                                fontStyle: FlutterFlowTheme.of(context)
                                    .headlineMedium
                                    .fontStyle,
                              ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              8.0, 0.0, 0.0, 0.0),
                          child: Icon(
                            Icons.arrow_back_rounded,
                            color: FlutterFlowTheme.of(context).customColor1,
                            size: 28.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: MediaQuery.sizeOf(context).width * 1.0,
                      height: MediaQuery.sizeOf(context).height * 1.0,
                      decoration: BoxDecoration(
                        color:
                            FlutterFlowTheme.of(context).backgroundComponents,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: FlutterFlowWebView(
                              content:
                                  'https://divulgacandcontas.tse.jus.br/divulga/#/candidato/${() {
                                if ((candidatosUsersRow?.uf == 'SP') ||
                                    (candidatosUsersRow?.uf == 'MG') ||
                                    (candidatosUsersRow?.uf == 'RJ') ||
                                    (candidatosUsersRow?.uf == 'ES')) {
                                  return 'SUDESTE';
                                } else if ((candidatosUsersRow?.uf == 'SC') ||
                                    (candidatosUsersRow?.uf == 'PR') ||
                                    (candidatosUsersRow?.uf == 'RS')) {
                                  return 'SUL';
                                } else if ((candidatosUsersRow?.uf == 'MS') ||
                                    (candidatosUsersRow?.uf == 'GO') ||
                                    (candidatosUsersRow?.uf == 'MT') ||
                                    (candidatosUsersRow?.uf == 'DF')) {
                                  return 'CENTROOESTE';
                                } else if ((candidatosUsersRow?.uf == 'BA') ||
                                    (candidatosUsersRow?.uf == 'SE') ||
                                    (candidatosUsersRow?.uf == 'AL') ||
                                    (candidatosUsersRow?.uf == 'PE') ||
                                    (candidatosUsersRow?.uf == 'PB') ||
                                    (candidatosUsersRow?.uf == 'RN') ||
                                    (candidatosUsersRow?.uf == 'CE') ||
                                    (candidatosUsersRow?.uf == 'PI') ||
                                    (candidatosUsersRow?.uf == 'MA')) {
                                  return 'NORDESTE';
                                } else {
                                  return 'NORTE';
                                }
                              }()}/${candidatosUsersRow?.uf}/2045202024',
                              height: MediaQuery.sizeOf(context).height * 1.0,
                              verticalScroll: true,
                              horizontalScroll: true,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
