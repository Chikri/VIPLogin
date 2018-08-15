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
