@TITLE RSCDN Package Bundler
@ECHO OFF
java -Xms512m -Xmx1024m -cp ../rscdn-bundler.jar com.galkon.rscdn.Main true ../src/ ../bin/ ../index-identifiers.txt ../archive-identifiers.txt false
PAUSE