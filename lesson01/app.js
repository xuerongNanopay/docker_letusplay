import express from 'express'

import connectToDatabase from './helpers.js'

const app = express()

app.get('/', (req, res) => {
  res.send('<h1>Docker Lesson 01</h1>')
})

await connectToDatabase()

app.listen(3000)