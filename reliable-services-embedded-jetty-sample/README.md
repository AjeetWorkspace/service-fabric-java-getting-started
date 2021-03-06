# Embedded Jetty Sample

This sample illustrates how to run an embedded Jetty server within a Service Fabric stateless service. The instructions to deploy this to Service Fabric are the same as the [Java Quickstart](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-quickstart-java-reliable-services). The service running the Jetty server in this sample can be used as the front end stateless service in the **reliable-services-httpcommunication-sample** as an alternative to the simple microserver used in that sample. 

## Contents 

The entire application can be built at once from this root folder using Gradle. The root folder contains the necessary packages for this sample. The structure of the root folder is defined in the table below. 

Folder | Description |
--- | --- |
build | This folder contains assets generated by the Gradle build |
Scripts | Contains helper scripts to manage operations of application against the Service Fabric cluster |
PublishProfiles | Contains JSON files that define the cluster the application is targetted for. This is only used by the Eclipse plugin to deploy application to Azure and local Service Fabric envrionments|
EmbeddedJettyApplication | This folder is the Application Package that gets published to Service Fabric. It contains the manifest that defines the application and packages defining each service. For more information on the application model, please visit our [documentation](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-application-model).| 
EmbeddedJettyServer | This folder contains the source code for the stateless service that runs the embedded Jetty server. 

### Steps to load a project in eclipse

1. Import the project using "Import Projects form File System or Archive" wizard.
2. Build the project form the Service Fabric context menu.
3. Perform "Refresh Gradle Project" from Gradle context menu.
4. If the imported project has a web service configure your workspace/project ignore Forbidden reference errors.

## Next steps 

* [How to use service remoting for communication between services](https://docs.microsoft.com/en-us/azure/service-fabric/service-fabric-reliable-services-communication-remoting-java)
* [Service remoting sample](https://github.com/Azure-Samples/service-fabric-java-quickstart)