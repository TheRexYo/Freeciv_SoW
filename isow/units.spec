
[spec]

; Format and options of this spec file:
options = "+Freeciv-2.6-spec"

[info]

; Apolyton Tileset created by CapTVK with thanks to the Apolyton Civ2
; Scenario League.

; Special thanks go to:
; Alex Mor and Captain Nemo for their excellent graphics work
; in the scenarios 2194 days war, Red Front, 2nd front and other misc graphics. 
; Fairline for his huge collection of original Civ2 unit spanning centuries
; Bebro for his collection of mediveal units and ships

artists = "
    Alex Mor [Alex]
    Allard H.S. Höfelt [AHS]
    Bebro [BB]
    Captain Nemo [Nemo][MHN]
    CapTVK [CT] <thomas@worldonline.nl>
    Curt Sibling [CS]
    Erwan [EW]
    Fairline [GB]
    GoPostal [GP]
    Oprisan Sorin [Sor]
    Tanelorn [T]
    Paul Klein Lankhorst / GukGuk [GG]
    Andrew ''Panda´´ Livings [APL]
    Vodvakov
    J. W. Bjerk / Eleazar <www.jwbjerk.com>
    qwm
    FiftyNine
"

[file]
gfx = "isow/units"

[grid_main]

x_top_left = 0
y_top_left = 0
dx = 64
dy = 48
pixel_border = 0

tiles = { "row", "column", "tag"
				; Scenario League tags in brackets
  0,  0, "u.saurian"		; [???]
  0,  1, "u.armor"		; [Nemo]
  0,  2, "u.howitzer"		; [Nemo]
  0,  3, "u.battleship"		; [Nemo]
  0,  4, "u.bomber"		; [GB]
  0,  5, "u.cannon"		; [CT]
  0,  6, "u.caravan"		; [Alex] & [CT]
  0,  7, "u.carrier"		; [Nemo]
  0,  8, "u.catapult"		; [CT]
  0,  9, "u.horsemen"		; [GB]
  0, 10, "u.chariot"		; [BB] & [GB]
  0, 11, "u.cruiser"		; [Nemo]
  0, 12, "u.diplomat"		; [Nemo]
  0, 13, "u.fighter"		; [Sor]
  0, 14, "u.frigate"		; [BB]
  0, 15, "u.ironclad"		; [Nemo]
  0, 16, "u.knights"		; [BB]
  0, 17, "u.legion"		; [GB]
  0, 18, "u.mech_inf"		; [GB]
  0, 19, "u.warriors"		; [GB]
  0, 20, "u.musketeers"		; [Alex] & [CT]
  0, 21, "u.nuclear"		; [Nemo] & [CS]
  0, 22, "u.phalanx"		; [GB] & [CT]
  0, 23, "u.riflemen"		; [Alex]
  0, 24, "u.caravel"		; [BB]
  0, 25, "u.settlers"		; [MHN]
  0, 26, "u.submarine"		; [GP]
  0, 27, "u.transport"		; [Nemo]
  0, 28, "u.trireme"		; [BB]
  0, 29, "u.archers"		; [GB]
  0, 30, "u.cavalry"		; [Alex]
  1,  0, "u.cruise_missile"	; [CS]
  1,  1, "u.destroyer"		; [Nemo]
  1,  2, "u.dragoons"		; [GB]
  1,  3, "u.explorer"		; [Alex] & [CT]
  1,  4, "u.freight"		; [CT] & qwm
  1,  5, "u.galleon"		; [BB]
  1,  6, "u.partisan"		; [BB] & [CT]
  1,  7, "u.pikemen"		; [T]
  1,  8, "u.invisible"		; [GB]
  1,  9, "u.generic"		; [GB]
  1, 10, "u.marines"		; [GB]
  1, 11, "u.spy"		; [EW] & [CT]
  1, 12, "u.engineers"		; [Nemo] & [CT]
  1, 13, "u.artillery"		; [GB]
  1, 14, "u.helicopter"		; [T]
  1, 15, "u.alpine_troops"	; [Nemo]
  1, 16, "u.stealth_bomber"	; [GB]
  1, 17, "u.stealth_fighter"	; [Nemo] & [AHS]
  1, 18, "u.aegis_cruiser"	; [GP]
  1, 19, "u.paratroopers"	; [Alex]
  1, 20, "u.elephants"		; [Alex] & [GG] & [CT]
  1, 21, "u.crusaders"		; [BB]
  1, 22, "u.fanatics"		; [GB] & [CT]
  1, 23, "u.awacs"		; [APL]
  1, 24, "u.worker"		; [GB]
  1, 25, "u.leader"		; [GB]
  1, 26, "u.barbarian_leader"	; FiftyNine
  1, 27, "u.migrants"		; Eleazar
; 1, 28, "u.train"		; Eleazar

}
