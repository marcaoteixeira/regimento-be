const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Titulo{
    async findAll(){
       try{
            var result = await knex.select(['id', 'titulo']).table("tab_titulo");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(["id","titulo"]).where({id:id}).table("tab_titulo");
            
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
    async TituloSave(titulo){
        try{                       
            await knex.insert({ titulo }).table("tab_titulo");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async TituloUpdate(id, titulo){
        try{                       
            await knex.where({id: id}).update({ titulo }).table("tab_titulo")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    } 
    async TituloDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_titulo")
            console.log("Titulo excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Titulo();
