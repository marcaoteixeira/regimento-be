const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Inciso{
    async findAll(){
       try{
            var result = await knex.select(['id', 'id_artigo','id_paragrafo', 'inciso', 'caput']).table("tab_inciso");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(['id', 'id_artigo','id_paragrafo', 'inciso', 'caput']).where({id:id}).table("tab_inciso");
            
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
    async IncisoSave(id_artigo, id_paragrafo, inciso, caput){
        try{                       
            await knex.insert({ id_artigo, id_paragrafo, inciso, caput}).table("tab_inciso");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    }  
    async IncisoUpdate(id, id_artigo,id_paragrafo, inciso, caput){
        try{                       
            await knex.where({id: id}).update({ id_artigo, id_paragrafo, inciso, caput}).table("tab_inciso")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    } 
    async IncisoDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_inciso")
            console.log("Parágrafo excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            
maps
        }
    } 

}

module.exports = new Inciso();
