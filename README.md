SonarQube Server Groovy Plugin 
==========

This is a plugin that allows Sonarqube to read and analyse Groovy code. 
The goals are : 
- Run a lint with CodeNarc and display the result on sonarqube 
- To be able to read a Jacoco coverage report and display it on Sonarqube
- While the plugin is made with Groovy in mind, it should work with Jenkinsfile

Back-end
--------

Todo...

### Building

To build the plugin JAR file, call:

```
mvn clean package
```

The JAR will be deployed to `target/sonar-example-plugin-VERSION.jar`. Copy this to your SonarQube Server's `extensions/plugins/` directory, and restart the server.
