extends Node
class_name game_manager

enum power_name {AUSTRIA, ENGLAND, FRANCE, GERMANY, ITALY, RUSSIA, TURKEY, NONE}

@onready var setup = {
	game_manager.power_name.AUSTRIA : {
		'name' : 'Austria',
		'color' : 'da9b8c',
		'home_provinces' : ['BUD','TRI','VIE'],
		'Armies' : ['BUD','VIE'],
		'Fleets' : ['TRI']
	},
	game_manager.power_name.ENGLAND : {
		'name' : 'England',
		'color' : '9695b8',
		'home_provinces' : ['EDI','LON','LVP'],
		'Armies' : ['LVP'],
		'Fleets' : ['EDI','LON']
	},
	game_manager.power_name.FRANCE : {
		'name' : 'France',
		'color' : '9c9bfb',
		'home_provinces' : ['BRE','MAR','PAR'],
		'Armies' : ['MAR','PAR'],
		'Fleets' : ['BRE']
	},
	game_manager.power_name.GERMANY : {
		'name' : 'Germany',
		'color' : '9c9a8b',
		'home_provinces' : ['KIE','BER','MUN'],
		'Armies' : ['BER','MUN'],
		'Fleets' : ['KIE']
	},
	game_manager.power_name.ITALY : {
		'name' : 'Italy',
		'color' : '93c582',
		'home_provinces' : ['VEN','ROM','NAP'],
		'Armies' : ['ROM','VEN'],
		'Fleets' : ['NAP']
	},
	game_manager.power_name.RUSSIA : {
		'name' : 'Russia',
		'color' : 'd59bc4',
		'home_provinces' : ['MOS','SEV','STP','WAR'],
		'Armies' : ['MOS','WAR'],
		'Fleets' : ['SEV','STP']
	},
	game_manager.power_name.TURKEY : {
		'name' : 'Turkey',
		'color' : 'c3c236',
		'home_provinces' : ['CON','ANK','SMY'],
		'Armies' : ['CON','SMY'],
		'Fleets' : ['ANK']
	}
}

# Which boards are active. only needs to track which one is the furtherst along since all the others
# happened in the past.
var active_boards = {
	0 : 0
}

# keeps track of the highest universe in both directions
var active_above = 0
var active_below = 0
