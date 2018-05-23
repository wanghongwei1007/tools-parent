cd kalix-parent && git pull origin master && mvn clean install || exit -1
cd ..

cd framework-parent && git pull origin master && mvn -DskipTests=true clean install || exit -1
cd ..

cd admin-parent && git pull origin master && mvn  -DskipTests=true clean install || exit -1
cd ..

cd middleware-parent && git pull origin master && mvn  -DskipTests=true clean install || exit -1
cd ..

cd oa-parent && git pull origin master && mvn clean install || exit -1
cd ..

cd common-parent && git pull origin master && mvn clean install || exit -1
cd ..

cd tools-parent && git pull origin master && mvn clean install || exit -1
cd ..