export function* word(words: string[]): Generator<string> {
    const DICT_SIZE = words.length;
    while (true)
        yield words[Math.floor(Math.random() * DICT_SIZE)];
}

export function* sentence(dict: string[], wordSize: number): Generator<string> {
    const wordGen = word(dict);
    const tempArr = new Array<string>(wordSize).fill("");
    while (true) {
        yield tempArr.map(() => (wordGen.next().value)).join(" ");
    }
}

export function sqlWrite(table: string, values: any[]) {
    return `insert into ${table} values (${values.join(', ')});\n`
}
