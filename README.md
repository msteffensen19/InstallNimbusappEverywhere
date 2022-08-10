# InstallNimbusappEverywhere
Install Mark's version of Nimbusapp on Windows and Linux.

This modified nimbusapp script allows you to use a new syntax
"nimbusapp alm:latest up" to find and substitute the "latest"
published image wihout having to lookup that image number manually.
You can also use "nimbusapp alm purge" syntax to delete the selected
container(s) and remove the associated images. This is equivalent
to a "nimbusapp alm down" followed by a "docker rmi admpresales/alm".

On Windows platforms (like NimbusClient or NimbusWindows) it also stops
the LR Agent when starting the LRE container since that service uses the
same port as LRE. When stopping the LRE containner it starts the agent.

So, when you "start" or "up" the LRE container on NimbusClient, it
automatically kills the LR agent process (magent.exe) before running
the LRE container.

Similarly, when you run a "down" or "stop" command on the LRE contaainer, it 
will start the LR Agent process. This allows for simplified demoing of LRP
showing script creation in VuGen followed by starting the LRE container to show
the creation and running of enterprise scenarios in LRE.
