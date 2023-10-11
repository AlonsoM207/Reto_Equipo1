const dbService = require('../config/db.js')

module.exports = {

    //gets
    getAllUsers : () => {

        sql = 'SELECT id, "user", email, password, age, adminprivilege FROM users'
        return dbService.querypromise(sql)

    },
    
    getUser : (id) => {

        sql = ` SELECT id, "user", email, password, age, adminprivilege
                FROM users
                WHERE id=${id}`

        return dbService.querypromise(sql)
    },

    getUserName : (id) => {

        sql = ` SELECT "user"
                FROM users
                WHERE id=${id}`

        return dbService.querypromise(sql)
    },

    getUserEmail : (id) => {

        sql = ` SELECT email
                FROM users
                WHERE id=${id}`

        return dbService.querypromise(sql)
    },

    getUserPassword : (id) => {

        sql = ` SELECT password
                FROM users
                WHERE id=${id}`

        return dbService.querypromise(sql)
    },

    getUserAge : (id) => {

        sql = ` SELECT age
                FROM users
                WHERE id=${id}`

        return dbService.querypromise(sql)
    },

    getUserAdminPriviledge: (id) => {
        
        sql = `
            SELECT adminprivilege 
            FROM users 
            WHERE id = ${id}
        `
        return dbService.querypromise(sql)
    },

    //add user

    addUser : (body) => {
        const {user, email, password, age, adminprivilege } = body

        sql = ` INSERT INTO users ("user", email, "password", age, adminprivilege)
                VALUES ('${user}', '${email}', '${password}', ${age}, ${adminprivilege})

                RETURNING *`

        return dbService.querypromise(sql)
    },

    //edit user info
    updateUser : (id, body) => {
        const {user, email, age, adminprivilege } = body

        sql = ` UPDATE users 
                SET 
                "user" = '${user}', 
                email = '${email}', 
                age = '${age}', 
                adminprivilege = '${adminprivilege}'

                WHERE id = ${id}

                RETURNING * `

        return dbService.querypromise(sql)
    },

    updatePassword : (id, body) => {
        const {password} = body

        sql = ` UPDATE users 
                SET 
                "password" = '${password}' 
                WHERE id = ${id}

                RETURNING * `

        return dbService.querypromise(sql)
    },

    //drop user
    dropUser : (id) => {

        sql = 
            `DELETE 
            FROM users 
            WHERE id = ${id};`

        return dbService.querypromise(sql)
    },


}