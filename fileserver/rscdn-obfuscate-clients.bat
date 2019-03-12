@ECHO OFF
java -Xms2024m -Xmx8080m -jar assets/proguard/lib/proguard.jar @assets/solace-client.obf -dontwarn
pause