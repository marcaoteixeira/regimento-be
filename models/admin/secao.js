const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Secao{
    async findAll(){
        try{
             var result = await knex.select(['id', 'id_titulo', 'id_capitulo', 'secao']).table("tab_secao");            
             return result;
         }catch(err){
             console.log(err);
             return[];
         }
     }
    async findById(id) {
        try {
            var result = await knex.select(["id", "id_titulo", "id_capitulo", "secao"]).where({ id: id }).table("tab_secao");
            if (result.length > 0) {
                return result[0]; nn
            } else {
                return undefined;
            }

        } catch (err) {
            console.log(err);
            return undefined;
        }
    }
    async SecaoSave(id_titulo, id_capitulo, secao){
        try{                       
            await knex.insert({ id_titulo, id_capitulo, secao }).table("tab_secao");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async SecaoUpdate(id, id_titulo, id_capitulo, secao){
        try{
            
            await knex.where({id: id}).update({ id_titulo, id_capitulo, secao }).table("tab_secao")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);         

        }
    } 
    async SecaoDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_secao")
            console.log("Seção excluida com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Secao();
