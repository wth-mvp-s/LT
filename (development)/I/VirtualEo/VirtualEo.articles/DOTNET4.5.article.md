DOTNET4.5.article

    The SQL Server project Expaceo Virtual etc target .NET Framework 4.5, which is no longer supported. While you can change your target framework at any time , for stability and security we recomment that you move to a recent supported release. 

    I did not understood I think, I was hoping to open anyway; even if not supported anymore, but it seems it is not possible, I was trying to install .NET Framework 4.5 on my machine, but it is just VS2022 which are not allowing to open the project, Is that good understanding ? 

    IF I want to install as is, I will need to install previous version of Visual Studio, and adding the SDK would help here ... right ? 

    VS2022 and .NET Framework 4.5: Visual Studio 2022 doesn't support creating new .NET Framework 4.5 projects out of the box, but it should still be able to open and build existing projects targeting this framework version, assuming you have the necessary components installed.

ANSWER 
    Installing .NET Framework 4.5 SDK: You were correct in trying to install the .NET Framework 4.5 SDK, but as you've noticed, VS2022 might not have this option readily available. Instead, it offers newer versions, such as 4.5.2 or 4.6.1, which are backward-compatible updates. If you install one of these, you should be able to open a project that targets 4.5, but be careful about accidentally upgrading the project.

    Using an Older Visual Studio Version: If you want to work with .NET Framework 4.5 without any hassles, you might consider installing an older version of Visual Studio, like Visual Studio 2017 or 2019. These versions offer direct support for .NET Framework 4.5 projects, and you can have multiple versions of Visual Studio installed on the same machine without conflicts.

    Upgrading the Project: Given that .NET Framework 4.5 is no longer supported, you might also consider upgrading the project to a newer, supported version of .NET Framework, such as 4.5.2, 4.6, 4.7, or even 4.8. This can usually be done from within Visual Studio by right-clicking on the project, selecting "Properties", and then changing the target framework. However, you should test your application thoroughly after doing so to ensure everything works as expected.

    To summarize:

    Yes, you've understood correctly. If you want to work with the project "as is" without changing its target framework, you might have an easier time with an older version of Visual Studio.
    Installing the SDK for a slightly newer but backward-compatible version (like 4.5.2) might allow you to open the project in VS2022. Still, you should be cautious about unintentionally upgrading the project.

SDK build
Runtime run 