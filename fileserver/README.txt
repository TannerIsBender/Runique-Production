~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
RSCDN
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

Cache files are located in /src/. This is where the raw cache files are stored. Be very careful, if you are unsure about where to place a file or something, please ask.

NOTE: To automate the full build process, run 'rscdn-deploy.bat'. This will do the 3 steps below automatically for you.

Step 1
Obfuscate the client.jar by running 'run/rscdn-obfuscate.bat'. This will obfuscate the client.jar and automatically place the obfuscated client in the proper archive folder (src/archives/code/code.jar).

Step 2
Build the cache by running 'run/rscdn-build.bat'. This will wrap the /src/ folder in the proper cache format and write it out to /bin/.

Step 3
Stream the cache in by running 'run/rscdn-distribute.bat'. This will run the file server to stream the cache in the /bin/ folder.

~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

For adding new models >= 65535 and/or custom models (must be ID 65535 or greater):

	1) Place models in model_extended folder in gzipped format.
	2) Run 'run/ExtendedModelRenamer.bat'. This will rename any model files >= 65535 to their appropriate name for the client to request it.
	3) Build the cache and stream it to apply updates.
	
For adding new archives:

	1) Please ask for more information on how to add new archives. This will throw off the loader if any are added or deleted.