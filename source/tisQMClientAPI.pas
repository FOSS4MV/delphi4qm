unit tisQMClientAPI;
{
 The Delphi4QM Delphi and Free Pascal wrapper for The QMClient C API is
 distributed under a BSD style license.

 tisQMClientAPI.pas
 Delphi4QM - A Delphi and Free Pascal Wrapper for the QMClient C API
 Copyright (c) 2006-2013, Trident Information Systems, Inc.
 All rights reserved.

 Redistribution and use in source and binary forms, with or without
 modification, is permitted provided that the following conditions are met:

     * Redistributions of source code must retain the above copyright
       notice, this list of conditions and the following disclaimer.
     * Redistributions in binary form must reproduce the above copyright
       notice, this list of conditions and the following disclaimer in the
       documentation and/or other materials provided with the distribution.
     * The name, "Trident Information Systems" may not be used to endorse
       or promote products derived from this software without specific prior
       written permission.

 THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS "AS IS" AND ANY
 EXPRESSED OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
 WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
 DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT HOLDERS BE LIABLE FOR ANY
 DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
 (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES;
 LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
 ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT
 (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS
 SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
}

// Version 2.0.5 / March 2013
//
// This unit (tisQMClientAPI) is the base API wrapper for the QMClient
// API as defined in qmclilib.dll (windows) and libqmclient.a (Linux/OSX/BSD).
//
// You *can* use this unit directly, but most application programmers should
// use tisQMClient.  This unit is required by tisQMClient, so it must be
// availaible in the your Library Path.  Please read the documention for
// more details on this unit.

//Verify platform support (Linux, BSD/OSX, Windows)

{$IFNDEF LINUX}
{$IFNDEF BSD}
{$IFNDEF MSWINDOWS}
   {$MESSAGE ERROR 'Platform not supported'}
{$ENDIF}
{$ENDIF}
{$ENDIF}

{$IFDEF UNIX}
   {$LinkLib libqmclient}
   {$UNDEF USEDLL}
{$ELSE}
   {$DEFINE USEDLL}
{$ENDIF}

interface

// ** Server error status values **
// If you are using this unit alone, you may wish to use the following
// constants.  To do so, simply uncomment them by removing the braces {}.
// If you are using the Unit tisQMClient, these constants are already defined
// there, so there is no need to uncomment them here.

{
const
  SV_OK = 0;       // * Action successful
  SV_ON_ERROR = 1; // * Action took on ERROR clause
  SV_ELSE = 2;     // * Action took else clause
  SV_ERROR = 3;    // * Action failed.Error text available
  SV_LOCKED = 4;   // * Action took LOCKED clause
  SV_PROMPT = 5;    // * Server requesting input

  QMDateOffset = 24837; // * Add to QM Dates to get TDate value
}

procedure QMCall(subrname: PAnsiChar; argc: Integer);overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1: PAnsiChar);overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19: PAnsiChar); overload; cdecl;
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20: PAnsiChar); overload; cdecl;
function QMChange(src, old_string, new_string: PAnsiChar; occurrences, start: Integer): PAnsiChar; cdecl;
procedure QMClearSelect(listno: Integer); cdecl;
procedure QMClose(fno: Integer); cdecl;
function QMConnect(host: PAnsiChar; port: Integer; username, password, account: PAnsiChar): Integer; cdecl;
function QMConnected: Integer; cdecl;
procedure QMConnectionType(con_type: Integer); cdecl;
function QMConnectLocal(account: PAnsiChar): Integer; cdecl;
function QMDcount(src, delim: PAnsiChar): Integer; cdecl;
function QMDel(src: PAnsiChar; fno, vno, svno: Integer): PAnsiChar; cdecl;
procedure QMDelete(fno: Integer; id: PAnsiChar); cdecl;
procedure QMDeleteu(fno: Integer; id: PAnsiChar); cdecl;
procedure QMDisconnect; cdecl;
procedure QMDisconnectAll; cdecl;
procedure QMEndCommand; cdecl;
function QMError: PAnsiChar; cdecl;
function QMExecute(cmnd: PAnsiChar; var err: Integer): PAnsiChar; cdecl;
function QMExtract(src: PAnsiChar; fno, vno, svno: Integer): PAnsiChar; cdecl;
function QMField(src, delim: PAnsiChar; frist, occurences: Integer): PAnsiChar; cdecl;
procedure QMFree(p: PAnsiChar); cdecl;
function QMGetSession: Integer; cdecl;
function QMIns(src: PAnsiChar; fno, vno, svno: Integer; new_string: PAnsiChar): PAnsiChar; cdecl;
function QMLocate(item, src: PAnsiChar; fno, vno, svno: Integer; var pos: Integer; order: PAnsiChar): Integer; cdecl;
function QMLogto(account: PAnsiChar): Integer; cdecl;
procedure QMMarkMapping(fno, state: Integer); cdecl;
function QMMatch(str, pattern: PAnsiChar): Integer; cdecl;
function QMMatchfield(str, pattern: PAnsiChar; component: Integer): PAnsiChar; cdecl;
function QMNextPartial(listno: Integer): PAnsiChar; cdecl;
function QMOpen(filename: PAnsiChar): Integer; cdecl;
function QMRead(fno: Integer; id: PAnsiChar; var err: Integer): PAnsiChar; cdecl;
function QMReadl(fno: Integer; id: PAnsiChar; wait: Integer; var err: Integer): PAnsiChar; cdecl;
function QMReadList(listno: Integer): PAnsiChar; cdecl;
function QMReadNext(listno: Integer): PAnsiChar; cdecl;
function QMReadu(fno: Integer; id: PAnsiChar; wait: Integer; var err: Integer): PAnsiChar; cdecl;
procedure QMRecordlock(fno: Integer; id: PAnsiChar; update: Integer; wait: Integer); cdecl;
procedure QMRelease(fno: Integer; id: PAnsiChar); cdecl;
function QMReplace(src: PAnsiChar; fno, vno, svno: Integer; new_string: PAnsiChar): PAnsiChar; cdecl;
function QMRespond(response: PAnsiChar; var err: Integer): PAnsiChar; cdecl;
procedure QMSelect(fno, listno: Integer); cdecl;
procedure QMSelectIndex(fno: Integer; indexname, indexvalue: PAnsiChar; listno: Integer); cdecl;
function QMSelectLeft(fno: Integer; indexname: PAnsiChar; listno: Integer): PAnsiChar; cdecl;
function QMSelectPartial(fno, listno: Integer): PAnsiChar; cdecl;
function QMSelectRight(fno: Integer; indexname: PAnsiChar; listno: Integer): PAnsiChar; cdecl;
procedure QMSetLeft(fno: Integer; indexname: PAnsiChar); cdecl;
procedure QMSetRight(fno: Integer; indexname: PAnsiChar); cdecl;
function QMSetSession(session: Integer): Integer; cdecl;
function QMStatus: Integer; cdecl;
procedure QMTrapCallAbort(mode: Integer); cdecl;
procedure QMWrite(fno: Integer; id, data: PAnsiChar); cdecl;
procedure QMWriteu(fno: Integer; id, data: PAnsiChar); cdecl;

implementation

procedure QMCall(subrname: PAnsiChar; argc: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
procedure QMCall(subrname: PAnsiChar; argc: Integer; a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMCall'{$ENDIF};
function QMChange(src, old_string, new_string: PAnsiChar; occurrences, start: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMChange'{$ENDIF};
procedure QMClearSelect(listno: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMClearSelect'{$ENDIF};
procedure QMClose(fno: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMClose'{$ENDIF};
function QMConnect(host: PAnsiChar; port: Integer; username, password, account: PAnsiChar): Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMConnect'{$ENDIF};
function QMConnected: Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMConnected'{$ENDIF};
procedure QMConnectionType(con_type: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMConnectionType'{$ENDIF};
function QMConnectLocal(account: PAnsiChar): Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMConnectLocal'{$ENDIF};
function QMDcount(src, delim: PAnsiChar): Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMDcount'{$ENDIF};
function QMDel(src: PAnsiChar; fno, vno, svno: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMDel'{$ENDIF};
procedure QMDelete(fno: Integer; id: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMDelete'{$ENDIF};
procedure QMDeleteu(fno: Integer; id: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMDeleteu'{$ENDIF};
procedure QMDisconnect; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMDisconnect'{$ENDIF};
procedure QMDisconnectAll; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMDisconnectAll'{$ENDIF};
procedure QMEndCommand; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMEndCommand'{$ENDIF};
function QMError: PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMError'{$ENDIF};
function QMExecute(cmnd: PAnsiChar; var err: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMExecute'{$ENDIF};
function QMExtract(src: PAnsiChar; fno, vno, svno: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMExtract'{$ENDIF};
function QMField(src, delim: PAnsiChar; frist, occurences: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMField'{$ENDIF};
procedure QMFree(p: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMFree'{$ENDIF};
function QMGetSession: Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMGetSession'{$ENDIF};
function QMIns(src: PAnsiChar; fno, vno, svno: Integer; new_string: PAnsiChar): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMIns'{$ENDIF};
function QMLocate(item, src: PAnsiChar; fno, vno, svno: Integer; var pos: Integer; order: PAnsiChar): Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMLocate'{$ENDIF};
function QMLogto(account: PAnsiChar): Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMLogto'{$ENDIF};
procedure QMMarkMapping(fno, state: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMMarkMapping'{$ENDIF};
function QMMatch(str, pattern: PAnsiChar): Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMMatch'{$ENDIF};
function QMMatchfield(str, pattern: PAnsiChar; component: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMMatchfield'{$ENDIF};
function QMNextPartial(listno: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMNextPartial'{$ENDIF};
function QMOpen(filename: PAnsiChar): Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMOpen'{$ENDIF};
function QMRead(fno: Integer; id: PAnsiChar; var err: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMRead'{$ENDIF};
function QMReadl(fno: Integer; id: PAnsiChar; wait: Integer; var err: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMReadl'{$ENDIF};
function QMReadList(listno: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMReadList'{$ENDIF};
function QMReadNext(listno: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMReadNext'{$ENDIF};
function QMReadu(fno: Integer; id: PAnsiChar; wait: Integer; var err: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMReadu'{$ENDIF};
procedure QMRecordlock(fno: Integer; id: PAnsiChar; update: Integer; wait: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMRecordlock'{$ENDIF};
procedure QMRelease(fno: Integer; id: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMRelease'{$ENDIF};
function QMReplace(src: PAnsiChar; fno, vno, svno: Integer; new_string: PAnsiChar): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMReplace'{$ENDIF};
function QMRespond(response: PAnsiChar; var err: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMRespond'{$ENDIF};
procedure QMSelect(fno, listno: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMSelect'{$ENDIF};
procedure QMSelectIndex(fno: Integer; indexname, indexvalue: PAnsiChar; listno: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMSelectIndex'{$ENDIF};
function QMSelectLeft(fno: Integer; indexname: PAnsiChar; listno: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMSelectLeft'{$ENDIF};
function QMSelectPartial(fno, listno: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMSelectPartial'{$ENDIF};
function QMSelectRight(fno: Integer; indexname: PAnsiChar; listno: Integer): PAnsiChar; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMSelectRight'{$ENDIF};
procedure QMSetLeft(fno: Integer; indexname: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMSetLeft'{$ENDIF};
procedure QMSetRight(fno: Integer; indexname: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMSetRight'{$ENDIF};
function QMSetSession(session: Integer): Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMSetSession'{$ENDIF};
function QMStatus: Integer; cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMStatus'{$ENDIF};
procedure QMTrapCallAbort(mode: Integer); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMTrapCallAbort'{$ENDIF};
procedure QMWrite(fno: Integer; id, data: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMWrite'{$ENDIF};
procedure QMWriteu(fno: Integer; id, data: PAnsiChar); cdecl; external{$IFDEF USEDLL} 'qmclilib.dll' name '_QMWriteu'{$ENDIF};
end.
