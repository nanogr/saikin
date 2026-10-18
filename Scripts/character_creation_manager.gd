extends Control
@onready
var imput_name = $CharacterName
var character_color : String
#func handlecharactercolor()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#GameManager.imput_name.connect()
	pass
	
	
func _on_text_edit_text_changed() -> void: 
	var obtener_texto: String = $TextEdit.text

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_color_verde_button_down() -> void: #5bd642
	var color_verde: Color = Color("5bd642") 
	pass # Replace with function body.


func _on_color_morado_button_down() -> void:
	var color_verde: Color = Color("cc64fe")  
	pass # Replace with function body.


func _on_color_amarillo_button_down() -> void: 
	var color_verde: Color = Color("decd26")
	pass # Replace with function body.


func _on_color_rojo_button_down() -> void: 
	var color_verde: Color = Color("d02327")
	pass # Replace with function body.


func _on_color_azul_button_down() -> void: 
	var	color_azul: Color = Color("38c8f2")
	pass # Replace with function body.
	
