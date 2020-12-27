const express = require('express');
const handleError = require('./middleware/error');
const logger = require('./middleware/');
const bodyParser = require('body-parser');
const cors = require('cors');
const cookieParser = require('cookie-parser');

const PORT = process.env.PORT || 4000;
const server = express();
server.use(cookieParser());
server.use(express.urlencoded());
server.use(logger);
server.use(cors());
server.use(express.json());
server.use(bodyParser.json());
server.use(bodyParser.urlencoded({ extended: true }));
server.use(handleError);


server.listen(PORT, () => console.log(`Listening on http://localhost:${PORT}`));
