import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'termosdeuso_loja_model.dart';
export 'termosdeuso_loja_model.dart';

class TermosdeusoLojaWidget extends StatefulWidget {
  const TermosdeusoLojaWidget({super.key});

  static String routeName = 'termosdeusoLoja';
  static String routePath = '/termosdeusoLoja';

  @override
  State<TermosdeusoLojaWidget> createState() => _TermosdeusoLojaWidgetState();
}

class _TermosdeusoLojaWidgetState extends State<TermosdeusoLojaWidget> {
  late TermosdeusoLojaModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TermosdeusoLojaModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(100.0),
          child: AppBar(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: Icon(
                Icons.arrow_back_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 0.0, 0.0),
              child: Text(
                'TERMO DE SERVIÇO – MARKETPLACE CANDSYS GESTÃO POLITÍCA',
                style: FlutterFlowTheme.of(context).headlineMedium.override(
                      font: GoogleFonts.poppins(
                        fontWeight: FontWeight.w600,
                        fontStyle: FlutterFlowTheme.of(context)
                            .headlineMedium
                            .fontStyle,
                      ),
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 22.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      fontStyle:
                          FlutterFlowTheme.of(context).headlineMedium.fontStyle,
                    ),
              ),
            ),
            actions: [],
            centerTitle: true,
            elevation: 2.0,
          ),
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
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-1.0, 0.0),
                          child: Padding(
                            padding: EdgeInsets.all(48.0),
                            child: Text(
                              'Este Termo de Serviço descreve os termos e condições aplicáveis ao uso dos serviços oferecidos pela DETECSYS CONSULTORIA E SOLUCOES DIGITAIS INOVA SIMPLES I.S. LTDA - 55.050.581/0001-68 através do aplicativo CANDSYS e/ou suas Afiliadas para a venda de produtos e serviços nas respectivas plataformas de Marketplace no aplicativo CANDSYS.\n\nEste Termo de Serviço está vinculado ao Termo Geral. Mediante a aceitação do respectivo Termo Geral e contratação do serviço Marketplace, o Parceiro aceita as políticas e regras aqui descritas.\n\nA ACEITAÇÃO DO TERMO GERAL E DESTE TERMO DE SERVIÇO É ABSOLUTAMENTE INDISPENSÁVEL À UTILIZAÇÃO DOS SERVIÇOS.\n1.Objeto:\n\n1.1.Os serviços objeto do presente Termo de Serviço dividem-se em:\n\n(a)Serviços de Marketplace:\n\n-Intermediação de negócios.\n\n(b)Serviços de tecnologia (sendo que um ou mais dos serviços listados abaixo poderão ser prestados pela DETECSYS ao Parceiro no âmbito deste Termo de Serviço):\n\n-Análise e desenvolvimento de sistemas exclusivos para gestão do Parceiro, incluindo, mas não se restringindo, ao cadastro dos produtos e clientes, processamento e fluxo de pedidos, controle de estoques, pós-vendas, cálculo de frete, busca e recomendação de produtos, simulação e acompanhamento de parcelamentos, apresentação de landing pages, store-in-store, etc.\n-Disponibilização de manual para utilização da plataforma pelo Parceiro.\n\n-Planejamento, confecção, manutenção e atualização da plataforma e de páginas eletrônicas.\n\n-Processamento e transmissão de dados em geral através de integração tecnológica (application programming interface – “API”) nos casos que forem aplicáveis e negociados atendendo as necessidades de ambas as partes..\n\n1.2.A DETECSYS CONSULTORIA E SOLUCOES DIGITAIS INOVA SIMPLES I.S. LTDA disponibiliza a estrutura necessária para que o Parceiro ofereça seus produtos por meio de website(s) registrado(s) sob o(s) domínio(s) de propriedade da DETECSYS (“Plataformas DETECSYS – CandSys Gestão Politíca”), sem participar no controle de estoque, produção e qualidade, não sendo, portanto, fornecedora de quaisquer produtos anunciados por seus Parceiros nas Plataformas DETECSYS.\n\n2.Produtos Anunciados:\n\n2.1.O Parceiro será responsável por enviar à DETECSYS todas as informações referentes aos produtos que deseja anunciar através do portal de cadastro da loja ou pelo aplicativo, tais como, mas não se limitando a imagens, fotos, características, especificações, no formato estabelecido e de acordo com as regras e especificações informadas pela DETECSYS, exceto na hipótese de já existir o cadastro do produto nas Plataformas DETECSYS.\n\n2.1.1.Ao fornecer as características dos produtos à DETECSYS, o Parceiro deve descrevê-las com clareza, devendo incluir todas as informações exigidas pela legislação e/ou pela DETECSYS e, sempre que possível, gráficos, textos, descrições, fotos e outras informações que possam auxiliar na correta identificação do produto.\n\n2.1.2.O Parceiro será responsável pelas imagens, características e especificações do produto que forem fornecidas por ele à DETECSYS e cadastrradas na loja do aplicativo CandSys por ele mesmo.\n\n2.1.3.O cadastro de um produto criado pelo Parceiro nas Plataformas DETECSYS, incluindo, mas não se limitando à sua foto e especificações, poderá ser utilizado pela DETECSYS ou outros Parceiros quando houver mais de uma oferta para um mesmo produto.\n\n2.1.4.No caso de informações divergentes, o Parceiro deverá entrar na área de cadastro de produtos e corrigir o mais rápido possíveo e garantir a eficiência e entrega de todos os produtos e serviços comercializados com os valores equivocados. E entrar em contato com a DETECSYS no intuito de comunicar o ocorrido em caso de questionamentos em nosso SAC.\n\n2.1.5.A DETECSYS poderá, a seu exclusivo critério, aprovar ou reprovar o cadastro do produto realizado pelo Parceiro solicitando exclusão ou correção de cadastros. Em caso de divergências podendo acionar as penalidades ou restrições obtidas neste documento.\n\n2.2.O Parceiro deve, em cumprimento à legislação brasileira vigente, além de demonstrar informações claras e ostensivas a respeito de quaisquer restrições à aquisição do produto, apontar sempre em seus anúncios as características essenciais do produto, incluindo prazo de validade, os riscos à saúde e à segurança dos consumidores, quando aplicável.\n\n2.3.Em casos de produtos usados, seminovos, reembalados, remanufaturados e/ou remoldados é imprescindível que o Parceiro forneça a informação de que se trata de produto nestas condições, e que pode conter detalhes estéticos que não comprometem sua funcionalidade.\n\n2.3.1.Ainda, o Parceiro compromete-se a anunciar apenas produtos que estejam em perfeito estado de funcionamento, e sem quaisquer impedimentos que comprometam sua funcionalidade, incluindo, mas não se limitando, a problemas com sistemas, desgaste oriundo do tempo e/ou do uso, bloqueio por senhas e peças faltantes e/ou danificadas.\n\n2.4.Presumir-se-á que, mediante o fornecimento das características do produto à DETECSYS, o Parceiro manifesta a intenção e declara possuir o direito de vender o produto oferecido, além de dispor do produto para entrega ao consumidor. O Parceiro expressamente autoriza que suas informações cadastrais sejam compartilhadas pela DETECSYS nas Plataformas DETECSYS juntamente com o produto ofertado.\n\n2.5.Não é permitido anunciar produtos expressamente proibidos pela legislação vigente, que não possuam a devida autorização específica de órgãos reguladores competentes, que violem\ndireitos de terceiros, ou ainda para os quais o Parceiro não esteja autorizado por seus           cadastros fiscais. \n\n2.6.Não é permitido inserir ou manter no próprio anúncio, produto ou entrega, quaisquer dados pessoais para contato, tais como, mas não se limitando a, números de telefones, endereços de e-mails, ou páginas de internet que contenham os dados supracitados, nem fazer publicidade de outros meios de pagamentos que não sejam aqueles expressamente disponibilizados nas Plataformas CandSys da DETECSYS.\n\n2.7.A DETECSYS será responsável pelo posicionamento dos produtos anunciados nas Plataformas DETECSYS, de acordo com o raciocínio e necessidades comerciais definidos pela equipe de Marketing da DETECSYS.\n\n2.8.A DETECSYS poderá, a seu exclusivo critério, recusar-se a incluir quaisquer ofertas de produto nas Plataformas DETECSYS, bem como solicitar confirmação ao Parceiro quanto às informações fornecidas. A DETECSYS poderá, ainda, editar o anúncio ou solicitar que o Parceiro o faça, ou remover o anúncio do produto das Plataformas DETECSYS, ainda que sem conhecimento prévio do Parceiro, sempre que houver violação de algum dos dispositivos do Termo Geral, deste Termo de Serviço ou das demais políticas da DETECSYS.\n\n2.9.O apelido do Parceiro, juntamente com sua logomarca, deverá acompanhar os produtos por ele anunciados nas Plataformas DETECSYS, e não poderá guardar semelhança com o nome da DETECSYS, de suas Afiliadas, suas marcas e nomes de domínio ou outro bem de propriedade intelectual, tampouco poderá ser utilizado qualquer apelido que insinue ou sugira que os produtos/serviços anunciados pertencem ou tenham qualquer relação com a DETECSYS. Também serão excluídos apelidos considerados ofensivos, bem como os que contenham quaisquer dados do Parceiro, alguma URL ou endereço eletrônico.\n\n3.Preço e Estoque:\n\n3.1.O Parceiro deve informar à DETECSYS a quantidade de produtos que deseja vender e o preço por unidade. Os dados referentes ao estoque deverão ser mantidos atualizados pelo Parceiro.\n\n3.1.1.O preço por unidade informado pelo Parceiro nos produtos anunciados nas Plataformas DETECSYS deverá ser o mesmo, ou menor, que aquele praticado em seus Plataformas e/ou quaisquer outras plataformas de vendas, assim como o valor do frete, sob pena de não priorização da oferta do Parceiro.\n\n3.2.O Parceiro será o único responsável por determinar o preço dos produtos por ele ofertados nas Plataformas DETECSYS, sendo que o parcelamento das vendas seguirá as regras praticadas pela DETECSYS em seus Plataformas.\n\n4.Venda:\n\n4.1.. A DETECSYS será responsável por administrar as vendas online, levando em conta análises de crédito dos consumidores.\n\n4.2.A DETECSYS será responsável por estabelecer as condições de pagamento, bem como realizar a cobrança dos consumidores através de meio de pagamento atual AsaaS ou qualquer outro qno futuro ue se faça interessante e definido pela DETCSYS. Caso haja a alteração de meio de pagamento acorrerá comunicação aos parceiros e integrantes do processo em questão.\n\n4.3.A DETECSYS disponibilizará ao Parceiro as informações referentes aos pedidos efetuados, sempre que alguma compra do produto por ele ofertado for confirmada, inclusive os dados necessários para emissão de Nota Fiscal ao consumidor, a qual deverá ser obrigatoriamente emitida pelo Parceiro, em conformidade com a legislação vigente, em momento anterior ao envio do produto, e entregue ao consumidor, sob pena de descredenciamento do Parceiro e/ou bloqueio dos valores que este tenha a receber no âmbito deste Termo de Serviço, até que a emissão da Nota Fiscal seja regularizada, sem prejuízo de eventuais sanções legais aplicáveis.\n\n4.4.Os produtos usados, seminovos, reembalados, remanufaturados e/ou remoldados devem vir acompanhados da Nota Fiscal correspondente ao produto, sob pena de descredenciamento do Parceiro e/ou bloqueio dos valores que este tenha a receber no âmbito deste Termo de Serviço, sem prejuízo de eventuais sanções legais aplicáveis.\n\n4.5.O Parceiro deverá informar à DETECSYS todas as atualizações que estejam sob sua responsabilidade referentes ao status dos pedidos, tais como, mas não se limitando a, emissão de nota fiscal, produto entregue à transportadora, código de rastreio da entrega, pedido em trânsito entre centros de distribuição, extravio, insucesso de entrega, pedido em rota de\n\nentrega, pedido entregue ao cliente, sob pena de cancelamento do respectivo pedido ou a tomada de qualquer outra providência razoável pela DETECSYS, a fim de corrigir eventuais problemas e/ou reclamações relativos aos pedidos em questão, nos termos da cláusula 9.1. deste Termo de Serviço.\n\n4.5.1.Para efeito do disposto acima, o Parceiro deverá ainda, manter a guarda dos comprovantes relacionados às operações de compra e venda e entrega de mercadorias ao consumidor final, sob sua responsabilidade, pelo período fixado na legislação aplicável.\n\n5.Entrega:\n\n5.1.Deverá o Parceiro garantir que os produtos vendidos nas Plataformas DETECSYS observem, no momento da entrega, seus respectivos prazos de validade e estejam de acordo com as indicações constantes da embalagem, rotulagem e de todo o material de comunicação, bem como que estejam embalados adequadamente, sem qualquer indício de deterioração, obrigando-se pelo recebimento em devolução daqueles itens onde seja constatada alguma irregularidade, para substituição por produtos em condições adequadas. Outrossim, é de responsabilidade do parceito a postagem do produto em tempo hábil de forma que o mesmo seja entregue em tempo suficiente para consumo.\n\n5.2.Para o envio dos produtos, o Parceiro deverá imprimir a etiqueta gerada para cada pedido na aba “CandSys - Entrega” do Portal Parceiro, exceto orientação diversa da DETECSYS, cabendo exclusivamente ao Parceiro a responsabilidade de verificar as condições específicas aplicáveis ao CandSys - Entrega.\n\n6.Pós Venda:\n\n6.1.O Parceiro reconhece e aceita que os produtos anunciados nas Plataformas DETECSYS o vinculam, na medida em que atua como um fornecedor de produtos, nos termos do artigo 30 do Código de Defesa do Consumidor e do artigo 429 do Código Civil, cujo cumprimento pode ser exigido judicialmente pelo consumidor.\n\n6.2.O Parceiro será responsável por realizar trocas e/ou cancelamentos de venda dos produtos que venham a apresentar defeitos e/ou vícios, bem como realizar cancelamentos por arrependimento, sempre nos termos do Código de Defesa do Consumidor e legislação aplicável.\n\n6.3.O Parceiro obriga-se a cumprir rigorosamente os termos do Acordo de Nível de Serviço, doravante denominado simplesmente ANS, disponível no Portal Parceiro.\n\n6.4.A DETECSYS disponibilizará sua plataforma de atendimento ao consumidor, através de telefone, e-mail ou chat (“SAC DETECSYS”), para recepção e transferência dos contatos relativos às compras efetuadas nas Plataformas DETECSYS, devendo o Parceiro utilizá-la para os contatos relacionados às operações realizadas nas Plataformas DETECSYS, vedada a utilização de outros canais estranhos ao SAC DETECSYS para essa finalidade. Sendo a DETECSYS demandada através do SAC DETECSYS, ou através de reclamação proposta administrativa ou judicialmente , por ou perante órgãos de proteção do consumidor, em razão de vícios de produto e/ou falhas da prestação de serviços atribuíveis ao Parceiro, a DETECSYS contatará o Parceiro para que solucione a reclamação, seguindo as obrigações do ANS, devendo o Parceiro manter a DETECSYS isenta de qualquer responsabilidade pelos ônus decorrentes das reclamações ou da demora na solução.\n\n6.5.Sendo a DETECSYS demandada judicialmente, por conta de falhas na prestação de serviços atribuíveis ao Parceiro, poderá efetuar a retenção, no repasse previsto ao Parceiro, para fins de provisionamento, até o encerramento da respectiva demanda judicial.\n\n7.Remuneração:\n\n7.1.O Parceiro remunerará a DETECSYS pelos Serviços com o pagamento de comissão de 15% incidente sobre o valor do produto ou serviço ou de acordo com negociação customizada aplicável, além de uma taxa no mesmo percentual em relação ao valor do frete caso haja e se aplique , conforme a tabela de tarifas vigente do operador logistíco.\n\n7.1.1.A DETECSYS repassará ao Parceiro o valor correspondente à venda do produto por ele anunciado através do meio de pagamento AsaaS e da criação de sub-conta de pagamento. Esse repasse será realizado após exclusão das taxas acordadas entre as partes e de direito da DETECSYS e da AsaaS. Conforme condições especificadas no aceite de criação da sub-conta no Asaas e tarifas vigentes determinadas pela AsaaS e neste termo. Caberá ao Parceiro disponibilizar à DETECSYS a comprovação de que os pedidos foram devidamente enviados e entregues.\n7.1.2.Responsável pelo meio de pagamento utilizado pela DetecSys em suas plataformas é a Asaas Gestão Financeira Instituição de Pagamento S.A., pessoa jurídica de direito privado, inscrita no CNPJ sob o n. 19.540.550/0001-21 , atuante no mercado na qualidade de Instituição de Pagamento, devidamente autorizada a funcionar pelo Banco Central do Brasil, com sede na Avenida Rolf Wiest, n. 277, sala 814, Bairro Bom Retiro, na cidade Joinville, Estado Santa Catarina, CEP 89.223-005, por meio destes Termos de Uso, disciplina as regras e condições para prestação dos serviços de gestão financeira, de pagamentos e do cartão Asaas, conforme dado aceite em seus cadastros.\n\n7.1.3.A remuneração prevista na cláusula 7.1 acima deverá ser paga à DETECSYS também nos casos em que a entrega do produto não se concretizar ou for cancelada por qualquer motivo, exceto nas hipóteses em que a DETECSYS ainda não tenha\n\ndisponibilizado o pedido aprovado para download do Parceiro ou nos casos em que expressamente haja disposição diversa nos Termos de Serviço.\n\n7.1.4.A Remuneração paga pelo Parceiro contempla as vendas efetuadas nas condições padrão de parcelamento sem juros, praticadas pela DETECSYS em seus Plataformas. Caso a venda seja efetuada em quantidade de parcelas superior ao máximo    previsto no parcelamento sem juros padrão, DETECSYS usará tarifa estipulada pela Asaas e dado o aceite na criação de sub-conta da Assas pelo parceiro. (“Tarifas de Serviço”).\n\n7.1.5.O Parceiro declara-se ciente de que as ferramentas de gestão de pagamentos da DETECSYS contidas em seu website/plataforma não são e nem se destinam a ser comparáveis aos serviços financeiros oferecidos por instituições bancárias ou administradoras de cartão de crédito, consistindo apenas em uma forma de facilitação e acompanhamento da realização de transações para pagamentos e recebimentos entre as partes.\n\n7.2.O Parceiro deverá informar a conta bancária para depósito do repasse, deduzidos os valores referentes à remuneração e outros descontos aplicáveis, conforme disposto nos Termos e, em hipótese de alteração, deverá informar os novos dados bancários à DETECSYS   e a Asaas para referidos trâmites de pagamentos, no mínimo, 30 (trinta) dias de antecedência.\n\n7.2.1.Os dados bancários informados para fins de depósito do repasse devem corresponder em sua integralidade aos dados cadastrais do Parceiro informados no momento de contratação e ingresso no Marketplace e nos documentos de vendas realizadas.\n\n7.2.2.A DETECSYS não se responsabiliza por qualquer divergência bancária que venha a acarretar a devolução do pagamento, e, em nenhuma hipótese, realizará pagamentos em contas diversas daquela vinculada aos dados cadastrais do Parceiro e  na AsaaS.\n\n7.3.O crédito poderá demorar até 3 (três) dias úteis para ser visualizado na conta do Parceiro, e implicará na quitação automática do repasse devido pela DETECSYS ao Parceiro conforme determinado juntamente com a AsaaS no momento no aceite da criação da sub-conta. Essas definições são realizadas pela AssaS em nossos acordos comerciais. Podendo o parceiro ter outros acordos  comerciais com a AsaaS sem interferência da DetecSys.\n\n\n7.3.1 Não obstante o disposto acima, o Parceiro terá o prazo de até 90 (noventa) dias a contar da  data prevista para  a realização do repasse  pela DETECSYS, para aponta\nqualquer divergência em relação aos valores pagos. Findo tal prazo, não caberá qualquer reclamação por parte do Parceiro e ocorrerá a quitação automática, irrevogável, irretratável e definitiva quanto aos referidos valores.\n8.Obrigações Tributárias:\n\n8.1.Será de responsabilidade do Parceiro, quando aplicável, proceder a devida retenção e o posterior recolhimento do Imposto de Renda Retido na Fonte – IRRF, incidente nas operações relacionadas aos SERVIÇOS DE MARKETPLACE, nos termos do que dispõe o artigo 651, do Decreto nº. 3.000/99.\n\n8.2.Caberá ao Parceiro, nos termos da legislação vigente, informar à Receita Federal do Brasil - RFB os valores do Imposto de Renda Retido na Fonte – IRRF recolhidos em nome da DETECSYS, mediante o devido preenchimento e entrega da Declaração do Imposto sobre a Renda Retido na Fonte – DIRF, quando aplicável.\n\n8.3.A DETECSYS, na qualidade de prestadora do serviço e recebedora do montante global da operação adimplido pelo consumidor final, deverá repassar ao Parceiro o valor relativo à venda, acrescido do valor correspondente ao Imposto de Renda Retido na Fonte – IRRF.\n\n8.4.Nos casos em que a legislação municipal específica disciplinar que o Imposto Sobre Serviços – ISS deverá ser retido na fonte, aplicar-se-á o disposto nas cláusulas acima.\n\n8.5.É de inteira responsabilidade do Parceiro o recolhimento do ICMS devido nas operações de compra e venda de mercadorias, na forma da legislação vigente, bem como de todos os tributos incidentes e/ou decorrentes de suas próprias atividades.\n\n9.Penalidades:\n\n9.1.Caso os SLAs vigentes e disponibilizados no Portal Parceiro não sejam cumpridos para determinado pedido, e o Parceiro não retorne as solicitações do usuário Marketplace e/ou da DETECSYS no prazo estabelecido no Portal Parceiro, a DETECSYS tem a prerrogativa de cancelar ou tomar qualquer providência razoável para sanar o problema relacionado ao respectivo pedido, às expensas do Parceiro, mediante retenção do respectivo valor no próximo\n\nrepasse previsto ao Parceiro, e sem prejuízo do pagamento da remuneração correspondente, na forma da cláusula 7 – Remuneração.\n\n9.2.Sem prejuízo da aplicação das penalidades previstas neste Termo de Serviço, caso o Parceiro descumpra os níveis de serviço estipulados na tabela vigente do ANS, a DETECSYS poderá aplicar multas, conforme parâmetros nele estabelecidos.\n\n9.3.Nos casos de inabilitação do cadastro do Parceiro, todos os produtos anunciados e/ou ofertas realizadas nas Plataformas DETECSYS serão automaticamente cancelados. São casos de inabilitação, incluindo, mas não se limitando a (i) comercialização de produtos com violação dos direitos de propriedade intelectual; (ii) comercialização de produtos importados que não tenham sido regularmente internalizados em território nacional; (iii) comercialização de produtos que não estejam autorizados pelos cadastros fiscais do Parceiro; (iv) falta de emissão de notas fiscais das mercadorias comercializadas.\n\n10.Rescisão\n\n10.1.Este Termo de Serviço poderá ser rescindido imotivadamente, por qualquer uma das Partes, mediante aviso prévio de 30 (trinta) dias.\n\n10.2.Subsistirão, após a rescisão deste Termo de Serviço, as obrigações do Parceiro relacionadas às operações realizadas durante a sua vigência, incluindo, mas não se limitando a: (i) de pagamento de débitos de qualquer natureza contraídos junto à DETECSYS; (ii) de entrega dos produtos vendidos; (iii) de troca dos produtos que apresentem defeitos no prazo de garantia e, após, mediante orçamento específico; (iv) de atendimento dos clientes que apresentem dúvidas, tenham sugestões ou reclamações relacionadas aos produtos, prazos de entrega, etc.; (v) de fornecimento de subsídios para que a DETECSYS apresente sua própria defesa nas demandas relacionadas às relações de consumo estabelecidas com o Parceiro; (vi) de pagamento das indenizações judiciais e honorários advocatícios que decorram de ações judiciais contra o Parceiro, contra a DETECSYS ou contra o Parceiro e a DETECSYS em razão das operações realizadas no Marketplace.\n\n\n\n10.2.1.Após a rescisão, a fim de garantir o cumprimento das obrigações do Parceiro que subsistem à vigência deste Termo de Serviço, a DETECSYS poderá reter, a seu exclusivo critério, o pagamento dos valores correspondentes aos pedidos com chamado em aberto junto ao SAC, que serão proporcionalmente liberados à medida que os respectivos casos forem solucionados, bem como os valores correspondentes ao prazo e à taxa média histórica de devolução do Parceiro, cuja liberação ocorrerá em até 90 (noventa) dias da última venda realizada pelo Parceiro.\n\n10.3.Subsiste, em relação à DETECSYS, a obrigação de pagamentos dos repasses devidos em razão da comercialização dos produtos ao Parceiro, deduzidos os descontos previstos neste Termo de Serviço.',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    font: GoogleFonts.poppins(
                                      fontWeight: FontWeight.w500,
                                      fontStyle: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .fontStyle,
                                    ),
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
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
