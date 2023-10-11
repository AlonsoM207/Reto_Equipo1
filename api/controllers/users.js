const UserServices = require('../services/users.js')

module.exports = {

    getAllUsers : async (req, res, next) => {
        
        try {
            const users = await UserServices.getAllUsers();
            return res.json({users})
        } catch (err){
            return res.json({"message": `Error al obtener los usuarios. Err: ${err}`})
        }
        
    },

    getUser : async (req, res) => {
        const id = req.params.id

        try {
            const user = await UserServices.getUser(id);
            return res.json({user})

        } catch (err){
            return res.json({"message": `Error al obtener el usuario. Err: ${err}`})
        }

    },

    getUserName : async (req, res) => {
        const id = req.params.id

        try {
            const user = await UserServices.getUserName(id);
            return res.json({user})

        } catch (err){
            return res.json({"message": `Error al obtener el nombre del usuario. Err: ${err}`})
        }

    },

    getUserEmail : async (req, res) => {
        const id = req.params.id

        try {
            const user = await UserServices.getUserEmail(id);
            return res.json({user})

        } catch (err){
            return res.json({"message": `Error al obtener el email del usuario. Err: ${err}`})
        }

    },

    getUserPassword : async (req, res) => {
        const id = req.params.id

        try {
            const user = await UserServices.getUserPassword(id);
            return res.json({user})

        } catch (err){
            return res.json({"message": `Error al obtener la contraseña del usuario. Err: ${err}`})
        }

    },

    getUserAge : async (req, res) => {
        const id = req.params.id

        try {
            const user = await UserServices.getUserAge(id);
            return res.json({user})

        } catch (err){
            return res.json({"message": `Error al obtener la edad del usuario. Err: ${err}`})
        }

    },

    getUserAdminPriviledge: async (req, res) => {
        const id = req.params.id
        
        try {
            const user = await UserServices.getUserAdminPriviledge(id, req.body);
            return res.status(200).json({user})
        } catch (err) {
            return res.status(500).json({"message": `Erro al obtener el adminPriviledge. Err: ${err}`})
        }
    },

    addUser : async (req, res) => {

        try {
            const user = await UserServices.addUser(req.body);
            res.status(200).json({user})

        } catch (err){
            res.status(500).json({"message": `Erro al addUser. Err: ${err}`})
        }

    },

    updateUser : async (req, res) => {

        try {
            const id = req.params.id
            const user = await UserServices.updateUser(id,req.body);
            return res.status(200).json({user})

        } catch (err){
            return res.status(500).json({"message": `Erro al updateUser. Err: ${err}`})
        }

    },

    updatePassword : async (req, res) => {

        try {
            const id = req.params.id
            const user = await UserServices.updatePassword(id,req.body);
            return res.status(200).json({user})

        } catch (err){
            return res.status(500).json({"message": `Erro al updateUser. Err: ${err}`})
        }

    },

    dropUser : async (req, res) => {
        const id = req.params.id
        
        try {
            const user = await UserServices.dropUser(id);
            return res.status(200).json({user})

        } catch (err) {
            return res.status(500).json({"message": `Erro al obtener el dropUser. Err: ${err}`})
        }
    }
   


}