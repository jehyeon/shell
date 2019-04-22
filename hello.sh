#!/bin/sh
# 주석은 '#'을 사용합니다.

# 변수에 값을 할당
# 대입연산자 사이에는 공백이 포함되면 안됩니다.
firstWord="Hello"
secondWord="world"

# 화면 출력 (echo)
echo '[Result]'
# 변수 사용을 위하여 앞에 '$'를 붙입니다.
# 이 경우에는 ""를 사용해야 합니다.
echo "$firstWord $secondWord"
# 변수와 text를 같이 사용하는 경우 잘못 인식되지 않도록 {}을 사용합니다
echo "$firstWordword"       # 해당 변수가 없어서 공백 출력
echo "${firstWord}world"


### 6.3 제어구조 추가하기
### 6.5 Quoting 디테일 하게 설명하기
### 6.6 함수 추가

### 7 예제 추가하기