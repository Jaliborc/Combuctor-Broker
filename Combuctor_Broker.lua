--[[
Copyright 2011-2017 João Cardoso
Combuctor Broker is distributed under the terms of the GNU General Public License (or the Lesser GPL).
This file is part of Combuctor Broker.

Combuctor Broker is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

Combuctor Broker is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with Combuctor Broker. If not, see <http://www.gnu.org/licenses/>.
--]]

local L = LibStub('AceLocale-3.0'):GetLocale('Combuctor')

LibStub:GetLibrary('LibDataBroker-1.1'):NewDataObject('Combuctor_Broker', {
	icon = [[Interface\Icons\INV_Misc_Bag_07]],
	type = 'launcher',
	label = 'Combuctor',
	text = 'Combuctor',

	OnTooltipShow = function(self)
		self:SetText('Combuctor')
		self:AddLine(L.BagToggle, 1, 1, 1)
		self:AddLine(L.BankToggle, 1, 1, 1)
		self:AddLine(L.OptionsToggle, 1, 1, 1)
	end,
	
	OnClick = function(self, button)
		if button == 'LeftButton' then
			if IsControlKeyDown() then
				Combuctor:ShowOptions()
			else
				Combuctor:Toggle(BACKPACK_CONTAINER)
			end
		elseif button == 'RightButton' then
			Combuctor:Toggle(BANK_CONTAINER)
		end
	end,
})