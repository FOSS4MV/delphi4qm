## Delphi4QM
### A Delphi and Free Pascal Wrapper for the QMClient C API


#### Introduction

Delphi4QM consists of two Object Pascal units that allow you to access the functionality provided by the QMClient C API from within your Delphi or Free Pascal (FPC) applications.

The QMClient API allows you to work with many aspects of your OpenQM database, such as session management, file handling, dynamic array manipulation, string manipulation, command and subroutine execution.

Until now, without a lot of work, the QMClient API was only available to developers using Visual Basic, PureBasic, or C.  Now, with these API wrappers specifically written in Object Pascal, Delphi and FPC developers can also enjoy easy to use connectivity between their applications and OpenQM databases.

These API wrappers are written to ensure ease of use.  No complicated pointer management or variable typecasting is required.  Your calls to the QMClient API functions use and return only three variable types - Boolean, Integer, and AnsiString!

Adding QMClient connectivity to your Delphi and FPC applications is simple.  Just add a single reference to the Uses clause of a project unit and the full QMClient API becomes available to that unit.


#### Features

* Compatible with Delphi & FPC on Windows, Linux, and OSX/BSD
* Complete access to the full QMClient API.
* No pointer management or typecasting.  Use standard Pascal types.
* Only a single unit reference added to your projects.


#### Compatibility

* Delphi: Tested D7, D2010, & DXE. Should work with all versions between D7 and DXE. May work with older versions.
* FPC: Tested 2.2.4 in compiler modes Object Pascal (-Mobjfpc) and Delphi (-Mdelphi). May work with older versions and other modes.
* OS: Tested with Delphi/FPC on Win32 and with FPC on Linux & OSX.
* QM: Tested versions 2.8-6 - 2.10-4 (Not all API functions are available for all versions. Check API documentation for your version of OpenQM)


#### Version History

2.0.4 / October 2010
   * Delphi XE compatibility verification
   * Corrected memory deallocation problem with QMError() API call.

2.0.3 / April 2010
   * Corrected 3 API calls not linking on FPC due to method name casing errors.

2.0.2 / April 2010
   * FPC compatibility update.  Removed use of "Result" variables in functions for better FPC compiler mode compatibility.

2.0.1 / April 2010
   * Minor changes to some method parameter types to prevent
     intermittent FPC compiler warnings.

2.0.0 / April 2010
   * Updated for compatibility with:
       * Delphi 7-2010 (Older versions may also work)
       * Free Pascal 2.2.4 (Older versions may also work)

   * Updated with all API items as of QM version 2.10-2

1.1.0 / November 2008
   * Updated to include new API items:
       * QMLogTo()
       * QMRecordLock()
       * QMTrapCallAbort()

1.0.0 / October 2006
   * First release


##### Information / Downloads
https://bitbucket.org/foss4mv/delphi4qm


##### Issue tracking / Feature requests
https://bitbucket.org/foss4mv/delphi4qm/issues
