-- gw2ss: simple tracking and reporting of GW2 salvage rates
-- Copyright (C) 2015  David Ulrich
--
-- This program is free software: you can redistribute it and/or modify
-- it under the terms of the GNU Affero General Public License as published
-- by the Free Software Foundation, version 3 of the License.
--
-- This program is distributed in the hope that it will be useful,
-- but WITHOUT ANY WARRANTY; without even the implied warranty of
-- MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
-- GNU Affero General Public License for more details.
--
-- You should have received a copy of the GNU Affero General Public License
-- along with this program.  If not, see <http://www.gnu.org/licenses/>.

local reports = {
	{
		title = "Stats",
		query = [[
			SELECT
				T.TierName,
				COUNT(*) AS Salvages,
				SUM(SalvageEcto) AS SalvageEcto,
				SUM(SalvageDark) AS SalvageDark,
				ROUND(SUM(SalvageEcto) / SUM(1),2) AS EctoRate,
				ROUND(SUM(SalvageDark) / SUM(1),2) AS DarkRate
			FROM salvages S
			LEFT JOIN tiers T ON S.TierID = T.TierID
			GROUP BY S.TierID
		]],
		fields = {
			"TierName",
			"Salvages",
			"SalvageEcto",
			"SalvageDark",
			"EctoRate",
			"DarkRate"
		},
		titles = {
			"Tier",
			"Total",
			"Ecto #",
			"Dark #",
			"Ecto/Item",
			"Dark/Item"
		}
	}
}

return reports
