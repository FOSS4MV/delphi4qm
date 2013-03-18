unit tisQMClient;
{
  The Trident Delphi & Free Pascal wrapper for The QMClient C API is
  distributed under a BSD style license.

  tisQMClient.pas
  Trident Delphi & Free Pascal Wrapper for QMClient C API
  Copyright (c) 2006-2010, Trident Information Systems, Inc.
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

// Version 2.0.4 / October 2010
//
// This unit (tsiQMClient) is a wrapper for the QMClient C API as defined
// in the unit tisQMClientAPI.  Normally, this is the unit you add to your
// projects in order to access OpenQM via QMClient API calls.
//
// This unit requires tisQMClientAPI to be available to it.
// Please read the documention for more details on this unit.

interface

// * Server error status values *
const
  SV_OK = 0;       // * Action successful
  SV_ON_ERROR = 1; // * Action took on ERROR clause
  SV_ELSE = 2;     // * Action took else clause
  SV_ERROR = 3;    // * Action failed.Error text available
  SV_LOCKED = 4;   // * Action took LOCKED clause
  SV_PROMPT = 5;   // * Server requesting input

  QMDateOffset = 24837; // * Add to QM Dates to get TDate value

procedure QMCall(const SubrName: AnsiString); overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1: AnsiString); overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20: AnsiString);overload;
procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var Args: array of AnsiString); overload;

function QMChange(const SrcString, OldString, NewString: AnsiString; const Occurences, Start: Integer): AnsiString;
procedure QMClearSelect(const ListNo: Integer);
procedure QMClose(const FileNo: Integer);
function QMConnect(const Host: AnsiString; PortNo: Integer; const UserName, Password, Account: AnsiString): Boolean;
function QMConnected: Boolean;
procedure QMConnectionType(const ConType: Integer);
function QMConnectLocal(const Account: AnsiString): Boolean;
function QMDcount(const SrcString, Delimiter: AnsiString): Integer;
function QMDel(const SrcString: AnsiString; const FieldNo, ValeuNo, SubValueNo: Integer): AnsiString;
procedure QMDelete(const FileNo: Integer; const ItemID: AnsiString);
procedure QMDeleteU(const FileNo: Integer; const ItemID: AnsiString);
procedure QMDisconnect;
procedure QMDisconnectAll;
procedure QMEndCommand;
function QMError: AnsiString;
function QMExecute(const Command: AnsiString; var ErrNo: Integer): AnsiString;
function QMExtract(const SrcString: AnsiString; const FieldNo, ValueNo, SubValueNo: Integer): AnsiString;
function QMField(const SrcString, Delimiter: AnsiString; const First, Occurences: Integer): AnsiString;
function QMGetSession: Integer;
function QMIns(const SrcString: AnsiString; FieldNo, ValueNo, SubValueNo: Integer; const NewString: AnsiString): AnsiString;
function QMLocate(const Value, SrcString: AnsiString; FieldNo, ValueNo, SubValueNo: Integer; var Pos: Integer; const Order: AnsiString): Boolean;
function QMLogto(const Account: AnsiString): Boolean;
procedure QMMarkMapping(const FileNo, State: Integer);
function QMMatch(const SrcString, Pattern: AnsiString): Boolean;
function QMMatchField(const SrcString, Pattern: AnsiString; const Component: Integer): AnsiString;
function QMNextPartial(const ListNo: Integer): AnsiString;
function QMOpen(const FileName: AnsiString): Integer;
function QMRead(const FileNo: Integer; ItemID: AnsiString; var ErrNo: Integer): AnsiString;
function QMReadL(const FileNo: Integer; const ItemID: AnsiString; const Wait: Boolean; var ErrNo: Integer): AnsiString;
function QMReadList(const ListNo: Integer): AnsiString;
function QMReadNext(const ListNo: Integer): AnsiString;
function QMReadU(const FileNo: Integer; const ItemID: AnsiString; const Wait: Boolean; var ErrNo: Integer): AnsiString;
procedure QMRecordLock(const FileNo: Integer; const ItemID: AnsiString; const Update, Wait: boolean);
procedure QMRelease(const FileNo: Integer; ItemID: AnsiString);
function QMReplace(const SrcString: AnsiString; const FieldNo, ValueNo, SubValueNo: Integer; const NewString: AnsiString): AnsiString;
function QMRespond(const Response: AnsiString; var ErrNo: Integer): AnsiString;
procedure QMSelect(const FileNo, ListNo: Integer);
procedure QMSelectIndex(const FileNo: Integer; const IndexName, IndexValue: AnsiString; const ListNo: Integer);
function QMSelectLeft(const FileNo: Integer; const IndexName: AnsiString; const ListNo: Integer): AnsiString;
function QMSelectPartial(const FileNo, ListNo: Integer): AnsiString;
function QMSelectRight(const FileNo: Integer; const IndexName: AnsiString; const ListNo: Integer): AnsiString;
procedure QMSetLeft(const FileNo: Integer; const IndexName: AnsiString);
procedure QMSetRight(const FileNo: Integer; const IndexName: AnsiString);
function QMSetSession(const SessionNo: Integer): Boolean;
function QMStatus: Integer;
procedure QMTrapCallAbort(const Mode: Boolean);
procedure QMWrite(const FileNo: Integer; const ItemID, Item: AnsiString);
procedure QMWriteU(const FileNo: Integer; const ItemID, Item: AnsiString);

implementation

uses tisQMClientAPI;

procedure QMCall(const SubrName: AnsiString);
begin
  tisQMClientAPI.QMCall(PAnsiChar(SubrName),0);
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,1);

  s[0] := a1;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,2);

  s[0] := a1;
  s[1] := a2;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];
  a2 := s[1];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,3);

  s[0] := a1;
  s[1] := a2;
  s[2] := a3;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];
  a2 := s[1];
  a3 := s[2];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,4);

  s[0] := a1;
  s[1] := a2;
  s[2] := a3;
  s[3] := a4;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];
  a2 := s[1];
  a3 := s[2];
  a4 := s[3];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,5);

  s[0] := a1;  s[4] := a5;
  s[1] := a2;
  s[2] := a3;
  s[3] := a4;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];
  a2 := s[1];
  a3 := s[2];
  a4 := s[3];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,6);

  s[0] := a1;  s[4] := a5;
  s[1] := a2;  s[5] := a6;
  s[2] := a3;
  s[3] := a4;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];
  a2 := s[1];  a6 := s[5];
  a3 := s[2];
  a4 := s[3];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,7);

  s[0] := a1;  s[4] := a5;
  s[1] := a2;  s[5] := a6;
  s[2] := a3;  s[6] := a7;
  s[3] := a4;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];
  a2 := s[1];  a6 := s[5];
  a3 := s[2];  a7 := s[6];
  a4 := s[3];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,8);

  s[0] := a1;  s[4] := a5;
  s[1] := a2;  s[5] := a6;
  s[2] := a3;  s[6] := a7;
  s[3] := a4;  s[7] := a8;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];
  a2 := s[1];  a6 := s[5];
  a3 := s[2];  a7 := s[6];
  a4 := s[3];  a8 := s[7];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,9);

  s[0] := a1;  s[4] := a5;  s[8] := a9;
  s[1] := a2;  s[5] := a6;
  s[2] := a3;  s[6] := a7;
  s[3] := a4;  s[7] := a8;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];
  a2 := s[1];  a6 := s[5];
  a3 := s[2];  a7 := s[6];
  a4 := s[3];  a8 := s[7];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,10);

  s[0] := a1;  s[4] := a5;  s[8] := a9;
  s[1] := a2;  s[5] := a6;  s[9] := a10;
  s[2] := a3;  s[6] := a7;
  s[3] := a4;  s[7] := a8;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];
  a2 := s[1];  a6 := s[5];  a10 := s[9];
  a3 := s[2];  a7 := s[6];
  a4 := s[3];  a8 := s[7];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,11);

  s[0] := a1;  s[4] := a5;  s[8] := a9;
  s[1] := a2;  s[5] := a6;  s[9] := a10;
  s[2] := a3;  s[6] := a7;  s[10] := a11;
  s[3] := a4;  s[7] := a8;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];
  a2 := s[1];  a6 := s[5];  a10 := s[9];
  a3 := s[2];  a7 := s[6];  a11 := s[10];
  a4 := s[3];  a8 := s[7];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,12);

  s[0] := a1;  s[4] := a5;  s[8] := a9;
  s[1] := a2;  s[5] := a6;  s[9] := a10;
  s[2] := a3;  s[6] := a7;  s[10] := a11;
  s[3] := a4;  s[7] := a8;  s[11] := a12;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];
  a2 := s[1];  a6 := s[5];  a10 := s[9];
  a3 := s[2];  a7 := s[6];  a11 := s[10];
  a4 := s[3];  a8 := s[7];  a12 := s[11];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,13);

  s[0] := a1;  s[4] := a5;  s[8] := a9;   s[12] := a13;
  s[1] := a2;  s[5] := a6;  s[9] := a10;
  s[2] := a3;  s[6] := a7;  s[10] := a11;
  s[3] := a4;  s[7] := a8;  s[11] := a12;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];   a13 := s[12];
  a2 := s[1];  a6 := s[5];  a10 := s[9];
  a3 := s[2];  a7 := s[6];  a11 := s[10];
  a4 := s[3];  a8 := s[7];  a12 := s[11];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,14);

  s[0] := a1;  s[4] := a5;  s[8] := a9;   s[12] := a13;
  s[1] := a2;  s[5] := a6;  s[9] := a10;  s[13] := a14;
  s[2] := a3;  s[6] := a7;  s[10] := a11;
  s[3] := a4;  s[7] := a8;  s[11] := a12;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];   a13 := s[12];
  a2 := s[1];  a6 := s[5];  a10 := s[9];  a14 := s[13];
  a3 := s[2];  a7 := s[6];  a11 := s[10];
  a4 := s[3];  a8 := s[7];  a12 := s[11];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,15);

  s[0] := a1;  s[4] := a5;  s[8] := a9;   s[12] := a13;
  s[1] := a2;  s[5] := a6;  s[9] := a10;  s[13] := a14;
  s[2] := a3;  s[6] := a7;  s[10] := a11; s[14] := a15;
  s[3] := a4;  s[7] := a8;  s[11] := a12;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];   a13 := s[12];
  a2 := s[1];  a6 := s[5];  a10 := s[9];  a14 := s[13];
  a3 := s[2];  a7 := s[6];  a11 := s[10]; a15 := s[14];
  a4 := s[3];  a8 := s[7];  a12 := s[11];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,16);

  s[0] := a1;  s[4] := a5;  s[8] := a9;   s[12] := a13;
  s[1] := a2;  s[5] := a6;  s[9] := a10;  s[13] := a14;
  s[2] := a3;  s[6] := a7;  s[10] := a11; s[14] := a15;
  s[3] := a4;  s[7] := a8;  s[11] := a12; s[15] := a16;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];   a13 := s[12];
  a2 := s[1];  a6 := s[5];  a10 := s[9];  a14 := s[13];
  a3 := s[2];  a7 := s[6];  a11 := s[10]; a15 := s[14];
  a4 := s[3];  a8 := s[7];  a12 := s[11]; a16 := s[15];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,17);

  s[0] := a1;  s[4] := a5;  s[8] := a9;   s[12] := a13;  s[16] := a17;
  s[1] := a2;  s[5] := a6;  s[9] := a10;  s[13] := a14;
  s[2] := a3;  s[6] := a7;  s[10] := a11; s[14] := a15;
  s[3] := a4;  s[7] := a8;  s[11] := a12; s[15] := a16;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];   a13 := s[12];  a17 := s[16];
  a2 := s[1];  a6 := s[5];  a10 := s[9];  a14 := s[13];
  a3 := s[2];  a7 := s[6];  a11 := s[10]; a15 := s[14];
  a4 := s[3];  a8 := s[7];  a12 := s[11]; a16 := s[15];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,18);

  s[0] := a1;  s[4] := a5;  s[8] := a9;   s[12] := a13;  s[16] := a17;
  s[1] := a2;  s[5] := a6;  s[9] := a10;  s[13] := a14;  s[17] := a18;
  s[2] := a3;  s[6] := a7;  s[10] := a11; s[14] := a15;
  s[3] := a4;  s[7] := a8;  s[11] := a12; s[15] := a16;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];   a13 := s[12];  a17 := s[16];
  a2 := s[1];  a6 := s[5];  a10 := s[9];  a14 := s[13];  a18 := s[17];
  a3 := s[2];  a7 := s[6];  a11 := s[10]; a15 := s[14];
  a4 := s[3];  a8 := s[7];  a12 := s[11]; a16 := s[15];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,19);

  s[0] := a1;  s[4] := a5;  s[8] := a9;   s[12] := a13;  s[16] := a17;
  s[1] := a2;  s[5] := a6;  s[9] := a10;  s[13] := a14;  s[17] := a18;
  s[2] := a3;  s[6] := a7;  s[10] := a11; s[14] := a15;  s[18] := a19;
  s[3] := a4;  s[7] := a8;  s[11] := a12; s[15] := a16;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];   a13 := s[12];  a17 := s[16];
  a2 := s[1];  a6 := s[5];  a10 := s[9];  a14 := s[13];  a18 := s[17];
  a3 := s[2];  a7 := s[6];  a11 := s[10]; a15 := s[14];  a19 := s[18];
  a4 := s[3];  a8 := s[7];  a12 := s[11]; a16 := s[15];

  s := nil
end;

procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15, a16, a17, a18, a19, a20: AnsiString);
var
  s: array of AnsiString;
begin
  SetLength(s,20);

  s[0] := a1;  s[4] := a5;  s[8] := a9;   s[12] := a13;  s[16] := a17;
  s[1] := a2;  s[5] := a6;  s[9] := a10;  s[13] := a14;  s[17] := a18;
  s[2] := a3;  s[6] := a7;  s[10] := a11; s[14] := a15;  s[18] := a19;
  s[3] := a4;  s[7] := a8;  s[11] := a12; s[15] := a16;  s[19] := a20;

  QMCall(SubrName, BuffSize, s);

  a1 := s[0];  a5 := s[4];  a9 := s[8];   a13 := s[12];  a17 := s[16];
  a2 := s[1];  a6 := s[5];  a10 := s[9];  a14 := s[13];  a18 := s[17];
  a3 := s[2];  a7 := s[6];  a11 := s[10]; a15 := s[14];  a19 := s[18];
  a4 := s[3];  a8 := s[7];  a12 := s[11]; a16 := s[15];  a20 := s[19];

  s := nil
end;


procedure QMCall(const SubrName: AnsiString; const BuffSize: Integer; var Args: array of AnsiString);
var
  jj, iLow, iHigh: Integer;
  slen, BufferSpace: integer;
begin
  iLow  := Low(Args);
  iHigh := High(Args);

  for jj := iLow to iHigh do begin
     slen := Length(Args[jj]);
     if (slen > BuffSize) then BufferSpace := slen else BufferSpace := BuffSize;
     SetString(Args[jj],PAnsiChar(Args[jj]),BufferSpace);
  end;

  case (iHigh + 1) of
     1: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 1, PAnsiChar(Args[0]));
     2: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 2, PAnsiChar(Args[0]), PAnsiChar(Args[1]));
     3: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 3, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]));
     4: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 4, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]));
     5: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 5, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]));
     6: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 6, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]));
     7: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 7, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]));
     8: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 8, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]));

     9: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 9, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]));

    10: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 10, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]));

    11: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 11, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]));

    12: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 12, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]));

    13: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 13, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]), PAnsiChar(Args[12]));

    14: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 14, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]), PAnsiChar(Args[12]), PAnsiChar(Args[13]));

    15: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 15, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]), PAnsiChar(Args[12]), PAnsiChar(Args[13]), PAnsiChar(Args[14]));

    16: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 16, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]), PAnsiChar(Args[12]), PAnsiChar(Args[13]), PAnsiChar(Args[14]), PAnsiChar(Args[15]));

    17: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 17, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]), PAnsiChar(Args[12]), PAnsiChar(Args[13]), PAnsiChar(Args[14]), PAnsiChar(Args[15]), PAnsiChar(Args[16]));

    18: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 18, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]), PAnsiChar(Args[12]), PAnsiChar(Args[13]), PAnsiChar(Args[14]), PAnsiChar(Args[15]), PAnsiChar(Args[16]),
                PAnsiChar(Args[17]));

    19: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 19, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]), PAnsiChar(Args[12]), PAnsiChar(Args[13]), PAnsiChar(Args[14]), PAnsiChar(Args[15]), PAnsiChar(Args[16]),
                PAnsiChar(Args[17]), PAnsiChar(Args[18]));

    20: tisQMClientAPI.QMCall(PAnsiChar(SubrName), 20, PAnsiChar(Args[0]), PAnsiChar(Args[1]), PAnsiChar(Args[2]), PAnsiChar(Args[3]), PAnsiChar(Args[4]), PAnsiChar(Args[5]), PAnsiChar(Args[6]), PAnsiChar(Args[7]),
                PAnsiChar(Args[8]), PAnsiChar(Args[9]), PAnsiChar(Args[10]), PAnsiChar(Args[11]), PAnsiChar(Args[12]), PAnsiChar(Args[13]), PAnsiChar(Args[14]), PAnsiChar(Args[15]), PAnsiChar(Args[16]),
                PAnsiChar(Args[17]), PAnsiChar(Args[18]), PAnsiChar(Args[19]));
  else
    Exit;
  end;

  for jj := iLow to iHigh do begin
    Args[jj] := PAnsiChar(Args[jj]);
  end;

end;

function QMChange(const SrcString, OldString, NewString: AnsiString; const Occurences, Start: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMChange(PAnsiChar(SrcString), PAnsiChar(OldString), PAnsiChar(NewString), Occurences, Start);
  QMChange := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

procedure QMClearSelect(const ListNo: Integer);
begin
  tisQMClientAPI.QMClearSelect(ListNo);
end;

procedure QMClose(const FileNo: Integer);
begin
  tisQMClientAPI.QMClose(FileNo);
end;

function QMConnect(const Host: AnsiString; PortNo: Integer; const UserName, Password, Account: AnsiString): Boolean;
begin
  if (tisQMClientAPI.QMConnect(PAnsiChar(Host), PortNo, PAnsiChar(UserName), PAnsiChar(Password), PAnsiChar(Account)) > 0) then
     QMConnect := True else QMConnect := False;
end;

function QMConnected: Boolean;
begin
  if (tisQMClientAPI.QMConnected > 0) then QMConnected := True else QMConnected := False;
end;

procedure QMConnectionType(const ConType: integer);
begin
  tisQMClientAPI.QMConnectionType(ConType);
end;

function QMConnectLocal(const Account: AnsiString): Boolean;
begin
  if ( tisQMClientAPI.QMConnectLocal(PAnsiChar(Account)) > 0) then QMconnectLocal := True else QMConnectLocal := False;
end;

function QMDcount(const SrcString, Delimiter: AnsiString): Integer;
begin
  QMDcount := tisQMClientAPI.QMDCount(PAnsiChar(SrcString), PAnsiChar(Delimiter));
end;

function QMDel(const SrcString: AnsiString; const FieldNo, ValeuNo, SubValueNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMDel(PAnsiChar(SrcString), FieldNo, ValeuNo, SubValueNo);
  QMDel := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

procedure QMDelete(const FileNo: Integer; const ItemID: AnsiString);
begin
  tisQMClientAPI.QMDelete(FileNo, PAnsiChar(ItemID));
end;

procedure QMDeleteU(const FileNo: Integer; const ItemID: AnsiString);
begin
  tisQMClientAPI.QMDeleteU(FileNo, PAnsiChar(ItemID));
end;

procedure QMDisconnect;
begin
  tisQMClientAPI.QMDisconnect;
end;

procedure QMDisconnectAll;
begin
  tisQMClientAPI.QMDisconnectAll;
end;

procedure QMEndCommand;
begin
  tisQMClientAPI.QMEndCommand;
end;

function QMError: AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMError;
  QMError := PAnsiChar(s);
end;

function QMExecute(const Command: AnsiString; var ErrNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMExecute(PAnsiChar(Command), ErrNo);
  QMExecute := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMExtract(const SrcString: AnsiString; const FieldNo, ValueNo, SubValueNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMExtract(PAnsiChar(SrcString), FieldNo, ValueNo, SubValueNo);
  QMExtract := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMField(const SrcString, Delimiter: AnsiString; const First, Occurences: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMField(PAnsiChar(SrcString), PAnsiChar(Delimiter), First, Occurences);
  QMField := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMGetSession: Integer;
begin
  QMGetSession := tisQMClientAPI.QMGetSession;
end;

function QMIns(const SrcString: AnsiString; FieldNo, ValueNo, SubValueNo: Integer; const NewString: AnsiString): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMIns(PAnsiChar(SrcString), FieldNo, ValueNo, SubValueNo, PAnsiChar(NewString));
  QMIns := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMLocate(const Value, SrcString: AnsiString; FieldNo, ValueNo, SubValueNo: Integer; var Pos: Integer; const Order: AnsiString): Boolean;
begin
  if (tisQMClientAPI.QMLocate(PAnsiChar(Value), PAnsiChar(SrcString), FieldNo, ValueNo, SubValueNo, Pos, PAnsiChar(Order)) > 0) then
     QMLocate := True else QMLocate := False;
end;

function QMLogto(const Account: AnsiString): Boolean;
begin
    if (tisQMClientAPI.QMLogto(PAnsiChar(Account)) > 0) then QMLogto := True else QMLogto := False;
end;

procedure QMMarkMapping(const FileNo, State: Integer);
begin
  tisQMClientAPI.QMMarkMapping(FileNo, State);
end;

function QMMatch(const SrcString, Pattern: AnsiString): Boolean;
begin
  if(tisQMClientAPI.QMMatch(PAnsiChar(SrcString), PAnsiChar(Pattern)) > 0) then QMMatch := True else QMMatch := False;
end;

function QMMatchField(const SrcString, Pattern: AnsiString; const Component: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMMatchfield(PAnsiChar(SrcString), PAnsiChar(Pattern), Component);
  QMMatchField := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMNextPartial(const ListNo: Integer): AnsiString;
Var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMNextPartial(ListNo);
  QMNextPartial := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMOpen(const FileName: AnsiString): Integer;
begin
  QMOpen := tisQMClientAPI.QMOpen(PAnsiChar(FileName));
end;

function QMRead(const FileNo: Integer; ItemID: AnsiString; var ErrNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMRead(FileNo, PAnsiChar(ItemID), ErrNo);
  QMRead := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMReadL(const FileNo: Integer; const ItemID: AnsiString; const Wait: Boolean; var ErrNo: Integer): AnsiString;
var
  s: PAnsiChar;
  w: integer;
begin
  if Wait then w:= 1 else w:= 0;
  s := tisQMClientAPI.QMReadl(FileNo,PAnsiChar(ItemID), w, ErrNo);
  QMReadL := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMReadList(const ListNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMReadList(ListNo);
  QMReadList := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMReadNext(const ListNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMReadNext(ListNo);
  QMReadNext := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMReadU(const FileNo: Integer; const ItemID: AnsiString; const Wait: Boolean; var ErrNo: Integer): AnsiString;
var
  s: PAnsiChar;
  w: integer;
begin
  if Wait then w := 1 else w := 0;
  s := tisQMClientAPI.QMReadu(FileNo, PAnsiChar(ItemID), w, ErrNo);
  QMReadU := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

procedure QMRecordLock(const FileNo: Integer; const ItemID: AnsiString; const Update, Wait: boolean);
var
  u: integer;
  w: integer;
begin
    if Update then u := 1 else u := 0;
    if Wait then w := 1 else w := 0;
    tisQMClientAPI.QMRecordlock(FileNo, PAnsiChar(ItemID), u, w);
end;

procedure QMRelease(const FileNo: Integer; ItemID: AnsiString);
begin
  tisQMClientAPI.QMRelease(FileNo, PAnsiChar(ItemID));
end;

function QMReplace(const SrcString: AnsiString; const FieldNo, ValueNo, SubValueNo: Integer; const NewString: AnsiString): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMReplace(PAnsiChar(SrcString), FieldNo, ValueNo, SubValueNo, PAnsiChar(NewString));
  QMReplace := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMRespond(const Response: AnsiString; var ErrNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMRespond(PAnsiChar(Response), ErrNo);
  QMRespond := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

procedure QMSelect(const FileNo, ListNo: Integer);
begin
  tisQMClientAPI.QMSelect(FileNo, ListNo);
end;

procedure QMSelectIndex(const FileNo: Integer; const IndexName, IndexValue: AnsiString; const ListNo: Integer);
begin
  tisQMClientAPI.QMSelectIndex(FileNo, PAnsiChar(IndexName), PAnsiChar(IndexValue), ListNo);
end;

function QMSelectLeft(const FileNo: Integer; const IndexName: AnsiString; const ListNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMSelectLeft(FileNo, PAnsiChar(IndexName), ListNo);
  QMSelectLeft := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMSelectPartial(const FileNo, ListNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMSelectPartial(FileNo, ListNo);
  QMSelectPartial := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

function QMSelectRight(const FileNo: Integer; const IndexName: AnsiString; const ListNo: Integer): AnsiString;
var
  s: PAnsiChar;
begin
  s := tisQMClientAPI.QMSelectRight(FileNo, PAnsiChar(IndexName), ListNo);
  QMSelectRight := PAnsiChar(s);
  tisQMClientAPI.QMFree(s);
end;

procedure QMSetLeft(const FileNo: Integer; const IndexName: AnsiString);
begin
  tisQMClientAPI.QMSetLeft(FileNo, PAnsiChar(IndexName));
end;

procedure QMSetRight(const FileNo: Integer; const IndexName: AnsiString);
begin
  tisQMClientAPI.QMSetRight(FileNo, PAnsiChar(IndexName));
end;

function QMSetSession(const SessionNo: Integer): Boolean;
begin
  if (tisQMClientAPI.QMSetSession(SessionNo) > 0) then QMSetSession := True else QMSetSession := false;
end;

function QMStatus: Integer;
begin
  QMStatus := tisQMClientAPI.QMStatus;
end;

procedure QMTrapCallAbort(const Mode: Boolean);
var
    m: integer;
begin
    if Mode then m := 1 else m := 0;
    tisQMClientAPI.QMTrapCallAbort(m);
end;

procedure QMWrite(const FileNo: Integer; const ItemID, Item: AnsiString);
begin
  tisQMClientAPI.QMWrite(FileNo, PAnsiChar(ItemID), PAnsiChar(Item));
end;

procedure QMWriteU(const FileNo: Integer; const ItemID, Item: AnsiString);
begin
  tisQMClientAPI.QMWriteu(FileNo, PAnsiChar(ItemID), PAnsiChar(Item));
end;

end.
