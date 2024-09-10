class_name AK

class EVENTS:

	const PLAY_CLICK = 311910498
	const PLAY_SWITCH_SUPERFICIE_TIERRA = 4121056118
	const PLAY_ESTADO_GANAR = 3200380486
	const PLAY_COMER_HAMBURGUESA = 1680200567
	const PLAY_MUSICA = 4237703276
	const PLAY_SWITCH_SUPERFICIE_CEMENTO = 656393096
	const PLAY_HOVER = 1962302600
	const PLAY_ESTADO_GAMEPLAY = 1884797811
	const PLAY_PASOS = 4031831520

	const _dict = {
		"Play_Click": PLAY_CLICK,
		"Play_Switch_Superficie_Tierra": PLAY_SWITCH_SUPERFICIE_TIERRA,
		"Play_Estado_Ganar": PLAY_ESTADO_GANAR,
		"Play_Comer_Hamburguesa": PLAY_COMER_HAMBURGUESA,
		"Play_Musica": PLAY_MUSICA,
		"Play_Switch_Superficie_Cemento": PLAY_SWITCH_SUPERFICIE_CEMENTO,
		"Play_Hover": PLAY_HOVER,
		"Play_Estado_Gameplay": PLAY_ESTADO_GAMEPLAY,
		"Play_Pasos": PLAY_PASOS
	}

class STATES:

	class ESTADO_DEL_JUEGO:
		const GROUP = 3685021506

		class STATE:
			const MENU = 2607556080
			const GANAR = 3575068712
			const NONE = 748895195
			const GAMEPLAY = 89505537

	const _dict = {
		"Estado_Del_Juego": {
			"GROUP": 3685021506,
			"STATE": {
				"Menu": 2607556080,
				"Ganar": 3575068712,
				"None": 748895195,
				"Gameplay": 89505537
			}
		}
	}

class SWITCHES:

	class SUPERFICIE:
		const GROUP = 3001233698

		class SWITCH:
			const TIERRA = 2565746006
			const CEMENTO = 1137103080

	const _dict = {
		"Superficie": {
			"GROUP": 3001233698,
			"SWITCH": {
				"Tierra": 2565746006,
				"Cemento": 1137103080
			}
		}
	}

class GAME_PARAMETERS:

	const SX_VOLUME = 3075796249
	const MX_VOLUME = 1441253587
	const DISTANCIA_HAMBURGUESA = 2185633902
	const CANTIDAD_TIMESTRETCH = 2448709148

	const _dict = {
		"SX_Volume": SX_VOLUME,
		"MX_Volume": MX_VOLUME,
		"Distancia_Hamburguesa": DISTANCIA_HAMBURGUESA,
		"Cantidad_Timestretch": CANTIDAD_TIMESTRETCH
	}

class TRIGGERS:

	const _dict = {}

class BANKS:

	const INIT = 1355168291
	const GENERAL = 133642231

	const _dict = {
		"Init": INIT,
		"General": GENERAL
	}

class BUSSES:

	const MUSICA = 1730564739
	const MASTER_AUDIO_BUS = 3803692087
	const SFX = 393239870

	const _dict = {
		"Musica": MUSICA,
		"Master Audio Bus": MASTER_AUDIO_BUS,
		"Sfx": SFX
	}

class AUX_BUSSES:

	const _dict = {}

class AUDIO_DEVICES:

	const NO_OUTPUT = 2317455096
	const SYSTEM = 3859886410

	const _dict = {
		"No_Output": NO_OUTPUT,
		"System": SYSTEM
	}

class EXTERNAL_SOURCES:

	const _dict = {}

