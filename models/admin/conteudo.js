const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Conteudo{
    async findAll(){
       try{
            var result = await knex.select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea', 'linkartigo', 'linkjuris', 'numjuris', 'conteudo'])           
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findAllartigo(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 1}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllremissao(){
        try{
             var result = await knex('tab_conteudo').where({id_bloco: 1}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAlljurisprudencia(){
        try{
             var result = await knex('tab_conteudo').where({id_bloco: 2}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']).orderBy(knex.raw('RIGHT(numjuris,4)'),'desc').orderBy('numjuris','desc').table("tab_conteudo");
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
   
    async findAllobservacao(){
        try{
             var result = await knex('tab_conteudo').where({id_bloco: 3}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    
    async findAllato(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 2}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllcodigo(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 3}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAlllei(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 4}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllnorma(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 5}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllregulamento(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 6}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllresolucao(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 7}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
 
    async findAllqordem(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 8}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']).orderBy(knex.raw('RIGHT(numjuris,4)'),'desc').orderBy('numjuris','desc');
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
   
    async findAllconsulta(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 9}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
          
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAlldecisao(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 10}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllrec(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 12}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllrem(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 13}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllstf(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 14}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }

    async findAllpratica(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 15}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }

    async findAllpre(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 16}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllobs(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 17}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllnotas(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 18}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllsumula(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 19}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
 
    async findById(id){
        try{
            var result = await knex.select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'linkjuris', 'numjuris', 'conteudo']).where({id:id}).table("tab_conteudo");
            
            if(result.length > 0){
                return result[0];
            }else{
                return undefined;
            }

        }catch(err){
            console.log(err);
            return undefined;
        }
         
    }
    async ConteudoSave(id_bloco, id_tipo, id_artigo, id_paragrafo, id_inciso, id_alinea, linkartigo, linkjuris, numjuris, conteudo){
        try{                       
            await knex.insert({ id_bloco, id_tipo, id_artigo, id_paragrafo, id_inciso, id_alinea, linkartigo, linkjuris, numjuris, conteudo}).table("tab_conteudo");
            console.log("Cadastro com sucesso!!!")

        }catch(error){ 
            console.log(error);            

        }
    }  
 
    async ConteudoUpdate(id,id_bloco, id_tipo, id_artigo, id_paragrafo, id_inciso, id_alinea, linkartigo, linkjuris, numjuris, conteudo){
        try{                       
            await knex.where({id: id}).update({ id_bloco, id_tipo, id_artigo, id_paragrafo, id_inciso, id_alinea, linkartigo, linkjuris, numjuris, conteudo}).table("tab_conteudo");
            console.log("Alterado com sucesso!!!")

        }catch(error){ 
            console.log(error);            

        }
    }

    async ConteudoDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_conteudo")
            console.log("Conteúdo excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            
maps
        }
    } 

}

//nova versao

module.exports = new Conteudo();
