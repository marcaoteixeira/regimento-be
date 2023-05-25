const Regimento = require("../models/regimento/regimento");
const Titulo = require("../models/admin/titulo");
const Capitulo = require("../models/admin/capitulo");
const Secao = require("../models/admin/secao");

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
      //res.redirect('new');
   }
   async listatitulo(req, res) {

      var titulos = await Titulo.findAll();
      res.json(titulos);

      //res.render('admin/comissao/edicao', { comissoes: list_comiss });

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
      //res.redirect('new');
   }
   async listacapitulo(req, res) {

      var capitulos = await Capitulo.findAll();
      res.json(capitulos);  

      //res.render('admin/comissao/edicao', { comissoes: list_comiss });

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