#NoEnv
#SingleInstance, Force
RgbToHex(red, green, blue, prefix := "", upper := false)
{
  if  (  ((red < 0)   Or (red > 255))
      Or ((green < 0) Or (green > 255))
      Or ((blue < 0)  Or (blue > 255)))
  {
    return false
  }
  lib := ".\lib\AutoHotkeyFlux.dll"
  hModule := DllCall("LoadLibrary", Str, lib, Ptr)
  if (hModule)
  {
    function := lib . "\decimal_to_hexadecimal"
    red   := DllCall(function, UInt, red,   UInt, 2, WStr, "", UInt, upper, WStr)
    green := DllCall(function, UInt, green, UInt, 2, WStr, "", UInt, upper, WStr)
    blue  := DllCall(function, UInt, blue,  UInt, 2, WStr, "", UInt, upper, WStr)
    DllCall("FreeLibrary", Ptr, hModule)
    return prefix . red . green . blue
  }
}
HexToRgb(hex_value, delim := " ")
{
  lib := ".\lib\AutoHotkeyFlux.dll"
  hModule := DllCall("LoadLibrary", Str, lib, Ptr)
  if (hModule)
  {
    decimal := DllCall(lib . "\hexadecimal_color_string_to_int_string", WStr, hex_value, WStr, delim, WStr)
    DllCall("FreeLibrary", Ptr, hModule)
    Return decimal
  }
}
IsHexadecimalColor(value)
{
  regex := "^[0-9a-fA-F]{6}$"
  If (RegExMatch(value, "^(0[xX])"))
  {
    value := SubStr(value, 3)
  }
  If (RegExMatch(value, "^#"))
  {
    value := SubStr(value, 2)
  }
  Return RegExMatch(value, regex)
}
IsRgbColor(value)
{
  regex := "^([0-9]|[1-9][0-9]|1[0-9][0-9]|2[0-4][0-9]|2[0-5][0-5])$"
  isrgbcolor := true
  split := StrSplit(value, A_Space)
  Loop, 3
  {
    If (!RegExMatch(split[A_Index], regex))
    {
      isrgbcolor := false
    }
  }
  Return isrgbcolor
}
WM_MOUSEMOVE(wParam, lParam)
{
  If (A_TimeIdle < 500)
  {
    Loop, 20
    {
      ToolTip("", , , A_Index)
    }
    Return
  }
  wParam := Format("0x{:x}", wParam)
  if (wParam == 0x0)
  {
    MouseGetPos , , , , control
    If (control == "Button1")
    {
      If (!WinExist("ahk_class tooltips_class32"))
      {
        HoverToolTip("[Alt+u] to toggle if enabled.", 1, 1500)
      }
    }
    Else
    {
      ToolTip("", , , 1)
    }
    If (control == "Button2")
    {
      If (!WinExist("ahk_class tooltips_class32"))
      {
        HoverToolTip("[Alt+c] to toggle automatically copying`nthe result to the clipboard.", 5, 1500)
      }
    }
    Else
    {
      ToolTip("", , , 5)
    }
    If (control == "Edit1")
    {
      If (!WinExist("ahk_class tooltips_class32"))
      {
        GuiControlGet, content, , ComboBox1
        message :=  ( (content == "HEX To RGB")
                    ? "Hexadecimal values can be prefixed`nwith `""0x`"", `""#`"", or none at all."
                    : "RGB uses 3 integer values in therange of 0-255.")
        HoverToolTip(message, 4, 1500)
      }
    }
    Else
    {
      ToolTip("", , , 4)
    }
    If (control == "Static5")
    {
      If (!WinExist("ahk_class tooltips_class32"))
      {
        HoverToolTip("[Alt+m] to switch to Mode selection box.", 2, 1500)
      }
    }
    Else
    {
      ToolTip("", , , 2)
    }
    If (control == "Static6")
    {
      If (!WinExist("ahk_class tooltips_class32"))
      {
        HoverToolTip("[Alt+r] to switch to RGB Prefix selection box.", 3, 1500)
      }
    }
    Else
    {
      ToolTip("", , , 3)
    }
  }
}
HiLoBytes(bytes, array := 0)
{
  Return  % (!	array)
          ?	{ "High": (bytes >> 16) & 0xffff, "Low": bytes & 0xffff}
          :	[ (bytes >> 16) & 0xffff, bytes & 0xffff]
}
ToolTip(text, x := "", y := "", number := 1, bubble := 0, timed := 0, coordmode := "Screen")
{
  If number is not integer
  {
    Return
  }
  If (! ((number >= 1) And (number <= 20)))
  {
    Return
  }
  CoordMode, ToolTip, %coordmode%
  ToolTip, % Chr(10), 1, 1, %number%
  If (x Or y)
  {
    WinGetPos, xv, yv, , , ahk_class tooltips_class32
    adjustRX := "^[-|+][0-9][0-9]*$"
    RX := "^[0-9][0-9]*$"
    If (x != "")
    {
      If (RegExMatch(x, adjustRX))
      {
        adjust := SubStr(x, 1, 1)
        x := SubStr(x, 2)
        x := (adjust == "+"?Math.Add(xv, x):Math.Sub(xv, x))
      }
      Else If (RegExMatch(x, RX))
      {
        x := x
      }
      Else
      {
        ToolTip, , , , %number%
        Return
      }
    }
    If (y != "")
    {
      If (RegExMatch(y, adjustRX))
      {
        adjust := SubStr(y, 1, 1)
        y := SubStr(y, 2)
        y := ((adjust == "+")?Math.Add(yv, y):Math.Sub(yv, y))
      }
      Else If (RegExMatch(y, RX))
      {
        y := y
      }
      Else
      {
        ToolTip, , , , %number%
        Return
      }
    }
  }
  TTStyle := (bubble?(0x94000003+0x0000003D):0x94000003)
  WinSet, Style, %TTStyle%, ahk_class tooltips_class32
  ToolTip, %text%, %x%, %y%, %number%
  CoordMode, ToolTip
  id := WinExist("ahk_class tooltips_class32")
  If timed is integer
  {
    If (timed>0)
    {
      killTip := Func("KillToolTip").Bind(number)
      SetTimer, %killTip%, % "-" timed
    }
  }
  Return id
}
KillToolTip(byId := 0)
{
  If ((byId >= 1) And (byId <= 20))
  {
    ToolTip, , , , %byId%
    Return
  }
  If byId is integer
  {
    If (current_tt := WinExist("ahk_class tooltips_class32"))
    {
      If (byId + 0)
      {
        If (winexist("ahk_id " byId) == current_tt)
        {
          WinClose, ahk_id %byId%
          Return ! winexist("ahk_id " byId)
        }
        Else
        {
          Return
        }
      }
      Else
      {
        WinClose, ahk_id %current_tt%
        Return ! winexist("ahk_id " current_tt)
      }
    }
    Return
  }
}
HoverToolTip(message, number, timer)
{
  tt := Func("ToolTip").Bind(message, , , number, 1)
  SetTimer, %tt% , -1500
  Sleep, 1500
}