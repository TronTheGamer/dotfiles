#Requires AutoHotkey v2.0

GetActiveOCPath(){
	OCHwnd := WinActive("ahk_class HwndWrapper[OneCommander.exe;;c0277ff7-0fd7-4ebd-8f2d-a53604d6270c]")
	if(OCHwnd)
	{
		for window in ComObject("Shell.Application").Windows
			{
				if(window.hwnd == OCHwnd){
					return window.Document.Folder.Self.Path.ToString()
				}
			}
	}
	else{
		return "$env:USERPATH"
	}
}

#HotIf WinActive("ahk_class HwndWrapper[OneCommander.exe;;c0277ff7-0fd7-4ebd-8f2d-a53604d6270c]")
^!t::{
	wtpath := GetActiveOCPath()
	Run "wt.exe"
}