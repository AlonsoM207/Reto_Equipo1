const dbService = require('../config/db.js')

module.exports = {


    getAllQuestions : () => {

        sql = 'SELECT id, question, answer, imagename, answertype FROM multipleoptionquestions'
        return dbService.querypromise(sql)

    },
    
    getQuestion : (id) => {

        sql = ` SELECT id, question, answer, imagename, answertype
                FROM multipleoptionquestions
                WHERE id=${id}`

        return dbService.querypromise(sql)
    },

    getQuestiontext: (id) => {
        sql = `
            SELECT question 
            FROM multipleoptionquestions 
            WHERE id = ${id}
        `
        return dbService.querypromise(sql)
    },

    getAnswer: (id) => {
        sql = `
            SELECT answer 
            FROM multipleoptionquestions 
            WHERE id = ${id}
        `
        return dbService.querypromise(sql)
    },

    getImagename: (id) => {
        sql = `
            SELECT imagename 
            FROM multipleoptionquestions 
            WHERE id = ${id}
        `
        return dbService.querypromise(sql)
    },

    getAnswertype: (id) => {
        sql = `
            SELECT answertype 
            FROM multipleoptionquestions 
            WHERE id = ${id}
        `
        return dbService.querypromise(sql)
    },

    addQuestion : (body) => {
        const {question, answer, imagename, answertype} = body.question

        sql = `INSERT INTO multipleoptionquestions (question, answer, imagename, answertype)
                VALUES ('${question}', '${answer}', '${imagename}', '${answertype}')

                RETURNING *`



        return dbService.querypromise(sql)
    },

    updateQuestion : (id, body) => {
        const {question, answer, imagename, answertype} = body

        sql = ` UPDATE multipleoptionquestions 
                SET 
                question = '${question}', 
                answer = '${answer}', 
                imagename = '${imagename}', 
                answertype = '${answertype}' 

                WHERE id = ${id}

                RETURNING *`

        return dbService.querypromise(sql)
    },

    dropQuestion : (id) => {

        sql = `DELETE 
        FROM multipleoptionquestions 
        WHERE id = ${id};`

        return dbService.querypromise(sql)
    },

}