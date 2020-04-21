import express from 'express';
import path from 'path';
import dotenv from 'dotenv';

const conf = dotenv.config().parsed;

express.static(path.join(__dirname, "static"))
app.set('port', conf.PORT || 8080);

const app = express();

app.listen(80);
