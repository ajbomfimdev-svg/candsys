import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_web_view.dart';
import 'package:flutter/material.dart';
import 'pagamento_assinatura_model.dart';
export 'pagamento_assinatura_model.dart';

class PagamentoAssinaturaWidget extends StatefulWidget {
  const PagamentoAssinaturaWidget({
    super.key,
    required this.urlPgtoStripe,
  });

  final String? urlPgtoStripe;

  static String routeName = 'pagamentoAssinatura';
  static String routePath = '/pagamentoAssinatura';

  @override
  State<PagamentoAssinaturaWidget> createState() =>
      _PagamentoAssinaturaWidgetState();
}

class _PagamentoAssinaturaWidgetState extends State<PagamentoAssinaturaWidget> {
  late PagamentoAssinaturaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PagamentoAssinaturaModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
          child: Container(
            width: MediaQuery.sizeOf(context).width * 1.0,
            height: MediaQuery.sizeOf(context).height * 1.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  FlutterFlowWebView(
                    content: valueOrDefault<String>(
                      widget.urlPgtoStripe,
                      'https://candsys.com.br/',
                    ),
                    bypass: false,
                    height: MediaQuery.sizeOf(context).height * 1.0,
                    verticalScroll: false,
                    horizontalScroll: false,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
