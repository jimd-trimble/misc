call cf & cd .. & "C:\Program Files (x86)\MSBuild\14.0\Bin\MSBuild.exe" -maxcpucount:3 /t:Clean;Rebuild /p:Configuration=Rogue /p:VisualStudioVersion=14.0 "/p:Platform=Any CPU" /p:DeployOnBuild=true ConnectedFarm.sln

exit 0