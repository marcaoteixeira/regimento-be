const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Capitulo{
    async findAll(){
       try{
            var result = await knex.select(['id', 'id_titulo', 'capitulo']).table("tab_capitulo");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(["id", "id_titulo", "capitulo"]).where({id:id}).table("tab_capitulo");            
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
    async CapituloSave(id_titulo, capitulo){
        try{                       
            await knex.insert({ id_titulo, capitulo }).table("tab_capitulo");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async CapituloUpdate(id,id_titulo, capitulo){
        try{                       
            await knex.where({id: id}).update({ id_titulo, capitulo }).table("tab_capitulo")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    } 
    async CapituloDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_capitulo")
            console.log("Titulo excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Capitulo();
