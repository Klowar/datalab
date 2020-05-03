import fs from 'fs';
import path from 'path';
import words from './splited.json';
import { sentence, sqlWrite } from './generators';

const ROWS_AMOUNT = 100000;
const sentGen = sentence(words, 5);

const FD = fs.openSync(path.join(__dirname, './V5.5__Fill_gist_table.sql'), "w+");

for (let i = 0; i < ROWS_AMOUNT; i++) {
    fs.write(FD, Buffer.from(
        sqlWrite(
            'content_gist',
            [
                i,
                `'${sentGen.next().value}'`
            ]
        )
    ), (err, w, b) => console.log(err, w))
}

