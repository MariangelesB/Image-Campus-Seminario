class_name AK

class EVENTS:

	const SWITCH_TERRENO_TIERRA = 2305370377
	const SWITCH_SUPERFICIE_CEMENTO = 2795773837
	const PLAY_CLICK = 311910498
	const PLAY_MUSICA = 4237703276
	const PLAY_COMER_HAMBURGUESA = 1680200567
	const PLAY_HOVER = 1962302600
	const PLAY_PASOS = 4031831520

	const _dict = {
		"Switch_Terreno_Tierra": SWITCH_TERRENO_TIERRA,
		"Switch_Superficie_Cemento": SWITCH_SUPERFICIE_CEMENTO,
		"Play_Click": PLAY_CLICK,
		"Play_Musica": PLAY_MUSICA,
		"Play_Comer_Hamburguesa": PLAY_COMER_HAMBURGUESA,
		"Play_Hover": PLAY_HOVER,
		"Play_Pasos": PLAY_PASOS
	}

class STATES:

	class ESTADO_DEL_JUEGO:
		const GROUP = 3685021506

		class STATE:
			const GAMEPLAY = 89505537
			const NONE = 748895195
			const GANAR = 3575068712
			const MENU = 2607556080

	const _dict = {
		"Estado_Del_Juego": {
			"GROUP": 3685021506,
			"STATE": {
				"Gameplay": 89505537,
				"None": 748895195,
				"Ganar": 3575068712,
				"Menu": 2607556080
			}
		}
	}

class SWITCHES:

	class SUPERFICIE:
		const GROUP = 3001233698

		class SWITCH:
			const CEMENTO = 1137103080
			const TIERRA = 2565746006

	const _dict = {
		"Superficie": {
			"GROUP": 3001233698,
			"SWITCH": {
				"Cemento": 1137103080,
				"Tierra": 2565746006
			}
		}
	}

class GAME_PARAMETERS:

	const CANTIDAD_TIMESTRETCH = 2448709148
	const MX_VOLUME = 1441253587
	const DISTANCIA_HAMBURGUESA = 2185633902
	const SX_VOLUME = 3075796249

	const _dict = {
		"Cantidad_Timestretch": CANTIDAD_TIMESTRETCH,
		"MX_Volume": MX_VOLUME,
		"Distancia_Hamburguesa": DISTANCIA_HAMBURGUESA,
		"SX_Volume": SX_VOLUME
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

