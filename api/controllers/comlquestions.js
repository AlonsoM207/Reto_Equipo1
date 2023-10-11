const ComlServices = require('../services/comlquestions.js')

module.exports = {

    getAllQuestions : async (req, res, next) => {
        
        try {
            const questions = await ComlServices.getAllQuestions();
            return res.json({questions})
        } catch (err){
            return res.json({"message": `Erro al obtener los usuarios. Err: ${err}`})
        }
        
    },

    getQuestion : async (req, res) => {
        const id = req.params.id

        try {
            const question = await ComlServices.getQuestion(id);
            return res.json({question})

        } catch (err){
            return res.json({"message": `Erro al obtener getQuestion. Err: ${err}`})
        }

    },

    getLabel : async (req, res) => {
        const id = req.params.id

        try {
            const question = await ComlServices.getLabel(id);
            return res.json({question})

        } catch (err){
            return res.json({"message": `Erro al obtener getLabel. Err: ${err}`})
        }

    },

    getComl : async (req, res) => {
        const id = req.params.id

        try {
            const question = await ComlServices.getComl(id);
            return res.json({question})

        } catch (err){
            return res.json({"message": `Erro al obtener getComl. Err: ${err}`})
        }

    },

    addQuestion : async (req, res) => {

        try {
            const question = await ComlServices.addQuestion(req.body);
            res.status(200).json({question})

        } catch (err){
            res.status(500).json({"message": `Erro al addQuestion. Err: ${err}`})
        }

    },

    updateQuestion : async (req, res) => {

        try {
            const id = req.params.id
            const question = await ComlServices.updateQuestion(id,req.body);
            return res.status(200).json({question})

        } catch (err){
            return res.status(500).json({"message": `Erro al updateQuestion. Err: ${err}`})
        }

    },

    dropQuestion : async (req, res) => {
        const id = req.params.id

        try {
            const question = await ComlServices.dropQuestion(id);
            return res.status(200).json({question})

        } catch (err){
            return res.status(500).json({"message": `Erro al dropQuestion. Err: ${err}`})
        }

    }

}