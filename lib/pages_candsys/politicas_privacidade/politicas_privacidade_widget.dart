import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'politicas_privacidade_model.dart';
export 'politicas_privacidade_model.dart';

class PoliticasPrivacidadeWidget extends StatefulWidget {
  const PoliticasPrivacidadeWidget({super.key});

  static String routeName = 'politicasPrivacidade';
  static String routePath = '/politicasPrivacidade';

  @override
  State<PoliticasPrivacidadeWidget> createState() =>
      _PoliticasPrivacidadeWidgetState();
}

class _PoliticasPrivacidadeWidgetState
    extends State<PoliticasPrivacidadeWidget> {
  late PoliticasPrivacidadeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PoliticasPrivacidadeModel());

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
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).customColor1,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 60.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: Colors.white,
              size: 30.0,
            ),
            onPressed: () async {
              context.pop();
            },
          ),
          title: Text(
            'Políticas de Privacidade',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  font: GoogleFonts.poppins(
                    fontWeight:
                        FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                    fontStyle:
                        FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                  ),
                  color: Colors.white,
                  fontSize: 22.0,
                  letterSpacing: 0.0,
                  fontWeight:
                      FlutterFlowTheme.of(context).headlineMedium.fontWeight,
                  fontStyle:
                      FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Container(
                  width: MediaQuery.sizeOf(context).width * 1.0,
                  height: MediaQuery.sizeOf(context).height * 1.0,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).backgroundComponents,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                12.0, 24.0, 12.0, 24.0),
                            child: Text(
                              'Política de Privacidade\n\nA DETECSYS CONSULTORIA E SOLUCOES DIGITAIS INOVA SIMPLES I.S. LTDA, doravante DETECSYS, tem o compromisso com a transparência, a privacidade e a segurança dos dados de seus clientes durante todo o processo de navegação e compra em nosso aplicativo. Para que nossos clientes entendam melhor quais informações coletamos e como as utilizamos, armazenamos ou excluímos, detalhamos a seguir nossa Política de Privacidade.\n\nOs dados cadastrais não são divulgados para terceiros, exceto quando necessários para o processo de entrega, para cobrança ou participação em promoções solicitadas pelos clientes. Seus dados pessoais são peça fundamental para que o pedido chegue em segurança, de acordo com o prazo de entrega estipulado.\n\nPara que a Política de Privacidade seja bem compreendida, é fundamental esclarecer alguns conceitos importantes:\n\n- Cliente – qualquer pessoa física ou jurídica que adquire produtos ou serviços no aplicativo CANDSYS, mantido pela DETECSYS;\n\n- Dados pessoais – qualquer informação relacionada a uma pessoa que a identifique ou que, usada em combinação com outras informações tratadas, identifique um indivíduo. Ainda, qualquer informação por meio da qual seja possível identificar uma pessoa ou entrar em contato com ela.\n\n- Tratamento de dados pessoais – considera-se tratamento de dado pessoal a coleta, produção, recepção, classificação, utilização, acesso, reprodução, transmissão, distribuição, processamento, arquivamento, armazenamento, eliminação, avaliação ou controle da informação, comunicação, transferência, difusão ou extração de dados de pessoas físicas.\n\n- Titular de dados – qualquer pessoa física, representando o Cliente, senão o próprio, que tenha seus dados pessoais tratados pela DETECSYS;\n\n- Finalidade – o que queremos alcançar com o tratamento de dados pessoais.\n\n- Necessidade – o tratamento de dados pessoais deve se limitar ao mínimo necessário para o propósito almejado. Ou seja, deve ser pertinente, proporcional e não excessivo.\n\n- Consentimento – autorização clara e objetiva que o titular dá para tratamento de seus dados pessoais com finalidade previamente estipulada. Após dar o consentimento, você pode revogá-lo a qualquer momento. A revogação não cancela os processamentos realizados previamente.\n\n1. a quem essa política de privacidade se aplica?\n\nAplica-se a todos os clientes da DETECSYS, que de alguma forma nos fornecem dados pessoais e se cadastram no aplicativo.\n\n2. que tipo de informações pessoais coletamos e utilizamos?\n\nA DETECSYS coleta e armazena os dados solicitados:\n\nInformações que você nos fornece: a DETECSYS coleta informações do Cliente quando você se cadastra, ou cadastra sua empresa, e nos fornece o nome, sobrenome, e-mail e telefone de contato de um responsável entre outros.\n\nInformações coletadas automaticamente\n pela DETECSYS: coletamos e armazenamos determinadas informações sempre que o Cliente interage conosco. Por exemplo, utilizamos cookies e obtemos informações quando seu navegador acessa o nosso site; quando você clica em anúncios, e-mails de parceiros e outros conteúdos fornecidos por nós em outros sites.\n\n3. por que solicitamos seus dados pessoais?\n\nOs dados são necessários para:\nentregar os produtos adquiridos ou o serviço contratado;\n\n* otimizar sua interação conosco;\n* garantir a segurança do aplicativo e dos dados que processa;\n* informar o Cliente sobre as ofertas e divulgar os nossos serviços.\n\nO fornecimento dos dados permite:\n\n* entregar os produtos ou serviços adquiridos;\n* enviar atualizações sobre o status do pedido e comunicações de serviços;\n* coordenar com parceiros a entrega ou disponibilização de serviços;\n* melhorar a experiência de compra dos clientes DETECSYS e suas plataformas;\n* fazer análises e pesquisas de mercado;\n* manter o Cliente informado sobre os produtos e serviços que oferecemos;\n* executar publicidade online direcionada;\n* prevenir, detectar e investigar atividades que estejam em desacordo com o nosso Código de Conduta ou que sejam proibidas ou ilegais; melhorar nosso website, aplicativo, produtos e serviços.\n\nA DETECSYS utiliza bases legais, que podem variar de acordo com a finalidade da coleta, para tratar os dados pessoais dos clientes. O prazo de armazenamento pode mudar conforme a base legal aplicável a cada situação e a finalidade.\n\n3.1 Serviços de marketing\n\nOs serviços de marketing são oferecidos por meio de comunicações gratuitas sobre ofertas, serviços e produtos dirigidas ao Cliente, relacionadas ao seu perfil no site e a compras que fez. Esse serviço abrange o envio de e-mails. Vale ressaltar que o Cliente pode cancelar o serviço, a qualquer momento, clicando no link de descadastro enviado junto com o e-mail do marketing.\n\n4. com quem compartilhamos seus dados?\nAs informações coletadas são tratadas dentro da DETECSYS e somente serão compartilhadas quando forem necessárias:\n\n(i)para prestação adequada dos serviços objeto de suas atividades com empresas parceiras;\n\n(ii)para proteção em caso de conflito;\n(iii)mediante decisão judicial ou requisição de autoridade competente;\n\n(iv)com empresas provedoras de infraestrutura tecnológica e operacional, como as provedoras de serviço de armazenamento de informações.\n\n5. transferência internacional de dados\nComo a internet é um ambiente global, determinados serviços oferecidos pela DETECSYS podem demandar a transferência dos seus dados para outros países.\n\nNesses casos, os dados são tratados de acordo com a LGPD (Lei Geral de Proteção de Dados) e demais legislações de proteção. Tomamos medidas de segurança de acordo com nossas políticas e adotamos cláusulas padrão nos contratos com fornecedores e prestadores de serviço.\n\nAo navegar em nosso site, aplicativos ou se comunicar conosco, você concorda com o tratamento de suas informações, inclusive a transferência internacional de dados, quando necessário. Adotamos medidas para garantir que quaisquer informações coletadas sejam tratadas com segurança, conforme os padrões de proteção de dados e de acordo com esta Política de Privacidade.\n\n6. por quanto tempo armazenamos informações pessoais?\n\nArmazenamos as informações dos Clientes de acordo com as normas de prescrição do Direito brasileiro.\n\n7. quais são os direitos do titular de dados?\n\nO titular dos dados pessoais possui o direito de obter da DETECSYS, a qualquer momento, mediante requisição formal, informações referentes aos seus dados.\n\nA Detecsys empresas terá 15 dias para responder às solicitações dos titulares. Os pedidos serão analisados conforme previsto em legislação vigente e, por questões legais, algumas solicitações podem não ser atendidas.\n\nOs titulares dos dados, segundo o texto da LGPD, podem exercer os seus direitos por meio de:\n\nI - confirmação da existência de tratamento;\nII - acesso aos dados;\nIII - correção de dados incompletos, inexatos ou desatualizados;\nIV - anonimização, bloqueio ou eliminação de dados desnecessários, excessivos ou tratados em desconformidade com o disposto nesta Lei;\nV - portabilidade dos dados a outro fornecedor de serviço ou produto, mediante requisição expressa, de acordo com a regulamentação da autoridade nacional, observados os segredos comercial e industrial;\nVI - eliminação dos dados pessoais tratados com o consentimento do titular;\nVII - informação das entidades públicas e privadas com as quais o controlador realizou uso compartilhado de dados;\nVIII - informação sobre a possibilidade de não fornecer consentimento e sobre as consequências da negativa;\nIX - revogação do consentimento.\n\n8. como exercer os seus direitos?\n\nVocê pode exercer seus direitos entrando em contato pelo e-mail comunicacao@candsys.com.br\nPara mudar suas preferências em relação às notificações (incluindo as comunicações de marketing), a qualquer momento, você pode cancelar a assinatura clicando no link de descadastro enviado junto com o e-mail do marketing.\n\n9. cookies e tecnologias semelhantes\nCookies são pequenos arquivos de dados que são colocados no seu computador ou em outros dispositivos (como \'smartphones\' ou \'tablets\') enquanto você navega no site.\n\nUtilizamos cookies, pixels e outras tecnologias (coletivamente, \"cookies\") para reconhecer seu navegador ou dispositivo, aprender mais sobre seus interesses, fornecer recursos e serviços essenciais, bem como para:\n\n* acompanhar suas preferências para enviar somente anúncios de seu interesse. Você pode definir suas preferências por meio de sua conta;\n* acompanhar os itens armazenados no seu carrinho de compras;\n* realização de pesquisas e diagnósticos para melhorar o conteúdo, produtos e serviços;\n* impedir atividades fraudulentas;\n* melhorar a segurança.\n\nSe você bloquear ou rejeitar nossos cookies, não poderá adicionar itens ao seu carrinho de compras, prosseguir para o checkout ou usar nossos produtos e serviços que exijam login.\n\n10. como você pode manter suas informações pessoais seguras?\n\nA DETECSYS utiliza os melhores protocolos de segurança para preservar a privacidade dos dados dos Clientes, mas também recomenda medidas de proteção individual.\n\nPara manter a segurança e proteção dos seus dados pessoais fornecidos no cadastro ou nas compras, em nenhuma hipótese o seu login e senha devem ser compartilhados com terceiros. Além disso, ao acessar o seu cadastro pelo “Minha Conta”, principalmente em computadores públicos, certifique-se de que você realizou o logout da sua conta para evitar que pessoas não autorizadas acessem e utilizem as informações sem o seu conhecimento.\n\nNão entramos em contato por telefone, WhatsApp, SMS ou e-mail solicitando dados pessoais. Em nenhuma hipótese eles devem ser fornecidos, pois pode ser uma tentativa de uso indevido.\n\nPara mais informações, você pode consultar nosso Guia de segurança.\n\n11. outras informações importantes sobre proteção de dados\nPara garantir que as regras estão claras e precisas, podemos alterar essa política a qualquer momento, publicando a Política de Privacidade revisada neste canal e indicando a data de efetivação do documento.\n\n12. como entrar em contato com o encarregado da proteção de dados DETECSYS?\n\nO encarregado da proteção de dados é o responsável escolhido pela DETECSYS para atuar como canal de comunicação entre o controlador, os titulares dos dados e a Autoridade Nacional de Proteção de Dados (ANPD).\n\nQualquer dúvida sobre tratamento de dados pessoais poderá ser encaminhada para o e-mail comunicacao@candsys.com.br ou através dos formulários de contato em nosso site www.candsys.com.br.\n\n13. legislação e foro\nEsta política será regida, interpretada e executada de acordo com as Leis da República Federativa do Brasil, especialmente a Lei nº 13.709/2018, independentemente das Leis de outros estados ou países, sendo competente o foro de domicílio do São Paulo sede da DETECSYS para dirimir qualquer dúvida decorrente deste documento.\n',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontWeight,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                    fontSize: 14.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontWeight,
                                    fontStyle: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .fontStyle,
                                  ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
