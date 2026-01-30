import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termosdeuso_model.dart';
export 'termosdeuso_model.dart';

class TermosdeusoWidget extends StatefulWidget {
  const TermosdeusoWidget({super.key});

  static String routeName = 'termosdeuso';
  static String routePath = '/termosdeuso';

  @override
  State<TermosdeusoWidget> createState() => _TermosdeusoWidgetState();
}

class _TermosdeusoWidgetState extends State<TermosdeusoWidget> {
  late TermosdeusoModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosdeusoModel());

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
            'Termos de Uso',
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
                              'DETECSYS – Termos de Uso\n\nDETECSYS CONSULTORIA E SOLUCOES DIGITAIS INOVA SIMPLES I.S. LTDA, com sede à AVENIDA ALFREDO EGIDIO DE SOUZA ARANHA, nº 255 - BLOCO SABIÁ - AP 53, CEP 04.726-240, bairro VILA CRUZEIRO, São Paulo-SP, CNPJ 55.050.581/0001-68, doravante denominada simplesmente DETECSYS, e, de outro lado, o cliente da DETECSYS, qualificado no momento da compra de assinatura do software/aplicativo ou produtos disponibilizados na plataforma CANDSYS por seus parceiros comerciais, doravante denominado simplesmente Cliente.\n\nConsiderando que a DETECSYS disponibiliza um software de gestão de equipes e campanhas políticas com ferramentas de inteligências e aplicações visando facilitar gerenciamentos operacionais, disponibilizando lojas diversas de vendas de produtos e serviços através de parceiros sediados em território nacional (“Marketplace” e “Parceiro Marketplace”, respectivamente);\n\nConsiderando o interesse do Cliente na compra dos produtos e/ou serviços oferecidos pelos Parceiros Marketplace em seus canais de venda pela internet (“Produtos”) ou utilização dos serviços de gestão aplicadas no software em questão;\n\nO presente contrato tem por finalidade estabelecer as condições gerais de uso de compra de produtos/serviços pelo Cliente por meio da plataforma CANDSYS e suas mensalidades/assinaturas referentes a utilização do software de gestão política que disponibilizam ferramentas e acessos de consultas nos quantitativos abaixo. Podendo esses quantitativos serem alterados com aviso prévio de 30 dias aos usuários.\n\n* Os valores dos planos de assinatura do software/aplicativo estão sempre disponíveis no aplicativo no momento do cadastro ou explícitos no nosso site www.candsys.com.br. E seus valores podem sofrer alterações conforme necessidades operacionais assim como criação de novos planos e módulos de utilização. Os valores de produtos/serviços exibidos no marketplace são de responsabilidade dos parceiros, sendo descritos e gerenciados por eles na loja do aplicativo. Seus valores podem sofrer alterações, assim como criação de novos produtos/serviços são de responsabilidade exclusivamente dos parceiros comerciais;\n* Cadastro de até 150 assessores, apoiadores, influenciadores ou correligionários entre outros por licença e 50 candidatos/adversários concorrentes;\nO cadastro realizado de cada assessor também segue a regra de disponibilidade de acesso em dispositivo único conforme próxima descrição; \n* A utilização da licença deverá ser realizada de forma individual em um único dispositivo móvel, podendo a utilização inadequada em mais de um dispositivo gerar bloqueios ou exclusão da plataforma após análise da Detecsys;\n* Consulta de até 150 acessos a inteligência artificial (Cand-AI) e 50 análises SWOT por mês;\nObs: Todo acesso e criação de discursos ou textos elaborados nessa ferramenta ou análises SWOT, assim como a responsabilidade e conferência do textos gerados pela IA e resultados de análise SWOT são únicas e exclusivas dos usuários titulares contratantes. Também como toda repercussão ou causas geradas pela explanação em público dos mesmos.\n* Valores dos planos, produtos e serviços são disponibilizados dentro do aplicativo ou site e serão utilizados os índices de reajustes IGP-M ou IPCA a cada 12 meses sendo o que menor valor apresentar.  \n\n1. confidencialidade\n\n1.1. É de responsabilidade da DETECSYS a preservação da confidencialidade de todos os dados e informações fornecidos pelo Cliente no processo de compra. A segurança plataforma é auditada diariamente e garantida contra a ação de hackers por meio de instrumentos de segurança.\n\n1.2. O Cliente, por sua vez, se compromete a não disponibilizar suas senhas de acesso à plataforma a terceiros, bem como a tomar providências razoáveis para manter suas informações sob sigilo. Caso o Cliente identifique e/ou desconfie que terceiros tiveram acesso às suas senhas, este se compromete a comunicar a DETECSYS para que as devidas providências sejam tomadas.\n\n1.3. Ao preencher o cadastro, o Cliente declara que as informações que o identificam são verdadeiras, precisas e completas, bem como se declara ciente de que eventuais falsidades poderão sujeitá-lo às responsabilidades criminais e cíveis, de acordo com a legislação brasileira.\n\n1.4. O Cliente expressamente autoriza que suas informações e dados pessoais sejam compartilhados pela DETECSYS com as demais empresas integrantes do grupo econômico e autoridades, conforme necessário para o processo de compra e o cumprimento da legislação em vigor.\n\n2. serviço de atendimento ao cliente (sac)\n\n2.1. O Cliente dispõe desse serviço para sanar suas dúvidas, solucionar eventuais solicitações ou reclamações a respeito do seu pedido ou de qualquer conteúdo disponibilizado nos Websites. O SAC poderá ser acionado por meio de formulário do Website ou envio de e-mail para comunicacao@candsys.com.br, todos disponibilizados em nossa \"Central de Atendimento\" (SAC) no site.\n\n2.2. Caso o contato com o SAC se refira aos serviços/produtos vendidos e entregues pelos Parceiros do Marketplace, tais Parceiros serão exclusivamente responsáveis por entrar em contato para sanar as dúvidas, eventuais solicitações ou reclamações a respeito do seu pedido ou de qualquer conteúdo disponibilizado por ele no aplicativo. Ficando a DETECSYS isenta de qualquer responsabilidade neste sentido, mas acompanhando a satisfação de nossos usuários e desenvolvimento de nossos parceiros.\n\n3. política de entrega\n\n3.1. O prazo de ativação da assinatura contratada pode ocorrer de forma online ou em até 24 horas quando realizada através do aplicativo ou em até 5 dias úteis após a confirmação de pagamento quando adquirido através do site do aplicativo.\n\nO prazo para entrega dos Produtos ou serviços é informado durante o procedimento de compra descrito no software de gestão/marketplace e de responsabilidade do parceiro responsável pela execução e venda do produto/serviço, sendo contabilizado em dias úteis e estabelecido pelo parceiro responsável pela venda. As entregas dos Produtos são realizadas de segunda a sexta-feira, das 8h às 22h quando produtos físicos ou enviados a qualquer momento quando forem serviços online através dos contatos cadastrados. Excepcionalmente, algumas entregas de Produtos podem ocorrer aos sábados, domingos e feriados dependendo da política operacional do operador logístico da área do pedido quando físicos. O parceiro ficará responsável em entrar em contato em até 3 dias úteis após confirmação de pagamento na plataforma.\n\n3.2. A conferência da adequação das dimensões, data de validade ou condições físicas, do Produto é de exclusiva responsabilidade do Cliente, que deverá se assegurar de que estão de acordo com os limites espaciais dos elevadores, portas e corredores do local da entrega, bem como o uso pretendido e prazo de processamento. Não será realizada a montagem ou desmontagem do Produto, transporte pela escada e/ou portas e janelas, ou içamento das mercadorias.\n\n3.3. Serão realizadas até três tentativas de entrega no local informado pelo Cliente, em dias alternados, com intervalo de até 48h entre uma entrega e outra. É indispensável que, no endereço informado, haja uma pessoa autorizada pelo comprador, maior de 18 anos e responsável, portando documento de identificação para receber a mercadoria e assinar o protocolo de entrega. Se houver três tentativas de entrega sem sucesso, o Cliente entende e aceita que o pedido retornará para o local inicial do envio, passando a ser de responsabilidade do cliente a retirada do produto. \n\n3.4. Após a aprovação do pedido de produto ou serviço a ser executado com aprovação de Layout ou a finalização do pedido, não é possível alterar a forma de pagamento e/ou o endereço de entrega, solicitar adiantamento ou, ainda, prioridade da entrega assim como cancelamento dos mesmos.\n\n3.5. O prazo de entrega informado durante o procedimento de compra do Produto leva em consideração o estoque, a região, o processo de emissão da nota fiscal e o tempo de preparo do Produto. A atualização do status de execução e entrega de serviços a serem realizados ficam a cargo do parceiros responsáveis pela execução ficando a DETECSYS isenta desta responsabilidade, e-mails de alerta para o Cliente ou qualquer outra comunicação deverá ser realizada pelo parceiro através do cadastro/contato focal realizado pelo usuário.\n\n3.6. O valor do frete da entrega é calculado com base no local de entrega, peso e dimensões do Produto.\n\n3.7. A DETECSYS não autoriza a transportadora a:\n* Entrar no domicílio onde será entregue o Produto;\n* Entregar o Produto por meios alternativos (exemplo: içar Produto pela janela);\n* Realizar instalação ou manutenção de Produtos;\n* Abrir a embalagem do Produto;\n* Realizar entrega em endereço diferente do que consta na nota fiscal e/ou (invoice);\n* Entregar o Produto para pessoa com menos de 18 anos ou sem documento de identificação.\n\n3.8. A DETECSYS, bem como seus parceiros, não se responsabilizam pela retenção de mercadorias na Secretaria da Fazenda - SEFAZ quando está se dever exclusivamente a pendências do cliente, sendo, portanto, necessário o comparecimento deste no posto fiscal para que a mercadoria seja devidamente liberada, tendo em vista que nestes casos as informações referentes a liberações e pagamentos só são passadas aos interessados.\n\n3.9. Caso ocorra a retenção especificada no item 3.8, sendo o caso de produtos próximos ao vencimento, e que tal retenção venha a ultrapassar a data limite para uso, o pagamento pelo produto ainda sim será devido e o CLIENTE responsável pelo recebimento e respectiva destinação ou descarte responsável.\n\n4. direito de arrependimento\n\n4.1. Ao Cliente será facultado o exercício do direito de arrependimento da compra, com a finalidade de devolução do Produto, hipótese na qual deverão ser observadas as seguintes condições: O prazo de desistência da compra do Produto é de até 7 (sete) dias corridos, a contar da data do recebimento; em caso de desistência da compra, o Produto deverá ser devolvido à DETECSYS na embalagem original, acompanhado da nota fiscal (invoice), do manual e de todos os seus acessórios.\n\n4.2. O Cliente deverá solicitar a devolução por meio do Serviço de Atendimento ao Cliente (SAC) ou diretamente no Painel de Controle, no tópico \"cancelar pedido\". As despesas decorrentes de coleta ou postagem do Produto serão custeadas pelo Parceiro escolhido. \n\n4.3. Após a chegada do Produto ao parceiro comercial, o mesmo parceiro comercial verificará se as condições supracitadas foram atendidas. Em caso afirmativo, providenciará a restituição no valor total da compra junto a DETECSYS. \n\n4.4. Em compras com cartão de crédito a administradora do cartão será notificada e o estorno ocorrerá na fatura seguinte ou na posterior, de uma só vez, seja qual for o número de parcelas utilizado na compra. O prazo de ressarcimento e, ainda, a cobrança das parcelas remanescentes após o estorno integral do valor do Produto no cartão de crédito do Cliente realizado pela DETECSYS, é de exclusiva responsabilidade da administradora do cartão. Na hipótese de cobrança de parcelas futuras pela administradora do cartão, o Cliente não será onerado, uma vez que a DETECSYS, conforme mencionado acima, realiza o estorno do valor integral do Produto em uma única vez, sendo o crédito referente ao estorno concedido integralmente pela administradora do cartão na fatura de cobrança subsequente ao mês do cancelamento.\n\n5. política de trocas e devoluções:\n\n5.1. Todas as ocorrências que envolvam troca ou devolução serão atendidas conforme o previsto no Código de Defesa do Consumidor.\n5.2. O Cliente deverá solicitar a troca ou devolução por meio do Serviço de Atendimento ao Cliente (SAC) ou diretamente no Painel de Controle, no tópico \"cancelar pedido\". As despesas decorrentes de coleta ou postagem do Produto serão custeadas pelo Parceiro. \n5.3. O Produto deverá ser devolvido ao parceiro cadastrado na plataforma da DETECSYS na embalagem original, acompanhado da nota fiscal (invoice), do manual e de todos os seus acessórios que necessitarem.\n\n5.4. Após a chegada do Produto ao Centro de Distribuição do Operador Logístico ou parceiro comercial, o mesmo parceiro comercial verificará se as condições supracitadas foram atendidas. Em caso afirmativo, providenciará a restituição ou troca do Produto de acordo com a solicitação feita pelo Cliente e comunicada a DETECSYS.\n\n5.5. A DETECSYS isenta-se da obrigação de atender às solicitações de troca ou devolução de qualquer Produto devolvido sem que o setor de Atendimento ao Cliente seja comunicado, ou nos casos de solicitação direta no Painel de Controle, fora do prazo ou na ausência de itens/acessórios que o acompanham.\n\n6. formas de pagamento aceitas:\n\n6.1. Pagamento à vista: Débito em conta (PIX); cartão de crédito, cartão de débito e boleto; na retirada no ponto de venda na loja marketplace de parceiros seguindo as regras e cobranças dos meios de pagamentos;\n\n6.2. Pagamento parcelado para pagamento de assinatura mensal do software diretamente no aplicativo: via Cartão de crédito. Ou via PIX na modalidade de pagamento único através do site ou parceiros de revenda, seguindo as regras e cobranças dos meios de pagamentos;\n\n6.3. Para pagamentos com cartão de crédito, o pedido estará sujeito à aprovação da administradora do cartão. As informações contidas no cadastro são passíveis de confirmação, que poderá ser solicitada pela DETECSYS por e-mail somente neste caso.\n\n7. prazos de entrega e forma de pagamento\n\n7.1. Compras pagas com cartão de crédito: o prazo para entrega é considerado a partir da checagem de dados cadastrais e da confirmação do pagamento pela administradora do cartão. A confirmação é realizada em até dois dias corridos, sendo que em caso de divergência cadastral, a DETECSYS entrará em contato com o comprador.\n\n7.2. Compras pagas por meio de débito em conta: o prazo para entrega é considerado a partir da confirmação do pagamento pelo banco. A confirmação é realizada em até dois dias corridos.\n\n7.3. Para o caso de compras de produtos ou serviços de nossos parceiros que for detectado qualquer impossibilidade de execução ou entrega assim como problemas de compensação do pagamento que inviabilize a entrega, a compra será automaticamente cancelada ou não viabilizada pelo sistema e o CLIENTE avisado imediatamente.\n\n8. ofertas\n\n8.1. As ofertas podem ser encontradas na plataforma CANDSYS divulgadas pelos parceiros que são os responsáveis pela aceitação, execução e esclarecimentos que se façam necessários referente as aquisições dos usuários CandSYs. Porém, uma oferta pode ser retirada da PLATAFORMA quando os Produtos em estoque estiverem esgotados e não for possível efetuar a reposição ou execução com nossos fornecedores e/ou Parceiros.\n\n8.2. O Cliente deve ler atentamente o regulamento de cada oferta antes de fechar a compra. Em caso de dúvida, o Cliente deverá entrar em contato com o nosso Setor de Atendimento ao Cliente (SAC) ou entrar em contato diretamente com o parceiro comercial escolhido na aquisição dos produtos ou serviços disponibilizados em nosso marketplace.\n\n8.3. Para o caso de produtos vendido com pequenas avarias ou qualquer especificação excepcional, tais características serão clara e explicitamente identificadas pelos parceiros comerciais no marketplace, sendo o CLIENTE concordante quando da decisão da compra.\n\n9. característica dos produtos e risco à saúde\n\n9.1. Antes de comprar um Produto, o Cliente deve ler atentamente em sua página a descrição do uso, características, manuseio, prazo de vencimento e indicação de faixa etária, quando aplicável. Em caso de dúvida, deverá contatar o Setor de Atendimento ao Cliente (SAC). Ficando de responsabilidade do adquirente do produto oportunizado de forma diferenciada a garantia de consumo dos produtos ainda dentro dos prazos de validade, ficando sob sua responsabilidade o descarte consciente do produto conforme legislações ambientais brasileiras em caso de vencimento.\n\n10. caso fortuito e força maior\n\n13.1. Nenhuma das partes será responsável perante a outra por qualquer falha ou atraso no cumprimento das obrigações constantes do presente contrato causados por casos fortuitos ou força maior.\n\n11. foro\n\n11.1. Fica eleito o foro de São Paulo sede da DETECSYS para dirimir eventuais controvérsias a respeito deste contrato.\n\n\n',
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
