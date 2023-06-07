; ╔═════════════════════════════════════════════════════════╗
; ║ Flux Apex's RGB to Hexadecimal                          ║
; ║ © 2023 Ian Pride - New Pride Software/Services          ║
; ║ Convert red, green, and blue decimal ranges (0-255) to  ║
; ║ a hexadecimal value.                                    ║
; ╚═════════════════════════════════════════════════════════╝
; ╔═══════════════════════════════════════════════════════════════════════╗
; ║ Project begin: 19:32 Tuesday, June 2, 2023 Universal Time Coordinated ║
; ╚═══════════════════════════════════════════════════════════════════════╝
; ╔════════════╗
; ║ Directives ║
; ╚════════════╝
#NoEnv
#SingleInstance, Force
#NoTrayIcon
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%
SendMode, Input
#Persistent
#MaxMem 4095
OnMessage(0x0200, "WM_MOUSEMOVE")
CoordMode, ToolTip, Client
; ╔═════════╗
; ║ Globals ║
; ╚═════════╝
LIBDIR                    := ".\lib\"
RSSDIR                    := ".\resources\"
DIRECTORIES               := [LIBDIR, RSSDIR]
FLUXLIB                   := "AutoHotkeyFlux.dll"
RSSLIB                    := "FluxColorConvertResources.dll"
RSSLIBPATH                := RSSDIR . RSSLIB
FLUXLIBPATH               := LIBDIR . FLUXLIB
TITLE                     := "Flux Color Convert"
LIBFILES                  := [FLUXLIBPATH]
ERRORINDEX                := 0
ERROROBJECT               :=  { 1: "Library directory [" . LIBDIR . "] does not exist."
                              , 2: "Resource directory [" . RSSDIR . "] does not exist."
                              , 3: "The library module [" . FLUXLIBPATH . "] does not exist."
                              , 4: "Could not load the library module [" . FLUXLIBPATH . "]."}
OPTIONS1_OPTS             := ["-MaximizeBox"]
GUI_COLORS                := ["0xFFFFFF", "0xF7F7F7"]
PIC1_OPTS                 := ["x69", "y8", "w30", "h-1", "HwndPic1Hwnd"]
FONT_FACE_MAIN            := "Segoe UI"
STATIC1_FONT_OPTS         := ["s16", "q5", "w900", "cE51400"]
STATIC1_OPTS              := ["x+0", "y8", "w50", "HwndStatic1Hwnd"]
STATIC2_FONT_OPTS         := ["c60A917"]
STATIC2_OPTS              := ["x+0", "y8", "w64", "HwndStatic2Hwnd"]
STATIC3_FONT_OPTS         := ["c0050EF"]
STATIC3_OPTS              := ["x+0", "y8", "w147", "HwndStatic3Hwnd"]
STATIC4_FONT_OPTS         := ["s10", "q5", "w700", "cE51400"]
STATIC4_OPTS              := ["x9", "y+8", "w74", "Section", "HwndStatic4Hwnd"]
DDL1_FONT_OPTS            := ["s10", "q5", "w550"]
DDL1_OPTS                 := ["x+8", "w100", "vDDL1Mode", "HwndDDL1Hwnd", "gDdl1"]
EDIT1_FONT_OPTS           := ["s10", "q5", "w550", "c60A917"]
EDIT1_DEFAULT_STRING      := ""
EDIT1_OPTS                := ["x+0", "w160", "h24", "vEdit1Content", "gEdit1", "HwndEdit1Hwnd", "+Border"]
STATIC5_FONT_OPTS         := ["s10", "q5", "w700", "cE51400"]
STATIC5_OPTS              := ["xs", "y+8", "w74", "HwndStatic5Hwnd"]
DDL2_FONT_OPTS            := ["s10", "q5", "w550"]
DDL2_OPTS                 := ["x+8", "w100", "vDDL2Prefix", "HwndDDL12Hwnd", "gDdl2"]
EDIT2_FONT_OPTS           := ["s10", "q5", "w550", "c0050EF"]
EDIT2_DEFAULT_STRING      := ""
EDIT2_OPTS                := ["x+0", "w160", "h24", "vEdit2Content", "HwndEdit2Hwnd", "+Border", "ReadOnly"]
CHECKBOX1_FONT_OPTS       := ["s8", "q5", "w400", "cE51400"]
CHECKBOX1_DEFAULT_STRING  := "Hexadecimal &Uppercase"
CHECKBOX1_OPTS            := ["xs", "y+8", "w171", "vCheckBox1Content", "HwndCheckBox1Hwnd", "gCheckBox1"]
CHECKBOX2_FONT_OPTS       := ["s8", "q5", "w400", "cE51400"]
CHECKBOX2_DEFAULT_STRING  := "Auto &Copy To Clipboard"
CHECKBOX2_OPTS            := ["x+0", "yp", "w171", "vCheckBox2Content", "HwndCheckBox2Hwnd", "gCheckBox2"]
STATIC_BOTTOM_MARGIN_OPTS := ["x0", "y+0", "w360", "h8"]
SHOW_OPTS                 := ["AutoSize", "Center"]
; ╔══════╗
; ║ Menu ║
; ╚══════╝
; No menu; taskbar and main program icon
if (!A_IsCompiled)
{
  Menu, Tray, Icon, %RSSLIBPATH%, 1
}
; ╔══════╗
; ║ Init ║
; ╚══════╝
For index, directory in DIRECTORIES
{
  ERRORINDEX++
  If (! IsDirectory(directory))
  {
    ErrorExitFunc(ERRORINDEX)
  }
}
For index, file in LIBFILES
{
  ERRORINDEX++
  If (! IsFile(file))
  {
    ErrorExitFunc(ERRORINDEX)
  }
}
index := file := ""
hModule := LoadLibrary(FLUXLIBPATH)
ERRORINDEX++
If (!hModule)
{
  ErrorExitFunc(ERRORINDEX)
}
FreeLibrary(hModule)
OnExit(Func("UnLoad").Bind([hModule], 0))
gui := New _Gui(, TITLE)
gui.Margin(0, 0)
gui.Options(OPTIONS1_OPTS)
gui.Color(GUI_COLORS[1], GUI_COLORS[2])
gui.Add("Picture", ".\resources\FluxColorConvert.png", PIC1_OPTS)
gui.Font(FONT_FACE_MAIN, STATIC1_FONT_OPTS)
gui.Add("Text", " Flux", STATIC1_OPTS)
gui.Font(FONT_FACE_MAIN, STATIC2_FONT_OPTS)
gui.Add("Text", " Color", STATIC2_OPTS)
gui.Font(FONT_FACE_MAIN, STATIC3_FONT_OPTS)
gui.Add("Text", " Convert", STATIC3_OPTS)
gui.Font(FONT_FACE_MAIN, STATIC4_FONT_OPTS)
gui.Add("Text", "&Mode", STATIC4_OPTS)
gui.Font(FONT_FACE_MAIN, DDL1_FONT_OPTS)
gui.Add("DropDownList", "HEX To RGB||RGB To HEX", DDL1_OPTS)
gui.Font(FONT_FACE_MAIN, EDIT1_FONT_OPTS)
gui.Add("Edit", EDIT1_DEFAULT_STRING, EDIT1_OPTS)
gui.Font(FONT_FACE_MAIN, STATIC5_FONT_OPTS)
gui.Add("Text", "&RGB Prefix", STATIC5_OPTS)
gui.Font(FONT_FACE_MAIN, DDL2_FONT_OPTS)
gui.Add("DropDownList", "None||0x|#", DDL2_OPTS)
gui.Font(FONT_FACE_MAIN, EDIT2_FONT_OPTS)
gui.Add("Edit", EDIT2_DEFAULT_STRING, EDIT2_OPTS)
gui.Font(FONT_FACE_MAIN, CHECKBOX1_FONT_OPTS)
gui.Add("CheckBox", CHECKBOX1_DEFAULT_STRING, CHECKBOX1_OPTS)
gui.Font(FONT_FACE_MAIN, CHECKBOX2_FONT_OPTS)
gui.Add("CheckBox", CHECKBOX2_DEFAULT_STRING, CHECKBOX2_OPTS)
gui.Add("Text", " ", STATIC_BOTTOM_MARGIN_OPTS)
gui.Add("StatusBar")
StatusBarHwnd := SB_SetParts(90, 90, 90, 90)
SB_SetText("Hexadecimal:", 1, 1)
SB_SetText("", 2, 2)
SB_SetText("RGB:", 3, 1)
SB_SetText("", 4, 2)
WinGet, s4exs, ExStyle, ahk_id %Static4Hwnd%
WinSet, ExStyle, % (s4exs + 0x00400000), ahk_id %Static4Hwnd%
WinGet, s5exs, ExStyle, ahk_id %Static5Hwnd%
WinSet, ExStyle, % (s5exs + 0x00400000), ahk_id %Static5Hwnd%
gui.Submit("NoHide")
If (Ddl1Mode == "HEX To RGB")
{
  GuiControl, Disable, Ddl2Prefix
  GuiControl, Disable, CheckBox1Content
}
gui.Show(SHOW_OPTS)
SetTimer, Edit1, -1
Return
; ╔═══════════╗
; ║ Functions ║
; ╚═══════════╝
#Include, .\lib\
#Include, Functions.ahk
#Include, _Gui.ahk
LoadLibrary(dllLibraryFile)
{
  Return % DllCall(A_ThisFunc, Str, dllLibraryFile, Ptr)
}
FreeLibrary(hModule)
{
  Return % DllCall(A_ThisFunc, Ptr, hModule)
}
IsDirectory(path)
{
  Return % InStr(FileExist(path), "D")
}
IsFile(path)
{
  exists := FileExist(path)
  Return % ((exists) And (! InStr(exists, "D")))
}
_Debug(title := 0, message := "", iconIndex := 0x40, info := false)
{
  title := ((title == 0)?A_ThisFunc:title)
  MsgBox, % (iconIndex + 0x40000)
    , % title . (info ? " Information" : ""), %message%
  IfMsgBox, Yes
    Return "Yes"
  IfMsgBox, No
    Return "No"
  IfMsgBox, OK
    Return "OK"
  IfMsgBox, Cancel
    Return "Cancel"
  IfMsgBox, Abort
    Return "Abort"
  IfMsgBox, Ignore
    Return "Ignore"
  IfMsgBox, Retry
    Return "Retry"
  IfMsgBox, Continue
    Return "Continue"
  IfMsgBox, TryAgain
    Return "TryAgain"
  IfMsgBox, Timeout
    Return "Timeout"
  Return
}
UnLoad(modules := "", ERROR := 0)
{
  Global ERROROBJECT, TITLE
  If (modules)
  {
    If (modules.MaxIndex())
    {
      For index, module in modules
      {
        If (module)
        {
          FreeLibrary(module)
        }
      }
    }
    Else
    {
      FreeLibrary(modules)
    }
  }
  If ((ERROR > 0) And (ERROR != ""))
  {
    _Debug(TITLE . " Error", ERROROBJECT[ERROR] . "`nExiting program", 0x10)
  }
}
ErrorExitFunc(ERROR)
{
  OnExit(Func("UnLoad").Bind("", ERROR))
  ExitApp, %ERROR%
}
; ╔════════╗
; ║ Labels ║
; ╚════════╝
Edit1:
  gui.Submit("NoHide")
  If (Ddl1Mode == "HEX To RGB")
  {
    If (!IsHexadecimalColor(Edit1Content))
    {
      SB_SetText("Invalid", 2)
      SB_SetText("", 4)
      GuiControl, , Edit2Content
    }
    Else
    {
      SB_SetText(Edit1Content, 2)
      decimal := HexToRgb(Edit1Content)
      SB_SetText(decimal, 4)
      GuiControl, , Edit2Content, %decimal%
      If (CheckBox2Content)
      {
        Clipboard := decimal
      }
      decimal := ""
    }
  }
  If (Ddl1Mode == "RGB To HEX")
  {
    If (!IsRgbColor(Edit1Content))
    {
      SB_SetText("Invalid", 4)
      SB_SetText("", 2)
      GuiControl, , Edit2Content
    }
    Else
    {
      SB_SetText(Edit1Content, 4)
      split := StrSplit(Edit1Content, A_Space)
      prefix := ((Ddl2Prefix == "None") ? "" : Ddl2Prefix)
      hexadecimal := RgbToHex(split[1], split[2], split[3], prefix, CheckBox1Content)
      SB_SetText(hexadecimal, 2)
      GuiControl, , Edit2Content, %hexadecimal%
      If (CheckBox2Content)
      {
        Clipboard := hexadecimal
      }
      split := hexadecimal := prefix := ""
    }
  }
Return
Ddl1:
  gui.Submit("NoHide")
  If (Ddl1Mode == "HEX To RGB")
  {
    GuiControl, Disable, Ddl2Prefix
    GuiControl, Disable, CheckBox1Content
  }
  If (Ddl1Mode == "RGB To HEX")
  {
    GuiControl, Enable, Ddl2Prefix
    GuiControl, Enable, CheckBox1Content
  }
  SetTimer, Edit1, -1
Return
Ddl2:
  gui.Submit("NoHide")
  SetTimer, Edit1, -1
Return
Checkbox1:
  gui.Submit("NoHide")
  SetTimer, Edit1, -1
Return
Checkbox2:
  gui.Submit("NoHide")
  SetTimer, Edit1, -1
Return
GuiClose:
  ErrorExitFunc(0)
Return