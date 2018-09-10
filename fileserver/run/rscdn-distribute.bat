@TITLE RSCDN Distributor
@ECHO OFF
java -cp ../lib/rscdn-distributor.jar com.galkon.FileServer 43595 43593 ../bin/ ../assets/archive-identifiers.txt true false
PAUSE