# 끝말잇기 미니 게임

## 게임 규칙

- 목숨 갯수는 3개입니다. 3번 틀릴 시 Game Over입니다.
- 상대편 플레이어는 컴퓨터입니다. 컴퓨터가 답을 하지 못하면 플레이어가 승리합니다.
- 입력 제한 시간은 3분입니다.

## 기능

- 몇 단어까지 끝말잇기를 하였는지 스코어를 계속 표시합니다.
- 컴퓨터가 상대편이 되어 끝말잇기를 플레이합니다.

## 게임 진행

1. 첫 단어는 주어집니다.
2. 첫 단어에 맞는 끝말잇기 단어를 키보드를 통해 입력하세요.
3. 끝말이 맞는지 체크를 합니다. 체크를 통과한다면 컴퓨터가 끝말잇기를 플레이합니다. 틀리다면 에러와 함께 다시 입력을 해야합니다. 목숨 갯수가
   차감됩니다.
4. 컴퓨터가 끝말잇기 단어를 입력하면 다시 `진행 2번`으로 돌아가 단어를 입력합니다. 만약 컴퓨터가 끝말잇기 단어를 입력하지 못했다면, 승리하게 됩니다.
5. 승리하면 최종 점수와 내가 끝말잇기를 했던 모든 단어들이 표시됩니다.
