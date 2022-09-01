# InstallNimbusappEverywhere
Install Mark's version of Nimbusapp on Windows and Linux.

This modified nimbusapp script adds the following new features:
1. Enables using "latest" option when supplying a version.
2. Enables using "purge" option to remove containers and images.
3. Enables stopping/starting the LR Agent process on Windows.

The commands "nimbusapp alm:latest up" will find and substitute the "latest"
published image wihout having to lookup that image number manually.

The command "nimbusapp alm purge" will delete the selected
container(s) and remove the associated images. This is equivalent
to a "nimbusapp alm down" followed by a "docker rmi admpresales/alm".

This command "nimbusapp alm bounce" will run a 'down' and then an 'up'
on the selected container(s). it also works with 'downup' instead of 'bounce'.

On Windows platforms (like NimbusClient or NimbusWindows) this modified
nimbusapp command will stop the LR Agent when starting the LRE container
since that service uses the same port as LRE. When stopping the LRE containner
it starts the agent.

So, when you "start" or "up" the LRE container on NimbusClient, it
automatically kills the LR agent process (magent.exe) before running
the LRE container.

Similarly, when you run a "down" or "stop" command on the LRE contaainer, it 
will start the LR Agent process. This allows for simplified demoing of LRP
showing script creation in VuGen followed by starting the LRE container to show
the creation and running of enterprise scenarios in LRE.
