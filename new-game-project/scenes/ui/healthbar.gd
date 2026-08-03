class_name Healthbar
extends Control

@onready var content_backgorund : ColorRect = $ContentBackground
@onready var health_guage : TextureRect = $HealthGuage
@onready var white_border : ColorRect = $WhiteBorder

@export var is_inverted : bool 

func refresh(current_health: int, max_health: int) -> void:
	var rev = -1 if is_inverted else 1
	white_border.scale.x = (max_health + 2) * rev
	content_backgorund.scale.x = max_health * rev
	health_guage.scale.x = current_health * rev
	
