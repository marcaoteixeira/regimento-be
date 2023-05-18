const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Titulo{
    async findAll(){
        try{
            var result = await knex.select("*").table("tab_titulo");            
            return result;
        }catch(error){
            console.log(error);
            return[];
        }
    }
    async findById(id){
        try{           
            var result  = await knex.where({id: id}).table("tab_titulo")
            return result;

        }catch(error){
            console.log(error);
            return[];

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
