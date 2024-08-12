--[[
 .____                  ________ ___.    _____                           __                
 |    |    __ _______   \_____  \\_ |___/ ____\_ __  ______ ____ _____ _/  |_  ___________ 
 |    |   |  |  \__  \   /   |   \| __ \   __\  |  \/  ___// ___\\__  \\   __\/  _ \_  __ \
 |    |___|  |  // __ \_/    |    \ \_\ \  | |  |  /\___ \\  \___ / __ \|  | (  <_> )  | \/
 |_______ \____/(____  /\_______  /___  /__| |____//____  >\___  >____  /__|  \____/|__|   
         \/          \/         \/    \/                \/     \/     \/                   
          \_Welcome to LuaObfuscator.com   (Alpha 0.10.7) ~  Much Love, Ferib 

]]--

local v0 = string.char;
local v1 = string.byte;
local v2 = string.sub;
local v3 = bit32 or bit;
local v4 = v3.bxor;
local v5 = table.concat;
local v6 = table.insert;
local function v7(v13, v14)
	local v15 = {};
	for v28 = 1, #v13 do
		v6(v15, v0(v4(v1(v2(v13, v28, v28 + 1)), v1(v2(v14, 1 + (v28 % #v14), 1 + (v28 % #v14) + 1))) % 256));
	end
	return v5(v15);
end
local v8 = game:GetService(v7("\225\207\218\60\227\169\212", "\126\177\163\187\69\134\219\167"));
local v9 = game:GetService(v7("\17\216\36\246\249\49\219\35\198\249", "\156\67\173\74\165"));
local function v10(v16)
	local v17 = nil;
	local v18 = math.huge;
	local v19 = v16:FindFirstChild(v7("\28\162\68\23\178\41\79\48\133\70\25\168\22\71\38\163", "\38\84\215\41\118\220\70"));
	if not v19 then
		return nil;
	end
	local v20 = v19.Position;
	for v29, v30 in ipairs(v8:GetPlayers()) do
		if (v30.Character and v30.Character:FindFirstChild(v7("\120\3\47\19\240\95\31\38\32\241\95\2\18\19\236\68", "\158\48\118\66\114")) and (v30.Character ~= v16)) then
			local v36 = 0 + 0;
			local v37;
			local v38;
			while true do
				if (v36 == (792 - (368 + 423))) then
					if (v38 < v18) then
						local v41 = 1747 - (760 + 987);
						local v42;
						while true do
							if (v41 == 0) then
								v42 = 1913 - (1789 + 124);
								while true do
									if (v42 == (0 - 0)) then
										v17 = v30;
										v18 = v38;
										break;
									end
								end
								break;
							end
						end
					end
					break;
				end
				if ((18 - (10 + 8)) == v36) then
					v37 = v30.Character.HumanoidRootPart.Position;
					v38 = (v20 - v37).magnitude;
					v36 = 3 - 2;
				end
			end
		end
	end
	return v17;
end
local function v11(v21)
	local v22 = v21:FindFirstChildWhichIsA(v7("\131\49\29\55\125\170\242\175", "\155\203\68\112\86\19\197"));
	if not v22 then
		return;
	end
	local v23 = Instance.new(v7("\103\211\63\241\65\108\236\247\72", "\152\38\189\86\156\32\24\133"));
	v23.AnimationId = ((v22.RigType == Enum.HumanoidRigType.R6) and v7("\238\85\191\71\239\68\162\82\245\83\253\9\179\6\243\30\164\3\247\21\171\6", "\38\156\55\199")) or v7("\186\127\100\41\0\103\255\87\161\121\38\103\92\33\163\18\240\42\46\126\69\35\174", "\35\200\29\28\72\115\20\154");
	local v25 = v22:LoadAnimation(v23);
	v25:Play((1733.1 - (416 + 26)) - ((609 - 418) + 473 + 627), (1 - 0) + (1055 - (87 + 968)), (439 - (145 + 293)) + 0);
	v25:AdjustSpeed(700430 - (44 + 386));
	local v26;
	v26 = v22.Died:Connect(function()
		local v31 = 1486 - (998 + 488);
		while true do
			if (v31 == (1414 - (447 + 966))) then
				v26:Disconnect();
				if bangLoop then
					bangLoop:Disconnect();
				end
				break;
			end
			if (v31 == (0 + 0)) then
				v25:Stop();
				v23:Destroy();
				v31 = 1818 - (1703 + 114);
			end
		end
	end);
	local v27 = v10(v21);
	if v27 then
		local v32 = 0;
		local v33;
		local v34;
		local v35;
		while true do
			if (v32 == (702 - (376 + 325))) then
				v35 = nil;
				while true do
					if ((0 + 0) == v33) then
						local v43 = 772 - (201 + 571);
						while true do
							if (v43 == (1139 - (116 + 1022))) then
								v33 = (4 - 3) - (0 + 0);
								break;
							end
							if (v43 == (0 - 0)) then
								local v44 = 0 - 0;
								while true do
									if ((3 - 2) == v44) then
										v43 = 860 - (814 + 45);
										break;
									end
									if (v44 == (0 - 0)) then
										v34 = CFrame.new((48 + 829) - (230 + 52 + 211 + 384), 1637 - ((2408 - (261 + 624)) + 32 + 82), (1.1 - 0) + (0 - 0));
										v35 = v27.Character:FindFirstChild(v7("\49\170\220\222\131\35\61\29\141\222\208\153\28\53\11\171", "\84\121\223\177\191\237\76"));
										v44 = 1081 - (1020 + 60);
									end
								end
							end
						end
					end
					if (v33 == ((2489 - (630 + 793)) - ((230 - 162) + (2471 - (1329 + 145))))) then
						if v35 then
							bangLoop = v9.Stepped:Connect(function()
								pcall(function()
									v21.HumanoidRootPart.CFrame = v35.CFrame * v34;
								end);
							end);
						end
						break;
					end
				end
				break;
			end
			if (v32 == 0) then
				v33 = (0 - 0) + 0 + 0;
				v34 = nil;
				v32 = 719 - (15 + 703);
			end
		end
	end
end
local v12 = v8.LocalPlayer;
if (v12 and v12.Character) then
	v11(v12.Character);
end
