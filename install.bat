@echo 'Start to build project'
@echo off
git clone https://github.com/xingshidongman/kalix-parent.git
cd kalix-parent
call mvn clean install
cd ..

git clone https://github.com/xingshidongman/framework-parent.git
cd framework-parent
call mvn -DskipTests=true clean install -P openshift-develop
cd ..

git clone https://github.com/xingshidongman/admin-parent.git
cd admin-parent
call mvn clean install
cd ..

git clone https://github.com/xingshidongman/middleware-parent.git
cd middleware-parent
call mvn clean install
cd ..

git clone https://github.com/xingshidongman/oa-parent.git
cd oa-parent
call mvn clean install
cd ..

git clone https://github.com/xingshidongman/common-parent.git
cd common-parent
call mvn clean install
cd ..

git clone https://github.com/xingshidongman/tools-parent.git
cd tools-parent
call mvn clean install
cd ..

@echo on
@echo 'Build project successfully!'
