import 'dart:async';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';

import '/backend/supabase/supabase.dart';

import '/auth/base_auth_user_provider.dart';

import '/backend/push_notifications/push_notifications_handler.dart'
    show PushNotificationsHandler;
import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  BaseAuthUser? initialUser;
  BaseAuthUser? user;
  bool showSplashImage = true;
  String? _redirectLocation;

  /// Determines whether the app will refresh and build again when a sign
  /// in or sign out happens. This is useful when the app is launched or
  /// on an unexpected logout. However, this must be turned off when we
  /// intend to sign in/out and then navigate or perform any actions after.
  /// Otherwise, this will trigger a refresh and interrupt the action(s).
  bool notifyOnAuthChange = true;

  bool get loading => user == null || showSplashImage;
  bool get loggedIn => user?.loggedIn ?? false;
  bool get initiallyLoggedIn => initialUser?.loggedIn ?? false;
  bool get shouldRedirect => loggedIn && _redirectLocation != null;

  String getRedirectLocation() => _redirectLocation!;
  bool hasRedirect() => _redirectLocation != null;
  void setRedirectLocationIfUnset(String loc) => _redirectLocation ??= loc;
  void clearRedirectLocation() => _redirectLocation = null;

  /// Mark as not needing to notify on a sign in / out when we intend
  /// to perform subsequent actions (such as navigation) afterwards.
  void updateNotifyOnAuthChange(bool notify) => notifyOnAuthChange = notify;

  void update(BaseAuthUser newUser) {
    final shouldUpdate =
        user?.uid == null || newUser.uid == null || user?.uid != newUser.uid;
    initialUser ??= newUser;
    user = newUser;
    // Refresh the app on auth change unless explicitly marked otherwise.
    // No need to update unless the user has changed.
    if (notifyOnAuthChange && shouldUpdate) {
      notifyListeners();
    }
    // Once again mark the notifier as needing to update on auth change
    // (in order to catch sign in / out events).
    updateNotifyOnAuthChange(true);
  }

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) =>
          appStateNotifier.loggedIn ? NavBarPage() : AcessoWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) =>
              appStateNotifier.loggedIn ? NavBarPage() : AcessoWidget(),
        ),
        FFRoute(
            name: HomePageWidget.routeName,
            path: HomePageWidget.routePath,
            requireAuth: true,
            builder: (context, params) => params.isEmpty
                ? NavBarPage(initialPage: 'HomePage')
                : NavBarPage(
                    initialPage: 'HomePage',
                    page: HomePageWidget(),
                  )),
        FFRoute(
          name: ApoiadorWidget.routeName,
          path: ApoiadorWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ApoiadorWidget(
            tab: params.getParam(
              'tab',
              ParamType.int,
            ),
          ),
        ),
        FFRoute(
          name: ListarPoliticosWidget.routeName,
          path: ListarPoliticosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ListarPoliticosWidget(),
        ),
        FFRoute(
          name: AgendaWidget.routeName,
          path: AgendaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'agenda')
              : AgendaWidget(),
        ),
        FFRoute(
          name: MarketingWidget.routeName,
          path: MarketingWidget.routePath,
          requireAuth: true,
          builder: (context, params) => MarketingWidget(),
        ),
        FFRoute(
          name: AjudaWidget.routeName,
          path: AjudaWidget.routePath,
          requireAuth: true,
          builder: (context, params) =>
              params.isEmpty ? NavBarPage(initialPage: 'ajuda') : AjudaWidget(),
        ),
        FFRoute(
          name: AcessoWidget.routeName,
          path: AcessoWidget.routePath,
          builder: (context, params) => AcessoWidget(),
        ),
        FFRoute(
          name: ForgotPasswordWidget.routeName,
          path: ForgotPasswordWidget.routePath,
          builder: (context, params) => ForgotPasswordWidget(),
        ),
        FFRoute(
          name: CadastroPrimeiroAcessoWidget.routeName,
          path: CadastroPrimeiroAcessoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CadastroPrimeiroAcessoWidget(),
        ),
        FFRoute(
          name: AdversarioPoliticoWidget.routeName,
          path: AdversarioPoliticoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AdversarioPoliticoWidget(),
        ),
        FFRoute(
          name: OrcamentoWidget.routeName,
          path: OrcamentoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => OrcamentoWidget(),
        ),
        FFRoute(
          name: CensoWidget.routeName,
          path: CensoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CensoWidget(),
        ),
        FFRoute(
          name: DetalhesPerfilPoliticoWidget.routeName,
          path: DetalhesPerfilPoliticoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => DetalhesPerfilPoliticoWidget(),
        ),
        FFRoute(
          name: SwotWidget.routeName,
          path: SwotWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SwotWidget(),
        ),
        FFRoute(
          name: MaisPesquisadosWidget.routeName,
          path: MaisPesquisadosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => MaisPesquisadosWidget(),
        ),
        FFRoute(
          name: HotsearchsWidget.routeName,
          path: HotsearchsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HotsearchsWidget(),
        ),
        FFRoute(
          name: PerfilApoiadorWidget.routeName,
          path: PerfilApoiadorWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PerfilApoiadorWidget(),
        ),
        FFRoute(
          name: CidadesInteligentesWidget.routeName,
          path: CidadesInteligentesWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CidadesInteligentesWidget(),
        ),
        FFRoute(
          name: SlogansCampanhaWidget.routeName,
          path: SlogansCampanhaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SlogansCampanhaWidget(),
        ),
        FFRoute(
          name: JinglesCampanhaWidget.routeName,
          path: JinglesCampanhaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => JinglesCampanhaWidget(),
        ),
        FFRoute(
          name: ChatAIWidget.routeName,
          path: ChatAIWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ChatAIWidget(),
        ),
        FFRoute(
          name: PlataformaPoliticaWidget.routeName,
          path: PlataformaPoliticaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PlataformaPoliticaWidget(),
        ),
        FFRoute(
          name: PerfilPoliticoWidget.routeName,
          path: PerfilPoliticoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => params.isEmpty
              ? NavBarPage(initialPage: 'perfil_politico')
              : PerfilPoliticoWidget(),
        ),
        FFRoute(
          name: PaginaNaoEncontradaWidget.routeName,
          path: PaginaNaoEncontradaWidget.routePath,
          builder: (context, params) => PaginaNaoEncontradaWidget(),
        ),
        FFRoute(
          name: PushNotificationsWidget.routeName,
          path: PushNotificationsWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PushNotificationsWidget(),
        ),
        FFRoute(
          name: PlanosAssOnboardingWidget.routeName,
          path: PlanosAssOnboardingWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PlanosAssOnboardingWidget(
            user: params.getParam<UsersRow>(
              'user',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: PlanosAssVencidoWidget.routeName,
          path: PlanosAssVencidoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PlanosAssVencidoWidget(),
        ),
        FFRoute(
          name: PoliticasPrivacidadeWidget.routeName,
          path: PoliticasPrivacidadeWidget.routePath,
          builder: (context, params) => PoliticasPrivacidadeWidget(),
        ),
        FFRoute(
          name: HotsearchsPoliticoWidget.routeName,
          path: HotsearchsPoliticoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HotsearchsPoliticoWidget(),
        ),
        FFRoute(
          name: CadastroSocialWidget.routeName,
          path: CadastroSocialWidget.routePath,
          builder: (context, params) => CadastroSocialWidget(),
        ),
        FFRoute(
          name: TermosdeusoWidget.routeName,
          path: TermosdeusoWidget.routePath,
          builder: (context, params) => TermosdeusoWidget(),
        ),
        FFRoute(
          name: TermosdeusoLojaWidget.routeName,
          path: TermosdeusoLojaWidget.routePath,
          builder: (context, params) => TermosdeusoLojaWidget(),
        ),
        FFRoute(
          name: PagamentoAssinaturaWidget.routeName,
          path: PagamentoAssinaturaWidget.routePath,
          builder: (context, params) => PagamentoAssinaturaWidget(
            urlPgtoStripe: params.getParam(
              'urlPgtoStripe',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: RenovacaoAssIOSWidget.routeName,
          path: RenovacaoAssIOSWidget.routePath,
          requireAuth: true,
          builder: (context, params) => RenovacaoAssIOSWidget(),
        ),
        FFRoute(
          name: ObrigadoWidget.routeName,
          path: ObrigadoWidget.routePath,
          builder: (context, params) => ObrigadoWidget(
            urlPgtoStripe: params.getParam(
              'urlPgtoStripe',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: PlanosAssOnboardingIOSWidget.routeName,
          path: PlanosAssOnboardingIOSWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PlanosAssOnboardingIOSWidget(
            user: params.getParam<UsersRow>(
              'user',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: CandidatosWidget.routeName,
          path: CandidatosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CandidatosWidget(),
        ),
        FFRoute(
          name: ComparecimentoWidget.routeName,
          path: ComparecimentoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ComparecimentoWidget(),
        ),
        FFRoute(
          name: Eleicoes2024Widget.routeName,
          path: Eleicoes2024Widget.routePath,
          requireAuth: true,
          builder: (context, params) => Eleicoes2024Widget(),
        ),
        FFRoute(
          name: ChangePasswordWidget.routeName,
          path: ChangePasswordWidget.routePath,
          builder: (context, params) => ChangePasswordWidget(),
        ),
        FFRoute(
          name: EnqueteWidget.routeName,
          path: EnqueteWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EnqueteWidget(),
        ),
        FFRoute(
          name: EditEnqueteWidget.routeName,
          path: EditEnqueteWidget.routePath,
          requireAuth: true,
          builder: (context, params) => EditEnqueteWidget(
            enquete: params.getParam<SurveysRow>(
              'enquete',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: ResultadoEnqueteWidget.routeName,
          path: ResultadoEnqueteWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ResultadoEnqueteWidget(
            enquete: params.getParam<SurveysRow>(
              'enquete',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: ResponderEnqueteWidget.routeName,
          path: ResponderEnqueteWidget.routePath,
          requireAuth: true,
          builder: (context, params) => ResponderEnqueteWidget(
            pesquisa: params.getParam<SurveysRow>(
              'pesquisa',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: PlanosAssOnboardingBkpWidget.routeName,
          path: PlanosAssOnboardingBkpWidget.routePath,
          requireAuth: true,
          builder: (context, params) => PlanosAssOnboardingBkpWidget(
            user: params.getParam<UsersRow>(
              'user',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: CatalogoCursosWidget.routeName,
          path: CatalogoCursosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CatalogoCursosWidget(),
        ),
        FFRoute(
          name: CategoriaCursosWidget.routeName,
          path: CategoriaCursosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => CategoriaCursosWidget(
            idCategoria: params.getParam(
              'idCategoria',
              ParamType.int,
            ),
            nomeCategoria: params.getParam(
              'nomeCategoria',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: DetalhesCursoCompraUnitariaWidget.routeName,
          path: DetalhesCursoCompraUnitariaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => DetalhesCursoCompraUnitariaWidget(
            curso: params.getParam<CursosRow>(
              'curso',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: AulaWidget.routeName,
          path: AulaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AulaWidget(
            aula: params.getParam<AulasRow>(
              'aula',
              ParamType.SupabaseRow,
            ),
            curso: params.getParam<CursosRow>(
              'curso',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: MeusCursosWidget.routeName,
          path: MeusCursosWidget.routePath,
          requireAuth: true,
          builder: (context, params) => MeusCursosWidget(),
        ),
        FFRoute(
          name: AcessorPoliticoWidget.routeName,
          path: AcessorPoliticoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => AcessorPoliticoWidget(),
        ),
        FFRoute(
          name: HomeAssessorWidget.routeName,
          path: HomeAssessorWidget.routePath,
          requireAuth: true,
          builder: (context, params) => HomeAssessorWidget(),
        ),
        FFRoute(
          name: ResponderEnquetePublicaWidget.routeName,
          path: ResponderEnquetePublicaWidget.routePath,
          builder: (context, params) => ResponderEnquetePublicaWidget(
            idEnquete: params.getParam(
              'idEnquete',
              ParamType.String,
            ),
            enquete: params.getParam(
              'enquete',
              ParamType.String,
            ),
            id: params.getParam(
              'id',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: AnalisesWidget.routeName,
          path: AnalisesWidget.routePath,
          builder: (context, params) => AnalisesWidget(),
        ),
        FFRoute(
          name: MinhaCampanhaWidget.routeName,
          path: MinhaCampanhaWidget.routePath,
          builder: (context, params) => MinhaCampanhaWidget(),
        ),
        FFRoute(
          name: DetalhesCursoAssinaturaWidget.routeName,
          path: DetalhesCursoAssinaturaWidget.routePath,
          requireAuth: true,
          builder: (context, params) => DetalhesCursoAssinaturaWidget(
            curso: params.getParam<CursosRow>(
              'curso',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: TipoCursoWidget.routeName,
          path: TipoCursoWidget.routePath,
          builder: (context, params) => TipoCursoWidget(
            curso: params.getParam<CursosRow>(
              'curso',
              ParamType.SupabaseRow,
            ),
          ),
        ),
        FFRoute(
          name: SwotPoliticoWidget.routeName,
          path: SwotPoliticoWidget.routePath,
          requireAuth: true,
          builder: (context, params) => SwotPoliticoWidget(),
        ),
        FFRoute(
          name: AdversarioWidget.routeName,
          path: AdversarioWidget.routePath,
          builder: (context, params) => AdversarioWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
      observers: [routeObserver],
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void goNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : goNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void pushNamedAuth(
    String name,
    bool mounted, {
    Map<String, String> pathParameters = const <String, String>{},
    Map<String, String> queryParameters = const <String, String>{},
    Object? extra,
    bool ignoreRedirect = false,
  }) =>
      !mounted || GoRouter.of(this).shouldRedirect(ignoreRedirect)
          ? null
          : pushNamed(
              name,
              pathParameters: pathParameters,
              queryParameters: queryParameters,
              extra: extra,
            );

  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension GoRouterExtensions on GoRouter {
  AppStateNotifier get appState => AppStateNotifier.instance;
  void prepareAuthEvent([bool ignoreRedirect = false]) =>
      appState.hasRedirect() && !ignoreRedirect
          ? null
          : appState.updateNotifyOnAuthChange(false);
  bool shouldRedirect(bool ignoreRedirect) =>
      !ignoreRedirect && appState.hasRedirect();
  void clearRedirectLocation() => appState.clearRedirectLocation();
  void setRedirectLocationIfUnset(String location) =>
      appState.updateNotifyOnAuthChange(false);
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    List<String>? collectionNamePath,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      collectionNamePath: collectionNamePath,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        redirect: (context, state) {
          if (appStateNotifier.shouldRedirect) {
            final redirectLocation = appStateNotifier.getRedirectLocation();
            appStateNotifier.clearRedirectLocation();
            return redirectLocation;
          }

          if (requireAuth && !appStateNotifier.loggedIn) {
            appStateNotifier.setRedirectLocationIfUnset(state.uri.toString());
            return '/acesso';
          }
          return null;
        },
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = appStateNotifier.loading
              ? Center(
                  child: SizedBox(
                    width: 50.0,
                    height: 50.0,
                    child: CircularProgressIndicator(
                      valueColor: AlwaysStoppedAnimation<Color>(
                        FlutterFlowTheme.of(context).primary,
                      ),
                    ),
                  ),
                )
              : PushNotificationsHandler(child: page);

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
