const Regimento = require("../models/regimento/regimento");
const Titulo = require("../models/admin/titulo");
const Capitulo = require("../models/admin/capitulo");
const Secao = require("../models/admin/secao");
const Subsecao = require("../models/admin/subsecao");
const Artigo = require("../models/admin/artigo");


class RegimentoController{

   //Administração Cadastro Titulo do Regimento

   async findTitulo(req, res){
      var id = req.params.id;
      var titulo = await Titulo.findById(id);
      if(titulo == undefined){
          res.status(404);
          res.json({});
      }else{
          res.status(200)
          res.json(titulo);
      }

   }
   async titulosave(req, res) {

      var titulo = req.body.titulo;
      
      await Titulo.TituloSave(titulo);
     
   }
   async listatitulo(req, res) {

      var titulos = await Titulo.findAll();
      res.json(titulos);

     
   }
   async updatetiulo(req, res) {

      var {id, titulo } = req.body;
      await Titulo.TituloUpdate(id, titulo);
            
   }
   async deletetitulo(req, res) {
      var id =  req.params.id
      await Titulo.TituloDelete(id);
   

   }
   //Administração Cadastro Capitulo do Regimento
  
   async findCapitulo(req, res){
      var id = req.params.id;
      var capitulo = await Capitulo.findById(id);
      if(capitulo == undefined){
          res.status(404);
          res.json({});
      }else{
          res.status(200)
          res.json(capitulo);
      }

   }
   async capitulosave(req, res) {

      var {id_titulo, capitulo} = req.body;       
      
      await Capitulo.CapituloSave(id_titulo, capitulo);
     
   }
   async listacapitulo(req, res) {

      var capitulos = await Capitulo.findAll();
      res.json(capitulos);  


   }
   async updatecapitulo(req, res) {

      var {id, id_titulo, capitulo} = req.body;
      
      await Capitulo.CapituloUpdate(id, id_titulo, capitulo);
            
   }
 
   async deletecapitulo(req, res) {
      var id =  req.params.id      
      await Capitulo.CapituloDelete(id);
   

   }   
    //Administração Cadastro Seção do Regimento
  
    async findCapitulo(req, res){
      var id = req.params.id;
      var capitulo = await Capitulo.findById(id);
      if(capitulo == undefined){
          res.status(404);
          res.json({});
      }else{
          res.status(200)
          res.json(capitulo);
      }

   }
   async secaosave(req, res) {

      var {id_titulo, id_capitulo, secao} = req.body;       
      
      await Secao.SecaoSave(id_titulo, id_capitulo, secao);
      
   }
   async listasecao(req, res) {

      var secoes = await Secao.findAll();
      res.json(secoes);  
 

   }
   async updatecapitulo(req, res) {

      var {id, id_titulo, capitulo} = req.body;
      
      await Capitulo.CapituloUpdate(id, id_titulo, capitulo);
            
   }
 
   async deletecapitulo(req, res) {
      var id =  req.params.id      
      await Capitulo.CapituloDelete(id);
   

   }   
   //Administração Cadastro Subseção do Regimento
  
   async findSubsecao(req, res){
      var id = req.params.id;
      var subsecao = await Subsecao.findById(id);
      if(subsecao == undefined){
          res.status(404);
          res.json({});
      }else{
          res.status(200)
          res.json(subsecao);
      }

   }
   async subsecaosave(req, res) {

      var {id_titulo, id_capitulo, id_secao, subsecao} = req.body;       
      
      await Subsecao.SubsecaoSave(id_titulo, id_capitulo, id_secao, subsecao);
      
   }
   async listasubsecao(req, res) {

      var subsecoes = await Subsecao.findAll();
      res.json(subsecoes);  
 

   }
   async updatecapitulo(req, res) {

      var {id, id_titulo, capitulo} = req.body;
      
      await Capitulo.CapituloUpdate(id, id_titulo, capitulo);
            
   }
 
   async deletecapitulo(req, res) {
      var id =  req.params.id      
      await Capitulo.CapituloDelete(id);
   

   }   
   //Administração Cadastro Artigos do Regimento
  
   async findSubsecao(req, res){
      var id = req.params.id;
      var subsecao = await Subsecao.findById(id);
      if(subsecao == undefined){
          res.status(404);
          res.json({});
      }else{
          res.status(200)
          res.json(subsecao);
      }

   }
   async artigosave(req, res) {

      var {id_titulo, id_capitulo, id_secao, id_subsecao, artigo, conteudo} = req.body;       
      
      await Artigo.ArtigoSave(id_titulo, id_capitulo, id_secao, id_subsecao, artigo, conteudo);
      
   }
   async listaartigo(req, res) {

      var artigos = await Artigo.findAll();
      res.json(artigos);  
 

   }
   async updatecapitulo(req, res) {

      var {id, id_titulo, capitulo} = req.body;
      
      await Capitulo.CapituloUpdate(id, id_titulo, capitulo);
            
   }
 
   async deletecapitulo(req, res) {
      var id =  req.params.id      
      await Capitulo.CapituloDelete(id);
   

   }   

}

module.exports = new RegimentoController();