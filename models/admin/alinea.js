const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Alinea{
    async findAll(){
       try{
            var result = await knex.select(['id', 'id_inciso','alinea']).table("tab_alinea");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(['id', 'id_inciso','alinea']).where({id:id}).table("tab_alinea");
            
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
    async AlineaSave(id_artigo, id_paragrafo, id_inciso, alinea){
        try{                       
            await knex.insert({ id_artigo, id_paragrafo, id_inciso, alinea}).table("tab_alinea");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async AlineaUpdate(id, id_artigo, id_paragrafo, id_inciso, alinea){
        try{                       
            await knex.where({id: id}).update({ id_artigo, id_paragrafo, id_inciso, alinea}).table("tab_alinea")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    } 
    async AlineaDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_alinea")
            console.log("Alinea excluido com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Alinea();

                 

