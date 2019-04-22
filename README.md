# Shell 프로그래밍
shell 프로그래밍 공부 및 리마인딩을 위해 작성했습니다.

> 이 문서는 `bash(bourne again shell)` 기준으로 작성되었습니다. ([출처](https://wiki.kldp.org/Translations/html/Shell_Programming-KLDP))

---
### ?. 유닉스 명령어
쉘 스크립트는 유닉스 명령어들의 집합이므로 유닉스 명령어에 대한 어느정도의 숙지가 필요합니다.

**자주 사용되는 유닉스 명령**
*표기된 명령어 테스트 해보기

command                 | comment
------------------------|----------------------------------
echo "Hello world"      | Hello world를 화면에 출력
wc -l file              | 파일의 라인 수
cp sourefile destfile   | sourcefile을 destfile로 복사
mv oldname newname      | 파일 이름을 바꾸거나 파일 이동
rm file                 | 파일 지우기
grep 'pattern' file     | 파일에서 pattern 문자열 찾기
*cub -b colum file      | 파일에서 문자열을 colum 단위로 보여줌
cat file                | 파일을 표준출력(stdout)
file somefile           | somefile의 파일 타입 확인
read var                | 입력 값을 변수명 var에 대입
*uniq                   | 파일에서 중복되는 문자열 삭제
*tee                    | 표준출력되는 정보를 파일로 쓰기
basename file           | 디렉토리 명을 제외한 파일 이름 확인
dirname file            | 파일 이름을 제외한 디렉토리 경로 확인
head file               | 파일의 처음 몇 라인 출력
tail file               | 파일의 마지막 몇 라인 출력
*sed                    | 정규표현에 의한 문자열 검색 및 치환에 사용

### ?. pipes와 redirection
`pipes(|)`는 하나의 프로그램을 실행시켜 발생된 표준출력 데이터를 다른 프로그램의 표준입력으로 쓰고자 할 때 사용된다.
```
grep "hello" file.txt | wc -l
```
위 명령어는 'file.txt'에서 'hello' 문자열을 포함한 라인 수를 보여준다.

`redirection`은 어떤 프로그램의 출력 정보를 다른 곳으로 향하게 할 때 쓰인다. 주로 파일 저장에 사용된다.
```
cat address.txt | grep "seoul" > seoul.txt
```
위 명령어는 주소 정보가 담긴 'address.txt'에서 'seoul'인 주소지만 'seoul.txt'에 저장하는 일을 수행한다.

`>` 대신 `>>`을 사용할 경우 그 파일 마지막 부분에 덧 붙여 쓰여진다.

### ?. 첫 번째 스크립트
쉘 프로그래밍의 첫 번째 라인은 아래와 같은 라인을 포함해야 합니다.
```
#!/bin/sh
```
`#!` 뒤에 오는 argument를 실행프로그램을 사용한다는 것을 명시하기 위해 사용합니다. 

리눅스는 파일의 확장자명으로 실행파일 여부를 결정하지 않기 때문에 파일권한 설정을 이용하여 실행파일로 만들어야 합니다.
```
chomod +x filename
```

### ?. 명령행 인자(argument)
6.7
### ?. 간단하게 표현하기
6.4
### ?. 대화 모드
5
### ?. 디버깅
7.3
### ?. 효율적인 작업을 위해서
