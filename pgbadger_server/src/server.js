import express from 'express';
import path from 'path';
import dotenv from 'dotenv';
import serve from 'serve-index';

const conf = dotenv.config().parsed;

const app = express();

app.use('/',
    express.static(path.join(__dirname, "../static")),
    serve(path.join(__dirname, "../static"), { 'icons': true }));

app.set('port', conf.PORT || 8080);
app.listen(app.get('port'));
