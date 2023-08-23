const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Conteudo{
    async findAll(){
       try{
            var result = await knex.select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea', 'linkartigo', 'conteudo']).table("tab_conteudo");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findAllnotas(){
        try{
             //var result = await knex.select(['id', 'id_bloco', 'id_tipo', 'id_titulo' , 'id_capitulo' , 'id_secao' , 'id_subsecao','id_artigo','id_paragrafo', 'id_inciso','id_alinea', 'conteudo']).table("tab_conteudo"); 
             var result = await knex('tab_conteudo').where({id_tipo: 18}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findAllqordem(){
        try{
             var result = await knex('tab_conteudo').where({id_tipo: 8}).select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'conteudo']);
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
    }
    async findById(id){
        try{
            var result = await knex.select(['id', 'id_bloco', 'id_tipo', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea','linkartigo', 'conteudo']).where({id:id}).table("tab_conteudo");
            
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
    async ConteudoSave(id_bloco, id_tipo, id_artigo, id_paragrafo, id_inciso, id_alinea, linkartigo, conteudo){
        try{                       
            await knex.insert({ id_bloco, id_tipo, id_artigo, id_paragrafo, id_inciso, id_alinea, linkartigo, conteudo}).table("tab_conteudo");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    }  
    async ConteudoUpdate(id, id_bloco, id_tipo, id_artigo, id_paragrafo, id_inciso, id_alinea, linkartigo, conteudo){
        try{                       
            await knex.where({id: id}).update({ id_bloco, id_tipo, id_artigo, id_paragrafo, id_inciso, id_alinea, linkartigo, conteudo}).table("tab_conteudo")
            console.log("Alterado com sucesso com sucesso!!!")

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
