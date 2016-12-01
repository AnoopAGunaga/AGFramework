# AGFramework
Repository for Dynamic Framework assignment

STEPS TO INTEGRATE : 

- Manual integration

1. Drag and drop ‘AGFramework.framework’ into the project folder

2. Call SDK initialise method as
	 [[AGFramework sharedInstance] initialise:KEY logLevel:LOGLEVEL];
KEY - SDK License key (Sample key : dsfkhskjdfbksjdfkjsdf)

	LOG LEVEL - There are 3 types 
	(a) All - (eAGFrameworkLogLevelAll)
	(b) Minimal - (eAGFrameworkLogLevelMinimal)
	(c) Error (eAGFrameworkLogLevelError)

3. Post the event as a dictionary using the AGFrameworkEvent class
	[AGFrameworkEvent postEventInfo:@{@“AppVersion”:@“1.0”}];




- Cocoapod integration

1. Navigate to your project folder

2. run ‘pod init’ command
	- Pod file will be generated.

3. open Podfile created and add below line under your project target
	- pod ‘AGFramework’, ‘~> 1.0’

4. Save it. 
5. Run ‘pod install’
