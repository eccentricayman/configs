function Initialize()
	if SKIN:GetVariable('Item16') ~= "" then
		SKIN:Bang('!SetOption', 'Input', 'MouseOverAction', '[!SetOption Input Text "Too many notes."][!SetOption Input SolidColor "160,0,0"][!UpdateMeter Input][!Redraw]')
		SKIN:Bang('!SetOption', 'Input', 'MouseLeaveAction', '[!SetOption Input Text "Add note."][!SetOption Input SolidColor "#BGColor#"][!UpdateMeter Input][!Redraw]')
		SKIN:Bang('!SetOption Input LeftMouseUpAction ""')
	end
end

function AddItem()
	local input, crlf = SKIN:GetVariable('Input'):gsub("\r\n", "#*CRLF*#")
	if input ~= "" then
		for i = 1, 15 do
			SKIN:Bang('!WriteKeyValue Variables Item'..(i+1)..' """'..SKIN:GetVariable('Item'..i):gsub("\n", "#*CRLF*#")..'""" "#CURRENTPATH#Notes.txt"')
		end
		SKIN:Bang('!WriteKeyValue Variables Item1 """'..input..'""" "#CURRENTPATH#Notes.txt"')
		SKIN:Bang('[!Move #CURRENTCONFIGX# (#CURRENTCONFIGY#-4-'..(SKIN:GetMeter('Input'):GetH()*(crlf+1))..')][!Refresh]')
	end
end

function EditItemA(n)
	SKIN:Bang('!SetVariable ItemOrig """'..SKIN:GetVariable('Item'..n):gsub("\n", "\r\n")..'"""')
	SKIN:Bang('!CommandMeasure mInput "ExecuteBatch 2"')
end

function EditItemB(n)
	local input = SKIN:GetVariable('Input'):gsub("\r\n", "#*CRLF*#")
	if input ~= "" then
		SKIN:Bang('[!WriteKeyValue Variables Item'..n..' """'..input..'""" "#CURRENTPATH#Notes.txt"][!Refresh]')
	else
		DeleteItem(n)
	end
end

function ClipItem(n)
	SKIN:Bang('!SetClip "'..SKIN:GetVariable('Item'..n):gsub("\n", "\r\n")..'"')
end

function DeleteItem(n)
	for i = n, 15 do
		SKIN:Bang('!WriteKeyValue Variables Item'..i..' """'..SKIN:GetVariable('Item'..(i+1)):gsub("\n", "#*CRLF*#")..'""" "#CURRENTPATH#Notes.txt"')
	end
	SKIN:Bang('!WriteKeyValue Variables Item16 "" "#CURRENTPATH#Notes.txt"')
	SKIN:Bang('[!Move #CURRENTCONFIGX# (#CURRENTCONFIGY#+4+'..SKIN:GetMeter('Item'..n):GetH()..')][!Refresh]')
end

function SwapItemUp(n)
	if n ~= "1" then
		SKIN:Bang('!WriteKeyValue Variables Item'..n..' """'..SKIN:GetVariable('Item'..(n-1)):gsub("\n", "#*CRLF*#")..'""" "#CURRENTPATH#Notes.txt"')
		SKIN:Bang('[!WriteKeyValue Variables Item'..(n-1)..' """'..SKIN:GetVariable('Item'..n):gsub("\n", "#*CRLF*#")..'""" "#CURRENTPATH#Notes.txt"][!Refresh]')
	end
end

function SwapItemDown(n)
	if n ~= "16" and SKIN:GetVariable('Item'..(n+1)) ~= "" then
		SKIN:Bang('!WriteKeyValue Variables Item'..n..' """'..SKIN:GetVariable('Item'..(n+1)):gsub("\n", "#*CRLF*#")..'""" "#CURRENTPATH#Notes.txt"')
		SKIN:Bang('[!WriteKeyValue Variables Item'..(n+1)..' """'..SKIN:GetVariable('Item'..n):gsub("\n", "#*CRLF*#")..'""" "#CURRENTPATH#Notes.txt"][!Refresh]')
	end
end
