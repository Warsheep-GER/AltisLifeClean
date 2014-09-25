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
			text = "$STR_Agb_Info";
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