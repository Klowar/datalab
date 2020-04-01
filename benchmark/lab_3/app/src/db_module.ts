import { Pool } from 'pg';
import { BookI } from './model/Book';

// Insert to foreign tables
const fbook_0 = 'INSERT INTO fbook_0(id, name) VALUES($1, $2) RETURNING id';
const fbook_1 = 'INSERT INTO fbook_1(id, name) VALUES($1, $2) RETURNING id';
const fbook_2 = 'INSERT INTO fbook_2(id, name) VALUES($1, $2) RETURNING id';
// Insert to existing tables
const fdw0book = 'INSERT INTO fdw0.book(id, name) VALUES($1, $2) RETURNING id';
const fdw1book = 'INSERT INTO fdw1.book(id, name) VALUES($1, $2) RETURNING id';
const fdw2book = 'INSERT INTO fdw2.book(id, name) VALUES($1, $2) RETURNING id';

const pool = new Pool({ min: 1, log: console.log });

function bookQuery(id: number) {
    switch (id % 6) {
        case 0:
            return fbook_0;
        case 1:
            return fbook_1;
        case 2:
            return fbook_2;
        case 3:
            return fdw0book;
        case 4:
            return fdw1book;
        case 5:
            return fdw2book;
    }

}

function insert(query: string, data?: any[]) {
    return pool.query(query, data);
}

function insert_book(data: BookI) {
    const query = bookQuery(data.id);
    return insert(
        query,
        [data.id, data.name]
    );
}

export { insert_book };
