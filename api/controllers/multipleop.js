const MultipleopServices = require('../services/multipleop.js')

module.exports = {

    getAllQuestions : async (req, res, next) => {
        try {
            const questions = await MultipleopServices.getAllQuestions();
            return res.json({questions})
        } catch (err){
            return res.json({"message": `Error al obtener getAllQuestions. Err: ${err}`})
        }
        
    },

    getQuestion : async (req, res) => {
        const id = req.params.id

        try {
            const question = await MultipleopServices.getQuestion(id);
            return res.json({question})

        } catch (err){
            return res.json({"message": `Error al obtener getQuestion. Err: ${err}`})
        }

    },

    getQuestiontext : async (req, res) => {
        const id = req.params.id

        try {
            const question = await MultipleopServices.getQuestiontext(id);
            return res.json({question})

        } catch (err){
            return res.json({"message": `Error al obtener getQuestiontext. Err: ${err}`})
        }

    },

    getAnswer : async (req, res) => {
        const id = req.params.id

        try {
            const question = await MultipleopServices.getAnswer(id);
            return res.json({question})

        } catch (err){
            return res.json({"message": `Error al obtener getAnswer. Err: ${err}`})
        }

    },

    getImagename : async (req, res) => {
        const id = req.params.id

        try {
            const question = await MultipleopServices.getImagename(id);
            return res.json({question})

        } catch (err){
            return res.json({"message": `Error al obtener getImagename. Err: ${err}`})
        }

    },

    getAnswertype : async (req, res) => {
        const id = req.params.id

        try {
            const question = await MultipleopServices.getAnswertype(id);
            return res.json({question})

        } catch (err){
            return res.json({"message": `Error al obtener getAnswertype. Err: ${err}`})
        }

    },

    addQuestion : async (req, res) => {

        try {
            const question = await MultipleopServices.addQuestion(req.body);
            res.status(200).json({question})

        } catch (err){
            res.status(500).json({"message": `Error al addQuestion. Err: ${err}`})
        }

    },

    updateQuestion : async (req, res) => {

        try {
            const id = req.params.id
            const question = await MultipleopServices.updateQuestion(id,req.body);
            return res.status(200).json({question})

        } catch (err){
            return res.status(500).json({"message": `Error al updateQuestion. Err: ${err}`})
        }

    },

    dropQuestion : async (req, res) => {
        const id = req.params.id

        try {
            const question = await MultipleopServices.dropQuestion(id);
            return res.status(200).json({question})

        } catch (err){
            return res.status(500).json({"message": `Error al dropQuestion. Err: ${err}`})
        }

    }
}