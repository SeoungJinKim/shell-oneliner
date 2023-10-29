#!/bin/sh

# 줄 별로 파일을 읽어옴
while read line
do
  # 정규식으로 값 비교
  if [[ "$line" == *.exe$* ]]; then
    echo "$line"
  fi
done < files.txt

#다른 풀이
grep '\.exe$' files.txt

