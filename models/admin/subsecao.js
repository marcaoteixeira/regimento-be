const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Subsecao{
    async findAll(){
        try{
             var result = await knex.select(['id', 'id_titulo', 'id_capitulo','id_secao', 'subsecao']).table("tab_subsecao");            
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
     }
    async findById(id){
        try {
            var result = await knex.select(["id", "id_titulo", "id_capitulo", "id_secao", "subsecao"]).where({ id: id }).table("tab_subsecao");
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
    async SubsecaoSave(id_titulo, id_capitulo, id_secao, subsecao){
        try{                       
            await knex.insert({ id_titulo, id_capitulo, id_secao, subsecao }).table("tab_subsecao");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async SubsecaoUpdate(id, id_titulo, id_capitulo, id_secao, subsecao){
        try{                       
            await knex.where({id: id}).update({ id_titulo, id_capitulo, id_secao, subsecao  }).table("tab_subsecao")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    } 
    async SubsecaoDelete(id){
        
        try{                       
            await knex.where({id: id}).delete().table("tab_subsecao")
            console.log("Subseção excluida com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Subsecao();
