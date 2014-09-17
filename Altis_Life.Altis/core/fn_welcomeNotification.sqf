/*
	File: fn_welcomeNotification.sqf
	
	Description:
	Called upon first spawn selection and welcomes our player.
*/
format["Herzlich Willkommen %1, Bitte lies die folgenden Zeilen diese sind wichtig!",player getVariable["realname",name player]] hintC
[
	"Willkommen auf unserem Server! Ein paar Sachen haben sich in Altis Life geändert auf die du achten solltest!",
	"Eine Interaktionstaste wurde eingefügt welche dir die große Anstrengung des scrollen abnimmt. Als Standart ist dies [Left Windows], du solltrst dies aber neu Belegen indem du ESC drückst und dann",
	"Konfigurieren->Steuerung->individuell",
	"und änder 'Aktion 10' zu einer Taste .Empfehlung ist [Left Windows] da sonst Probleme Auftreten können .",
	"Diese Taste ist für die folgenden Aktionen gedacht",
	"Aufheben von Gegenständen",
	"Fischen",
	"Interagieren mit Spielern (Polizist)",
	"Interagieren mit Fahrzeugen",
	"Polizeieinstellungen",
	"Wenn du Probleme mit Interaktion / aufheben von Gegenständen hast einfach warten! Ein schneller Weg zu wissen ob man etwas aufheben kann ist die Taste (~) und den Kreis zu betätigen um ein Objekt zu markieren,
	wenn es angezeigt wird mit Namen kann man es aufheben."
	
];
	