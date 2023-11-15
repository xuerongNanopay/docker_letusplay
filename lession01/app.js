import express from 'express'

import connectToDatabase from './helpers'

const app = express()

app.get('/', (req, res) => {
  res.send('<h1>Docker Lesson01</h1>')
})

await connectToDatabase()

app.listen(3000)