## League maintenance

### Adding GMs
New GMs will need the following:
* Setup files
* Team password
* FTP login information

The commissioner must use **Multi-Player > Team Control Panel** to toggle the team onto manual control. 

Caution: if a team is left on AI control, but submits a file, there's no warning from the game.

### Setup Files

The commissioner must maintain a repository of setup files that must be updated yearly. This repository must contain:

* `frfoot.fcc` - color schemes for all teams
* `frfoot.fcy` - city information for the league
* `frfoot.fni` - team nicknames for the league
* `LEAGUEID.yyyy` - a set of all <abbr title="End of Season">EOS</abbr> stat files. 
* `ban##.bmp` - a set of all custom logo files for the league and its teams (optional)
* `LEAGUEID.fpx` - something that is necessary for offseason setup.
* `LEAGUEID.frc` - something that is necessary for offseason setup.

Note that the weekly stat files `LEAGUEIDww.yyyy` need not be included for setup. They contain box/log data.

When rolling over to a new season (after clicking "End Season"), it is necessary to update this repository with:

* The new `LEAGUEID.yyyy` from the season just completed.
* Updated versions of `LEAGUEID.fpx` and `LEAGUEID.frc`. Probably.

If color schemes, city names, nicknames, etc are updated, then the repository should be updated to reflect that.

## Simming Process

1. Import stage files. Check the export tracker to make sure nothing got left on the server.
1. Process trades.
1. Manual intervention (e.g. Roster requests) if necessary.
1. Sim & save. At this point, you may export. `~5 minutes`.
1. Run backup, either via script, or by manually copying the export files from `%APPDATA%\Solecismic Software\Front Office Football Seven\export\LEAGUENAME` folder.
1. "Create HTML", check both boxes. `~5 minutes`.
1. Upload the files from `%APPDATA%\Solecismic Software\Front Office Football Seven\leaguehtml\LEAGUENAME`. Sort by date modified and grab the ~400 files or so that are new to each sim, for brevity. `~15 minutes`.

### Trades

Trades may be processed before or after sims. I do it before unless otherwise specified.

### Manual intervention
The commissioner can release players, alter depth charts, or assign franchise tags if necessary. To do the latter two, you must take control of the team by going to **Game Options > Choose/Edit Color Scheme** and selecting the team of choice.

This will be necessary in season if teams need to add players that they want to deactivate, or place on their depth chart, for a game sim.

For example, if a player needs to sign a kicker to field a legal roster, he should clear room for one player, offer two kickers, notify the commissioner which kicker to release if both sign, and tell the commissioner where to place the new signee on the depth chart.

A commissioner is not able to make contract offers for teams.
## Drafting & Offseason

We use the [Draft Conscriptor](http://www.operationsports.com/fofc/showthread.php?t=86357) utility to accomplish drafts.

To set up the draft, you must export data (at any point after the Franchise/Tickets stage has been run) and "Import Draft" as administrator in the draft utility.

## Backup script
A source `backupscript.bat` Windows batch file along with a required `zip.vbs` script can be used to expedite the backup process. These should be located in `%APPDATA%\Solecismic Software\Front Office Football Seven\`.

The `.bat` file should be modified accordingly. It creates two separate zips, one for the export, one for the imported stage files from the GMs, and names it according to a timestamp. The zips are placed in a folder of your choosing.

Note that the timestamp format used in the batch file is USA region-specific and may also need to be adjusted.






