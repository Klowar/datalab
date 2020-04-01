// Import uuid based on Timestamp
import { v1 as uuidv1 } from 'uuid';
import { BookI } from './model/Book';
import { insert_book } from './db_module';


// generate id and name for our tables
function* bookGen(): Generator<BookI> {
    var id = 0;
    while (true)
        yield {
            id: id++,
            name: uuidv1()
        };
}

const ROWS_AMOUNT = 60000;
const gen = bookGen();
for (let i = 0; i < ROWS_AMOUNT; i++) {
    insert_book(gen.next().value);
}