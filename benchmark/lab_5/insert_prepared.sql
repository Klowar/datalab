\set id random(1,1000000)
\set name random(1,1000000)
BEGIN
    PREPARE meat_insert AS
    INSERT INTO meats (numeric, text)
        VALUES ($1, $2);

EXECUTE meat_insert (:id + 2, md5(:name::text));

EXECUTE meat_insert (:id + 3, md5(:name::text));

EXECUTE meat_insert (:id + 4, md5(:name::text));

EXECUTE meat_insert (:id + 5, md5(:name::text));

EXECUTE meat_insert (:id + 6, md5(:name::text));

EXECUTE meat_insert (:id + 7, md5(:name::text));

EXECUTE meat_insert (:id + 8, md5(:name::text));

EXECUTE meat_insert (:id + 9, md5(:name::text));

EXECUTE meat_insert (:id + 10, md5(:name::text));

EXECUTE meat_insert (:id + 11, md5(:name::text));

EXECUTE meat_insert (:id + 12, md5(:name::text));

EXECUTE meat_insert (:id + 13, md5(:name::text));

EXECUTE meat_insert (:id + 14, md5(:name::text));

EXECUTE meat_insert (:id + 15, md5(:name::text));

EXECUTE meat_insert (:id + 16, md5(:name::text));

EXECUTE meat_insert (:id + 17, md5(:name::text));

EXECUTE meat_insert (:id + 18, md5(:name::text));

EXECUTE meat_insert (:id + 19, md5(:name::text));

EXECUTE meat_insert (:id + 20, md5(:name::text));

EXECUTE meat_insert (:id + 21, md5(:name::text));

EXECUTE meat_insert (:id + 22, md5(:name::text));

EXECUTE meat_insert (:id + 23, md5(:name::text));

EXECUTE meat_insert (:id + 24, md5(:name::text));

EXECUTE meat_insert (:id + 25, md5(:name::text));

EXECUTE meat_insert (:id + 26, md5(:name::text));

EXECUTE meat_insert (:id + 27, md5(:name::text));

EXECUTE meat_insert (:id + 28, md5(:name::text));

EXECUTE meat_insert (:id + 29, md5(:name::text));

EXECUTE meat_insert (:id + 30, md5(:name::text));

EXECUTE meat_insert (:id + 31, md5(:name::text));

EXECUTE meat_insert (:id + 32, md5(:name::text));

EXECUTE meat_insert (:id + 33, md5(:name::text));

EXECUTE meat_insert (:id + 34, md5(:name::text));

EXECUTE meat_insert (:id + 35, md5(:name::text));

EXECUTE meat_insert (:id + 36, md5(:name::text));

EXECUTE meat_insert (:id + 37, md5(:name::text));

EXECUTE meat_insert (:id + 38, md5(:name::text));

EXECUTE meat_insert (:id + 39, md5(:name::text));

EXECUTE meat_insert (:id + 40, md5(:name::text));

EXECUTE meat_insert (:id + 41, md5(:name::text));

EXECUTE meat_insert (:id + 42, md5(:name::text));

EXECUTE meat_insert (:id + 43, md5(:name::text));

EXECUTE meat_insert (:id + 44, md5(:name::text));

EXECUTE meat_insert (:id + 45, md5(:name::text));

EXECUTE meat_insert (:id + 46, md5(:name::text));

EXECUTE meat_insert (:id + 47, md5(:name::text));

EXECUTE meat_insert (:id + 48, md5(:name::text));

EXECUTE meat_insert (:id + 49, md5(:name::text));

EXECUTE meat_insert (:id + 50, md5(:name::text));

EXECUTE meat_insert (:id + 51, md5(:name::text));

EXECUTE meat_insert (:id + 52, md5(:name::text));

EXECUTE meat_insert (:id + 53, md5(:name::text));

EXECUTE meat_insert (:id + 54, md5(:name::text));

EXECUTE meat_insert (:id + 55, md5(:name::text));

EXECUTE meat_insert (:id + 56, md5(:name::text));

EXECUTE meat_insert (:id + 57, md5(:name::text));

EXECUTE meat_insert (:id + 58, md5(:name::text));

EXECUTE meat_insert (:id + 59, md5(:name::text));

EXECUTE meat_insert (:id + 60, md5(:name::text));

EXECUTE meat_insert (:id + 61, md5(:name::text));

EXECUTE meat_insert (:id + 62, md5(:name::text));

EXECUTE meat_insert (:id + 63, md5(:name::text));

EXECUTE meat_insert (:id + 64, md5(:name::text));

EXECUTE meat_insert (:id + 65, md5(:name::text));

EXECUTE meat_insert (:id + 66, md5(:name::text));

EXECUTE meat_insert (:id + 67, md5(:name::text));

EXECUTE meat_insert (:id + 68, md5(:name::text));

EXECUTE meat_insert (:id + 69, md5(:name::text));

EXECUTE meat_insert (:id + 70, md5(:name::text));

EXECUTE meat_insert (:id + 71, md5(:name::text));

EXECUTE meat_insert (:id + 72, md5(:name::text));

EXECUTE meat_insert (:id + 73, md5(:name::text));

EXECUTE meat_insert (:id + 74, md5(:name::text));

EXECUTE meat_insert (:id + 75, md5(:name::text));

EXECUTE meat_insert (:id + 76, md5(:name::text));

EXECUTE meat_insert (:id + 77, md5(:name::text));

EXECUTE meat_insert (:id + 78, md5(:name::text));

EXECUTE meat_insert (:id + 79, md5(:name::text));

EXECUTE meat_insert (:id + 80, md5(:name::text));

EXECUTE meat_insert (:id + 81, md5(:name::text));

EXECUTE meat_insert (:id + 82, md5(:name::text));

EXECUTE meat_insert (:id + 83, md5(:name::text));

EXECUTE meat_insert (:id + 84, md5(:name::text));

EXECUTE meat_insert (:id + 85, md5(:name::text));

EXECUTE meat_insert (:id + 86, md5(:name::text));

EXECUTE meat_insert (:id + 87, md5(:name::text));

EXECUTE meat_insert (:id + 88, md5(:name::text));

EXECUTE meat_insert (:id + 89, md5(:name::text));

EXECUTE meat_insert (:id + 90, md5(:name::text));

EXECUTE meat_insert (:id + 91, md5(:name::text));

EXECUTE meat_insert (:id + 92, md5(:name::text));

EXECUTE meat_insert (:id + 93, md5(:name::text));

EXECUTE meat_insert (:id + 94, md5(:name::text));

EXECUTE meat_insert (:id + 95, md5(:name::text));

EXECUTE meat_insert (:id + 96, md5(:name::text));

EXECUTE meat_insert (:id + 97, md5(:name::text));

EXECUTE meat_insert (:id + 98, md5(:name::text));

EXECUTE meat_insert (:id + 99, md5(:name::text));

EXECUTE meat_insert (:id + 100, md5(:name::text));

DEALLOCATE meat_insert;

END;

