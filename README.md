# StanfordNlpSyncScript
Stanford NLP models jar is very huge and for active development, syncing it to a server is very costly in terms of latency, Here's my solution

The trick is to make the war smaller by excluding the models jar. This saves about 220MB of network transfer when you sync between local and production
The smaller war can then be transferred to the production setup where a one time copy of the models jar is kept in a specific location which is specified in the bash script.

The script will not run out of the box so please understand before use