const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Paragrafo{
    async findAll(){
       try{
            var result = await knex.select(['id', 'id_artigo','paragrafo']).table("tab_paragrafo");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(['id', 'id_artigo','paragrafo']).where({id:id}).table("tab_paragrafo");
            
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
    async ParagrafoSave(id_artigo, paragrafo){
        try{                       
            await knex.insert({ id_artigo, paragrafo}).table("tab_paragrafo");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async ParagrafoUpdate(id, titulo){
        try{                       
            await knex.where({id: id}).update({ id_artigo, paragrafo}).table("tab_paragrafo")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    } 
    async ParagrafoDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_paragrafo")
            console.log("Parágrafo excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Paragrafo();