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
