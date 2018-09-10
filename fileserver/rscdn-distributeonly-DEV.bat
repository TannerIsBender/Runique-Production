@TITLE RSCDN Distributor (DEV)
@ECHO OFF
java -cp ./lib/rscdn-distributor.jar com.galkon.FileServer 43596 43592 ./devbin/ ./assets/archive-identifiers.txt true false
PAUSE