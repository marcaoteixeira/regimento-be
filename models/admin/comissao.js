const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Comissao{  

    async findAll(){
        try{
            //var result = await knex.select(["id","comissao","sigla","membros"]).table("tab_comissao")    
            var result = await knex.select(['id','comissao','sigla','membros']).table('tab_comissao')                  
            return result;            
        }catch(err){
            console.log(err);
            return [];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(["id","comissao","sigla","membros"]).where({id:id}).table("tab_comissao");
            
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
    async ComissSave(comissao,sigla,membros){
        try{                       
            await knex.insert({comissao, sigla, membros}).table("tab_comissao");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    }  
    async ComissUpdate(id, comissao, sigla, membros){
        try{                       
            await knex.where({id: id}).update({comissao, sigla, membros}).table("tab_comissao")
            console.log("Alterada com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);
            

        }
    } 
    async ComissDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_comissao")
            console.log("Comissão excluida com sucesso!!!")            

        }catch(error){
            console.log(error);            

        }
    } 

}

module.exports = new Comissao();