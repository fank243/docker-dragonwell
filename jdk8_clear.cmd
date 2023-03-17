#!/bin/bash

echo 开始清理

cd dragonwell-8.14.15

rmdir /s/q sample
rmdir /s/q man
rmdir /s/q jre\lib\jfr

del src.zip

del jre\bin\jjs
del jre\bin\keytool
del jre\bin\orbd
del jre\bin\pack200
del jre\bin\policytool
del jre\bin\rmid
del jre\bin\rmiregistry
del jre\bin\servertool
del jre\bin\tnameserv
del jre\bin\unpack200

del jre\lib\jfr.jar
del jre\lib\amd64\libawt_xawt.so
del jre\lib\ext\nashorn.jar

del lib\jconsole.jar
