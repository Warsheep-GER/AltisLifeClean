class agb
{
	idd = 32154;
	name = "agb";
	movingEnable = false;
	enableSimulation = false;
    
	class controlsBackground
	{
		class RscTitleBackground : Life_RscText
		{
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			idc = -1;
			x = 0.0875;
			y = 0.06;
			w = 0.825;
			h = 0.04;
		};
		
		class RscBackground : Life_RscText
		{
			colorBackground[] = {0.31,0.31,0.31,1};
			idc = -1;
			x = 0.0875;
			y = 0.12;
			w = 0.825;
			h = 0.82;
		};
		
		class RscTitleText : Life_RscTitle
		{
			colorBackground[] = {0, 0, 0, 0};
			idc = -1;
			text = "$STR_Agb_Ueberschrift";
			x = 0.0875;
			y = 0.06;
			w = 0.825;
			h = 0.04;
            class Attributes 
			{
				align = "center";
			};
		};
				
		class RsclolStatus : Life_RscStructuredText
		{
			idc = -1;
			colorBackground[] = {0, 0, 0, 0};
            sizeEx = 0.0001;
			text = "<t size = '0.8'>Unerwünschtes Fehlverhalten (führt ggf. zu Bann)<br / ><br / >  §1.1: Hacking / Cheating / Duping<br / >  §1.2: Selbstmord / Disconect um sich dem Rollenspiel zu entziehen.<br / >  §1.3: Bugs/Exploites ausnutzen - im Zweifel Admin fragen<br / ><br / >  §2: Das Rollenspiel auf dem Altis Life Server steht an erster Stelle, wer dies nicht einhält wird verwarnt und nach mehrmaliger Ermahnung ggf. gebannt.<br / ><br / >  §3: Wer die Regeln einer Safezone nicht beachtet oder verstößt wird ohne Vorwarnung gebannt.<br / ><br / >  §4: RDM / VDM wird sofort geahndet und die Täter gebannt.<br / ><br / >Unsere Kontaktdaten: TS³ teamspeak.silentlife.de<br>  Homepage silentlife.de<br / ><br / >Admins: Noldy, Florian<br / ><br / >Die Admins haben das letzt Wort<br / ><br / ></t> Hinweis: Wir suchen ADAC/Medics und Polizisten<br / ><br / ></t> <t font ='PuristaBold' size='0.9'>Um auf dem Altis Life Server zu spielen musst du diesen Regeln zustimmen und verpflichtest dich dazu diese einzuhalten.</t>";
			x = 0.1125;
			y = 0.16;
			w = 0.775;
			h = 0.66;
		};	
	};
    
    	class Controls
	{
		class naz : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Agb_No";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			onButtonClick = "closeDialog 0;";
			x = 0.1075;
            y = 0.88;
            w = 0.3;
            h = 0.04;
            class Attributes 
			{
				align = "center";
			};
		};
		
		
		class az : Life_RscButtonMenu
		{
			idc = -1;
			text = "$STR_Agb_Yes";
			colorBackground[] = {"(profilenamespace getvariable ['GUI_BCG_RGB_R',0.3843])", "(profilenamespace getvariable ['GUI_BCG_RGB_G',0.7019])", "(profilenamespace getvariable ['GUI_BCG_RGB_B',0.8862])", "(profilenamespace getvariable ['GUI_BCG_RGB_A',0.7])"};
			onButtonClick = "rulesok = true; closeDialog 0;";
            x = 0.5825;
            y = 0.88;
            w = 0.3;
            h = 0.04;
            class Attributes 
			{
				align = "center";
			};    
		};
	};
};