var express = require("express");
var router = express.Router();
const HomeController = require("../controllers/HomeController");
const FacilidadesController = require("../controllers/FacilidadesController");
const RegimentoController = require("../controllers/RegimentoController");



router.get('/',HomeController.index);

//Rotas de Facilidades 
router.get('/facilidades',FacilidadesController.facilidades);
router.get('/quorum',FacilidadesController.lista);
router.post('/list_quorum',FacilidadesController.quorum);
router.get('/usopalavra',FacilidadesController.usopalavra);
//router.post('/list_quorum',FacilidadesController.requerimentos);
//router.post('/list_quorum',FacilidadesController.emendas);

//Rotas de Facilidades Comissões
router.get('/admin/comissao/:id',FacilidadesController.findComissao);
router.post('/admin/comissao/new',FacilidadesController.comissaosave);
router.post('/admin/comissao/list',FacilidadesController.listacomissao);
router.put('/admin/comissao/update',FacilidadesController.updatecomiss);
//router.post('/admin/comissao/save',FacilidadesController.savecomiss);
router.delete('/admin/comissao/delete/:id',FacilidadesController.deletecomiss);

//Rotas de Facilidades Uso da Palavra
router.get('/admin/usopalavra/new',FacilidadesController.newpalavra);
router.post('/admin/usopalavra/new',FacilidadesController.palavrasave);
router.get('/admin/usopalavra/edit',FacilidadesController.editpalavra);
router.post('/admin/usopalavra/update',FacilidadesController.updatepalavra);
router.post('/admin/usopalavra/save',FacilidadesController.savepalavra);
router.post('/admin/usopalavra/delete',FacilidadesController.deletepalavra);

//Rotas de Facilidades Requerimentos
router.get('/admin/requerimento/new',FacilidadesController.newrequerimento);
router.post('/admin/requerimento/new',FacilidadesController.requerimentosave);
router.get('/admin/requerimento/edit',FacilidadesController.editrequerimento);
router.post('/admin/requerimento/update',FacilidadesController.updaterequerimento);
router.post('/admin/requerimento/save',FacilidadesController.saverequerimento);
router.post('/admin/requerimento/delete',FacilidadesController.deleterequerimento);

//Rotas de Facilidades Apresentação de Emenda
router.get('/admin/emenda/new',FacilidadesController.newemenda);
router.post('/admin/emenda/new',FacilidadesController.emendasave);
router.get('/admin/emenda/edit',FacilidadesController.editemenda);
router.post('/admin/emenda/update',FacilidadesController.updateemenda);
router.post('/admin/emenda/save',FacilidadesController.saveemenda);
router.post('/admin/emenda/delete',FacilidadesController.deleteemenda);


//Rotas de Facilidades Recursos

router.get('/admin/recurso/new',FacilidadesController.newrecurso);
router.post('/admin/recurso/new',FacilidadesController.recursosave);
router.get('/admin/recurso/edit',FacilidadesController.editerecurso);
router.post('/admin/recurso/update',FacilidadesController.updaterecurso);
router.post('/admin/recurso/save',FacilidadesController.saverecurso);
router.post('/admin/recurso/delete',FacilidadesController.deleterecurso);


//Rotas Regimento Titulo

router.get('/admin/titulo/:id',RegimentoController.findTitulo);
router.post('/admin/titulo/new',RegimentoController.titulosave);
router.post('/admin/titulo/list',RegimentoController.listatitulo);
router.put('/admin/titulo/update',RegimentoController.updatetiulo);
router.delete('/admin/titulo/delete/:id',RegimentoController.deletetitulo);

//Rotas Regimento Capitulo

router.get('/admin/capitulo/:id',RegimentoController.findcapitulo);
router.post('/admin/capitulo/new',RegimentoController.capitulosave);
router.post('/admin/capitulo/list',RegimentoController.listacapitulo);
router.put('/admin/capitulo/update',RegimentoController.updatecapitulo);
router.delete('/admin/capitulo/delete/:id',RegimentoController.deletecapitulo);

//Rotas Regimento Sessão

router.get('/admin/secao/:id',RegimentoController.findsecao);
router.post('/admin/secao/new',RegimentoController.secaosave);
router.post('/admin/secao/list',RegimentoController.listasecao);
router.put('/admin/secao/update',RegimentoController.updatesecao);
router.delete('/admin/secao/delete/:id',RegimentoController.deletesecao);

//Rotas Regimento Subsessão

//router.get('/admin/subsecao/:id',RegimentoController.findsubSecao);
//router.post('/admin/subsecao/new',RegimentoController.subsecaosave);
router.post('/admin/subsecao/list',RegimentoController.listasubsecao);
router.put('/admin/subsecao/update',RegimentoController.updatesubsecao);
//router.delete('/admin/subsecao/delete',RegimentoController.deletesubsecao);


//Rotas Regimento Artigo

//router.get('/admin/secao/:id',RegimentoController.findSecao);
router.post('/admin/artigo/new',RegimentoController.artigosave);
router.post('/admin/artigo/list',RegimentoController.listaartigo);
//router.post('/admin/secao/edit',RegimentoController.editcapitulo);
//router.post('/admin/secao/update',RegimentoController.updatecapitulo);
//router.post('/admin/secao/save',RegimentoController.savecapitulo);
//router.delete('/admin/secao/delete',RegimentoController.deletesecao);

//Rotas Regimento Parágrafo

//router.get('/admin/secao/:id',RegimentoController.findSecao);
router.post('/admin/paragrafo/new',RegimentoController.paragrafosave);
router.post('/admin/paragrafo/list',RegimentoController.listaparagrafo);
//router.post('/admin/secao/edit',RegimentoController.editcapitulo);
//router.post('/admin/secao/update',RegimentoController.updatecapitulo);
//router.post('/admin/secao/save',RegimentoController.savecapitulo);
//router.delete('/admin/secao/delete',RegimentoController.deletesecao);

//Rotas Regimento Inciso

//router.get('/admin/secao/:id',RegimentoController.findSecao);
router.post('/admin/inciso/new',RegimentoController.incisosave);
router.post('/admin/inciso/list',RegimentoController.listainciso);
//router.post('/admin/secao/edit',RegimentoController.editcapitulo);
//router.post('/admin/secao/update',RegimentoController.updatecapitulo);
//router.post('/admin/secao/save',RegimentoController.savecapitulo);
//router.delete('/admin/secao/delete',RegimentoController.deletesecao);

//Rotas Regimento Alinea

//router.get('/admin/secao/:id',RegimentoController.findSecao);
router.post('/admin/alinea/new',RegimentoController.alineasave);
router.post('/admin/alinea/list',RegimentoController.listaalinea);
//router.post('/admin/secao/edit',RegimentoController.editcapitulo);
//router.post('/admin/secao/update',RegimentoController.updatecapitulo);
//router.post('/admin/secao/save',RegimentoController.savecapitulo);
//router.delete('/admin/secao/delete',RegimentoController.deletesecao);

//Rotas Regimento Blocos

router.post('/admin/bloco/list',RegimentoController.listabloco);

//Rotas Regimento facilidade

router.get('/admin/facilidade/:id',RegimentoController.findfacilidade);
router.post('/admin/facilidade/new',RegimentoController.facilidadesave);
router.post('/admin/facilidade/list',RegimentoController.listafacilidade);
router.put('/admin/facilidade/update',RegimentoController.updatefacilidade);
router.delete('/admin/facilidade/delete/:id',RegimentoController.deletefacilidade);

module.exports = router;

