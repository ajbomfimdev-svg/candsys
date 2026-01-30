import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _orcamentoList =
          prefs.getStringList('ff_orcamentoList')?.map(double.parse).toList() ??
              _orcamentoList;
    });
    _safeInit(() {
      _listaCidades = prefs.getStringList('ff_listaCidades') ?? _listaCidades;
    });
    _safeInit(() {
      _valueDouble = prefs.getDouble('ff_valueDouble') ?? _valueDouble;
    });
    _safeInit(() {
      _listaOrcamento = prefs
              .getStringList('ff_listaOrcamento')
              ?.map(double.parse)
              .toList() ??
          _listaOrcamento;
    });
    _safeInit(() {
      _valueFormatSul = prefs.getString('ff_valueFormatSul') ?? _valueFormatSul;
    });
    _safeInit(() {
      _valueDoubleSul = prefs.getDouble('ff_valueDoubleSul') ?? _valueDoubleSul;
    });
    _safeInit(() {
      _valueFormatSudeste =
          prefs.getString('ff_valueFormatSudeste') ?? _valueFormatSudeste;
    });
    _safeInit(() {
      _valueDoubleSudeste =
          prefs.getDouble('ff_valueDoubleSudeste') ?? _valueDoubleSudeste;
    });
    _safeInit(() {
      _valueFormatNorte =
          prefs.getString('ff_valueFormatNorte') ?? _valueFormatNorte;
    });
    _safeInit(() {
      _valueDoubleNorte =
          prefs.getDouble('ff_valueDoubleNorte') ?? _valueDoubleNorte;
    });
    _safeInit(() {
      _valueFormatNordeste =
          prefs.getString('ff_valueFormatNordeste') ?? _valueFormatNordeste;
    });
    _safeInit(() {
      _valueDoubleNordeste =
          prefs.getDouble('ff_valueDoubleNordeste') ?? _valueDoubleNordeste;
    });
    _safeInit(() {
      _valueFormatCentro =
          prefs.getString('ff_valueFormatCentro') ?? _valueFormatCentro;
    });
    _safeInit(() {
      _valueDoubleCentro =
          prefs.getDouble('ff_valueDoubleCentro') ?? _valueDoubleCentro;
    });
    _safeInit(() {
      _profissoes = prefs.getStringList('ff_profissoes') ?? _profissoes;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  bool _boolFiltroBairro = false;
  bool get boolFiltroBairro => _boolFiltroBairro;
  set boolFiltroBairro(bool value) {
    _boolFiltroBairro = value;
  }

  String _textoBairroFiltro = '';
  String get textoBairroFiltro => _textoBairroFiltro;
  set textoBairroFiltro(String value) {
    _textoBairroFiltro = value;
  }

  bool _boolFiltroCidade = false;
  bool get boolFiltroCidade => _boolFiltroCidade;
  set boolFiltroCidade(bool value) {
    _boolFiltroCidade = value;
  }

  String _textoCidadeFiltro = '';
  String get textoCidadeFiltro => _textoCidadeFiltro;
  set textoCidadeFiltro(String value) {
    _textoCidadeFiltro = value;
  }

  bool _boolFiltroPartido = false;
  bool get boolFiltroPartido => _boolFiltroPartido;
  set boolFiltroPartido(bool value) {
    _boolFiltroPartido = value;
  }

  String _textoFiltroPartido = '';
  String get textoFiltroPartido => _textoFiltroPartido;
  set textoFiltroPartido(String value) {
    _textoFiltroPartido = value;
  }

  List<double> _orcamentoList = [];
  List<double> get orcamentoList => _orcamentoList;
  set orcamentoList(List<double> value) {
    _orcamentoList = value;
    prefs.setStringList(
        'ff_orcamentoList', value.map((x) => x.toString()).toList());
  }

  void addToOrcamentoList(double value) {
    orcamentoList.add(value);
    prefs.setStringList(
        'ff_orcamentoList', _orcamentoList.map((x) => x.toString()).toList());
  }

  void removeFromOrcamentoList(double value) {
    orcamentoList.remove(value);
    prefs.setStringList(
        'ff_orcamentoList', _orcamentoList.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromOrcamentoList(int index) {
    orcamentoList.removeAt(index);
    prefs.setStringList(
        'ff_orcamentoList', _orcamentoList.map((x) => x.toString()).toList());
  }

  void updateOrcamentoListAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    orcamentoList[index] = updateFn(_orcamentoList[index]);
    prefs.setStringList(
        'ff_orcamentoList', _orcamentoList.map((x) => x.toString()).toList());
  }

  void insertAtIndexInOrcamentoList(int index, double value) {
    orcamentoList.insert(index, value);
    prefs.setStringList(
        'ff_orcamentoList', _orcamentoList.map((x) => x.toString()).toList());
  }

  double _propPrice = 0.0;
  double get propPrice => _propPrice;
  set propPrice(double value) {
    _propPrice = value;
  }

  bool _boolDataOrcamentoFiltro = false;
  bool get boolDataOrcamentoFiltro => _boolDataOrcamentoFiltro;
  set boolDataOrcamentoFiltro(bool value) {
    _boolDataOrcamentoFiltro = value;
  }

  DateTime? _dataFiltroInicial;
  DateTime? get dataFiltroInicial => _dataFiltroInicial;
  set dataFiltroInicial(DateTime? value) {
    _dataFiltroInicial = value;
  }

  DateTime? _dataFIltroFinal;
  DateTime? get dataFIltroFinal => _dataFIltroFinal;
  set dataFIltroFinal(DateTime? value) {
    _dataFIltroFinal = value;
  }

  List<String> _listaCidades = [];
  List<String> get listaCidades => _listaCidades;
  set listaCidades(List<String> value) {
    _listaCidades = value;
    prefs.setStringList('ff_listaCidades', value);
  }

  void addToListaCidades(String value) {
    listaCidades.add(value);
    prefs.setStringList('ff_listaCidades', _listaCidades);
  }

  void removeFromListaCidades(String value) {
    listaCidades.remove(value);
    prefs.setStringList('ff_listaCidades', _listaCidades);
  }

  void removeAtIndexFromListaCidades(int index) {
    listaCidades.removeAt(index);
    prefs.setStringList('ff_listaCidades', _listaCidades);
  }

  void updateListaCidadesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaCidades[index] = updateFn(_listaCidades[index]);
    prefs.setStringList('ff_listaCidades', _listaCidades);
  }

  void insertAtIndexInListaCidades(int index, String value) {
    listaCidades.insert(index, value);
    prefs.setStringList('ff_listaCidades', _listaCidades);
  }

  String _idCidade = '';
  String get idCidade => _idCidade;
  set idCidade(String value) {
    _idCidade = value;
  }

  List<String> _forcaCadidato = [];
  List<String> get forcaCadidato => _forcaCadidato;
  set forcaCadidato(List<String> value) {
    _forcaCadidato = value;
  }

  void addToForcaCadidato(String value) {
    forcaCadidato.add(value);
  }

  void removeFromForcaCadidato(String value) {
    forcaCadidato.remove(value);
  }

  void removeAtIndexFromForcaCadidato(int index) {
    forcaCadidato.removeAt(index);
  }

  void updateForcaCadidatoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    forcaCadidato[index] = updateFn(_forcaCadidato[index]);
  }

  void insertAtIndexInForcaCadidato(int index, String value) {
    forcaCadidato.insert(index, value);
  }

  List<String> _siglaPartidos = [];
  List<String> get siglaPartidos => _siglaPartidos;
  set siglaPartidos(List<String> value) {
    _siglaPartidos = value;
  }

  void addToSiglaPartidos(String value) {
    siglaPartidos.add(value);
  }

  void removeFromSiglaPartidos(String value) {
    siglaPartidos.remove(value);
  }

  void removeAtIndexFromSiglaPartidos(int index) {
    siglaPartidos.removeAt(index);
  }

  void updateSiglaPartidosAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    siglaPartidos[index] = updateFn(_siglaPartidos[index]);
  }

  void insertAtIndexInSiglaPartidos(int index, String value) {
    siglaPartidos.insert(index, value);
  }

  int _idDep = 0;
  int get idDep => _idDep;
  set idDep(int value) {
    _idDep = value;
  }

  bool _isAcessor = false;
  bool get isAcessor => _isAcessor;
  set isAcessor(bool value) {
    _isAcessor = value;
  }

  bool _vibilidadeApoiadores = false;
  bool get vibilidadeApoiadores => _vibilidadeApoiadores;
  set vibilidadeApoiadores(bool value) {
    _vibilidadeApoiadores = value;
  }

  bool _visibilidadeAcessores = false;
  bool get visibilidadeAcessores => _visibilidadeAcessores;
  set visibilidadeAcessores(bool value) {
    _visibilidadeAcessores = value;
  }

  Color _corSelecionada = Colors.transparent;
  Color get corSelecionada => _corSelecionada;
  set corSelecionada(Color value) {
    _corSelecionada = value;
  }

  List<String> _tamanhoVestuario = [];
  List<String> get tamanhoVestuario => _tamanhoVestuario;
  set tamanhoVestuario(List<String> value) {
    _tamanhoVestuario = value;
  }

  void addToTamanhoVestuario(String value) {
    tamanhoVestuario.add(value);
  }

  void removeFromTamanhoVestuario(String value) {
    tamanhoVestuario.remove(value);
  }

  void removeAtIndexFromTamanhoVestuario(int index) {
    tamanhoVestuario.removeAt(index);
  }

  void updateTamanhoVestuarioAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    tamanhoVestuario[index] = updateFn(_tamanhoVestuario[index]);
  }

  void insertAtIndexInTamanhoVestuario(int index, String value) {
    tamanhoVestuario.insert(index, value);
  }

  String _valueFormat = '';
  String get valueFormat => _valueFormat;
  set valueFormat(String value) {
    _valueFormat = value;
  }

  double _valueDouble = 0.0;
  double get valueDouble => _valueDouble;
  set valueDouble(double value) {
    _valueDouble = value;
    prefs.setDouble('ff_valueDouble', value);
  }

  String _valueFormat2 = '';
  String get valueFormat2 => _valueFormat2;
  set valueFormat2(String value) {
    _valueFormat2 = value;
  }

  double _valueDouble2 = 0.0;
  double get valueDouble2 => _valueDouble2;
  set valueDouble2(double value) {
    _valueDouble2 = value;
  }

  List<String> _imgProduto = [];
  List<String> get imgProduto => _imgProduto;
  set imgProduto(List<String> value) {
    _imgProduto = value;
  }

  void addToImgProduto(String value) {
    imgProduto.add(value);
  }

  void removeFromImgProduto(String value) {
    imgProduto.remove(value);
  }

  void removeAtIndexFromImgProduto(int index) {
    imgProduto.removeAt(index);
  }

  void updateImgProdutoAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    imgProduto[index] = updateFn(_imgProduto[index]);
  }

  void insertAtIndexInImgProduto(int index, String value) {
    imgProduto.insert(index, value);
  }

  String _valueFormat3 = '';
  String get valueFormat3 => _valueFormat3;
  set valueFormat3(String value) {
    _valueFormat3 = value;
  }

  double _valueDouble3 = 0.0;
  double get valueDouble3 => _valueDouble3;
  set valueDouble3(double value) {
    _valueDouble3 = value;
  }

  String _codRefCategoria = '';
  String get codRefCategoria => _codRefCategoria;
  set codRefCategoria(String value) {
    _codRefCategoria = value;
  }

  List<String> _listaImgDeletar = [];
  List<String> get listaImgDeletar => _listaImgDeletar;
  set listaImgDeletar(List<String> value) {
    _listaImgDeletar = value;
  }

  void addToListaImgDeletar(String value) {
    listaImgDeletar.add(value);
  }

  void removeFromListaImgDeletar(String value) {
    listaImgDeletar.remove(value);
  }

  void removeAtIndexFromListaImgDeletar(int index) {
    listaImgDeletar.removeAt(index);
  }

  void updateListaImgDeletarAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaImgDeletar[index] = updateFn(_listaImgDeletar[index]);
  }

  void insertAtIndexInListaImgDeletar(int index, String value) {
    listaImgDeletar.insert(index, value);
  }

  bool _ordemCrescente = false;
  bool get ordemCrescente => _ordemCrescente;
  set ordemCrescente(bool value) {
    _ordemCrescente = value;
  }

  String _tamanhoSelecionado = '';
  String get tamanhoSelecionado => _tamanhoSelecionado;
  set tamanhoSelecionado(String value) {
    _tamanhoSelecionado = value;
  }

  List<String> _listaImgProdutosCarrossel = [];
  List<String> get listaImgProdutosCarrossel => _listaImgProdutosCarrossel;
  set listaImgProdutosCarrossel(List<String> value) {
    _listaImgProdutosCarrossel = value;
  }

  void addToListaImgProdutosCarrossel(String value) {
    listaImgProdutosCarrossel.add(value);
  }

  void removeFromListaImgProdutosCarrossel(String value) {
    listaImgProdutosCarrossel.remove(value);
  }

  void removeAtIndexFromListaImgProdutosCarrossel(int index) {
    listaImgProdutosCarrossel.removeAt(index);
  }

  void updateListaImgProdutosCarrosselAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    listaImgProdutosCarrossel[index] =
        updateFn(_listaImgProdutosCarrossel[index]);
  }

  void insertAtIndexInListaImgProdutosCarrossel(int index, String value) {
    listaImgProdutosCarrossel.insert(index, value);
  }

  String _imgProdutoSelecionado = '';
  String get imgProdutoSelecionado => _imgProdutoSelecionado;
  set imgProdutoSelecionado(String value) {
    _imgProdutoSelecionado = value;
  }

  String _tipoLojaSelecionada = '';
  String get tipoLojaSelecionada => _tipoLojaSelecionada;
  set tipoLojaSelecionada(String value) {
    _tipoLojaSelecionada = value;
  }

  int _qtdItensProdCarrinho = 0;
  int get qtdItensProdCarrinho => _qtdItensProdCarrinho;
  set qtdItensProdCarrinho(int value) {
    _qtdItensProdCarrinho = value;
  }

  List<double> _listaOrcamento = [];
  List<double> get listaOrcamento => _listaOrcamento;
  set listaOrcamento(List<double> value) {
    _listaOrcamento = value;
    prefs.setStringList(
        'ff_listaOrcamento', value.map((x) => x.toString()).toList());
  }

  void addToListaOrcamento(double value) {
    listaOrcamento.add(value);
    prefs.setStringList(
        'ff_listaOrcamento', _listaOrcamento.map((x) => x.toString()).toList());
  }

  void removeFromListaOrcamento(double value) {
    listaOrcamento.remove(value);
    prefs.setStringList(
        'ff_listaOrcamento', _listaOrcamento.map((x) => x.toString()).toList());
  }

  void removeAtIndexFromListaOrcamento(int index) {
    listaOrcamento.removeAt(index);
    prefs.setStringList(
        'ff_listaOrcamento', _listaOrcamento.map((x) => x.toString()).toList());
  }

  void updateListaOrcamentoAtIndex(
    int index,
    double Function(double) updateFn,
  ) {
    listaOrcamento[index] = updateFn(_listaOrcamento[index]);
    prefs.setStringList(
        'ff_listaOrcamento', _listaOrcamento.map((x) => x.toString()).toList());
  }

  void insertAtIndexInListaOrcamento(int index, double value) {
    listaOrcamento.insert(index, value);
    prefs.setStringList(
        'ff_listaOrcamento', _listaOrcamento.map((x) => x.toString()).toList());
  }

  int _indexPush = 0;
  int get indexPush => _indexPush;
  set indexPush(int value) {
    _indexPush = value;
  }

  int _notificacoesLidas = 0;
  int get notificacoesLidas => _notificacoesLidas;
  set notificacoesLidas(int value) {
    _notificacoesLidas = value;
  }

  String _valueFormatSul = '';
  String get valueFormatSul => _valueFormatSul;
  set valueFormatSul(String value) {
    _valueFormatSul = value;
    prefs.setString('ff_valueFormatSul', value);
  }

  double _valueDoubleSul = 0.0;
  double get valueDoubleSul => _valueDoubleSul;
  set valueDoubleSul(double value) {
    _valueDoubleSul = value;
    prefs.setDouble('ff_valueDoubleSul', value);
  }

  String _valueFormatSudeste = '';
  String get valueFormatSudeste => _valueFormatSudeste;
  set valueFormatSudeste(String value) {
    _valueFormatSudeste = value;
    prefs.setString('ff_valueFormatSudeste', value);
  }

  double _valueDoubleSudeste = 0.0;
  double get valueDoubleSudeste => _valueDoubleSudeste;
  set valueDoubleSudeste(double value) {
    _valueDoubleSudeste = value;
    prefs.setDouble('ff_valueDoubleSudeste', value);
  }

  String _valueFormatNorte = '';
  String get valueFormatNorte => _valueFormatNorte;
  set valueFormatNorte(String value) {
    _valueFormatNorte = value;
    prefs.setString('ff_valueFormatNorte', value);
  }

  double _valueDoubleNorte = 0.0;
  double get valueDoubleNorte => _valueDoubleNorte;
  set valueDoubleNorte(double value) {
    _valueDoubleNorte = value;
    prefs.setDouble('ff_valueDoubleNorte', value);
  }

  String _valueFormatNordeste = '';
  String get valueFormatNordeste => _valueFormatNordeste;
  set valueFormatNordeste(String value) {
    _valueFormatNordeste = value;
    prefs.setString('ff_valueFormatNordeste', value);
  }

  double _valueDoubleNordeste = 0.0;
  double get valueDoubleNordeste => _valueDoubleNordeste;
  set valueDoubleNordeste(double value) {
    _valueDoubleNordeste = value;
    prefs.setDouble('ff_valueDoubleNordeste', value);
  }

  String _valueFormatCentro = '';
  String get valueFormatCentro => _valueFormatCentro;
  set valueFormatCentro(String value) {
    _valueFormatCentro = value;
    prefs.setString('ff_valueFormatCentro', value);
  }

  double _valueDoubleCentro = 0.0;
  double get valueDoubleCentro => _valueDoubleCentro;
  set valueDoubleCentro(double value) {
    _valueDoubleCentro = value;
    prefs.setDouble('ff_valueDoubleCentro', value);
  }

  String _tabApoiadoresSelecionada = '';
  String get tabApoiadoresSelecionada => _tabApoiadoresSelecionada;
  set tabApoiadoresSelecionada(String value) {
    _tabApoiadoresSelecionada = value;
  }

  bool _visbilidadesInstituicoes = false;
  bool get visbilidadesInstituicoes => _visbilidadesInstituicoes;
  set visbilidadesInstituicoes(bool value) {
    _visbilidadesInstituicoes = value;
  }

  bool _refreshAgenda = false;
  bool get refreshAgenda => _refreshAgenda;
  set refreshAgenda(bool value) {
    _refreshAgenda = value;
  }

  bool _refreshPesquisas = false;
  bool get refreshPesquisas => _refreshPesquisas;
  set refreshPesquisas(bool value) {
    _refreshPesquisas = value;
  }

  String _promptIA = '';
  String get promptIA => _promptIA;
  set promptIA(String value) {
    _promptIA = value;
  }

  List<HistoricoConversaStruct> _conversaIA = [];
  List<HistoricoConversaStruct> get conversaIA => _conversaIA;
  set conversaIA(List<HistoricoConversaStruct> value) {
    _conversaIA = value;
  }

  void addToConversaIA(HistoricoConversaStruct value) {
    conversaIA.add(value);
  }

  void removeFromConversaIA(HistoricoConversaStruct value) {
    conversaIA.remove(value);
  }

  void removeAtIndexFromConversaIA(int index) {
    conversaIA.removeAt(index);
  }

  void updateConversaIAAtIndex(
    int index,
    HistoricoConversaStruct Function(HistoricoConversaStruct) updateFn,
  ) {
    conversaIA[index] = updateFn(_conversaIA[index]);
  }

  void insertAtIndexInConversaIA(int index, HistoricoConversaStruct value) {
    conversaIA.insert(index, value);
  }

  List<String> _profissoes = [
    'Advogado',
    'Agricultor',
    'Arquiteto',
    'Assistente Social',
    'Ator',
    'Bibliotecário',
    'Biólogo',
    'Bombeiro',
    'Carpinteiro',
    'Comerciário',
    'Contador',
    'Cozinheiro',
    'Dentista',
    'Economista',
    'Eletricista',
    'Engenheiro',
    'Enfermeiro',
    'Farmacêutico',
    'Fisioterapeuta',
    'Funcionário Público',
    'Garçom',
    'Geógrafo',
    'Jornalista',
    'Marceneiro',
    'Mecânico',
    'Médico',
    'Médico Veterinário',
    'Militar / Soldado',
    'Motociclista / Mototaxista',
    'Motorista',
    'Músico',
    'Nutricionista',
    'Odontólogo (Dentista)',
    'Pedagogo',
    'Pedreiro',
    'Pintor',
    'Policial Civil',
    'Policial Militar',
    'Professor',
    'Psicólogo',
    'Publicitário',
    'Químico',
    'Radialista',
    'Secretário',
    'Servente Escolar',
    'Sociólogo',
    'Técnico em Contabilidade',
    'Técnico em Enfermagem',
    'Tradutor',
    'Turismólogo',
    'Vendedor / Comerciário',
    'Vigilante',
    'Outros'
  ];
  List<String> get profissoes => _profissoes;
  set profissoes(List<String> value) {
    _profissoes = value;
    prefs.setStringList('ff_profissoes', value);
  }

  void addToProfissoes(String value) {
    profissoes.add(value);
    prefs.setStringList('ff_profissoes', _profissoes);
  }

  void removeFromProfissoes(String value) {
    profissoes.remove(value);
    prefs.setStringList('ff_profissoes', _profissoes);
  }

  void removeAtIndexFromProfissoes(int index) {
    profissoes.removeAt(index);
    prefs.setStringList('ff_profissoes', _profissoes);
  }

  void updateProfissoesAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    profissoes[index] = updateFn(_profissoes[index]);
    prefs.setStringList('ff_profissoes', _profissoes);
  }

  void insertAtIndexInProfissoes(int index, String value) {
    profissoes.insert(index, value);
    prefs.setStringList('ff_profissoes', _profissoes);
  }

  List<MultiRepostasStruct> _respostas = [];
  List<MultiRepostasStruct> get respostas => _respostas;
  set respostas(List<MultiRepostasStruct> value) {
    _respostas = value;
  }

  void addToRespostas(MultiRepostasStruct value) {
    respostas.add(value);
  }

  void removeFromRespostas(MultiRepostasStruct value) {
    respostas.remove(value);
  }

  void removeAtIndexFromRespostas(int index) {
    respostas.removeAt(index);
  }

  void updateRespostasAtIndex(
    int index,
    MultiRepostasStruct Function(MultiRepostasStruct) updateFn,
  ) {
    respostas[index] = updateFn(_respostas[index]);
  }

  void insertAtIndexInRespostas(int index, MultiRepostasStruct value) {
    respostas.insert(index, value);
  }

  bool _plataformaRefresh = false;
  bool get plataformaRefresh => _plataformaRefresh;
  set plataformaRefresh(bool value) {
    _plataformaRefresh = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
