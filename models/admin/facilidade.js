const express = require("express");
const router = express.Router();
var knex = require("../../database/conection");

class Facilidade{
    async findAll(){
       try{
            var result = await knex.select(['id', 'id_bloco', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea', 'facilidade']).table("tab_facilidades");            
            return result;
        }catch(err){
            console.log(err);
            return[];
        }
    }
    async findById(id){
        try{
            var result = await knex.select(['id', 'id_bloco', 'id_artigo','id_paragrafo', 'id_inciso','id_alinea', 'facilidade']).where({id:id}).table("tab_facilidades");
            
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
    async FacilidadeSave(id_bloco, id_artigo, id_paragrafo, id_inciso, id_alinea, facilidade){
        try{                       
            await knex.insert({ id_bloco, id_artigo, id_paragrafo, id_inciso, id_alinea, facilidade}).table("tab_facilidade");
            console.log("Cadastro com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    }  
    async FacilidadeUpdate(id, id_bloco, id_artigo, id_paragrafo, id_inciso, id_alinea, facilidade){
        try{                       
            await knex.where({id: id}).update({ id_bloco, id_artigo, id_paragrafo, id_inciso, id_alinea, facilidade}).table("tab_facilidade")
            console.log("Alterado com sucesso com sucesso!!!")

        }catch(error){
            console.log(error);            

        }
    } 
    async FacilidadeDelete(id){
        try{                       
            await knex.where({id: id}).delete().table("tab_facilidade")
            console.log("Facilidade excluida com sucesso!!!")            

        }catch(error){
            console.log(error);            
maps
        }
    } 

}

module.exports = new Facilidade();
