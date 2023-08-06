# WDLTransTest
Test environment for WDL transpiler and Acknex3 API compatibility.
It is used for batch testing successful transpilation of Acknex3 WDL files to C# code. The generated output can in turn be tested against the Acknex C# API.
This project is to be used in conjunction with [WDL2CS](https://github.com/firoball/WDL2CS) and [AcknexCSApi](https://github.com/firoball/AcknexCSApi).

![WdlTransTest](https://github.com/firoball/WDLTransTest/assets/4692010/b8b43e8d-1b6c-45b9-9af5-fde6dbdc1924)

## Usage

```WDLTransTest <config.xml> <testsuite.xml> [type1,type2,...]```

For convenience, *test.bat* in the repository root can be used for execution.

__Important:__ All path definitions given in any of the config and test xml files will be treated relative to the folder from where *WDLTransTest* is executed. This is not necessarily the same folder as where *WDLTransTest* is located (see *test.bat*).


Parameters:

```config.xml``` Configuration seetings related to transpiler and Acknex Api.

```testsuite.xml``` Several test cases arranged in testsuites.

```type1,type2,...``` Test type filters, e.g. ```transpiler``` or ```api```. By using a filter, only tests of the specified type will be executed.

## Dependencies

It is required to clone following repositories:

- [WDL2CS](https://github.com/firoball/WDL2CS)
- [AcknexCSApi](https://github.com/firoball/AcknexCSApi)

## Environment configuration

```
<!--adjust pathes to your environment//-->
<environment>
	<config type="generic">
		<msbuild>C:\Program Files (x86)\Microsoft Visual Studio\2017\Community\MSBuild\15.0\Bin\msbuild.exe</msbuild>
	</config>
	
	<config type="transpiler">
		<prj-path>d:\git\other\WDL2CS\code</prj-path>
		<vsproj>WDL2CS.csproj</vsproj>
		<out-path>out\build</out-path>
	</config>

	<config type="api">
		<prj-path>d:\git\other\AcknexCSApi\Acknex3Api</prj-path>
		<vsproj>Acknex3Api.csproj</vsproj>
		<out-path>out\build</out-path>
	</config>
</environment>
```
It is important to adjust ```<prj-path>``` to the file/project locations on the individual machine.
During testing, both Transpiler and the Acknex Api will be ocmpiled and copied to the folder specified with ```<out-path>```.
The ```type```attribute specifies what the config shall be used for specifically.

In general, the shown configuration layout does not need to be changed, except for the absolute pathes.

## Testsuites

A testsuite serves as container for one ore more tests. Standalone tests cannot be executed - a testsuite is always needed.

Testsuites can be nested. It is also possible to reference testsuites from external files by using the ```file``` attribute. The optional ```name``` attribute can be used to give tests a specific name - this helps keeping the overview in bigger testsuites.

### External testsuite reference

```
<testsuite name="Root">
	<testsuite file="test.xml"/>
</testsuite>
```

### Nested testsuites

```
<testsuite name="Root">
	<testsuite name="subsuite">
		<test name="Example" type="transpiler">
		</test>
	</testsuite>
</testsuite>
```

## Tests

Tests are mandatory to be children of a ```testsuite```. Tests must not be nested in each other.
Via the ```type```attribute, the type of test can be specified.

### Transpiler Test

```
<testsuite name="Kandoria">
	<test type="transpiler">
		<wdl-file>wdl\wok\game.wdl</wdl-file>
		<cs-file>out\cs\wok\game.cs</cs-file>
		<log-file>out\log\wok\transpile.log</log-file>
	</test>
</testsuite>
```

- ```<wdl-file>``` Main WDL file with path
- ```<cs-file>```  Output C# file with path __(optional)__
- ```<log-file>``` Output log file with path __(optional)__

### Acknex API Test

```
<testsuite name="Kandoria">
	<test type="api">
		<cs-file>out\cs\wok\game.cs</cs-file>
		<exe-file>out\log\wok\game.exe</exe-file>
		<log-file>out\log\wok\api.log</log-file>
	</test>
</testsuite>
```

- ```<cs-file>```  Output C# file with path 
- ```<exe-file>``` Non-funtional executable with path __(optional)__
- ```<log-file>``` Output log file with path __(optional)__

## Quickstart

1. Clone [WDL2CS](git@github.com:firoball/WDL2CS.git) and [AcknexCSApi](git@github.com:firoball/AcknexCSApi.git) repositories.
1. Clone [WdlTransTest](git@github.com:firoball/WDLTransTest.git) repository.
1. Go to ```code``` folder of *WdlTransTest* and open ```WDLTransTest.sln```.
1. Build Project in debug mode. ```code\bin\Debug\WDLTransTest.exe``` will be available after successful build.
1. Go to ```cfg```and adjust ```config.xml``` to your local setup. See [Environment configuration](#environment-configuration).
1. Go to project root and execute ```test wok.xml``` to run the *Kandoria* sample test.
1. If everything is configured alright, enjoy the show.

## Legal stuff

[https://firoball.de](https://firoball.de)

Please respect [license.txt](license.txt)
