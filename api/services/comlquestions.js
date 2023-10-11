const dbService = require('../config/db.js')

module.exports = {

    getAllQuestions : () => {

        sql = 'SELECT label, coml FROM comlquestions'
        return dbService.querypromise(sql)
    },
    
    getQuestion : (id) => {

        sql = ` SELECT label, coml
                FROM comlquestions
                WHERE id = ${id}`

        return dbService.querypromise(sql)
    },

    getLabel : (id) => {

        sql = ` SELECT label
                FROM comlquestions
                WHERE id = ${id}`

        return dbService.querypromise(sql)
    },

    getComl : (id) => {

        sql = ` SELECT coml
                FROM comlquestions
                WHERE id = ${id}`

        return dbService.querypromise(sql)
    },

    addQuestion : (body) => {
        const {label, coml} = body

        sql = `INSERT INTO comlquestions (label, coml)
                VALUES ('${label}', '${coml}')
                RETURNING *`

        return dbService.querypromise(sql)
    },

    updateQuestion : (id, body) => {
        const {label, coml} = body

        sql = ` UPDATE comlquestions 

                SET label = '${label}', 
                coml = '${coml}' 

                WHERE id = ${id}

                RETURNING *`

        return dbService.querypromise(sql)
    },

    dropQuestion : (id) => {

        sql = `DELETE 
        FROM comlquestions 
        WHERE id = ${id}`

        return dbService.querypromise(sql)
    }

}