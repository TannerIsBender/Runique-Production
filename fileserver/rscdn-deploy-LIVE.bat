@ECHO OFF
TITLE RSCDN-LIVE
java -jar ./assets/proguard/lib/proguard.jar @assets/client.obf
java -Xms5212m -Xmx8024m -cp ./lib/rscdn-bundler.jar com.galkon.rscdn.Main false ./src/ ./bin/ ./assets/index-identifiers.txt ./assets/archive-identifiers.txt false
java -cp ./lib/rscdn-distributor.jar com.galkon.FileServer 43595 43593 ./bin/ ./assets/archive-identifiers.txt true false
pause