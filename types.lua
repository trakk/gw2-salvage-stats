-- gw2ss: simple tracking and reporting of GW2 salvage rates
-- Copyright (C) 2015  David Ulrich
-- 
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as published
-- by the Free Software Foundation, either version 3 of the License, or
-- (at your option) any later version.
-- 
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
-- 
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

require "fns"

A = {
	LEFT = 1,
	RIGHT = 2,
	CENTER = 3
}

display = {
	DarkRate = {
		align = A.RIGHT,
		left = 6,
		right = 0
	},
	EctoRate = {
		align = A.RIGHT,
		left = 6,
		right = 0
	},
	SalvageID = {
		align = A.RIGHT,
		left = 2,
		right = 0
	},
	SalvageDark = {
		align = A.RIGHT,
		left = 6,
		right = 0
	},
	SalvageDate = {
		align = A.RIGHT,
		left = 10,
		right = 0
	},
	SalvageEcto = {
		align = A.RIGHT,
		left = 6,
		right = 0
	},
	Salvages = {
		align = A.RIGHT,
		left = 6,
		right = 0
	},
	TierID = {
		align = A.RIGHT,
		left = 2,
		right = 0
	},
	TierName = {
		align = A.LEFT,
		left = 0,
		right = 12
	}
}

T = {
	NONE = 0,
	SALVAGES = 1,
	TIERS = 2
}

types = {}
types[T.SALVAGES] = {
	title = "Salvages",
	table = "salvages",
	sql_id = "S",
	id_field = "SalvageID",
	names = {
		{
			prompt = "Date",
			title = "Date",
			field = "SalvageDate",
			default = os.date("%Y-%m-%d")
		},
		{
			prompt = "Tier",
			title = "Tier",
			field = "TierID",
			table = "tiers",
			type_t = T.TIERS
		},
		{
			prompt = "Ectos",
			title = "Ecto #",
			field = "SalvageEcto"
		},
		{
			prompt = "Darks",
			title = "Dark #",
			field = "SalvageDark"
		}
	}
}
types[T.TIERS] = {
	title = "Tiers",
	table = "tiers",
	sql_id = "T",
	id_field = "TierID",
	names = {
		{
			prompt = "Name",
			title = "Tier",
			field = "TierName"
		}
	}
}
