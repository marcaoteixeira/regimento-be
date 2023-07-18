const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Bloco{
    async findAll(){
       try{
            var result = await knex.select(['id', 'bloco']).table("tab_bloco");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(["id","bloco"]).where({id:id}).table("tab_bloco");
            
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
    async BLocoSave(bloco){
        try{                       
            await knex.insert({ bloco }).table("tab_bloco");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async BlocoUpdate(id, bloco){
        try{                       
            await knex.where({id: id}).update({ bloco }).table("tab_bloco")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    } 
    async BlocoDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_bloco")
            console.log("Bloco excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Bloco();
