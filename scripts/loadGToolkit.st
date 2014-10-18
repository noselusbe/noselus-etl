Gofer new
     url: 'http://www.smalltalkhub.com/mc/Moose/GToolkit/main';
     configuration;
     load.
#ConfigurationOfGToolkit asClass loadDevelopment.

"Use the inspector"
#GTInspector asClass registerToolsOn: Smalltalk tools. 
"Use the debugger"
#GTGenericStackDebugger asClass registerToolsOn: Smalltalk tools.
"Use the playground"
#GTPlayground asClass registerToolsOn: Smalltalk tools.
 
"For back to normal workspace"
#Workspace asClass registerToolsOn: Smalltalk tools.