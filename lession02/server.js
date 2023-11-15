const express = require('express')
const bodyParser = require('body-parser')

const app = express()

let userGoal = 'Learn Docker!'

app.use(
  bodyParser.urlencoded({
    extended: false
  })
)

app.use(express.static('public'))

app.get('/', (req, res) => {
  res.send(`
  <!DOCTYPE html>
  <html>
  <body>
  
  <h1>My First Heading</h1>
  <p>My first paragraph.</p>
  
  </body>
  </html>
  `)
})

app.post('/store-goal', (req, res) => {
  const enteredGoal = req.body.userGoal
  console.log(enteredGoal)
  userGoal = enteredGoal
  res.redirect('/')
})

app.listen(80)