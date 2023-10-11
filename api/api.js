const express = require('express')
const cors = require('cors')
const dotenv =require('dotenv')
dotenv.config();

const app = express()
app.use(cors({
origin: ['http://localhost:3000','http://10.22.231.66']
}))
const port = process.env.PORT || 3000

app.use(express.json())
app.use(express.urlencoded({extended: true}))

app.get('/', (req, res) => {
  res.send('Pagina inicial WebApi')
})

//Aqui estan todas las rutas
app.use(require('./routes/routes.js'))

app.listen(port, () => {
  console.log(`Escuchando en el puerto ${port}`)
})


//Este API está basado sobre el entorno en tiempo de ejecución de Node js con el cual se comunica con un navegador web 
//a base del entorno de trabajo Express js 