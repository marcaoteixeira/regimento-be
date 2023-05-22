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
   async savetitulo(req, res) {
      var id = req.body.id
      var titulo = req.body.titulo;
      
      await Titulo.TituloUpdate(id, titulo);
      
      res.redirect('edit');

   }
   async deletetitulo(req, res) {
      var id =  req.params.id
      await Titulo.TituloDelete(id);
   

   }

   //Administração Cadastro Capitulo do Regimento

   async newcapitulo(req, res) {
      var list_titulo = await Capitulo.tfindAll();
      res.render('admin/regimento/capitulonew',{titulo: list_titulo});
   }
   async capitulosave(req, res) {

      var id_titulo = req.body.id_titulo
      var capitulo = req.body.capitulo;
      
      await Capitulo.CapituloSave(id_titulo, capitulo);
      res.redirect('new');
   }
   async selecttitulo(req, res) {
      var list_titulo = await Capitulo.tfindAll();
      res.render('admin/regimento/capituloselect',{titulo: list_titulo});

   }
   async editcapitulo(req, res) {

      var id_titulo = req.body.id_titulo;
      var list_capitulo = await Capitulo.findAll(id_titulo);

      res.render('admin/regimento/capituloedicao',{ capitulo: list_capitulo });

   }
   async updatecapitulo(req, res) {

      var id = req.body.id;
      var list_capitulo = await Capitulo.findById(id)
      res.render('admin/regimento/capituloupdate', { capitulo: list_capitulo });

   }
   async savecapitulo(req, res) {
            
      var id = req.body.id;
      var capitulo = req.body.capitulo;
      
      await Capitulo.CapituloUpdate(id, capitulo);
      
      res.redirect('select');

   }
   async deletecapitulo(req, res) {
      var id = req.body.id;
      await Capitulo.CapituloDelete(id);
      res.redirect('select');

   }
    //Administração Cadastro Seção do Regimento

    async newsecao(req, res) {
      var list_titulo = await Capitulo.tfindAll();
      var list_capitulo = await Secao.cfindAll();
      console.log(list_titulo);
      console.log(list_capitulo);
      res.render('admin/regimento/secaonew',{titulo: list_titulo, capitulo: list_capitulo});
   }
   async secaosave(req, res) {

      var id_titulo = req.body.id_titulo
      var id_capitulo = req.body.id_capitulo;
      var secao = req.body.secao;
      
      await Secao.SecaoSave(id_titulo, id_capitulo, secao);
      res.redirect('new');
   }
   async selectsecao(req, res) {
      var list_titulo = await Capitulo.tfindAll();
      var list_capitulo = await Secao.cfindAll();
      res.render('admin/regimento/secaoselect',{titulo: list_titulo, capitulo: list_capitulo});

   }
   async editsecao(req, res) {

      var id_titulo = req.body.id_titulo;
      var id_capitulo = req.body.id_capitulo;
      var list_secao = await Secao.findAll(id_titulo, id_capitulo);

      res.render('admin/regimento/secaoedicao',{ capitulo: list_secao });

   }
   async updatecapitulo(req, res) {

      var id = req.body.id;
      var list_secao = await Secao.findById(id)
      res.render('admin/regimento/secaoupdate', { secao: list_secao });

   }
   async savesecao(req, res) {
            
      var id = req.body.id;
      var capitulo = req.body.capitulo;
      
      await Secao.SecaoUpdate(id, capitulo);
      
      res.redirect('select');

   }
   async deletesecao(req, res) {
      var id = req.body.id;
      await Secao.SecaoDelete(id);
      res.redirect('select');

   }

}

module.exports = new RegimentoController();