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

DROP DATABASE IF EXISTS gw2ss;
CREATE DATABASE gw2ss;
USE gw2ss;


-- individual salvage events
DROP TABLE IF EXISTS salvages;
CREATE TABLE salvages (
	SalvageID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	SalvageDate DATE NOT NULL DEFAULT 0,
	TierID INT NOT NULL,
	SalvageEcto INT NOT NULL DEFAULT 0,
	SalvageDark INT NOT NULL DEFAULT 0
) ENGINE=InnoDB;


-- item tiers
DROP TABLE IF EXISTS tiers;
CREATE TABLE tiers (
	TierID INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
	TierName VARCHAR(128) NOT NULL DEFAULT ''
) ENGINE=InnoDB;

INSERT INTO tiers (`TierID`,`TierName`) VALUES
	(1,'Exotic'),
	(2,'Rare');
