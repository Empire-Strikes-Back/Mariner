#!/bin/bash



compile(){
  mkdir -p out
  rm -rf out/*.exe
  mcs \
    -out:out/Mariner-linux64-$(git rev-parse --short HEAD).exe \
    -r:System.Windows.Forms.dll \
    -r:System.Drawing.dll \
    -r:System.Data.dll \
    -resource:src/Mariner/basic.txt,basic.txt \
    -resource:src/Mariner/hard.txt,hard.txt \
    -resource:src/Mariner/hero.txt,hero.txt \
    -resource:src/Mariner/middleearth.txt,middleearth.txt \
    -resource:src/Mariner/movies.txt,movies.txt \
    -resource:src/Mariner/sport.txt,sport.txt \
    -resource:src/Mariner/starwars.txt,starwars.txt \
    -resource:src/Mariner/tech.txt,tech.txt \
    -resource:src/Mariner/villain.txt,villain.txt \
    -resource:src/Mariner/write.txt,write.txt \
    src/Mariner/*.cs
}

run(){
  mono out/Mariner-*.exe
}

"$@"