# Modifying Data

## 1. Insert data into table

### ๐INSERT๋ฌธ
- ํ์ด๋ธ ์ด๋ฆ ๋ค ๊ดํธ ์์ ํ๋ ๋ชฉ๋ก ์์ฑ
- VALUES ํค์๋ ๋ค์ ๊ดํธ ์์ ํด๋น ํ๋์ ์ฝ์ํ  ๊ฐ ๋ชฉ๋ก ์์ฑ
    ```SQL
    INSERT INTO table_name (c1, c2, ...)
    VALUES (V1, V2, ...);
    ```
- CURDATE()

## 2. Update data in table

### ๐UPDATE๋ฌธ
- ํ์ด๋ธ ๋ ์ฝ๋ ์์ 
- SET์  ๋ค์์ ์์ ํ  ํ๋์ ์ ๊ฐ์ ์ง์ 
- WHERE์ ์์ ์์  ํ  ๋ ์ฝ๋๋ฅผ ์ง์ ํ๋ ์กฐ๊ฑด ์์ฑ(์ฐ์ง ์์ผ๋ฉด ๋ชจ๋  ๋ ์ฝ๋ ์์ ํ๊ฒ ๋จ)
    ```SQL
    UPDATE table_name
    SET column_name = expression,
    [WHERE
      condition];
    ```
## 3. Delete data from table

### ๐DELETE๋ฌธ
```SQL
DELETE FROM table_name
[WHERE
  condition];
```