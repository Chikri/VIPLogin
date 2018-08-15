-- Guns Of Boom
-- By Chikri





-- Config
ShowUI		= false
MemRange	= gg.REGION_CODE_APP | gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC
ScriptSpeed = 350

-- Variable
local sESP	= "On"
local tw = "On"
local fov = "On"
local aimbot = "On"
local lst = "On"
local lah = "On"
local fah = "On"
local bah = "On"
local gah = "On"
local bbah = "On"
local grenade = "On"
local speed = "On"
local ultraa = "On"
local wallc = "On"
local speedf = "On"

-- Require function
function Int2Hex(int)
	return string.format("%X", int)
end

function PopupBox(Caption, Text)
     gg.alert('🌀' .. Caption .. ' 🌀' .. Text)
end

function SetMemoryValue(address, ggtype, data)
	t = {}
	t[1] = {}
	t[1].address = address
	t[1].flags = ggtype
	t[1].value = data
	if gg.setValues(t) then
		return true
	else
		return false
		end
end

function GetMemoryValue(address, ggtype)
	t = {}
	t[1] = {}
	t[1].address = address
	t[1].flags = ggtype
	res = gg.getValues(t)
	if type(res) ~= "string" then
		if ggtype == gg.TYPE_BYTE then
			result = res[1].value & 0xFF
		elseif ggtype == gg.TYPE_WORD then
			result = res[1].value & 0xFFFF
		elseif ggtype == gg.TYPE_DWORD then
			result = res[1].value & 0xFFFFFFFF
		elseif ggtype == gg.TYPE_QWORD then
			result = res[1].value & 0xFFFFFFFFFFFFFFFF
		elseif ggtype == gg.TYPE_XOR then
			result = res[1].value & 0xFFFFFFFF
		else
			result = res[1].value
		end
		return result
	else
		return nil
	end
end




-- Main Code
gg.setVisible(false)
gg.clearResults()






function weekend()
gg.alert('Sorry, This Is Only Weekend Trial Version, To Buy Timeless Script, Contact Chikri')
os.exit()
end


function mESP()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('1.05499994755',gg.TYPE_FLOAT) 
gg.getResults(850)
gg.editAll(-9999.122133144, gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('15;1;4;2;255', gg.TYPE_FLOAT)
gg.getResults(1000)
gg.searchNumber(15, gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll(10.11117, gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Activated')
end


function dESP()
gg.setVisible(false)
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber('-9999.122133144',gg.TYPE_FLOAT) 
gg.getResults(850)
gg.editAll(1.05499994755, gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber('10.111178;1;4;2;255', gg.TYPE_FLOAT)
gg.getResults(1000)
gg.searchNumber(10.11117, gg.TYPE_FLOAT)
gg.getResults(20)
gg.editAll(15, gg.TYPE_FLOAT)
gg.clearResults()
gg.toast('Deactivated')
end

function tston()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber(2, gg.TYPE_FLOAT)
gg.getResults(24)
gg.editAll(20.1, gg.TYPE_FLOAT)
gg.clearResults()
end

function tstoff()
gg.setRanges(gg.REGION_C_BSS)
gg.searchNumber(20.1, gg.TYPE_FLOAT)
gg.getResults(24)
gg.editAll(2, gg.TYPE_FLOAT)
gg.clearResults()
end

function tst1on()
gg.setRanges(gg.REGION_CODE_APP)
gg.clearResults()
gg.searchNumber('360', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)                                                                                                                                                                                                                                 
gg.getResults(4000)
gg.searchAddress('244', 0xFFFFFFFF)
gg.getResults(3000)
gg.editAll('210.1', gg.TYPE_FLOAT)
gg.toast('Activated')
end

function tst1off()
gg.clearResults()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('210.1', gg.TYPE_FLOAT, false, gg.SIGN_EQUAL, 0, -1)                                                                                                 
gg.getResults(3000)
gg.editAll('360', gg.TYPE_FLOAT)
gg.toast('Deactivated')
end


function tst2on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('200;1.10000002384;0.25;1.79999995232;0.40000000596;0.75;0.40000000596;0.40000000596;0.94999998808;20;1.75::', gg.TYPE_FLOAT)
gg.getResults(100)
gg.searchNumber('0.75', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll(20.4, gg.TYPE_FLOAT)
end

function tst2off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('200;1.10000002384;0.25;1.79999995232;0.40000000596;20.4;0.40000000596;0.40000000596;0.94999998808;20;1.75::', gg.TYPE_FLOAT)
gg.getResults(100)
gg.searchNumber('20.4', gg.TYPE_FLOAT)
gg.getResults(100)
gg.editAll(0.75, gg.TYPE_FLOAT)
end


function tst3on()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('00h;70h;A0h;E1h;01h;00h;29h::7', gg.TYPE_BYTE)
t = gg.getResults(7)
t[2].value = '0'
gg.setValues(t)
gg.toast('Activated')
end

function tst3off()
gg.setRanges(gg.REGION_CODE_APP)
gg.searchNumber('00h;112h;A0h;E1h;01h;00h;29h::', gg.TYPE_BYTE)
t = gg.getResults(7)
t[2].value = '112'
gg.setValues(t)
gg.toast('Deactivated')
end

--Legend Ammo
function ah1on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('38;1;10,705;1.4012985e-45F', gg.TYPE_DWORD)
gg.searchNumber('38',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('1053', gg.TYPE_DWORD))
gg.clearResults()
gg.toast('Activated')
end

function ah1off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('7899;1;10,705;1.4012985e-45F', gg.TYPE_DWORD)
gg.searchNumber('7899',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('38', gg.TYPE_DWORD))
gg.clearResults()
gg.toast('Deativated')
end

--Falcon Ammo
function ah2on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('10;9,606;1;1.4012985e-44F', gg.TYPE_DWORD)
gg.searchNumber('10',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('87', gg.TYPE_DWORD))
gg.clearResults()
gg.toast('Activated')
end

function ah2off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('87;9,606;1;1.4012985e-44F', gg.TYPE_DWORD)
gg.searchNumber('87',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('10', gg.TYPE_DWORD))
gg.toast('Deactivated')
gg.clearResults()
end

--Buffalo Ammo
function ah3on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('60;9,626;1;1.4012985e-45F', gg.TYPE_DWORD)
gg.searchNumber('60',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('1064', gg.TYPE_DWORD))
gg.toast('Activated')
gg.clearResults()
end

function ah3off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('8017;9,626;1;1.4012985e-45F', gg.TYPE_DWORD)
gg.searchNumber('8017',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('60', gg.TYPE_DWORD))
gg.toast('Deactivated')
end

--Guillotine Ammo
function ah4on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('35;6,962;1;1.4012985e-45F', gg.TYPE_DWORD)
gg.searchNumber('35',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('1082', gg.TYPE_DWORD))
gg.toast('Activated')
gg.clearResults()
end

function ah4off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('5079;6,962;1;1.4012985e-45F', gg.TYPE_DWORD)
gg.searchNumber('5079',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('35', gg.TYPE_DWORD))
gg.toast('Deactivated')
end

--Blunderbluss Ammo
function ah5on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('8;1;9,613;1.4012985e-45F', gg.TYPE_DWORD)
gg.searchNumber('8',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('1086', gg.TYPE_DWORD))
gg.toast('Activated')
gg.clearResults()
end

function ah5off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber('1086;1;9,613;1.4012985e-45F', gg.TYPE_DWORD)
gg.searchNumber('1086',gg.TYPE_DWORD)
gg.getResults(100)
print('Replaced: ', gg.editAll('8', gg.TYPE_DWORD))
gg.toast('Deactivated')
end


function tst4on()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("1.2;49", gg.TYPE_FLOAT)
gg.searchNumber("1.2", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("-12.283838", gg.TYPE_FLOAT)
gg.toast("Activated")
gg.clearResults()
end

function tst4off()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("-12.283838;49", gg.TYPE_FLOAT)
gg.searchNumber("-12.283838", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("1.2", gg.TYPE_FLOAT)
gg.toast('Deactivated')
gg.clearResults()
end


function tst5on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.25F;0.20000000298F;0.89999997616F;1.0F;0.34999999404F;1.0F;1.0F;2.5F:29", gg.TYPE_FLOAT)
gg.searchNumber("2.5", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("9.12345", gg.TYPE_FLOAT)
gg.toast("Activated")
gg.clearResults()
end

function tst5off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.25F;0.20000000298F;0.89999997616F;1.0F;0.34999999404F;1.0F;1.0F;9.12345:29", gg.TYPE_FLOAT)
gg.searchNumber("9.12345", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("2.5", gg.TYPE_FLOAT)
gg.toast('Deactivated')
gg.clearResults()
end

function tst6on()
gg.getRanges()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("1.96875F;2.720083e23F;1.86249995232F::", gg.TYPE_FLOAT)
gg.getResults(3)
gg.searchNumber("1.96875", gg.TYPE_FLOAT)
gg.getResults(2)
gg.editAll("3.0", gg.TYPE_FLOAT)
gg.toast("50")
gg.toast("Activated")
end

function tst6off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.25F;0.20000000298F;0.89999997616F;1.0F;0.34999999404F;1.0F;1.0F;9.12345:29", gg.TYPE_FLOAT)
gg.searchNumber("9.12345", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("2.5", gg.TYPE_FLOAT)
gg.toast('Deactivated')
gg.clearResults()
end


function tst7on()
gg.getRanges()
gg.setRanges(gg.REGION_C_ALLOC)
gg.searchNumber("0.4999999702F;0.01999999955F;0.34999999404F;0.0F;0.0F;0.0F::", gg.TYPE_FLOAT)
gg.searchNumber("0.34999999404", gg.TYPE_FLOAT)
gg.getResults(14)
gg.editAll("5.06007", gg.TYPE_FLOAT)
gg.toast("Activated")
gg.clearResults()
end

function tst7off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.25F;0.20000000298F;0.89999997616F;1.0F;0.34999999404F;1.0F;1.0F;9.12345:29", gg.TYPE_FLOAT)
gg.searchNumber("9.12345", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("2.5", gg.TYPE_FLOAT)
gg.toast('Deactivated')
gg.clearResults()
end

function tst8on()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.25F;0.20000000298F;0.89999997616F;1.0F;0.34999999404F;1.0F;1.0F;3.59999990463F;0.0F;0.0F;0.05000000075F;1.0F;0.11999999732F;0.03999999911F;0.0F;0.5F;0.05000000075F;5.0F;0.20000000298F;70.0F;0.09499999881F;0.0F;0.61199998856F;10.0F;0.10000000149F;10.0F;2.5F::113", gg.TYPE_FLOAT)
gg.searchNumber("1.0F;1.0F;1.0;0.20000000298F::", gg.TYPE_FLOAT)
gg.searchNumber("1", gg.TYPE_FLOAT)
gg.getResults(700)
gg.editAll("10.019292", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("10.019292;10.019292;10.019292;3.59999990463::", gg.TYPE_FLOAT)
gg.searchNumber("3.59999990463", gg.TYPE_FLOAT)
gg.getResults(700)
gg.editAll("5", gg.TYPE_FLOAT)
gg.clearResults()
gg.searchNumber("10.019292;10.019292;10.019292;0.20000000298::", gg.TYPE_FLOAT)
gg.searchNumber("0.20000000298", gg.TYPE_FLOAT)
gg.getResults(700)
gg.editAll("0.05", gg.TYPE_FLOAT)
gg.toast("Activated")
gg.clearResults()
end

function tst8off()
gg.setRanges(gg.REGION_ANONYMOUS)
gg.searchNumber("0.25F;0.20000000298F;0.89999997616F;1.0F;0.34999999404F;1.0F;1.0F;9.12345:29", gg.TYPE_FLOAT)
gg.searchNumber("9.12345", gg.TYPE_FLOAT)
gg.getResults(200)
gg.editAll("2.5", gg.TYPE_FLOAT)
gg.toast('Deactivated')
gg.clearResults()
end


function trailpass()
gg.toast('Its The Weekend')
end

function creds()
gg.alert('(_!#Z@6=}f&)MgoEjkv2?h:TM[BPzw\d-Y!7-l.F,')
end

function start()
gg.alert('This Is A Trial Version, You Can Only Use On The Weekends, Buy For No Time Limit! My PayPal Email Is: modpredator@gmail.com [5$], when you buy make sure tell me your email so i can send you the script!')
os.exit()
end

function gheyhang()
gg.toast('This Script Was Made By Chikri')
end





function ESPHandler()
	if sESP == "On" then
		mESP()
		sESP = "Off"
	elseif sESP == "Off" then
		dESP()
		sESP = "On"
	end
end


function threw()
	if tw == "On" then
		tston()
		tw = "Off"
	elseif tw == "Off" then
		tstoff()
		tw = "On"
	end
end


function fovlol()
	if fov == "On" then
		tst1on()
		fov = "Off"
	elseif fov == "Off" then
		tst1off()
		fov = "On"
	end
end

function aimbotlel()
	if aimbot == "On" then
		tst2on()
		aimbot = "Off"
	elseif aimbot == "Off" then
		tst2off()
		aimbot = "On"
	end
end

function realesp()
	if lst == "On" then
		tst3on()
		lst = "Off"
	elseif lst == "Off" then
		tst3off()
		lst = "On"
	end
end

function legendah()
	if lah == "On" then
		ah1on()
		lah = "Off"
	elseif lah == "Off" then
		ah1off()
		lah = "On"
	end
end

function falconah()
	if fah == "On" then
		ah2on()
		fah = "Off"
	elseif fah == "Off" then
		ah2off()
		fah = "On"
	end
end

function buffaloah()
	if bah == "On" then
		ah3on()
		bah = "Off"
	elseif bah == "Off" then
		ah3off()
		bah = "On"
	end
end

function guillotineah()
	if gah == "On" then
		ah4on()
		gah = "Off"
	elseif gah == "Off" then
		ah4off()
		gah = "On"
	end
end

function blunderblussah()
	if bbah == "On" then
		ah5on()
		bbah = "Off"
	elseif bbah == "Off" then
		ah5off()
		bbah = "On"
	end
end

function nadehack()
	if grenade == "On" then
		tst4on()
		grenade = "Off"
	elseif grenade == "Off" then
		tst4off()
		grenade = "On"
	end
end


function speedz()
	if speed == "On" then
		tst5on()
		speed = "Off"
	elseif speed == "Off" then
		tst5off()
		speed = "On"
	end
end

function ultraaimbot()
	if ultraa == "On" then
		tst6on()
		ultraa = "Off"
	elseif ultraa == "Off" then
		tst6off()
		ultraa = "On"
	end
end

function wallclimb()
	if wallc == "On" then
		tst7on()
		wallc = "Off"
	elseif wallc == "Off" then
		tst7off()
		wallc = "On"
	end
end


function speedfly()
	if speedf == "On" then
		tst8on()
		speedf = "Off"
	elseif speedf == "Off" then
		tst8off()
		speedf = "On"
	end
end

local internet = gg.alert('This Script Requires Internet So I Can Turn It On And Off As I Please!')
local change = gg.makeRequest('https://chikri.github.io/VIPServer/changelog.lua').content
local changelog = gg.alert(change)
local applebee = gg.alert('This Version Is 1.9')
local update = gg.makeRequest('https://chikri.github.io/VIPServer/update.lua').content
local update2 = gg.alert(update)





gg.setVisible(true)


	while(true) do
	if gg.isVisible(true) then
		gg.setVisible(false) 
		gg.clearResults()
		i = gg.choice({" 🌀 Turn "..sESP.." Chams", "🌀 Turn "..tw.." Shoot Through Walls", "🌀 Turn "..fov.." FoV Hack", "🌀 Turn "..aimbot.." Aimbot", "🌀 Turn "..lst.." ESP (Activate In Lobby)", "🌀 Turn "..lah.." Legend Ammo Hack",  "🌀 Turn "..fah.." Falcon Ammo Hack", "🌀 Turn "..bah.." Buffalo Ammo Hack", "🌀 Turn "..gah.." Guillotine Ammo Hack", "🌀 Turn "..bbah.." Blunderbluss Ammo Hack",  "🌀 Turn "..gah.." Grenade Radius Hack", "🌀 Turn "..bbah.." Speedhack", "🌀 Turn "..ultraa.." Ultra Aimbot", "🌀 Turn "..wallc.." Wallclimb", " 🌀 Turn "..speedf.." Speed Fly", "🌀 Credits ", "🌀 Quit Script"}, nil, "Onyx Framework (GoB Script Made By Chikri)")
        if i == 1 then ESPHandler() end
		if i == 2 then threw() end
		if i == 3 then fovlol() end
		if i == 4 then aimbotlel() end
		if i == 5 then realesp() end
		if i == 6 then legendah() end
		if i == 7 then falconah() end
		if i == 8 then buffaloah() end
		if i == 9 then guillotineah() end
		if i == 10 then blunderblussah() end
		if i == 11 then nadehack() end
		if i == 12 then speedz() end
		if i == 13 then ultraaimbot() end
		if i == 14 then wallclimb() end
		if i == 15 then speedfly() end
		if i == 16 then creds() end
		if i == 17 then os.exit() end
	end 
	gg.sleep(ScriptSpeed)
end




-- End Of Main Code
SetMemoryValue(mESP, gg.TYPE_BYTE, 0x00)
PopupBox("Feeling good ?", "Don't forget to leave feedback !")
os.exit()
