extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Board.powers[$Board.power_name.AUSTRIA] = $Board.Power.new()
	$Board.powers[$Board.power_name.AUSTRIA].name = "Austria"
	$Board.powers[$Board.power_name.AUSTRIA].color = Color("da9b8c")
	$Board.powers[$Board.power_name.AUSTRIA].controlled_provinces.append($Board.get_province("BUD"))
	$Board.powers[$Board.power_name.AUSTRIA].controlled_provinces.append($Board.get_province("TRI"))
	$Board.powers[$Board.power_name.AUSTRIA].controlled_provinces.append($Board.get_province("VIE"))
	
	$Board.powers[$Board.power_name.ENGLAND] = $Board.Power.new()
	$Board.powers[$Board.power_name.ENGLAND].name = "England"
	$Board.powers[$Board.power_name.ENGLAND].color = Color("9695b8")
	$Board.powers[$Board.power_name.ENGLAND].controlled_provinces.append($Board.get_province("EDI"))
	$Board.powers[$Board.power_name.ENGLAND].controlled_provinces.append($Board.get_province("LON"))
	$Board.powers[$Board.power_name.ENGLAND].controlled_provinces.append($Board.get_province("LVP"))
	
	$Board.powers[$Board.power_name.FRANCE] = $Board.Power.new()
	$Board.powers[$Board.power_name.FRANCE].name = "France"
	$Board.powers[$Board.power_name.FRANCE].color = Color("9c9bfb")
	$Board.powers[$Board.power_name.FRANCE].controlled_provinces.append($Board.get_province("BRE"))
	$Board.powers[$Board.power_name.FRANCE].controlled_provinces.append($Board.get_province("MAR"))
	$Board.powers[$Board.power_name.FRANCE].controlled_provinces.append($Board.get_province("PAR"))
	
	$Board.powers[$Board.power_name.GERMANY] = $Board.Power.new()
	$Board.powers[$Board.power_name.GERMANY].name = "Germany"
	$Board.powers[$Board.power_name.GERMANY].color = Color("9c9a8b")
	$Board.powers[$Board.power_name.GERMANY].controlled_provinces.append($Board.get_province("KIE"))
	$Board.powers[$Board.power_name.GERMANY].controlled_provinces.append($Board.get_province("BER"))
	$Board.powers[$Board.power_name.GERMANY].controlled_provinces.append($Board.get_province("MUN"))
	
	$Board.powers[$Board.power_name.ITALY] = $Board.Power.new()
	$Board.powers[$Board.power_name.ITALY].name = "Italy"
	$Board.powers[$Board.power_name.ITALY].color = Color("93c582")
	$Board.powers[$Board.power_name.ITALY].controlled_provinces.append($Board.get_province("VEN"))
	$Board.powers[$Board.power_name.ITALY].controlled_provinces.append($Board.get_province("ROM"))
	$Board.powers[$Board.power_name.ITALY].controlled_provinces.append($Board.get_province("NAP"))
	
	$Board.powers[$Board.power_name.RUSSIA] = $Board.Power.new()
	$Board.powers[$Board.power_name.RUSSIA].name = "Russia"
	$Board.powers[$Board.power_name.RUSSIA].color = Color("d59bc4")
	$Board.powers[$Board.power_name.RUSSIA].controlled_provinces.append($Board.get_province("MOS"))
	$Board.powers[$Board.power_name.RUSSIA].controlled_provinces.append($Board.get_province("SEV"))
	$Board.powers[$Board.power_name.RUSSIA].controlled_provinces.append($Board.get_province("STP"))
	$Board.powers[$Board.power_name.RUSSIA].controlled_provinces.append($Board.get_province("WAR"))
	
	$Board.powers[$Board.power_name.TURKEY] = $Board.Power.new()
	$Board.powers[$Board.power_name.TURKEY].name = "Turkey"
	$Board.powers[$Board.power_name.TURKEY].color = Color("c3c236")
	$Board.powers[$Board.power_name.TURKEY].controlled_provinces.append($Board.get_province("CON"))
	$Board.powers[$Board.power_name.TURKEY].controlled_provinces.append($Board.get_province("ANK"))
	$Board.powers[$Board.power_name.TURKEY].controlled_provinces.append($Board.get_province("SMY"))
	
	for i in range(7):
		for prov in $Board.powers[i].controlled_provinces:
			prov.set_ownership(i,$Board.powers[i].color)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
