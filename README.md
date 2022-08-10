# InstallNimbusappEverywhere
Install Mark's version of Nimbusapp on Windows and Linux.

This modified nimbusapp script allows you to use a new syntax
"nimbusapp alm:latest up" to find and substitute the "latest"
published image wihout having to lookup that image number manually.
With verson 1.6.2_ms you can also use "nimbusapp alm purge" syntax
to delete the container(s) and remove the associated images. This is
equivalent to a "nimbusapp alm down" followed by a "docker rmi xxx".

It also stops the LR Agent on Windows platforms (like NimbusClient)
when starting the LRE container since that uses the same
port as LRE. When stopping the LRE containner it starts the agent.

So, when you "start" or "up" the LRE container on NimbusClient, it
automatically kills the LR agent process (magent.exe) before running
the LRE container.

Similarly, when you run a "down" or "stop" command on the LRE contaainer, it 
will start the LR Agent process. This allows for simplified demoing of LRP
showing script creation in VuGen followed by starting the LRE container to show
the creation and running of enterprise scenarios in LRE.
