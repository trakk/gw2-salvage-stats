# GW2 Salvage Stats (gw2ss)

Repurposed fdb codebase, for simple tracking and reporting of GW2 salvage rates.


# setup

* `db-setup.sql` has schema and some sample db values.
* copy `config.example.lua` to `config.lua` and set credentials.
* install `lua-sql-mysql` package or equivalent [LuaSQL](http://keplerproject.github.io/luasql/doc/us/index.html)
* install `lua-curses` package, or equivalent [LuaCurses](http://luaposix.github.io/luaposix/modules/posix.curses.html)

* run the script via `./run` or `lua gw2ss.lua` or `luajit gw2ss.lua`


# reports

Current reports:
* Stats -- averages and totals for each tier


# license

gw2ss (C) 2015  David Ulrich (http://github.com/dulrich)

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU Affero General Public License as published
by the Free Software Foundation, version 3 of the License.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Affero General Public License for more details.

You should have received a copy of the GNU Affero General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

