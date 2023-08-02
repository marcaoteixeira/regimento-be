const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Tipo{
    async findAll(){
       try{
            var result = await knex.select(['id', 'id_bloco', 'tipo']).table("tab_tipo");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(['id', 'id_bloco', 'tipo']).where({id:id}).table("tab_tipo");
            
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
    async BLocoSave(id_bloco, tipo){
        try{                       
            await knex.insert({ id_bloco, tipo }).table("tab_tipo");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async BlocoUpdate(id, id_bloco, tipo){
        try{                       
            await knex.where({id: id}).update({ bloco }).table("tab_bloco")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    } 
    async BlocoDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("id_bloco, tipo")
            console.log("Bloco excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Tipo();
