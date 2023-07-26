const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Artigo{
    async findAll(){
        try{
             var result = await knex.select(['id', 'id_titulo', 'id_capitulo','id_secao', 'id_subsecao', 'artigo', 'caput']).table("tab_artigo");            
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
     }
   
    async findById(id){
        try {
            var result = await knex.select(['id', 'id_titulo', 'id_capitulo','id_secao', 'id_subsecao', 'artigo', 'caput']).where({ id: id }).table("tab_artigo");
            if (result.length > 0) {
                return result[0]; 
            } else {
                return undefined;
            }

        } catch (err) {
            console.log(err);
            return undefined;
        }
    }
    async ArtigoSave(id_titulo, id_capitulo, id_secao, id_subsecao, artigo, caput){
        try{                       
            await knex.insert({ id_titulo, id_capitulo, id_secao, id_subsecao, artigo, caput }).table("tab_artigo");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async ArtigoUpdate(id, id_titulo, id_capitulo, id_secao, id_subsecao, artigo, caput){
        try{                       
            await knex.where({id: id}).update({ id_titulo, id_capitulo, id_secao, id_subsecao, artigo, caput}).table("tab_artigo")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    } 
    async ArtigoDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_artigo")
            console.log("Artigo excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Artigo();