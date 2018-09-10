@ECHO OFF
TITLE RSCDN-DEV
java -jar ./assets/proguard/lib/proguard.jar @assets/client.obf
java -Xms512m -Xmx1024m -cp ./lib/rscdn-bundler.jar com.galkon.rscdn.Main false ./src/ ./devbin/ ./assets/index-identifiers.txt ./assets/archive-identifiers.txt false
java -cp ./lib/rscdn-distributor.jar com.galkon.FileServer 43596 43592 ./devbin/ ./assets/archive-identifiers.txt true false
pause