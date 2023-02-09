# 완전탐색(Exhaustive Search)

1. 무식하게 다해보기(Brute-force)
- 모든 경우의 수를 탐색하여 문제 해결하는 방식


2. 델타 탐색(Delta Search)
- (0,0)에서부터 이차원 리스트의 모든 원소를 순회하며(완전탐색), 각 지점에서 상하좌우에 위치한 다른 지점을 조회하거나 이동하는 방식
- 이차원 리스트의 인덱스(좌표)의 조작을 통해 탐색
- 행과 열의 `변량`인 -1, +1이 `델타(delta)값`

- 과정
```python
# 1. 변량 구하기 (x, y)
# 상하좌우(dx와 dy를 합치면, 좌표가 완성되는 구성)
dx = [-1, 1, 0, 0]
dy = [0, 0, -1, 1]

# 2. 상하좌우 이동하기
## 상(x -1, y)
nx = x + dx[0]
ny = y + dy[0]

## 하(x + 1, y)
nx = x + dx[1]
ny = y + dy[1]

## 좌(x, y - 1)
nx = x + dx[2]
ny = y + dy[2]

## 우(x, y + 1)
nx = x + dx[3]
ny = y + dy[3]

## 상하좌우(for문)
for i in range(4):
  nx = x + dx[i]
  ny = y + dy[i]

  # 범위 벗어나지 않으면 갱신
  if 0 <= nx <= 3 and 0 <= ny <= 3:
    x = nx
    y = ny 
    # 왜 갱신하지?
    # for문 안에 있는 if문으로, x를 nx로 갱신해주지 않으면, 움직이지 않는다.
```

- 정리
```python
# 1. 델타값 정의
dx = [-1, 1, 0, 0]
dy = [0, 0, -1, 1]

# 2. 이차원 리스트 순회
for x in range(n):
  for y in range(m):

    # 3. 상하좌우 이동
    for i in range(4):
      nx = x + dx[i]
      ny = y + dy[i]

      # 4. 범위값 설정
      if 0 <= nx <= n and 0 <= ny <= m:
        x = nx
        y = ny

# 번외) 상하좌우 + 대각선
dx = [-1, 1, 0, 0, -1, 1, -1, 1]
dy = [0, 0, -1, 1, -1, -1, 1, 1] 
```
