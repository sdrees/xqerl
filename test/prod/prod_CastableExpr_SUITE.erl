-module('prod_CastableExpr_SUITE').

-include_lib("common_test/include/ct.hrl").

-export([
    all/0,
    groups/0,
    suite/0
]).

-export([
    init_per_suite/1,
    init_per_group/2,
    end_per_group/2,
    end_per_suite/1
]).

-export(['CastableAs001'/1]).
-export(['CastableAs002'/1]).
-export(['CastableAs003'/1]).
-export(['CastableAs004'/1]).
-export(['CastableAs005'/1]).
-export(['CastableAs006'/1]).
-export(['CastableAs007'/1]).
-export(['CastableAs008'/1]).
-export(['CastableAs009'/1]).
-export(['CastableAs010'/1]).
-export(['CastableAs011'/1]).
-export(['CastableAs012'/1]).
-export(['CastableAs013'/1]).
-export(['CastableAs014'/1]).
-export(['CastableAs015'/1]).
-export(['CastableAs016'/1]).
-export(['CastableAs017'/1]).
-export(['CastableAs018'/1]).
-export(['CastableAs019'/1]).
-export(['CastableAs020'/1]).
-export(['CastableAs021'/1]).
-export(['CastableAs022'/1]).
-export(['CastableAs023'/1]).
-export(['CastableAs024'/1]).
-export(['CastableAs025'/1]).
-export(['CastableAs026'/1]).
-export(['CastableAs027'/1]).
-export(['CastableAs028'/1]).
-export(['CastableAs029'/1]).
-export(['CastableAs030'/1]).
-export(['CastableAs031'/1]).
-export(['CastableAs032'/1]).
-export(['CastableAs033'/1]).
-export(['CastableAs034'/1]).
-export(['CastableAs035'/1]).
-export(['CastableAs036'/1]).
-export(['CastableAs037'/1]).
-export(['CastableAs038'/1]).
-export(['CastableAs039'/1]).
-export(['CastableAs040'/1]).
-export(['CastableAs041'/1]).
-export(['CastableAs042'/1]).
-export(['CastableAs043'/1]).
-export(['CastableAs044'/1]).
-export(['CastableAs045'/1]).
-export(['CastableAs046'/1]).
-export(['CastableAs047'/1]).
-export(['CastableAs048'/1]).
-export(['CastableAs049'/1]).
-export(['CastableAs050'/1]).
-export(['CastableAs051'/1]).
-export(['CastableAs052'/1]).
-export(['CastableAs053'/1]).
-export(['CastableAs054'/1]).
-export(['CastableAs055'/1]).
-export(['CastableAs056'/1]).
-export(['CastableAs057'/1]).
-export(['CastableAs058'/1]).
-export(['CastableAs059'/1]).
-export(['CastableAs060'/1]).
-export(['CastableAs061'/1]).
-export(['CastableAs062'/1]).
-export(['CastableAs063'/1]).
-export(['CastableAs064'/1]).
-export(['CastableAs065'/1]).
-export(['CastableAs066'/1]).
-export(['CastableAs067'/1]).
-export(['CastableAs068'/1]).
-export(['CastableAs069'/1]).
-export(['CastableAs070'/1]).
-export(['CastableAs071'/1]).
-export(['CastableAs072'/1]).
-export(['CastableAs073'/1]).
-export(['CastableAs074'/1]).
-export(['CastableAs075'/1]).
-export(['CastableAs076'/1]).
-export(['CastableAs077'/1]).
-export(['CastableAs078'/1]).
-export(['CastableAs079'/1]).
-export(['CastableAs080'/1]).
-export(['CastableAs081'/1]).
-export(['CastableAs082'/1]).
-export(['CastableAs083'/1]).
-export(['CastableAs084'/1]).
-export(['CastableAs085'/1]).
-export(['CastableAs086'/1]).
-export(['CastableAs087'/1]).
-export(['CastableAs088'/1]).
-export(['CastableAs089'/1]).
-export(['CastableAs090'/1]).
-export(['CastableAs091'/1]).
-export(['CastableAs092'/1]).
-export(['CastableAs093'/1]).
-export(['CastableAs094'/1]).
-export(['CastableAs095'/1]).
-export(['CastableAs096'/1]).
-export(['CastableAs097'/1]).
-export(['CastableAs098'/1]).
-export(['CastableAs099'/1]).
-export(['CastableAs100'/1]).
-export(['CastableAs101'/1]).
-export(['CastableAs102'/1]).
-export(['CastableAs103'/1]).
-export(['CastableAs104'/1]).
-export(['CastableAs105'/1]).
-export(['CastableAs106'/1]).
-export(['CastableAs107'/1]).
-export(['CastableAs108'/1]).
-export(['CastableAs109'/1]).
-export(['CastableAs110'/1]).
-export(['CastableAs111'/1]).
-export(['CastableAs112'/1]).
-export(['CastableAs113'/1]).
-export(['CastableAs114'/1]).
-export(['CastableAs115'/1]).
-export(['CastableAs116'/1]).
-export(['CastableAs117'/1]).
-export(['CastableAs118'/1]).
-export(['CastableAs119'/1]).
-export(['CastableAs120'/1]).
-export(['CastableAs121'/1]).
-export(['CastableAs122'/1]).
-export(['CastableAs123'/1]).
-export(['CastableAs124'/1]).
-export(['CastableAs125'/1]).
-export(['CastableAs126'/1]).
-export(['CastableAs127'/1]).
-export(['CastableAs128'/1]).
-export(['CastableAs129'/1]).
-export(['CastableAs130'/1]).
-export(['CastableAs131'/1]).
-export(['CastableAs132'/1]).
-export(['CastableAs133'/1]).
-export(['CastableAs134'/1]).
-export(['CastableAs135'/1]).
-export(['CastableAs136'/1]).
-export(['CastableAs137'/1]).
-export(['CastableAs138'/1]).
-export(['CastableAs139'/1]).
-export(['CastableAs140'/1]).
-export(['CastableAs141'/1]).
-export(['CastableAs142'/1]).
-export(['CastableAs143'/1]).
-export(['CastableAs144'/1]).
-export(['CastableAs145'/1]).
-export(['CastableAs146'/1]).
-export(['CastableAs147'/1]).
-export(['CastableAs148'/1]).
-export(['CastableAs149'/1]).
-export(['CastableAs150'/1]).
-export(['CastableAs151'/1]).
-export(['CastableAs152'/1]).
-export(['CastableAs153'/1]).
-export(['CastableAs154'/1]).
-export(['CastableAs155'/1]).
-export(['CastableAs156'/1]).
-export(['CastableAs157'/1]).
-export(['CastableAs158'/1]).
-export(['CastableAs159'/1]).
-export(['CastableAs160'/1]).
-export(['CastableAs161'/1]).
-export(['CastableAs162'/1]).
-export(['CastableAs163'/1]).
-export(['CastableAs164'/1]).
-export(['CastableAs165'/1]).
-export(['CastableAs166'/1]).
-export(['CastableAs167'/1]).
-export(['CastableAs168'/1]).
-export(['CastableAs169'/1]).
-export(['CastableAs170'/1]).
-export(['CastableAs171'/1]).
-export(['CastableAs172'/1]).
-export(['CastableAs173'/1]).
-export(['CastableAs174'/1]).
-export(['CastableAs175'/1]).
-export(['CastableAs176'/1]).
-export(['CastableAs177'/1]).
-export(['CastableAs178'/1]).
-export(['CastableAs179'/1]).
-export(['CastableAs180'/1]).
-export(['CastableAs181'/1]).
-export(['CastableAs182'/1]).
-export(['CastableAs183'/1]).
-export(['CastableAs184'/1]).
-export(['CastableAs185'/1]).
-export(['CastableAs186'/1]).
-export(['CastableAs187'/1]).
-export(['CastableAs188'/1]).
-export(['CastableAs189'/1]).
-export(['CastableAs190'/1]).
-export(['CastableAs191'/1]).
-export(['CastableAs192'/1]).
-export(['CastableAs193'/1]).
-export(['CastableAs194'/1]).
-export(['CastableAs195'/1]).
-export(['CastableAs196'/1]).
-export(['CastableAs197'/1]).
-export(['CastableAs198'/1]).
-export(['CastableAs199'/1]).
-export(['CastableAs200'/1]).
-export(['CastableAs201'/1]).
-export(['CastableAs202'/1]).
-export(['CastableAs203'/1]).
-export(['CastableAs204'/1]).
-export(['CastableAs205'/1]).
-export(['CastableAs206'/1]).
-export(['CastableAs207'/1]).
-export(['CastableAs208'/1]).
-export(['CastableAs209'/1]).
-export(['CastableAs210'/1]).
-export(['CastableAs211'/1]).
-export(['CastableAs212'/1]).
-export(['CastableAs213'/1]).
-export(['CastableAs214'/1]).
-export(['CastableAs215'/1]).
-export(['CastableAs216'/1]).
-export(['CastableAs217'/1]).
-export(['CastableAs218'/1]).
-export(['CastableAs219'/1]).
-export(['CastableAs220'/1]).
-export(['CastableAs221'/1]).
-export(['CastableAs222'/1]).
-export(['CastableAs223'/1]).
-export(['CastableAs224'/1]).
-export(['CastableAs225'/1]).
-export(['CastableAs226'/1]).
-export(['CastableAs227'/1]).
-export(['CastableAs228'/1]).
-export(['CastableAs229'/1]).
-export(['CastableAs230'/1]).
-export(['CastableAs231'/1]).
-export(['CastableAs232'/1]).
-export(['CastableAs233'/1]).
-export(['CastableAs234'/1]).
-export(['CastableAs235'/1]).
-export(['CastableAs236'/1]).
-export(['CastableAs237'/1]).
-export(['CastableAs238'/1]).
-export(['CastableAs239'/1]).
-export(['CastableAs240'/1]).
-export(['CastableAs241'/1]).
-export(['CastableAs242'/1]).
-export(['CastableAs243'/1]).
-export(['CastableAs244'/1]).
-export(['CastableAs245'/1]).
-export(['CastableAs246'/1]).
-export(['CastableAs247'/1]).
-export(['CastableAs248'/1]).
-export(['CastableAs249'/1]).
-export(['CastableAs250'/1]).
-export(['CastableAs251'/1]).
-export(['CastableAs252'/1]).
-export(['CastableAs253'/1]).
-export(['CastableAs254'/1]).
-export(['CastableAs255'/1]).
-export(['CastableAs256'/1]).
-export(['CastableAs257'/1]).
-export(['CastableAs258'/1]).
-export(['CastableAs259'/1]).
-export(['CastableAs260'/1]).
-export(['CastableAs261'/1]).
-export(['CastableAs262'/1]).
-export(['CastableAs263'/1]).
-export(['CastableAs264'/1]).
-export(['CastableAs265'/1]).
-export(['CastableAs266'/1]).
-export(['CastableAs267'/1]).
-export(['CastableAs268'/1]).
-export(['CastableAs269'/1]).
-export(['CastableAs270'/1]).
-export(['CastableAs271'/1]).
-export(['CastableAs272'/1]).
-export(['CastableAs273'/1]).
-export(['CastableAs274'/1]).
-export(['CastableAs275'/1]).
-export(['CastableAs276'/1]).
-export(['CastableAs277'/1]).
-export(['CastableAs278'/1]).
-export(['CastableAs279'/1]).
-export(['CastableAs280'/1]).
-export(['CastableAs281'/1]).
-export(['CastableAs282'/1]).
-export(['CastableAs283'/1]).
-export(['CastableAs284'/1]).
-export(['CastableAs285'/1]).
-export(['CastableAs286'/1]).
-export(['CastableAs287'/1]).
-export(['CastableAs288'/1]).
-export(['CastableAs289'/1]).
-export(['CastableAs290'/1]).
-export(['CastableAs291'/1]).
-export(['CastableAs292'/1]).
-export(['CastableAs293'/1]).
-export(['CastableAs294'/1]).
-export(['CastableAs295'/1]).
-export(['CastableAs296'/1]).
-export(['CastableAs297'/1]).
-export(['CastableAs298'/1]).
-export(['CastableAs299'/1]).
-export(['CastableAs300'/1]).
-export(['CastableAs301'/1]).
-export(['CastableAs302'/1]).
-export(['CastableAs303'/1]).
-export(['CastableAs304'/1]).
-export(['CastableAs305'/1]).
-export(['CastableAs306'/1]).
-export(['CastableAs307'/1]).
-export(['CastableAs308'/1]).
-export(['CastableAs309'/1]).
-export(['CastableAs310'/1]).
-export(['CastableAs311'/1]).
-export(['CastableAs312'/1]).
-export(['CastableAs313'/1]).
-export(['CastableAs314'/1]).
-export(['CastableAs315'/1]).
-export(['CastableAs316'/1]).
-export(['CastableAs317'/1]).
-export(['CastableAs318'/1]).
-export(['CastableAs319'/1]).
-export(['CastableAs320'/1]).
-export(['CastableAs321'/1]).
-export(['CastableAs322'/1]).
-export(['CastableAs323'/1]).
-export(['CastableAs324'/1]).
-export(['CastableAs325'/1]).
-export(['CastableAs326'/1]).
-export(['CastableAs327'/1]).
-export(['CastableAs328'/1]).
-export(['CastableAs329'/1]).
-export(['CastableAs330'/1]).
-export(['CastableAs331'/1]).
-export(['CastableAs332'/1]).
-export(['CastableAs333'/1]).
-export(['CastableAs334'/1]).
-export(['CastableAs335'/1]).
-export(['CastableAs336'/1]).
-export(['CastableAs337'/1]).
-export(['CastableAs338'/1]).
-export(['CastableAs339'/1]).
-export(['CastableAs340'/1]).
-export(['CastableAs341'/1]).
-export(['CastableAs342'/1]).
-export(['CastableAs343'/1]).
-export(['CastableAs344'/1]).
-export(['CastableAs345'/1]).
-export(['CastableAs346'/1]).
-export(['CastableAs347'/1]).
-export(['CastableAs348'/1]).
-export(['CastableAs349'/1]).
-export(['CastableAs350'/1]).
-export(['CastableAs351'/1]).
-export(['CastableAs352'/1]).
-export(['CastableAs353'/1]).
-export(['CastableAs354'/1]).
-export(['CastableAs355'/1]).
-export(['CastableAs356'/1]).
-export(['CastableAs357'/1]).
-export(['CastableAs358'/1]).
-export(['CastableAs359'/1]).
-export(['CastableAs360'/1]).
-export(['CastableAs361'/1]).
-export(['CastableAs362'/1]).
-export(['CastableAs363'/1]).
-export(['CastableAs364'/1]).
-export(['CastableAs365'/1]).
-export(['CastableAs366'/1]).
-export(['CastableAs367'/1]).
-export(['CastableAs368'/1]).
-export(['CastableAs369'/1]).
-export(['CastableAs370'/1]).
-export(['CastableAs371'/1]).
-export(['CastableAs372'/1]).
-export(['CastableAs373'/1]).
-export(['CastableAs374'/1]).
-export(['CastableAs375'/1]).
-export(['CastableAs376'/1]).
-export(['CastableAs377'/1]).
-export(['CastableAs378'/1]).
-export(['CastableAs379'/1]).
-export(['CastableAs380'/1]).
-export(['CastableAs381'/1]).
-export(['CastableAs382'/1]).
-export(['CastableAs383'/1]).
-export(['CastableAs384'/1]).
-export(['CastableAs385'/1]).
-export(['CastableAs386'/1]).
-export(['CastableAs387'/1]).
-export(['CastableAs388'/1]).
-export(['CastableAs389'/1]).
-export(['CastableAs390'/1]).
-export(['CastableAs391'/1]).
-export(['CastableAs392'/1]).
-export(['CastableAs393'/1]).
-export(['CastableAs394'/1]).
-export(['CastableAs395'/1]).
-export(['CastableAs396'/1]).
-export(['CastableAs397'/1]).
-export(['CastableAs398'/1]).
-export(['CastableAs399'/1]).
-export(['CastableAs400'/1]).
-export(['CastableAs401'/1]).
-export(['CastableAs402'/1]).
-export(['CastableAs403'/1]).
-export(['CastableAs404'/1]).
-export(['CastableAs405'/1]).
-export(['CastableAs406'/1]).
-export(['CastableAs407'/1]).
-export(['CastableAs408'/1]).
-export(['CastableAs409'/1]).
-export(['CastableAs410'/1]).
-export(['CastableAs411'/1]).
-export(['CastableAs412'/1]).
-export(['CastableAs413'/1]).
-export(['CastableAs414'/1]).
-export(['CastableAs415'/1]).
-export(['CastableAs416'/1]).
-export(['CastableAs417'/1]).
-export(['CastableAs418'/1]).
-export(['CastableAs419'/1]).
-export(['CastableAs420'/1]).
-export(['CastableAs421'/1]).
-export(['CastableAs422'/1]).
-export(['CastableAs423'/1]).
-export(['CastableAs424'/1]).
-export(['CastableAs425'/1]).
-export(['CastableAs426'/1]).
-export(['CastableAs427'/1]).
-export(['CastableAs428'/1]).
-export(['CastableAs429'/1]).
-export(['CastableAs430'/1]).
-export(['CastableAs431'/1]).
-export(['CastableAs432'/1]).
-export(['CastableAs433'/1]).
-export(['CastableAs434'/1]).
-export(['CastableAs435'/1]).
-export(['CastableAs436'/1]).
-export(['CastableAs437'/1]).
-export(['CastableAs438'/1]).
-export(['CastableAs439'/1]).
-export(['CastableAs440'/1]).
-export(['CastableAs441'/1]).
-export(['CastableAs442'/1]).
-export(['CastableAs443'/1]).
-export(['CastableAs444'/1]).
-export(['CastableAs445'/1]).
-export(['CastableAs446'/1]).
-export(['CastableAs447'/1]).
-export(['CastableAs448'/1]).
-export(['CastableAs449'/1]).
-export(['CastableAs450'/1]).
-export(['CastableAs451'/1]).
-export(['CastableAs452'/1]).
-export(['CastableAs453'/1]).
-export(['CastableAs454'/1]).
-export(['CastableAs455'/1]).
-export(['CastableAs456'/1]).
-export(['CastableAs457'/1]).
-export(['CastableAs458'/1]).
-export(['CastableAs459'/1]).
-export(['CastableAs460'/1]).
-export(['CastableAs461'/1]).
-export(['CastableAs462'/1]).
-export(['CastableAs463'/1]).
-export(['CastableAs464'/1]).
-export(['CastableAs465'/1]).
-export(['CastableAs466'/1]).
-export(['CastableAs467'/1]).
-export(['CastableAs468'/1]).
-export(['CastableAs469'/1]).
-export(['CastableAs470'/1]).
-export(['CastableAs471'/1]).
-export(['CastableAs472'/1]).
-export(['CastableAs473'/1]).
-export(['CastableAs474'/1]).
-export(['CastableAs475'/1]).
-export(['CastableAs476'/1]).
-export(['CastableAs477'/1]).
-export(['CastableAs478'/1]).
-export(['CastableAs479'/1]).
-export(['CastableAs480'/1]).
-export(['CastableAs481'/1]).
-export(['CastableAs482'/1]).
-export(['CastableAs483'/1]).
-export(['CastableAs484'/1]).
-export(['CastableAs485'/1]).
-export(['CastableAs486'/1]).
-export(['CastableAs487'/1]).
-export(['CastableAs488'/1]).
-export(['CastableAs489'/1]).
-export(['CastableAs490'/1]).
-export(['CastableAs491'/1]).
-export(['CastableAs492'/1]).
-export(['CastableAs493'/1]).
-export(['CastableAs494'/1]).
-export(['CastableAs495'/1]).
-export(['CastableAs496'/1]).
-export(['CastableAs497'/1]).
-export(['CastableAs498'/1]).
-export(['CastableAs499'/1]).
-export(['CastableAs500'/1]).
-export(['CastableAs501'/1]).
-export(['CastableAs502'/1]).
-export(['CastableAs503'/1]).
-export(['CastableAs504'/1]).
-export(['CastableAs505'/1]).
-export(['CastableAs506'/1]).
-export(['CastableAs507'/1]).
-export(['CastableAs508'/1]).
-export(['CastableAs509'/1]).
-export(['CastableAs510'/1]).
-export(['CastableAs511'/1]).
-export(['CastableAs512'/1]).
-export(['CastableAs513'/1]).
-export(['CastableAs514'/1]).
-export(['CastableAs515'/1]).
-export(['CastableAs516'/1]).
-export(['CastableAs517'/1]).
-export(['CastableAs518'/1]).
-export(['CastableAs519'/1]).
-export(['CastableAs520'/1]).
-export(['CastableAs521'/1]).
-export(['CastableAs522'/1]).
-export(['CastableAs523'/1]).
-export(['CastableAs524'/1]).
-export(['CastableAs525'/1]).
-export(['CastableAs526'/1]).
-export(['CastableAs527'/1]).
-export(['CastableAs528'/1]).
-export(['CastableAs529'/1]).
-export(['CastableAs530'/1]).
-export(['CastableAs531'/1]).
-export(['CastableAs532'/1]).
-export(['CastableAs533'/1]).
-export(['CastableAs534'/1]).
-export(['CastableAs535'/1]).
-export(['CastableAs536'/1]).
-export(['CastableAs537'/1]).
-export(['CastableAs538'/1]).
-export(['CastableAs539'/1]).
-export(['CastableAs540'/1]).
-export(['CastableAs541'/1]).
-export(['CastableAs542'/1]).
-export(['CastableAs543'/1]).
-export(['CastableAs544'/1]).
-export(['CastableAs545'/1]).
-export(['CastableAs546'/1]).
-export(['CastableAs547'/1]).
-export(['CastableAs548'/1]).
-export(['CastableAs549'/1]).
-export(['CastableAs550'/1]).
-export(['CastableAs551'/1]).
-export(['CastableAs552'/1]).
-export(['CastableAs553'/1]).
-export(['CastableAs554'/1]).
-export(['CastableAs555'/1]).
-export(['CastableAs556'/1]).
-export(['CastableAs557'/1]).
-export(['CastableAs558'/1]).
-export(['CastableAs559'/1]).
-export(['CastableAs560'/1]).
-export(['CastableAs561'/1]).
-export(['CastableAs562'/1]).
-export(['CastableAs563'/1]).
-export(['CastableAs564'/1]).
-export(['CastableAs565'/1]).
-export(['CastableAs566'/1]).
-export(['CastableAs567'/1]).
-export(['CastableAs568'/1]).
-export(['CastableAs569'/1]).
-export(['CastableAs570'/1]).
-export(['CastableAs571'/1]).
-export(['CastableAs572'/1]).
-export(['CastableAs573'/1]).
-export(['CastableAs574'/1]).
-export(['CastableAs575'/1]).
-export(['CastableAs576'/1]).
-export(['CastableAs577'/1]).
-export(['CastableAs578'/1]).
-export(['CastableAs579'/1]).
-export(['CastableAs580'/1]).
-export(['CastableAs581'/1]).
-export(['CastableAs582'/1]).
-export(['CastableAs583'/1]).
-export(['CastableAs584'/1]).
-export(['CastableAs585'/1]).
-export(['CastableAs586'/1]).
-export(['CastableAs587'/1]).
-export(['CastableAs588'/1]).
-export(['CastableAs589'/1]).
-export(['CastableAs590'/1]).
-export(['CastableAs591'/1]).
-export(['CastableAs592'/1]).
-export(['CastableAs593'/1]).
-export(['CastableAs594'/1]).
-export(['CastableAs595'/1]).
-export(['CastableAs596'/1]).
-export(['CastableAs597'/1]).
-export(['CastableAs598'/1]).
-export(['CastableAs599'/1]).
-export(['CastableAs600'/1]).
-export(['CastableAs601'/1]).
-export(['CastableAs602'/1]).
-export(['CastableAs603'/1]).
-export(['CastableAs604'/1]).
-export(['CastableAs605'/1]).
-export(['CastableAs606'/1]).
-export(['CastableAs607'/1]).
-export(['CastableAs608'/1]).
-export(['CastableAs609'/1]).
-export(['CastableAs610'/1]).
-export(['CastableAs611'/1]).
-export(['CastableAs612'/1]).
-export(['CastableAs613'/1]).
-export(['CastableAs614'/1]).
-export(['CastableAs615'/1]).
-export(['CastableAs616'/1]).
-export(['CastableAs617'/1]).
-export(['CastableAs618'/1]).
-export(['CastableAs619'/1]).
-export(['CastableAs620'/1]).
-export(['CastableAs621'/1]).
-export(['CastableAs622'/1]).
-export(['CastableAs623'/1]).
-export(['CastableAs624'/1]).
-export(['CastableAs625'/1]).
-export(['CastableAs626'/1]).
-export(['CastableAs627'/1]).
-export(['CastableAs628'/1]).
-export(['CastableAs629'/1]).
-export(['CastableAs630'/1]).
-export(['CastableAs631'/1]).
-export(['CastableAs632'/1]).
-export(['CastableAs633'/1]).
-export(['CastableAs634'/1]).
-export(['CastableAs635'/1]).
-export(['CastableAs636'/1]).
-export(['CastableAs637'/1]).
-export(['CastableAs638'/1]).
-export(['CastableAs639'/1]).
-export(['CastableAs640'/1]).
-export(['CastableAs641'/1]).
-export(['CastableAs642'/1]).
-export(['CastableAs643'/1]).
-export(['CastableAs644'/1]).
-export(['CastableAs645'/1]).
-export(['CastableAs646'/1]).
-export(['CastableAs647'/1]).
-export(['CastableAs648'/1]).
-export(['CastableAs648a'/1]).
-export(['CastableAs649'/1]).
-export(['CastableAs650'/1]).
-export(['CastableAs651'/1]).
-export(['CastableAs652'/1]).
-export(['CastableAs653'/1]).
-export(['CastableAs654'/1]).
-export(['CastableAs655'/1]).
-export(['CastableAs656'/1]).
-export(['CastableAs657'/1]).
-export(['CastableAs658'/1]).
-export(['CastableAs659'/1]).
-export(['CastableAs660'/1]).
-export(['CastableAs661'/1]).
-export(['CastableAs662'/1]).
-export(['K-SeqExprCastable-1'/1]).
-export(['K-SeqExprCastable-2'/1]).
-export(['K-SeqExprCastable-3'/1]).
-export(['K-SeqExprCastable-4'/1]).
-export(['K-SeqExprCastable-4a'/1]).
-export(['K-SeqExprCastable-5'/1]).
-export(['K-SeqExprCastable-5a'/1]).
-export(['K-SeqExprCastable-6'/1]).
-export(['K-SeqExprCastable-6a'/1]).
-export(['K-SeqExprCastable-7'/1]).
-export(['K-SeqExprCastable-8'/1]).
-export(['K-SeqExprCastable-9'/1]).
-export(['K-SeqExprCastable-10'/1]).
-export(['K-SeqExprCastable-11'/1]).
-export(['K-SeqExprCastable-12'/1]).
-export(['K-SeqExprCastable-12a'/1]).
-export(['K-SeqExprCastable-13'/1]).
-export(['K-SeqExprCastable-13a'/1]).
-export(['K-SeqExprCastable-14'/1]).
-export(['K-SeqExprCastable-15'/1]).
-export(['K-SeqExprCastable-16'/1]).
-export(['K-SeqExprCastable-17'/1]).
-export(['K-SeqExprCastable-18'/1]).
-export(['K-SeqExprCastable-19'/1]).
-export(['K-SeqExprCastable-20'/1]).
-export(['K-SeqExprCastable-21'/1]).
-export(['K-SeqExprCastable-22'/1]).
-export(['K-SeqExprCastable-23'/1]).
-export(['K-SeqExprCastable-24'/1]).
-export(['K-SeqExprCastable-25'/1]).
-export(['K-SeqExprCastable-26'/1]).
-export(['K-SeqExprCastable-27'/1]).
-export(['K-SeqExprCastable-28'/1]).
-export(['K-SeqExprCastable-29'/1]).
-export(['K-SeqExprCastable-30'/1]).
-export(['K-SeqExprCastable-31'/1]).
-export(['K-SeqExprCastable-32'/1]).
-export(['K-SeqExprCastable-33'/1]).
-export(['K-SeqExprCastable-34'/1]).
-export(['K-SeqExprCastable-35'/1]).
-export(['K-SeqExprCastable-36'/1]).
-export(['K-SeqExprCastable-37'/1]).
-export(['K-SeqExprCastable-38'/1]).
-export(['K2-SeqExprCastable-1'/1]).
-export(['K2-SeqExprCastable-2'/1]).
-export(['K2-SeqExprCastable-3'/1]).
-export(['K2-SeqExprCastable-4'/1]).
-export(['K2-SeqExprCastable-5'/1]).
-export(['K2-SeqExprCastable-6'/1]).
-export(['K2-SeqExprCastable-7'/1]).
-export(['K2-SeqExprCastable-8'/1]).
-export(['Castable-UnionType-1'/1]).
-export(['Castable-UnionType-2'/1]).
-export(['Castable-UnionType-3'/1]).
-export(['Castable-UnionType-4'/1]).
-export(['Castable-UnionType-5'/1]).
-export(['Castable-UnionType-6'/1]).
-export(['Castable-UnionType-7'/1]).
-export(['Castable-UnionType-8'/1]).
-export(['Castable-UnionType-9'/1]).
-export(['Castable-UnionType-10'/1]).
-export(['Castable-UnionType-11'/1]).
-export(['Castable-UnionType-12'/1]).
-export(['Castable-UnionType-13'/1]).
-export(['Castable-UnionType-14'/1]).
-export(['Castable-UnionType-15'/1]).
-export(['Castable-UnionType-16'/1]).
-export(['Castable-UnionType-17'/1]).
-export(['Castable-UnionType-18'/1]).
-export(['Castable-UnionType-19'/1]).
-export(['Castable-UnionType-20'/1]).
-export(['Castable-UnionType-21'/1]).
-export(['Castable-UnionType-22'/1]).
-export(['Castable-UnionType-23'/1]).
-export(['Castable-UnionType-24'/1]).
-export(['Castable-UnionType-25'/1]).
-export(['Castable-UnionType-26'/1]).
-export(['Castable-UnionType-36'/1]).
-export(['Castable-UnionType-37'/1]).
-export(['Castable-UnionType-38'/1]).
-export(['Castable-ListType-2'/1]).
-export(['Castable-ListType-3'/1]).
-export(['Castable-ListType-4'/1]).
-export(['Castable-ListType-5'/1]).
-export(['Castable-ListType-6'/1]).
-export(['Castable-ListType-7'/1]).
-export(['Castable-ListType-8'/1]).
-export(['Castable-ListType-9'/1]).
-export(['Castable-ListType-10'/1]).
-export(['Castable-ListType-11'/1]).
-export(['Castable-ListType-12'/1]).
-export(['Castable-ListType-13'/1]).
-export(['Castable-ListType-14'/1]).
-export(['Castable-ListType-15'/1]).
-export(['Castable-ListType-16'/1]).
-export(['Castable-ListType-17'/1]).
-export(['Castable-ListType-18'/1]).
-export(['Castable-ListType-19'/1]).
-export(['cbcl-castable-byte-001'/1]).
-export(['cbcl-castable-byte-002'/1]).
-export(['cbcl-castable-byte-003'/1]).
-export(['cbcl-castable-byte-004'/1]).
-export(['cbcl-castable-date-001'/1]).
-export(['cbcl-castable-date-002'/1]).
-export(['cbcl-castable-dateTime-001'/1]).
-export(['cbcl-castable-dateTime-002'/1]).
-export(['cbcl-castable-dayTimeDuration-001'/1]).
-export(['cbcl-castable-dayTimeDuration-002'/1]).
-export(['cbcl-castable-decimal-001'/1]).
-export(['cbcl-castable-decimal-002'/1]).
-export(['cbcl-castable-decimal-003'/1]).
-export(['cbcl-castable-decimal-004'/1]).
-export(['cbcl-castable-decimal-005'/1]).
-export(['cbcl-castable-decimal-006'/1]).
-export(['cbcl-castable-decimal-007'/1]).
-export(['cbcl-castable-decimal-008'/1]).
-export(['cbcl-castable-decimal-009'/1]).
-export(['cbcl-castable-decimal-010'/1]).
-export(['cbcl-castable-duration-001'/1]).
-export(['cbcl-castable-duration-002'/1]).
-export(['cbcl-castable-int-001'/1]).
-export(['cbcl-castable-int-002'/1]).
-export(['cbcl-castable-int-003'/1]).
-export(['cbcl-castable-int-004'/1]).
-export(['cbcl-castable-integer-001'/1]).
-export(['cbcl-castable-integer-002'/1]).
-export(['cbcl-castable-integer-003'/1]).
-export(['cbcl-castable-integer-004'/1]).
-export(['cbcl-castable-language-001'/1]).
-export(['cbcl-castable-language-002'/1]).
-export(['cbcl-castable-language-003'/1]).
-export(['cbcl-castable-language-004'/1]).
-export(['cbcl-castable-long-001'/1]).
-export(['cbcl-castable-long-002'/1]).
-export(['cbcl-castable-long-003'/1]).
-export(['cbcl-castable-long-004'/1]).
-export(['cbcl-castable-name-001'/1]).
-export(['cbcl-castable-name-002'/1]).
-export(['cbcl-castable-name-003'/1]).
-export(['cbcl-castable-name-004'/1]).
-export(['cbcl-castable-ncname-001'/1]).
-export(['cbcl-castable-ncname-002'/1]).
-export(['cbcl-castable-ncname-003'/1]).
-export(['cbcl-castable-ncname-004'/1]).
-export(['cbcl-castable-negativeInteger-001'/1]).
-export(['cbcl-castable-negativeInteger-002'/1]).
-export(['cbcl-castable-nmtoken-001'/1]).
-export(['cbcl-castable-nmtoken-002'/1]).
-export(['cbcl-castable-nmtoken-002b'/1]).
-export(['cbcl-castable-nonNegativeInteger-001'/1]).
-export(['cbcl-castable-nonNegativeInteger-002'/1]).
-export(['cbcl-castable-nonPositiveInteger-001'/1]).
-export(['cbcl-castable-nonPositiveInteger-002'/1]).
-export(['cbcl-castable-positiveInteger-001'/1]).
-export(['cbcl-castable-positiveInteger-002'/1]).
-export(['cbcl-castable-short-001'/1]).
-export(['cbcl-castable-short-002'/1]).
-export(['cbcl-castable-short-003'/1]).
-export(['cbcl-castable-short-004'/1]).
-export(['cbcl-castable-unsignedByte-001'/1]).
-export(['cbcl-castable-unsignedByte-002'/1]).
-export(['cbcl-castable-unsignedByte-003'/1]).
-export(['cbcl-castable-unsignedByte-004'/1]).
-export(['cbcl-castable-unsignedInt-001'/1]).
-export(['cbcl-castable-unsignedInt-002'/1]).
-export(['cbcl-castable-unsignedInt-003'/1]).
-export(['cbcl-castable-unsignedInt-004'/1]).
-export(['cbcl-castable-unsignedLong-001'/1]).
-export(['cbcl-castable-unsignedLong-002'/1]).
-export(['cbcl-castable-unsignedLong-003'/1]).
-export(['cbcl-castable-unsignedLong-004'/1]).
-export(['cbcl-castable-unsignedShort-001'/1]).
-export(['cbcl-castable-unsignedShort-002'/1]).
-export(['cbcl-castable-unsignedShort-003'/1]).
-export(['cbcl-castable-unsignedShort-004'/1]).
-export(['cbcl-castable-yearMonthDuration-001'/1]).
-export(['cbcl-castable-yearMonthDuration-002'/1]).
-export(['cbcl-castable-nonNegativeInteger-003'/1]).
-export(['cbcl-castable-nonPositiveInteger-003'/1]).
-export(['cbcl-castable-unsignedByte-005'/1]).
-export(['cbcl-castable-unsignedInt-005'/1]).
-export(['cbcl-castable-unsignedLong-005'/1]).
-export(['cbcl-castable-unsignedShort-005'/1]).
-export(['cbcl-castable-gYear-001'/1]).
-export(['cbcl-castable-gYearMonth-001'/1]).
-export(['cbcl-castable-gYearMonth-002'/1]).
-export(['cbcl-castable-gYear-002'/1]).
-export(['cbcl-castable-gYear-003'/1]).
-export(['cbcl-castable-gYearMonth-003'/1]).
-export(['cbcl-castable-gYearMonth-004'/1]).
-export(['cbcl-castable-ENTITIES-001'/1]).
-export(['cbcl-castable-ENTITIES-002'/1]).
-export(['cbcl-castable-ENTITIES-003'/1]).
-export(['cbcl-castable-ENTITIES-004'/1]).
-export(['cbcl-castable-ENTITIES-005'/1]).
-export(['cbcl-castable-ENTITIES-006'/1]).
-export(['cbcl-castable-ENTITIES-007'/1]).
-export(['cbcl-castable-ENTITIES-008'/1]).
-export(['cbcl-castable-ENTITIES-009'/1]).
-export(['cbcl-castable-ENTITIES-010'/1]).
-export(['cbcl-castable-ENTITIES-011'/1]).
-export(['cbcl-castable-ENTITIES-012'/1]).
-export(['cbcl-castable-ENTITIES-013'/1]).
-export(['cbcl-castable-ENTITIES-014'/1]).
-export(['cbcl-castable-ENTITIES-015'/1]).
-export(['cbcl-castable-ENTITIES-016'/1]).
-export(['cbcl-castable-ENTITIES-017'/1]).
-export(['cbcl-castable-ENTITIES-018'/1]).
-export(['cbcl-castable-ENTITIES-019'/1]).
-export(['cbcl-castable-ENTITIES-020'/1]).
-export(['cbcl-castable-NMTOKENS-001'/1]).
-export(['cbcl-castable-NMTOKENS-002'/1]).
-export(['cbcl-castable-NMTOKENS-003'/1]).
-export(['cbcl-castable-NMTOKENS-004'/1]).
-export(['cbcl-castable-NMTOKENS-005'/1]).
-export(['cbcl-castable-NMTOKENS-006'/1]).
-export(['cbcl-castable-NMTOKENS-007'/1]).
-export(['cbcl-castable-NMTOKENS-008'/1]).
-export(['cbcl-castable-NMTOKENS-009'/1]).
-export(['cbcl-castable-NMTOKENS-010'/1]).
-export(['cbcl-castable-NMTOKENS-011'/1]).
-export(['cbcl-castable-NMTOKENS-012'/1]).
-export(['cbcl-castable-NMTOKENS-013'/1]).
-export(['cbcl-castable-NMTOKENS-014'/1]).
-export(['cbcl-castable-NMTOKENS-015'/1]).
-export(['cbcl-castable-NMTOKENS-016'/1]).
-export(['cbcl-castable-NMTOKENS-017'/1]).
-export(['cbcl-castable-NMTOKENS-018'/1]).
-export(['cbcl-castable-NMTOKENS-019'/1]).
-export(['cbcl-castable-NMTOKENS-020'/1]).
-export(['cbcl-castable-IDREFS-001'/1]).
-export(['cbcl-castable-IDREFS-002'/1]).
-export(['cbcl-castable-IDREFS-003'/1]).
-export(['cbcl-castable-IDREFS-004'/1]).
-export(['cbcl-castable-IDREFS-005'/1]).
-export(['cbcl-castable-IDREFS-006'/1]).
-export(['cbcl-castable-IDREFS-007'/1]).
-export(['cbcl-castable-IDREFS-008'/1]).
-export(['cbcl-castable-IDREFS-009'/1]).
-export(['cbcl-castable-IDREFS-010'/1]).
-export(['cbcl-castable-IDREFS-011'/1]).
-export(['cbcl-castable-IDREFS-012'/1]).
-export(['cbcl-castable-IDREFS-013'/1]).
-export(['cbcl-castable-IDREFS-014'/1]).
-export(['cbcl-castable-IDREFS-015'/1]).
-export(['cbcl-castable-IDREFS-016'/1]).
-export(['cbcl-castable-IDREFS-017'/1]).
-export(['cbcl-castable-IDREFS-018'/1]).
-export(['cbcl-castable-IDREFS-019'/1]).
-export(['cbcl-castable-IDREFS-020'/1]).
-export(['cbcl-castable-impure-001'/1]).
-export(['cbcl-castable-impure-002'/1]).
-export(['cbcl-castable-impure-003'/1]).
-export(['cbcl-castable-impure-004'/1]).
-export(['cbcl-castable-impure-005'/1]).
-export(['cbcl-castable-impure-006'/1]).
-export(['cbcl-castable-impure-007'/1]).
-export(['cbcl-castable-impure-008'/1]).
-export(['cbcl-castable-impure-009'/1]).
-export(['cbcl-castable-impure-010'/1]).
-export(['cbcl-castable-impure-011'/1]).
-export(['cbcl-castable-impure-012'/1]).
-export(['cbcl-castable-impure-013'/1]).
-export(['cbcl-castable-impure-014'/1]).
-export(['cbcl-castable-impure-015'/1]).
-export(['cbcl-castable-impure-016'/1]).
-export(['cbcl-castable-impure-017'/1]).
-export(['cbcl-castable-impure-018'/1]).
-export(['cbcl-castable-impure-019'/1]).
-export(['cbcl-castable-impure-020'/1]).
-export(['cbcl-castable-restricted-union-001'/1]).
-export(['cbcl-castable-restricted-union-002'/1]).
-export(['cbcl-castable-restricted-union-003'/1]).
-export(['cbcl-castable-restricted-union-004'/1]).
-export(['cbcl-castable-restricted-union-005'/1]).
-export(['cbcl-castable-restricted-union-006'/1]).
-export(['cbcl-castable-restricted-union-007'/1]).
-export(['cbcl-castable-restricted-union-008'/1]).
-export(['cbcl-castable-restricted-union-009'/1]).
-export(['cbcl-castable-restricted-union-010'/1]).
-export(['cbcl-castable-restricted-union-011'/1]).
-export(['cbcl-castable-restricted-union-012'/1]).
-export(['cbcl-castable-restricted-union-013'/1]).
-export(['cbcl-castable-restricted-union-014'/1]).
-export(['cbcl-castable-restricted-union-015'/1]).
-export(['cbcl-castable-restricted-union-016'/1]).
-export(['cbcl-castable-restricted-union-017'/1]).
-export(['cbcl-castable-restricted-union-018'/1]).
-export(['cbcl-castable-restricted-union-019'/1]).
-export(['cbcl-castable-restricted-union-020'/1]).

suite() -> [{timetrap, {seconds, 180}}].

init_per_group(_, Config) -> Config.

end_per_group(_, _Config) ->
    xqerl_code_server:unload(all).

end_per_suite(_Config) ->
    ct:timetrap({seconds, 60}),
    xqerl_code_server:unload(all).

init_per_suite(Config) ->
    {ok, _} = application:ensure_all_started(xqerl),
    DD = filename:dirname(filename:dirname(filename:dirname(?config(data_dir, Config)))),
    TD = filename:join(DD, "QT3-test-suite"),
    __BaseDir = filename:join(TD, "prod"),
    [{base_dir, __BaseDir} | Config].

all() ->
    [
        {group, group_0},
        {group, group_1},
        {group, group_2},
        {group, group_3},
        {group, group_4},
        {group, group_5},
        {group, group_6},
        {group, group_7},
        {group, group_8},
        {group, group_9},
        {group, group_10},
        {group, group_11},
        {group, group_12},
        {group, group_13},
        {group, group_14},
        {group, group_15},
        {group, group_16},
        {group, group_17},
        {group, group_18},
        {group, group_19},
        {group, group_20},
        {group, group_21},
        {group, group_22},
        {group, group_23},
        {group, group_24},
        {group, group_25},
        {group, group_26},
        {group, group_27},
        {group, group_28},
        {group, group_29},
        {group, group_30},
        {group, group_31},
        {group, group_32},
        {group, group_33},
        {group, group_34},
        {group, group_35},
        {group, group_36},
        {group, group_37},
        {group, group_38},
        {group, group_39}
    ].

groups() ->
    [
        {group_0, [parallel], [
            'CastableAs001',
            'CastableAs002',
            'CastableAs003',
            'CastableAs004',
            'CastableAs005',
            'CastableAs006',
            'CastableAs007',
            'CastableAs008',
            'CastableAs009',
            'CastableAs010',
            'CastableAs011',
            'CastableAs012',
            'CastableAs013',
            'CastableAs014',
            'CastableAs015',
            'CastableAs016',
            'CastableAs017',
            'CastableAs018',
            'CastableAs019',
            'CastableAs020',
            'CastableAs021',
            'CastableAs022',
            'CastableAs023'
        ]},
        {group_1, [parallel], [
            'CastableAs024',
            'CastableAs025',
            'CastableAs026',
            'CastableAs027',
            'CastableAs028',
            'CastableAs029',
            'CastableAs030',
            'CastableAs031',
            'CastableAs032',
            'CastableAs033',
            'CastableAs034',
            'CastableAs035',
            'CastableAs036',
            'CastableAs037',
            'CastableAs038',
            'CastableAs039',
            'CastableAs040',
            'CastableAs041',
            'CastableAs042',
            'CastableAs043',
            'CastableAs044',
            'CastableAs045',
            'CastableAs046',
            'CastableAs047'
        ]},
        {group_2, [parallel], [
            'CastableAs048',
            'CastableAs049',
            'CastableAs050',
            'CastableAs051',
            'CastableAs052',
            'CastableAs053',
            'CastableAs054',
            'CastableAs055',
            'CastableAs056',
            'CastableAs057',
            'CastableAs058',
            'CastableAs059',
            'CastableAs060',
            'CastableAs061',
            'CastableAs062',
            'CastableAs063',
            'CastableAs064',
            'CastableAs065',
            'CastableAs066',
            'CastableAs067',
            'CastableAs068',
            'CastableAs069',
            'CastableAs070',
            'CastableAs071'
        ]},
        {group_3, [parallel], [
            'CastableAs072',
            'CastableAs073',
            'CastableAs074',
            'CastableAs075',
            'CastableAs076',
            'CastableAs077',
            'CastableAs078',
            'CastableAs079',
            'CastableAs080',
            'CastableAs081',
            'CastableAs082',
            'CastableAs083',
            'CastableAs084',
            'CastableAs085',
            'CastableAs086',
            'CastableAs087',
            'CastableAs088',
            'CastableAs089',
            'CastableAs090',
            'CastableAs091',
            'CastableAs092',
            'CastableAs093',
            'CastableAs094',
            'CastableAs095'
        ]},
        {group_4, [parallel], [
            'CastableAs096',
            'CastableAs097',
            'CastableAs098',
            'CastableAs099',
            'CastableAs100',
            'CastableAs101',
            'CastableAs102',
            'CastableAs103',
            'CastableAs104',
            'CastableAs105',
            'CastableAs106',
            'CastableAs107',
            'CastableAs108',
            'CastableAs109',
            'CastableAs110',
            'CastableAs111',
            'CastableAs112',
            'CastableAs113',
            'CastableAs114',
            'CastableAs115',
            'CastableAs116',
            'CastableAs117',
            'CastableAs118',
            'CastableAs119'
        ]},
        {group_5, [parallel], [
            'CastableAs120',
            'CastableAs121',
            'CastableAs122',
            'CastableAs123',
            'CastableAs124',
            'CastableAs125',
            'CastableAs126',
            'CastableAs127',
            'CastableAs128',
            'CastableAs129',
            'CastableAs130',
            'CastableAs131',
            'CastableAs132',
            'CastableAs133',
            'CastableAs134',
            'CastableAs135',
            'CastableAs136',
            'CastableAs137',
            'CastableAs138',
            'CastableAs139',
            'CastableAs140',
            'CastableAs141',
            'CastableAs142',
            'CastableAs143'
        ]},
        {group_6, [parallel], [
            'CastableAs144',
            'CastableAs145',
            'CastableAs146',
            'CastableAs147',
            'CastableAs148',
            'CastableAs149',
            'CastableAs150',
            'CastableAs151',
            'CastableAs152',
            'CastableAs153',
            'CastableAs154',
            'CastableAs155',
            'CastableAs156',
            'CastableAs157',
            'CastableAs158',
            'CastableAs159',
            'CastableAs160',
            'CastableAs161',
            'CastableAs162',
            'CastableAs163',
            'CastableAs164',
            'CastableAs165',
            'CastableAs166',
            'CastableAs167'
        ]},
        {group_7, [parallel], [
            'CastableAs168',
            'CastableAs169',
            'CastableAs170',
            'CastableAs171',
            'CastableAs172',
            'CastableAs173',
            'CastableAs174',
            'CastableAs175',
            'CastableAs176',
            'CastableAs177',
            'CastableAs178',
            'CastableAs179',
            'CastableAs180',
            'CastableAs181',
            'CastableAs182',
            'CastableAs183',
            'CastableAs184',
            'CastableAs185',
            'CastableAs186',
            'CastableAs187',
            'CastableAs188',
            'CastableAs189',
            'CastableAs190',
            'CastableAs191'
        ]},
        {group_8, [parallel], [
            'CastableAs192',
            'CastableAs193',
            'CastableAs194',
            'CastableAs195',
            'CastableAs196',
            'CastableAs197',
            'CastableAs198',
            'CastableAs199',
            'CastableAs200',
            'CastableAs201',
            'CastableAs202',
            'CastableAs203',
            'CastableAs204',
            'CastableAs205',
            'CastableAs206',
            'CastableAs207',
            'CastableAs208',
            'CastableAs209',
            'CastableAs210',
            'CastableAs211',
            'CastableAs212',
            'CastableAs213',
            'CastableAs214',
            'CastableAs215'
        ]},
        {group_9, [parallel], [
            'CastableAs216',
            'CastableAs217',
            'CastableAs218',
            'CastableAs219',
            'CastableAs220',
            'CastableAs221',
            'CastableAs222',
            'CastableAs223',
            'CastableAs224',
            'CastableAs225',
            'CastableAs226',
            'CastableAs227',
            'CastableAs228',
            'CastableAs229',
            'CastableAs230',
            'CastableAs231',
            'CastableAs232',
            'CastableAs233',
            'CastableAs234',
            'CastableAs235',
            'CastableAs236',
            'CastableAs237',
            'CastableAs238',
            'CastableAs239'
        ]},
        {group_10, [parallel], [
            'CastableAs240',
            'CastableAs241',
            'CastableAs242',
            'CastableAs243',
            'CastableAs244',
            'CastableAs245',
            'CastableAs246',
            'CastableAs247',
            'CastableAs248',
            'CastableAs249',
            'CastableAs250',
            'CastableAs251',
            'CastableAs252',
            'CastableAs253',
            'CastableAs254',
            'CastableAs255',
            'CastableAs256',
            'CastableAs257',
            'CastableAs258',
            'CastableAs259',
            'CastableAs260',
            'CastableAs261',
            'CastableAs262',
            'CastableAs263'
        ]},
        {group_11, [parallel], [
            'CastableAs264',
            'CastableAs265',
            'CastableAs266',
            'CastableAs267',
            'CastableAs268',
            'CastableAs269',
            'CastableAs270',
            'CastableAs271',
            'CastableAs272',
            'CastableAs273',
            'CastableAs274',
            'CastableAs275',
            'CastableAs276',
            'CastableAs277',
            'CastableAs278',
            'CastableAs279',
            'CastableAs280',
            'CastableAs281',
            'CastableAs282',
            'CastableAs283',
            'CastableAs284',
            'CastableAs285',
            'CastableAs286',
            'CastableAs287'
        ]},
        {group_12, [parallel], [
            'CastableAs288',
            'CastableAs289',
            'CastableAs290',
            'CastableAs291',
            'CastableAs292',
            'CastableAs293',
            'CastableAs294',
            'CastableAs295',
            'CastableAs296',
            'CastableAs297',
            'CastableAs298',
            'CastableAs299',
            'CastableAs300',
            'CastableAs301',
            'CastableAs302',
            'CastableAs303',
            'CastableAs304',
            'CastableAs305',
            'CastableAs306',
            'CastableAs307',
            'CastableAs308',
            'CastableAs309',
            'CastableAs310',
            'CastableAs311'
        ]},
        {group_13, [parallel], [
            'CastableAs312',
            'CastableAs313',
            'CastableAs314',
            'CastableAs315',
            'CastableAs316',
            'CastableAs317',
            'CastableAs318',
            'CastableAs319',
            'CastableAs320',
            'CastableAs321',
            'CastableAs322',
            'CastableAs323',
            'CastableAs324',
            'CastableAs325',
            'CastableAs326',
            'CastableAs327',
            'CastableAs328',
            'CastableAs329',
            'CastableAs330',
            'CastableAs331',
            'CastableAs332',
            'CastableAs333',
            'CastableAs334',
            'CastableAs335'
        ]},
        {group_14, [parallel], [
            'CastableAs336',
            'CastableAs337',
            'CastableAs338',
            'CastableAs339',
            'CastableAs340',
            'CastableAs341',
            'CastableAs342',
            'CastableAs343',
            'CastableAs344',
            'CastableAs345',
            'CastableAs346',
            'CastableAs347',
            'CastableAs348',
            'CastableAs349',
            'CastableAs350',
            'CastableAs351',
            'CastableAs352',
            'CastableAs353',
            'CastableAs354',
            'CastableAs355',
            'CastableAs356',
            'CastableAs357',
            'CastableAs358',
            'CastableAs359'
        ]},
        {group_15, [parallel], [
            'CastableAs360',
            'CastableAs361',
            'CastableAs362',
            'CastableAs363',
            'CastableAs364',
            'CastableAs365',
            'CastableAs366',
            'CastableAs367',
            'CastableAs368',
            'CastableAs369',
            'CastableAs370',
            'CastableAs371',
            'CastableAs372',
            'CastableAs373',
            'CastableAs374',
            'CastableAs375',
            'CastableAs376',
            'CastableAs377',
            'CastableAs378',
            'CastableAs379',
            'CastableAs380',
            'CastableAs381',
            'CastableAs382',
            'CastableAs383'
        ]},
        {group_16, [parallel], [
            'CastableAs384',
            'CastableAs385',
            'CastableAs386',
            'CastableAs387',
            'CastableAs388',
            'CastableAs389',
            'CastableAs390',
            'CastableAs391',
            'CastableAs392',
            'CastableAs393',
            'CastableAs394',
            'CastableAs395',
            'CastableAs396',
            'CastableAs397',
            'CastableAs398',
            'CastableAs399',
            'CastableAs400',
            'CastableAs401',
            'CastableAs402',
            'CastableAs403',
            'CastableAs404',
            'CastableAs405',
            'CastableAs406',
            'CastableAs407'
        ]},
        {group_17, [parallel], [
            'CastableAs408',
            'CastableAs409',
            'CastableAs410',
            'CastableAs411',
            'CastableAs412',
            'CastableAs413',
            'CastableAs414',
            'CastableAs415',
            'CastableAs416',
            'CastableAs417',
            'CastableAs418',
            'CastableAs419',
            'CastableAs420',
            'CastableAs421',
            'CastableAs422',
            'CastableAs423',
            'CastableAs424',
            'CastableAs425',
            'CastableAs426',
            'CastableAs427',
            'CastableAs428',
            'CastableAs429',
            'CastableAs430',
            'CastableAs431'
        ]},
        {group_18, [parallel], [
            'CastableAs432',
            'CastableAs433',
            'CastableAs434',
            'CastableAs435',
            'CastableAs436',
            'CastableAs437',
            'CastableAs438',
            'CastableAs439',
            'CastableAs440',
            'CastableAs441',
            'CastableAs442',
            'CastableAs443',
            'CastableAs444',
            'CastableAs445',
            'CastableAs446',
            'CastableAs447',
            'CastableAs448',
            'CastableAs449',
            'CastableAs450',
            'CastableAs451',
            'CastableAs452',
            'CastableAs453',
            'CastableAs454',
            'CastableAs455'
        ]},
        {group_19, [parallel], [
            'CastableAs456',
            'CastableAs457',
            'CastableAs458',
            'CastableAs459',
            'CastableAs460',
            'CastableAs461',
            'CastableAs462',
            'CastableAs463',
            'CastableAs464',
            'CastableAs465',
            'CastableAs466',
            'CastableAs467',
            'CastableAs468',
            'CastableAs469',
            'CastableAs470',
            'CastableAs471',
            'CastableAs472',
            'CastableAs473',
            'CastableAs474',
            'CastableAs475',
            'CastableAs476',
            'CastableAs477',
            'CastableAs478',
            'CastableAs479'
        ]},
        {group_20, [parallel], [
            'CastableAs480',
            'CastableAs481',
            'CastableAs482',
            'CastableAs483',
            'CastableAs484',
            'CastableAs485',
            'CastableAs486',
            'CastableAs487',
            'CastableAs488',
            'CastableAs489',
            'CastableAs490',
            'CastableAs491',
            'CastableAs492',
            'CastableAs493',
            'CastableAs494',
            'CastableAs495',
            'CastableAs496',
            'CastableAs497',
            'CastableAs498',
            'CastableAs499',
            'CastableAs500',
            'CastableAs501',
            'CastableAs502',
            'CastableAs503'
        ]},
        {group_21, [parallel], [
            'CastableAs504',
            'CastableAs505',
            'CastableAs506',
            'CastableAs507',
            'CastableAs508',
            'CastableAs509',
            'CastableAs510',
            'CastableAs511',
            'CastableAs512',
            'CastableAs513',
            'CastableAs514',
            'CastableAs515',
            'CastableAs516',
            'CastableAs517',
            'CastableAs518',
            'CastableAs519',
            'CastableAs520',
            'CastableAs521',
            'CastableAs522',
            'CastableAs523',
            'CastableAs524',
            'CastableAs525',
            'CastableAs526',
            'CastableAs527'
        ]},
        {group_22, [parallel], [
            'CastableAs528',
            'CastableAs529',
            'CastableAs530',
            'CastableAs531',
            'CastableAs532',
            'CastableAs533',
            'CastableAs534',
            'CastableAs535',
            'CastableAs536',
            'CastableAs537',
            'CastableAs538',
            'CastableAs539',
            'CastableAs540',
            'CastableAs541',
            'CastableAs542',
            'CastableAs543',
            'CastableAs544',
            'CastableAs545',
            'CastableAs546',
            'CastableAs547',
            'CastableAs548',
            'CastableAs549',
            'CastableAs550',
            'CastableAs551'
        ]},
        {group_23, [parallel], [
            'CastableAs552',
            'CastableAs553',
            'CastableAs554',
            'CastableAs555',
            'CastableAs556',
            'CastableAs557',
            'CastableAs558',
            'CastableAs559',
            'CastableAs560',
            'CastableAs561',
            'CastableAs562',
            'CastableAs563',
            'CastableAs564',
            'CastableAs565',
            'CastableAs566',
            'CastableAs567',
            'CastableAs568',
            'CastableAs569',
            'CastableAs570',
            'CastableAs571',
            'CastableAs572',
            'CastableAs573',
            'CastableAs574',
            'CastableAs575'
        ]},
        {group_24, [parallel], [
            'CastableAs576',
            'CastableAs577',
            'CastableAs578',
            'CastableAs579',
            'CastableAs580',
            'CastableAs581',
            'CastableAs582',
            'CastableAs583',
            'CastableAs584',
            'CastableAs585',
            'CastableAs586',
            'CastableAs587',
            'CastableAs588',
            'CastableAs589',
            'CastableAs590',
            'CastableAs591',
            'CastableAs592',
            'CastableAs593',
            'CastableAs594',
            'CastableAs595',
            'CastableAs596',
            'CastableAs597',
            'CastableAs598',
            'CastableAs599'
        ]},
        {group_25, [parallel], [
            'CastableAs600',
            'CastableAs601',
            'CastableAs602',
            'CastableAs603',
            'CastableAs604',
            'CastableAs605',
            'CastableAs606',
            'CastableAs607',
            'CastableAs608',
            'CastableAs609',
            'CastableAs610',
            'CastableAs611',
            'CastableAs612',
            'CastableAs613',
            'CastableAs614',
            'CastableAs615',
            'CastableAs616',
            'CastableAs617',
            'CastableAs618',
            'CastableAs619',
            'CastableAs620',
            'CastableAs621',
            'CastableAs622',
            'CastableAs623'
        ]},
        {group_26, [parallel], [
            'CastableAs624',
            'CastableAs625',
            'CastableAs626',
            'CastableAs627',
            'CastableAs628',
            'CastableAs629',
            'CastableAs630',
            'CastableAs631',
            'CastableAs632',
            'CastableAs633',
            'CastableAs634',
            'CastableAs635',
            'CastableAs636',
            'CastableAs637',
            'CastableAs638',
            'CastableAs639',
            'CastableAs640',
            'CastableAs641',
            'CastableAs642',
            'CastableAs643',
            'CastableAs644',
            'CastableAs645',
            'CastableAs646',
            'CastableAs647'
        ]},
        {group_27, [parallel], [
            'CastableAs648',
            'CastableAs648a',
            'CastableAs649',
            'CastableAs650',
            'CastableAs651',
            'CastableAs652',
            'CastableAs653',
            'CastableAs654',
            'CastableAs655',
            'CastableAs656',
            'CastableAs657',
            'CastableAs658',
            'CastableAs659',
            'CastableAs660',
            'CastableAs661',
            'CastableAs662',
            'K-SeqExprCastable-1',
            'K-SeqExprCastable-2',
            'K-SeqExprCastable-3',
            'K-SeqExprCastable-4',
            'K-SeqExprCastable-4a',
            'K-SeqExprCastable-5',
            'K-SeqExprCastable-5a',
            'K-SeqExprCastable-6'
        ]},
        {group_28, [parallel], [
            'K-SeqExprCastable-6a',
            'K-SeqExprCastable-7',
            'K-SeqExprCastable-8',
            'K-SeqExprCastable-9',
            'K-SeqExprCastable-10',
            'K-SeqExprCastable-11',
            'K-SeqExprCastable-12',
            'K-SeqExprCastable-12a',
            'K-SeqExprCastable-13',
            'K-SeqExprCastable-13a',
            'K-SeqExprCastable-14',
            'K-SeqExprCastable-15',
            'K-SeqExprCastable-16',
            'K-SeqExprCastable-17',
            'K-SeqExprCastable-18',
            'K-SeqExprCastable-19',
            'K-SeqExprCastable-20',
            'K-SeqExprCastable-21',
            'K-SeqExprCastable-22',
            'K-SeqExprCastable-23',
            'K-SeqExprCastable-24',
            'K-SeqExprCastable-25',
            'K-SeqExprCastable-26',
            'K-SeqExprCastable-27'
        ]},
        {group_29, [parallel], [
            'K-SeqExprCastable-28',
            'K-SeqExprCastable-29',
            'K-SeqExprCastable-30',
            'K-SeqExprCastable-31',
            'K-SeqExprCastable-32',
            'K-SeqExprCastable-33',
            'K-SeqExprCastable-34',
            'K-SeqExprCastable-35',
            'K-SeqExprCastable-36',
            'K-SeqExprCastable-37',
            'K-SeqExprCastable-38',
            'K2-SeqExprCastable-1',
            'K2-SeqExprCastable-2',
            'K2-SeqExprCastable-3',
            'K2-SeqExprCastable-4',
            'K2-SeqExprCastable-5',
            'K2-SeqExprCastable-6',
            'K2-SeqExprCastable-7',
            'K2-SeqExprCastable-8',
            'Castable-UnionType-1',
            'Castable-UnionType-2',
            'Castable-UnionType-3',
            'Castable-UnionType-4',
            'Castable-UnionType-5'
        ]},
        {group_30, [parallel], [
            'Castable-UnionType-6',
            'Castable-UnionType-7',
            'Castable-UnionType-8',
            'Castable-UnionType-9',
            'Castable-UnionType-10',
            'Castable-UnionType-11',
            'Castable-UnionType-12',
            'Castable-UnionType-13',
            'Castable-UnionType-14',
            'Castable-UnionType-15',
            'Castable-UnionType-16',
            'Castable-UnionType-17',
            'Castable-UnionType-18',
            'Castable-UnionType-19',
            'Castable-UnionType-20',
            'Castable-UnionType-21',
            'Castable-UnionType-22',
            'Castable-UnionType-23',
            'Castable-UnionType-24',
            'Castable-UnionType-25',
            'Castable-UnionType-26',
            'Castable-UnionType-36',
            'Castable-UnionType-37',
            'Castable-UnionType-38'
        ]},
        {group_31, [parallel], [
            'Castable-ListType-2',
            'Castable-ListType-3',
            'Castable-ListType-4',
            'Castable-ListType-5',
            'Castable-ListType-6',
            'Castable-ListType-7',
            'Castable-ListType-8',
            'Castable-ListType-9',
            'Castable-ListType-10',
            'Castable-ListType-11',
            'Castable-ListType-12',
            'Castable-ListType-13',
            'Castable-ListType-14',
            'Castable-ListType-15',
            'Castable-ListType-16',
            'Castable-ListType-17',
            'Castable-ListType-18',
            'Castable-ListType-19',
            'cbcl-castable-byte-001',
            'cbcl-castable-byte-002',
            'cbcl-castable-byte-003',
            'cbcl-castable-byte-004',
            'cbcl-castable-date-001',
            'cbcl-castable-date-002'
        ]},
        {group_32, [parallel], [
            'cbcl-castable-dateTime-001',
            'cbcl-castable-dateTime-002',
            'cbcl-castable-dayTimeDuration-001',
            'cbcl-castable-dayTimeDuration-002',
            'cbcl-castable-decimal-001',
            'cbcl-castable-decimal-002',
            'cbcl-castable-decimal-003',
            'cbcl-castable-decimal-004',
            'cbcl-castable-decimal-005',
            'cbcl-castable-decimal-006',
            'cbcl-castable-decimal-007',
            'cbcl-castable-decimal-008',
            'cbcl-castable-decimal-009',
            'cbcl-castable-decimal-010',
            'cbcl-castable-duration-001',
            'cbcl-castable-duration-002',
            'cbcl-castable-int-001',
            'cbcl-castable-int-002',
            'cbcl-castable-int-003',
            'cbcl-castable-int-004',
            'cbcl-castable-integer-001',
            'cbcl-castable-integer-002',
            'cbcl-castable-integer-003',
            'cbcl-castable-integer-004'
        ]},
        {group_33, [parallel], [
            'cbcl-castable-language-001',
            'cbcl-castable-language-002',
            'cbcl-castable-language-003',
            'cbcl-castable-language-004',
            'cbcl-castable-long-001',
            'cbcl-castable-long-002',
            'cbcl-castable-long-003',
            'cbcl-castable-long-004',
            'cbcl-castable-name-001',
            'cbcl-castable-name-002',
            'cbcl-castable-name-003',
            'cbcl-castable-name-004',
            'cbcl-castable-ncname-001',
            'cbcl-castable-ncname-002',
            'cbcl-castable-ncname-003',
            'cbcl-castable-ncname-004',
            'cbcl-castable-negativeInteger-001',
            'cbcl-castable-negativeInteger-002',
            'cbcl-castable-nmtoken-001',
            'cbcl-castable-nmtoken-002',
            'cbcl-castable-nmtoken-002b',
            'cbcl-castable-nonNegativeInteger-001',
            'cbcl-castable-nonNegativeInteger-002',
            'cbcl-castable-nonPositiveInteger-001'
        ]},
        {group_34, [parallel], [
            'cbcl-castable-nonPositiveInteger-002',
            'cbcl-castable-positiveInteger-001',
            'cbcl-castable-positiveInteger-002',
            'cbcl-castable-short-001',
            'cbcl-castable-short-002',
            'cbcl-castable-short-003',
            'cbcl-castable-short-004',
            'cbcl-castable-unsignedByte-001',
            'cbcl-castable-unsignedByte-002',
            'cbcl-castable-unsignedByte-003',
            'cbcl-castable-unsignedByte-004',
            'cbcl-castable-unsignedInt-001',
            'cbcl-castable-unsignedInt-002',
            'cbcl-castable-unsignedInt-003',
            'cbcl-castable-unsignedInt-004',
            'cbcl-castable-unsignedLong-001',
            'cbcl-castable-unsignedLong-002',
            'cbcl-castable-unsignedLong-003',
            'cbcl-castable-unsignedLong-004',
            'cbcl-castable-unsignedShort-001',
            'cbcl-castable-unsignedShort-002',
            'cbcl-castable-unsignedShort-003',
            'cbcl-castable-unsignedShort-004',
            'cbcl-castable-yearMonthDuration-001'
        ]},
        {group_35, [parallel], [
            'cbcl-castable-yearMonthDuration-002',
            'cbcl-castable-nonNegativeInteger-003',
            'cbcl-castable-nonPositiveInteger-003',
            'cbcl-castable-unsignedByte-005',
            'cbcl-castable-unsignedInt-005',
            'cbcl-castable-unsignedLong-005',
            'cbcl-castable-unsignedShort-005',
            'cbcl-castable-gYear-001',
            'cbcl-castable-gYearMonth-001',
            'cbcl-castable-gYearMonth-002',
            'cbcl-castable-gYear-002',
            'cbcl-castable-gYear-003',
            'cbcl-castable-gYearMonth-003',
            'cbcl-castable-gYearMonth-004',
            'cbcl-castable-ENTITIES-001',
            'cbcl-castable-ENTITIES-002',
            'cbcl-castable-ENTITIES-003',
            'cbcl-castable-ENTITIES-004',
            'cbcl-castable-ENTITIES-005',
            'cbcl-castable-ENTITIES-006',
            'cbcl-castable-ENTITIES-007',
            'cbcl-castable-ENTITIES-008',
            'cbcl-castable-ENTITIES-009',
            'cbcl-castable-ENTITIES-010'
        ]},
        {group_36, [parallel], [
            'cbcl-castable-ENTITIES-011',
            'cbcl-castable-ENTITIES-012',
            'cbcl-castable-ENTITIES-013',
            'cbcl-castable-ENTITIES-014',
            'cbcl-castable-ENTITIES-015',
            'cbcl-castable-ENTITIES-016',
            'cbcl-castable-ENTITIES-017',
            'cbcl-castable-ENTITIES-018',
            'cbcl-castable-ENTITIES-019',
            'cbcl-castable-ENTITIES-020',
            'cbcl-castable-NMTOKENS-001',
            'cbcl-castable-NMTOKENS-002',
            'cbcl-castable-NMTOKENS-003',
            'cbcl-castable-NMTOKENS-004',
            'cbcl-castable-NMTOKENS-005',
            'cbcl-castable-NMTOKENS-006',
            'cbcl-castable-NMTOKENS-007',
            'cbcl-castable-NMTOKENS-008',
            'cbcl-castable-NMTOKENS-009',
            'cbcl-castable-NMTOKENS-010',
            'cbcl-castable-NMTOKENS-011',
            'cbcl-castable-NMTOKENS-012',
            'cbcl-castable-NMTOKENS-013',
            'cbcl-castable-NMTOKENS-014'
        ]},
        {group_37, [parallel], [
            'cbcl-castable-NMTOKENS-015',
            'cbcl-castable-NMTOKENS-016',
            'cbcl-castable-NMTOKENS-017',
            'cbcl-castable-NMTOKENS-018',
            'cbcl-castable-NMTOKENS-019',
            'cbcl-castable-NMTOKENS-020',
            'cbcl-castable-IDREFS-001',
            'cbcl-castable-IDREFS-002',
            'cbcl-castable-IDREFS-003',
            'cbcl-castable-IDREFS-004',
            'cbcl-castable-IDREFS-005',
            'cbcl-castable-IDREFS-006',
            'cbcl-castable-IDREFS-007',
            'cbcl-castable-IDREFS-008',
            'cbcl-castable-IDREFS-009',
            'cbcl-castable-IDREFS-010',
            'cbcl-castable-IDREFS-011',
            'cbcl-castable-IDREFS-012',
            'cbcl-castable-IDREFS-013',
            'cbcl-castable-IDREFS-014',
            'cbcl-castable-IDREFS-015',
            'cbcl-castable-IDREFS-016',
            'cbcl-castable-IDREFS-017',
            'cbcl-castable-IDREFS-018'
        ]},
        {group_38, [parallel], [
            'cbcl-castable-IDREFS-019',
            'cbcl-castable-IDREFS-020',
            'cbcl-castable-impure-001',
            'cbcl-castable-impure-002',
            'cbcl-castable-impure-003',
            'cbcl-castable-impure-004',
            'cbcl-castable-impure-005',
            'cbcl-castable-impure-006',
            'cbcl-castable-impure-007',
            'cbcl-castable-impure-008',
            'cbcl-castable-impure-009',
            'cbcl-castable-impure-010',
            'cbcl-castable-impure-011',
            'cbcl-castable-impure-012',
            'cbcl-castable-impure-013',
            'cbcl-castable-impure-014',
            'cbcl-castable-impure-015',
            'cbcl-castable-impure-016',
            'cbcl-castable-impure-017',
            'cbcl-castable-impure-018',
            'cbcl-castable-impure-019',
            'cbcl-castable-impure-020',
            'cbcl-castable-restricted-union-001',
            'cbcl-castable-restricted-union-002'
        ]},
        {group_39, [parallel], [
            'cbcl-castable-restricted-union-003',
            'cbcl-castable-restricted-union-004',
            'cbcl-castable-restricted-union-005',
            'cbcl-castable-restricted-union-006',
            'cbcl-castable-restricted-union-007',
            'cbcl-castable-restricted-union-008',
            'cbcl-castable-restricted-union-009',
            'cbcl-castable-restricted-union-010',
            'cbcl-castable-restricted-union-011',
            'cbcl-castable-restricted-union-012',
            'cbcl-castable-restricted-union-013',
            'cbcl-castable-restricted-union-014',
            'cbcl-castable-restricted-union-015',
            'cbcl-castable-restricted-union-016',
            'cbcl-castable-restricted-union-017',
            'cbcl-castable-restricted-union-018',
            'cbcl-castable-restricted-union-019',
            'cbcl-castable-restricted-union-020'
        ]}
    ].

environment('union-List-defined-Types', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "SchemaImport/unionListDefined.xsd"),
                "http://www.w3.org/XQueryTest/unionListDefined"}
        ]},
        {resources, []},
        {modules, []}
    ];
environment('acme_corp', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, [{filename:join(__BaseDir, "../op/union/acme_corp.xml"), ".", []}]},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, []},
        {resources, []},
        {modules, []}
    ];
environment('derived', __BaseDir) ->
    [
        {'decimal-formats', []},
        {sources, []},
        {collections, []},
        {'static-base-uri', []},
        {params, []},
        {vars, []},
        {namespaces, []},
        {schemas, [
            {filename:join(__BaseDir, "CastExpr/derived.xsd"),
                "http://www.w3.org/XQueryTest/derivedTypes"}
        ]},
        {resources, []},
        {modules, []}
    ].

'CastableAs001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"INF\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs001.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"0.0E0\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs002.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs003.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"INF\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs004.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"0.0E0\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs005.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs006.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-0.0E0\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs007.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"NaN\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs008.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1e-5\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs009.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-10000000\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs010.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs011.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-0.0E0\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs012.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"NaN\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs013.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1e-5\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs014.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-10000000\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs015.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs016.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-0.0E0\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs017.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"NaN\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs018.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1e-5\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs019.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"5.5432\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs020.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs021'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs021.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs022'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-0.0E0\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs022.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs023'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"NaN\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs023.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs024'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1e-5\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs024.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs025'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-1.1234\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs025.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs026'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs026.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs027'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"P1Y2M3DT10H30M23S\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs027.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs028'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-P1Y1M1DT1H1M1.123S\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs028.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs029'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs029.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs030'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-P1Y1M1DT1H1M1.123S\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs030.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs031'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"P24M\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs031.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs032'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-P21M\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs032.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs033'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs033.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs034'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-P1Y1M1DT1H1M1.123S\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs034.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs035'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"P3DT10H30M\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs035.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs036'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-PT100M\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs036.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs037'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs037.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs038'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1999-05-31T13:20:00\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs038.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs039'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-1999-05-31T13:20:00+14:00\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs039.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs040'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"2000-01-16T00:00:00Z\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs040.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs041'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs041.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs042'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"13:20:00-05:00\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs042.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs043'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"13:20:02.123\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs043.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs044'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"13:20:00Z\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs044.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs045'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs045.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs046'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1999-05-31\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs046.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs047'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-0012-12-03-05:00\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs047.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs048'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1999-05-31Z\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs048.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs049'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs049.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs050'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1999-05\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs050.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs051'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-0012-12-05:00\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs051.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs052'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1999-05Z\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs052.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs053'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs053.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs054'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1999\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs054.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs055'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"-0012-05:00\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs055.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs056'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"1999Z\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs056.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs057'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs057.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs058'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"--05-31\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs058.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs059'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"--05-31+14:00\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs059.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs060'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"--05-31Z\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs060.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs061'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs061.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs062'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"---31\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs062.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs063'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"---03-05:00\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs063.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs064'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"---31Z\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs064.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs065'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs065.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs066'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"--05\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs066.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs067'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"--12-05:00\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs067.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs068'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"--05Z\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs068.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs069'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs069.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs070'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"0.0\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs070.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs071'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"0\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs071.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs072'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs072.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs073'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs073.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs074'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"00000000\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs074.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs075'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"D74D35D35D35\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs075.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs076'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs076.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs077'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"010010101\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs077.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs078'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"0fb7\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs078.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs079'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"D74D35D35D35\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs079.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs080'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"http://www.example.com/~b%C3%A9b%C3%A9\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs080.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs081'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"true\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs081.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs082'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs082.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs083'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"INF\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs083.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs084'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"0.0E0\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs084.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs085'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs085.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs086'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"INF\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs086.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs087'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"0.0E0\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs087.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs088'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs088.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs089'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-0.0E0\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs089.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs090'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"NaN\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs090.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs091'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1e-5\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs091.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs092'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-10000000\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs092.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs093'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs093.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs094'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-0.0E0\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs094.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs095'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"NaN\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs095.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs096'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1e-5\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs096.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs097'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-10000000\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs097.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs098'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs098.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs099'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-0.0E0\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs099.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs100'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"NaN\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs100.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs101'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1e-5\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs101.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs102'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"5.5432\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs102.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs103'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs103.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs104'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-0.0E0\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs104.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs105'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"NaN\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs105.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs106'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1e-5\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs106.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs107'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-1.1234\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs107.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs108'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs108.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs109'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"P1Y2M3DT10H30M23S\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs109.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs110'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-P1Y1M1DT1H1M1.123S\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs110.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs111'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs111.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs112'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-P1Y1M1DT1H1M1.123S\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs112.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs113'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"P24M\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs113.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs114'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-P21M\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs114.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs115'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs115.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs116'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-P1Y1M1DT1H1M1.123S\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs116.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs117'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"P3DT10H30M\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs117.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs118'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-PT100M\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs118.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs119'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs119.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs120'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1999-05-31T13:20:00\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs120.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs121'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-1999-05-31T13:20:00+14:00\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs121.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs122'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"2000-01-16T00:00:00Z\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs122.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs123'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs123.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs124'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"13:20:00-05:00\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs124.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs125'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"13:20:02.123\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs125.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs126'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"13:20:00Z\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs126.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs127'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs127.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs128'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1999-05-31\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs128.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs129'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-0012-12-03-05:00\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs129.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs130'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1999-05-31Z\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs130.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs131'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs131.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs132'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1999-05\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs132.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs133'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-0012-12-05:00\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs133.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs134'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1999-05Z\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs134.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs135'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs135.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs136'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1999\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs136.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs137'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"-0012-05:00\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs137.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs138'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"1999Z\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs138.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs139'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs139.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs140'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"--05-31\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs140.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs141'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"--05-31+14:00\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs141.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs142'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"--05-31Z\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs142.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs143'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs143.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs144'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"---31\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs144.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs145'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"---03-05:00\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs145.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs146'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"---31Z\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs146.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs147'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs147.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs148'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"--05\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs148.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs149'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"--12-05:00\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs149.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs150'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"--05Z\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs150.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs151'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs151.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs152'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"0.0\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs152.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs153'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"0\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs153.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs154'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs154.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs155'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs155.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs156'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"00000000\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs156.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs157'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"D74D35D35D35\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs157.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs158'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs158.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs159'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"010010101\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs159.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs160'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"0fb7\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs160.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs161'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"D74D35D35D35\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs161.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs162'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"http://www.example.com/~b%C3%A9b%C3%A9\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs162.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs163'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"true\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs163.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs164'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:string(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs164.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs165'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"1e5\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs165.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs166'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-INF\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs166.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs167'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-0.0E0\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs167.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs168'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"NaN\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs168.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs169'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs169.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs170'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-1.75e-3\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs170.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs171'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"INF\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs171.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs172'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-0.0E0\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs172.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs173'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-INF\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs173.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs174'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-0.0E0\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs174.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs175'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs175.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs176'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"1e5\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs176.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs177'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-1.75e-3\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs177.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs178'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-0.0E0\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs178.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs179'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"1e5\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs179.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs180'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"INF\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs180.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs181'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-1.75e-3\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs181.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs182'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs182.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs183'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs183.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs184'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs184.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs185'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs185.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs186'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs186.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs187'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs187.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs188'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs188.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs189'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs189.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs190'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs190.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs191'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs191.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs192'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-0.0E0\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs192.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs193'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"1e5\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs193.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs194'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"-INF\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs194.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs195'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"NaN\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs195.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs196'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs196.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs197'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs197.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs198'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(\"5.4321E-100\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs198.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs199'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs199.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs200'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"INF\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs200.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs201'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e8\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs201.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs202'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"INF\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs202.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs203'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"-0.0E0\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs203.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs204'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"5.4321E-1001\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs204.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs205'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs205.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs206'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"-1.75e-3\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs206.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs207'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"NaN\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs207.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs208'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs208.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs209'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"INF\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs209.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs210'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"-0.0E0\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs210.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs211'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"5.4321E-1001\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs211.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs212'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"-1.75e-3\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs212.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs213'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"INF\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs213.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs214'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"-0.0E0\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs214.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs215'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs215.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs216'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"-1.75e-3\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs216.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs217'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"INF\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs217.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs218'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"NaN\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs218.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs219'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs219.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs220'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs220.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs221'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs221.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs222'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs222.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs223'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs223.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs224'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs224.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs225'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs225.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs226'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs226.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs227'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs227.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs228'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs228.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs229'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs229.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs230'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs230.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs231'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs231.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs232'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs232.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs233'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double(\"1e5\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs233.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs234'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs234.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs235'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs235.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs236'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs236.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs237'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs237.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs238'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs238.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs239'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs239.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs240'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"5.5432\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs240.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs241'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs241.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs242'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs242.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs243'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs243.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs244'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs244.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs245'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs245.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs246'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs246.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs247'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs247.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs248'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs248.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs249'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs249.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs250'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs250.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs251'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs251.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs252'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs252.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs253'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs253.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs254'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs254.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs255'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:decimal(\"-1.1234\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs255.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs256'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"1\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs256.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs257'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs257.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs258'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs258.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs259'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs259.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs260'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs260.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs261'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs261.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs262'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs262.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs263'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs263.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs264'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs264.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs265'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs265.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs266'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs266.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs267'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs267.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs268'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs268.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs269'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs269.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs270'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs270.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs271'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs271.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs272'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs272.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs273'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs273.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs274'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs274.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs275'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs275.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs276'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:integer(\"-100\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs276.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs277'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs277.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs278'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs278.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs279'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs279.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs280'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs280.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs281'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs281.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs282'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs282.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs283'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs283.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs284'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"PT10H\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs284.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs285'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs285.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs286'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"PT10H\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs286.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs287'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P24M\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs287.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs288'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs288.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs289'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"PT10H\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs289.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs290'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P24M\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs290.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs291'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs291.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs292'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs292.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs293'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs293.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs294'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs294.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs295'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs295.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs296'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs296.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs297'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs297.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs298'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs298.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs299'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs299.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs300'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs300.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs301'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs301.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs302'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:duration(\"P1Y2M3DT10H30M23S\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs302.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs303'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs303.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs304'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs304.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs305'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs305.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs306'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs306.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs307'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs307.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs308'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs308.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs309'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs309.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs310'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs310.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs311'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"-P21M\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs311.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs312'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs312.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs313'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs313.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs314'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs314.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs315'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs315.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs316'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs316.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs317'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs317.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs318'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs318.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs319'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs319.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs320'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs320.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs321'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs321.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs322'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs322.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs323'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs323.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs324'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:yearMonthDuration(\"P1Y2M\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs324.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs325'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs325.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs326'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"-PT100M\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs326.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs327'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs327.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs328'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"-PT100M\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs328.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs329'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs329.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs330'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs330.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs331'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs331.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs332'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs332.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs333'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs333.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs334'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"PT24H\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs334.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs335'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"-PT100M\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs335.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs336'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs336.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs337'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs337.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs338'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P14D\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs338.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs339'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"-PT100M\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs339.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs340'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs340.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs341'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs341.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs342'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs342.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs343'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs343.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs344'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs344.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs345'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs345.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs346'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs346.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs347'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs347.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs348'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs348.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs349'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs349.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs350'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs350.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs351'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dayTimeDuration(\"P3DT10H30M\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs351.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs352'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs352.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs353'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs353.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs354'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs354.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs355'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs355.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs356'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs356.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs357'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"2000-01-16T00:00:00Z\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs357.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs358'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs358.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs359'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs359.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs360'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs360.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs361'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs361.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs362'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs362.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs363'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs363.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs364'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs364.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs365'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs365.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs366'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs366.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs367'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs367.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs368'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs368.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs369'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs369.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs370'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs370.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs371'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs371.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs372'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs372.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs373'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs373.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs374'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs374.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs375'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs375.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs376'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs376.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs377'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"-1999-05-31T13:20:00+14:00\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs377.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs378'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs378.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs379'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs379.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs380'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs380.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs381'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:dateTime(\"1999-05-31T13:20:00\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs381.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs382'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs382.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs383'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs383.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs384'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs384.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs385'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs385.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs386'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs386.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs387'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs387.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs388'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs388.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs389'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs389.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs390'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs390.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs391'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs391.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs392'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs392.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs393'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:02.123\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs393.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs394'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00Z\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs394.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs395'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs395.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs396'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs396.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs397'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs397.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs398'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs398.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs399'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs399.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs400'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs400.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs401'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs401.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs402'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs402.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs403'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs403.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs404'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:time(\"13:20:00-05:00\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs404.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs405'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs405.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs406'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs406.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "FODT0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs407'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs407.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs408'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs408.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FODT0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs409'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs409.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs410'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs410.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs411'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31Z\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs411.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs412'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs412.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs413'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs413.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs414'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs414.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs415'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs415.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs416'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs416.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs417'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs417.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs418'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs418.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs419'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs419.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FODT0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs420'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31Z\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs420.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs421'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs421.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs422'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs422.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs423'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs423.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FODT0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs424'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31Z\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs424.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs425'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs425.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs426'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs426.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FODT0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs427'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31Z\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs427.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs428'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31Z\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs428.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs429'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"-0012-12-03-05:00\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs429.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FODT0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FODT0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs430'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31Z\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs430.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs431'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs431.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs432'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs432.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs433'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs433.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs434'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:date(\"1999-05-31\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs434.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs435'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs435.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs436'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs436.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs437'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs437.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs438'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs438.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs439'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs439.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs440'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs440.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs441'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs441.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs442'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs442.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs443'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs443.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs444'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs444.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs445'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs445.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs446'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs446.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs447'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs447.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs448'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs448.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs449'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"-0012-12-05:00\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs449.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs450'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs450.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs451'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs451.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs452'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs452.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs453'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs453.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs454'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs454.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs455'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs455.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs456'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs456.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs457'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs457.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs458'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYearMonth(\"1999-05Z\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs458.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs459'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs459.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs460'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs460.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs461'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs461.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs462'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs462.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs463'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs463.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs464'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs464.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs465'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs465.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs466'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs466.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs467'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs467.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs468'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs468.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs469'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs469.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs470'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs470.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs471'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs471.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs472'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"-0012-05:00\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs472.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs473'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999Z\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs473.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs474'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs474.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs475'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs475.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs476'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs476.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs477'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs477.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs478'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs478.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs479'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs479.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs480'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gYear(\"1999\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs480.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs481'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs481.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs482'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs482.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs483'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs483.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs484'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs484.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs485'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs485.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs486'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs486.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs487'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs487.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs488'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs488.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs489'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs489.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs490'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs490.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs491'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs491.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs492'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs492.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs493'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs493.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs494'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs494.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs495'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs495.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs496'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--12-03-05:00\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs496.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs497'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31Z\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs497.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs498'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs498.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs499'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs499.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs500'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs500.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs501'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs501.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs502'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs502.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs503'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonthDay(\"--05-31\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs503.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs504'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs504.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs505'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs505.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs506'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs506.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs507'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs507.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs508'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs508.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs509'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs509.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs510'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs510.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs511'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs511.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs512'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs512.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs513'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs513.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs514'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs514.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs515'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs515.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs516'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs516.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs517'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs517.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs518'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs518.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs519'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs519.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs520'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---03-05:00\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs520.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs521'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31Z\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs521.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs522'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs522.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs523'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs523.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs524'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs524.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs525'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs525.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs526'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gDay(\"---31\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs526.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs527'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs527.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs528'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs528.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs529'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs529.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs530'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs530.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs531'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs531.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs532'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs532.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs533'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs533.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs534'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs534.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs535'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs535.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs536'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs536.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs537'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs537.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs538'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs538.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs539'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs539.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs540'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs540.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs541'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs541.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs542'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs542.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs543'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs543.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs544'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--12-05:00\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs544.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs545'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05Z\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs545.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs546'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs546.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs547'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs547.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs548'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs548.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs549'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:gMonth(\"--05\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs549.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs550'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs550.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs551'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs551.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs552'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs552.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs553'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs553.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs554'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs554.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs555'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs555.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs556'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs556.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs557'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs557.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs558'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs558.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs559'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs559.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs560'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs560.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs561'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs561.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs562'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs562.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs563'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs563.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs564'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs564.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs565'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs565.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs566'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs566.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs567'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs567.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs568'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs568.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs569'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs569.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs570'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs570.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs571'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs571.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs572'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"false\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs572.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs573'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs573.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs574'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs574.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs575'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:boolean(\"true\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs575.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs576'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"01001010\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs576.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs577'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"0FB7\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs577.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs578'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"01001010\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs578.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs579'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"0FB7\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs579.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs580'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs580.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs581'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs581.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs582'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs582.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs583'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs583.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs584'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs584.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs585'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs585.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs586'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs586.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs587'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs587.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs588'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs588.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs589'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs589.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs590'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs590.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs591'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs591.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs592'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs592.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs593'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs593.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs594'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs594.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs595'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs595.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs596'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"01001010\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs596.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs597'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"0FB7\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs597.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs598'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"00000000\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs598.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs599'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs599.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs600'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"aA+zZ/09\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs600.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs601'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"0FB7\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs601.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs602'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:base64Binary(\"10010101\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs602.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs603'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs603.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs604'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs604.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs605'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs605.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs606'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs606.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs607'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs607.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs608'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs608.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs609'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs609.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs610'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs610.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs611'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs611.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs612'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs612.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs613'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs613.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs614'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs614.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs615'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs615.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs616'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs616.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs617'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs617.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs618'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs618.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs619'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs619.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs620'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs620.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs621'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs621.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs622'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"0fb7\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs622.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs623'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs623.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs624'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"d74d35d35d35\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs624.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs625'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:hexBinary(\"D74D35D35D35\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs625.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs626'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs626.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs627'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs627.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs628'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs628.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs629'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs629.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs630'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs630.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs631'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs631.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs632'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs632.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs633'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs633.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs634'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs634.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs635'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs635.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs636'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:time",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs636.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs637'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs637.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs638'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs638.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs639'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs639.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs640'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gMonthDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs640.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs641'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gDay",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs641.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs642'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:gMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs642.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs643'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs643.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs644'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:base64Binary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs644.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs645'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:hexBinary",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs645.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs646'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:anyURI(\"http://www.ietf.org/rfc/rfc2396.txt\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs646.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs647'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"ABC\" castable as xs:QName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs647.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs648'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20 XQ10"}.

'CastableAs648a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "let $var := \"ABC\" return $var castable as xs:QName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs648a.xq"), Qry1),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs649'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "count(//employee[salary castable as xs:integer][xs:integer(salary) gt 65000])",
    {Env, Opts} = xqerl_test:handle_environment(environment('acme_corp', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs649.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs650'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "count(//employee[if (salary castable as xs:integer) then xs:integer(salary) gt 65000 else false()])",
    {Env, Opts} = xqerl_test:handle_environment(environment('acme_corp', __BaseDir)),
    Qry1 = lists:flatten(Env ++ Qry),
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(filename:join(__BaseDir, "CastableAs650.xq"), Qry1),
            xqerl:run(Mod, Opts)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_eq(Res, "3") of
            true -> {comment, "Equal"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'CastableAs651'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs652'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs653'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs654'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs655'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs656'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs657'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs658'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs659'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs660'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs661'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'CastableAs662'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'K-SeqExprCastable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as xs:string*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as xs:string+",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(\"one\", \"two\") castable as xs:string+",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0003") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-SeqExprCastable-4a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as xs:anyType*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-4a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQST0052") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0052 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-SeqExprCastable-5a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as xs:anySimpleType",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-5a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0080") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0080 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-SeqExprCastable-6a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as xs:untyped",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-6a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XQST0052") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XQST0052 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as xs:anyAtomicType",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0080") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0080 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"notation is abstract\" castable as xs:NOTATION?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0080") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0080 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() castable as xs:NOTATION?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-9.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0080") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0080 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"notation is abstract\" castable as xs:NOTATION",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-10.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0080") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0080 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() castable as xs:NOTATION",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-11.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "XPST0080") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: XPST0080 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-SeqExprCastable-12a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(xs:double(1), xs:double(2), xs:double(3)) castable as xs:double*",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-12a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0051") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0051 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XQ10"}.

'K-SeqExprCastable-13a'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as item()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-13a.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XQST0052") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XQST0052 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as node()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-14.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0051") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0051 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as attribute()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-15.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0051") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0051 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'string' castable as empty-sequence()",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-16.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_error(Res, "XPST0003") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0003 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "XPST0051") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: XPST0051 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(QName(\"\", \"lname\") castable as xs:integer)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-17.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "QName(\"\", \"lname\") castable as xs:QName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-18.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"ncname\" castable as xs:QName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-19.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(() castable as xs:QName)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-20.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() castable as xs:QName?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-21.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(xs:untypedAtomic(\"ncname\") castable as xs:QName)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-22.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not((\"one\", \"two\") castable as xs:string?)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-23.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not('string' castable as xs:boolean)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-24.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'true' castable as xs:boolean",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-25.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(1) castable as xs:float",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-26.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-27'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(1) castable as xs:untypedAtomic",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-27.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-28'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float(1) castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-28.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-29'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(xs:anyURI(\"example.com/\") castable as xs:integer)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-29.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-30'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(\"three\" castable as xs:float)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-30.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-31'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(\"three\" castable as xs:integer)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-31.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-32'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(\"three\" castable as xs:decimal)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-32.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-33'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(\"three\" castable as xs:double)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-33.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-34'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not((1, 2, 3) castable as xs:integer)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-34.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-35'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not(() castable as xs:integer)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-35.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "() castable as xs:integer?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-36.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1) castable as xs:integer?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-37.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K-SeqExprCastable-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "not((\"one\", \"two\") castable as xs:string?)",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K-SeqExprCastable-38.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqExprCastable-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(QName(\"http://example.com/ANamespace\", \"ncname\"), QName(\"http://example.com/ANamespace\", \"ncname2\"), QName(\"http://example.com/ANamespace\", \"ncname3\")) castable as xs:QName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqExprCastable-1.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqExprCastable-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "(QName(\"http://example.com/ANamespace\", \"ncname\"), QName(\"http://example.com/ANamespace\", \"ncname2\"), QName(\"http://example.com/ANamespace\", \"ncname3\")) castable as xs:QName?",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqExprCastable-2.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqExprCastable-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(1 div 0) castable as xs:string",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqExprCastable-3.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOAR0001") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqExprCastable-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "concat(\"2007-01-3\", 1 div 0) castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqExprCastable-4.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_error(Res, "FOAR0001") of
            true -> {comment, "Correct error"};
            {true, F} -> {comment, "WE: FOAR0001 " ++ binary_to_list(F)};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqExprCastable-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:positiveInteger(\"52\") castable as xs:double",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqExprCastable-5.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqExprCastable-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"%\" castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqExprCastable-6.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqExprCastable-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:untypedAtomic(\"%\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqExprCastable-7.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'K2-SeqExprCastable-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "(\"http:\\\\invalid>URI\\someURI\") castable as xs:anyURI",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "K2-SeqExprCastable-8.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'Castable-UnionType-1'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-20'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-21'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-22'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-23'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-24'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-25'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-26'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-36'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-37'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-UnionType-38'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-2'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-3'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-4'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-5'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-6'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-7'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-8'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-9'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-10'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-11'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-12'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-13'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-14'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-15'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-16'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-17'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-18'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'Castable-ListType-19'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-byte-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "128 castable as xs:byte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-byte-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-byte-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-129 castable as xs:byte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-byte-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-byte-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"128\" castable as xs:byte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-byte-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-byte-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-129\" castable as xs:byte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-byte-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-date-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-25252734927766555-06-06\" castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-date-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-date-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"25252734927766555-07-29\" castable as xs:date",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-date-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-dateTime-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-25252734927766555-06-06T00:00:00Z\" castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-dateTime-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-dateTime-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"25252734927766555-07-29T00:00:00Z\" castable as xs:dateTime",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-dateTime-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-dayTimeDuration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"P11768614336404564651D\" castable as xs:dayTimeDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-dayTimeDuration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-dayTimeDuration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-P11768614336404564651D\" castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-dayTimeDuration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float('NaN') castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float('-INF') castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float('INF') castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double('NaN') castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double('-INF') castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:double('INF') castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-006.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1.7976931348623157E+308 castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-007.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-1.7976931348623157E+308 castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-008.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float('3.402823e38') castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-009.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-decimal-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float('-3.402823e38') castable as xs:decimal",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-decimal-010.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-duration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-P768614336404564651Y\" castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-duration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-duration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"P768614336404564651Y\" castable as xs:duration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-duration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-int-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "2147483648 castable as xs:int",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-int-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-int-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-2147483649 castable as xs:int",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-int-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-int-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"2147483648\" castable as xs:int",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-int-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-int-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-2147483649\" castable as xs:int",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-int-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-integer-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1.7976931348623157E+308 castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-integer-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-integer-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-1.7976931348623157E+308 castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-integer-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-integer-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float('3.402823e38') castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-integer-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-integer-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:float('-3.402823e38') castable as xs:integer",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-integer-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_true(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-language-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:language('en-gb') castable as xs:language",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-language-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-language-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1.0 castable as xs:language",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-language-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-language-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'en-gb' castable as xs:language",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-language-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-language-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"gobbledygook\" castable as xs:language",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-language-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-long-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "9223372036854775808 castable as xs:long",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-long-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOAR0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-long-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-9223372036854775809 castable as xs:long",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-long-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOAR0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-long-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"9223372036854775808\" castable as xs:long",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-long-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-long-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-9223372036854775809\" castable as xs:long",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-long-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-name-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:NCName('NCName') castable as xs:Name",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-name-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-name-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-time() castable as xs:Name",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-name-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-name-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'NCName' castable as xs:Name",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-name-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-name-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'N A M E' castable as xs:Name",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-name-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-ncname-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:ID('id') castable as xs:NCName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-ncname-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-ncname-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "fn:current-time() castable as xs:NCName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-ncname-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-ncname-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'NCName' castable as xs:NCName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-ncname-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-ncname-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "'NC:Name' castable as xs:NCName",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-ncname-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-negativeInteger-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "0 castable as xs:negativeInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-negativeInteger-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-negativeInteger-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"0\" castable as xs:negativeInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-negativeInteger-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-nmtoken-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "xs:NMTOKEN('NMTOKEN') castable as xs:NMTOKEN",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-nmtoken-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-nmtoken-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry =
        "\n"
        "        \"&#xD;&#xA;&#x9; foobar &#xA;&#xD;&#x9;\" castable as xs:NMTOKEN",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-nmtoken-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-nmtoken-002b'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "spec:XP20+"}.

'cbcl-castable-nonNegativeInteger-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-1 castable as xs:nonNegativeInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-nonNegativeInteger-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-nonNegativeInteger-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-1\" castable as xs:nonNegativeInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-nonNegativeInteger-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-nonPositiveInteger-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "1 castable as xs:nonPositiveInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-nonPositiveInteger-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-nonPositiveInteger-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"1\" castable as xs:nonPositiveInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-nonPositiveInteger-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-positiveInteger-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "0 castable as xs:positiveInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-positiveInteger-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-positiveInteger-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"0\" castable as xs:positiveInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-positiveInteger-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-short-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "32768 castable as xs:short",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-short-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-short-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-32769 castable as xs:short",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-short-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-short-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"32769\" castable as xs:short",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-short-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-short-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-32769\" castable as xs:short",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-short-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedByte-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "256 castable as xs:unsignedByte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedByte-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedByte-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-1 castable as xs:unsignedByte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedByte-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedByte-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"256\" castable as xs:unsignedByte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedByte-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedByte-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-1\" castable as xs:unsignedByte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedByte-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedInt-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "4294967296 castable as xs:unsignedInt",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedInt-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedInt-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-1 castable as xs:unsignedInt",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedInt-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedInt-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"4294967296\" castable as xs:unsignedInt",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedInt-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedInt-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-1\" castable as xs:unsignedInt",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedInt-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedLong-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "18446744073709551616 castable as xs:unsignedLong",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedLong-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case
            lists:any(
                fun
                    ({comment, _}) -> true;
                    (_) -> false
                end,
                [
                    case xqerl_test:assert_false(Res) of
                        true -> {comment, "Empty"};
                        {false, F} -> F
                    end,
                    case xqerl_test:assert_error(Res, "FOAR0002") of
                        true -> {comment, "Correct error"};
                        {true, F} -> {comment, "WE: FOAR0002 " ++ binary_to_list(F)};
                        {false, F} -> F
                    end
                ]
            )
        of
            true -> {comment, "any-of"};
            _ -> false
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedLong-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-1 castable as xs:unsignedLong",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedLong-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedLong-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"18446744073709551616\" castable as xs:unsignedLong",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedLong-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedLong-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-1\" castable as xs:unsignedLong",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedLong-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedShort-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "65536 castable as xs:unsignedShort",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedShort-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedShort-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "-1 castable as xs:unsignedShort",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedShort-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedShort-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"65536\" castable as xs:unsignedShort",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedShort-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedShort-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-1\" castable as xs:unsignedShort",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedShort-004.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-yearMonthDuration-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-P768614336404564651Y\" castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-yearMonthDuration-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-yearMonthDuration-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"P768614336404564651Y\" castable as xs:yearMonthDuration",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-yearMonthDuration-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-nonNegativeInteger-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-00\" castable as xs:nonNegativeInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-nonNegativeInteger-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-nonPositiveInteger-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"+00\" castable as xs:nonPositiveInteger",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-nonPositiveInteger-003.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedByte-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-00\" castable as xs:unsignedByte",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedByte-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedInt-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-00\" castable as xs:unsignedInt",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedInt-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedLong-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-00\" castable as xs:unsignedLong",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedLong-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-unsignedShort-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"-00\" castable as xs:unsignedShort",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-unsignedShort-005.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_true(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-gYear-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"99999999999999999999999999999\" castable as xs:gYear",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-gYear-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-gYearMonth-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"99999999999999999999999999999-01\" castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-gYearMonth-001.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-gYearMonth-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    Qry = "\"99999999999999999999999999999-XX\" castable as xs:gYearMonth",
    Qry1 = Qry,
    io:format("Qry1: ~p~n", [Qry1]),
    Res =
        try
            Mod = xqerl_code_server:compile(
                filename:join(__BaseDir, "cbcl-castable-gYearMonth-002.xq"),
                Qry1
            ),
            xqerl:run(Mod)
        of
            D -> D
        catch
            _:E -> E
        end,
    Out =
        case xqerl_test:assert_false(Res) of
            true -> {comment, "Empty"};
            {false, F} -> F
        end,
    case Out of
        {comment, C} -> {comment, C};
        Err -> ct:fail(Err)
    end.

'cbcl-castable-gYear-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.1"}.

'cbcl-castable-gYear-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.1"}.

'cbcl-castable-gYearMonth-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.1"}.

'cbcl-castable-gYearMonth-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "xsd-version:1.1"}.

'cbcl-castable-ENTITIES-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-ENTITIES-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-NMTOKENS-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-IDREFS-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-impure-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-001'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-002'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-003'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-004'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-005'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-006'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-007'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-008'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-009'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-010'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-011'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-012'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-013'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-014'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-015'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-016'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-017'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-018'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-019'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.

'cbcl-castable-restricted-union-020'(Config) ->
    __BaseDir = ?config(base_dir, Config),
    {skip, "feature:schemaImport"}.
