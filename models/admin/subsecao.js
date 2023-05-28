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
    async cfindAll(){
        try{
            var result = await knex.select("*").table("tab_subsecao");            
            return result;
        }catch(error){
            console.log(error);
            return[];
        }
    }
    async findById(secao){
        try{           
            var result  = await knex.where({id: secao}).table("tab_subsecao")
            return result;

        }catch(error){
            console.log(error);
            return[];

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
    async SecaoUpdate(id, secao){
        try{                       
            await knex.where({id: id}).update({ secao }).table("tab_secao")
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

module.exports = new Subsecao();
