const express = require('express');
const studentRoutes = require('./src/student/routes');
const app = express();
const PORT = process.env.PORT || 8000;

require("dotenv").config();
app.use(express.json());

app.get('/', (req, res) => {
    res.send('Hello World');
});

app.use('/api/v1/students', studentRoutes);

app.listen(PORT, () => {
    console.log(`App listening on post ${PORT}`);
});