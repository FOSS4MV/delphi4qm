# Delphi4QM
## A Delphi and Free Pascal Wrapper for the QMClient C API


### Introduction

Delphi4QM is an Object Pascal wrapper for the QMClient C API for use with Delphi or Free Pascal.

The QMClient API allows you to work with many aspects of your OpenQM database, such as session management, file handling, dynamic array manipulation, string manipulation, command and subroutine execution.

Until now, without a lot of work, the QMClient API was only available to developers using Visual Basic, PureBasic, or C.  Now, with Delphi4QM, Delphi and FPC developers can also enjoy easily implemented connectivity between their applications and OpenQM databases.

Delphi4QM was written to ensure ease of use.  No complicated pointer management or variable typecasting is required.  Your calls to the QMClient API functions use and return only three variable types - Boolean, Integer, and AnsiString!

Adding QMClient connectivity to your Delphi and FPC applications is simple.  Just add a single reference to a project unit.


### Features

* Compatible with Delphi & FPC on Windows, Linux, and OSX/BSD
* Complete access to the full QMClient API.
* No pointer management or typecasting.  Use standard Pascal types.
* Only a single unit reference added to your projects.


### Compatibility

* Delphi: Tested D7, D2010, & DXE. Should work with all versions between D7 and DXE. May work with older versions.
* FPC: Tested 2.2.4 in compiler modes Object Pascal (-Mobjfpc) and Delphi (-Mdelphi). May work with older versions and other modes.
* OS: Tested with Delphi/FPC on Win32 and with FPC on Linux & OSX.
* QM: Tested versions 2.8-6 - 2.10-4 (Not all API functions are available for all versions. Check API documentation for your version of OpenQM)
