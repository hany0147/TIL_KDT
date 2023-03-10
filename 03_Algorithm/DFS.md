# ๐ ๊น์ด์ฐ์ ํ์(DFS)
## 1. ๊ทธ๋ํ ํ์ ์๊ณ ๋ฆฌ์ฆ
- ๊ทธ๋ํ ์๋ฃ๊ตฌ์กฐ๋ `ํ์` ์๊ณ ๋ฆฌ์ฆ์ ํ์ฉ๋จ
- ์์ ์ ์ ์์ **๊ฐ์ ์ ํ๊ณ  ์ด๋ํ  ์ ์๋ ๋ชจ๋  ์ ์ ์ ์ฐพ๋** ์๊ณ ๋ฆฌ์ฆ
- ํด๋น ์๊ณ ๋ฆฌ์ฆ์ (1) ๊น์ด์ฐ์ ํ์(DFS), (2) ๋๋น์ฐ์ ํ์(BFS)๊ฐ ์์
  - DFS: ์คํ + ๊ทธ๋ํ
  - BFS: ํ + ๊ทธ๋ํ

## 2. ๊น์ด์ฐ์ ํ์(Depth-First Search)
- ์์ ์ ์ ๋ถํฐ ๊ฐ ์ ์๋ ํ์ ์ ์ ๊น์ง ๊ฐ์ฅ ๊น๊ฒ ํ์ํ๊ณ , ๋์ด์ ๊ฐ ๋ฐ๊ฐ ์์ผ๋ฉด ๊ฐ์ฅ ์ธ์ ํ ์์ ์ ์ ์ผ๋ก ๋์์์ ๋ ๋ค๋ฅธ ํ์ ์ธ์  ์ ์ ์ ํ์ํ๋ ๋ฑ ๋ชจ๋  ์ ์ ์ ์ํํ๋ ๋ฐฉ๋ฒ
- ๋ชจ๋  ์ ์  ๋ฐฉ๋ฌธ ๋ ์ ๋ฆฌ
  - `๊ฒฝ์ฐ์ ์`, `์์ด๊ณผ ์กฐํฉ` ๋ฌธ์ ์์ ๋ง์ด ์ฌ์ฉ
- BFS์ ๋นํด ์ฝ๋ ๊ตฌํ์ด ๊ฐ๋จํจ
  - ๋จ, ๋ชจ๋  ์ ์ ์ ๋ฐฉ๋ฌธํ  ํ์๊ฐ ์๊ฑฐ๋, ์ต๋จ ๊ฑฐ๋ฆฌ๋ฅผ ๊ตฌํ๋ ๊ฒฝ์ฐ๋ BFS๋ก

## 3. DFS ๋์ ๊ณผ์ 
1. ํ์์ ์งํํ  ๊ทธ๋ํ ํ์
    - ์ธ์  ํ๋ ฌ
    - ์ธ์  ๋ฆฌ์คํธ
2. ๊ฐ ์ ์  **๋ฐฉ๋ฌธ ์ฌ๋ถ๋ฅผ ํ์ธ**ํ  ์ฒดํฌ๋ฆฌ์คํธ ํ์
3. ์ ์  ๋ฐฉ๋ฌธ์ฒ๋ฆฌ
4. ์คํ์ ๊ฐ ์ฝ์
5. ์คํ์ ๋ง์ง๋ง ๊ฐ ๊บผ๋ด๊ณ  ์ธ์  ์ ์  ํ์ธ
6. ๋ฐฉ๋ฌธํ์ง ์์ ์ธ์ ์ ์  ์์ ๊ฒฝ์ฐ -> 3๋ฒ์ผ๋ก ํ๊ท
7. ๋์ด์ ์คํ์ด ์๋ค๋ฉด ์ข๋ฃ

## 4. DFS ๊ตฌํ ๋ฐฉ์
```python
# 1. ๊ทธ๋ํ ๋ง๋ค๊ธฐ
graph = [
  [1, 2],
  [0, 3, 4],
  [0, 4, 5],
  [1],
  [1, 2, 6],
  [2],
  [4]
]

n = len(graph) # ์ ์ ์ ๊ฐ์

# 2. ์ฒดํฌ๋ฆฌ์คํธ(๋ฐฉ๋ฌธ์ฌ๋ถํ์ธ์ฉ) ๋ง๋ค๊ธฐ
visited = [False] * n

start = 0 # ์์ ์ ์ (์์: 0)
stack = [start] # ๋์๊ฐ ์ ์  ๊ธฐ๋ก
visited[start] = True # ์์ ์ ์  ๋ฐฉ๋ฌธ ์ฒ๋ฆฌ

while stack: # ์คํ์ด ๋น ๋๊น์ง ๋ฐ๋ณต(๋์๊ฐ ์ ์ ์ด ์์ ๋ ๊น์ง)
  cur = stack.pop() # ํ ๋ฐฉ๋ฌธ ์ ์ 
  for adj in graph[cur]: # ์ธ์ ํ ๋ชจ๋  ์ ์ ์ ๋ํด
    if not visited[adj]: # ๋ฏธ๋ฐฉ๋ฌธ ์ธ์  ์ ์ ์ธ ๊ฒฝ์ฐ (False์ธ ๊ฒฝ์ฐ)
      visited[adj] = True # ๋ฐฉ๋ฌธ ์ฒ๋ฆฌ
      stack.append(adj) # ์คํ์ ํด๋น ์ธ์  ์ ์ ์ ์ถ๊ฐํจ.
```

## 5. ์ด์ฐจ์ ๊ฒฉ์์์์ DFS
> ๋ธํ๊ฒ์๋ถํฐ ๋ณต์ตํ  ํ์๊ฐ ์๋ค.
## 99. ์ฐธ๊ณ  ๋ฌธ์ 
[BOJ ๋ฐ์ด๋ฌ์ค ๋ฌธ์ ](https://www.acmicpc.net/problem/2606)