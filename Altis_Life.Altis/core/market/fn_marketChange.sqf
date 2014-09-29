/*

	Some random and dynamical stuff for market

*/

private["_rand","_modifier","_price", "_globalchange","_defaultprice","_shortname","_difference"];

_rand = [0,200] call life_fnc_randomRound; //0-200

/*

	HINWEIS: obige Zahl in random erhöhen, um alle ereignisse seltener zu machen!
	
*/

diag_log "[MARKET] marketChange called.";

switch(true) do
{
	case (_rand <= 40): //40% default market change value (strong version)
	{
		{
			if(random(10) <= 4) then //Random for each resource
			{
				/*_price = _x select 1;
				_globalchange = _x select 2;*/
				
				_modifier = [-20,20] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				/*_modifier = _price * _modifier;
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				life_market_prices set [_forEachIndex, [_x select 0, _price, _globalchange, _modifier] ];*/
				
				if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};
			};
		}
		foreach life_market_prices;
	};
	case (_rand <= 46): //6% Drogenpreis erhöhen
	{
		[[3,"Drogenbande in Athira ausgehoben! Experten vermuten extreme Preiserhöhungen."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event drugp";
	};
	case (_rand <= 52): //6% Ölpreis erhöhen
	{
		[[3,"Vor der Rebellen Küste ist ein Öltanker gesunken! Tierschützer sorgen sich um die Schildkröten."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event oilp";
	};
	case (_rand <= 58): //6% Eisenpreis + zementpreis + glaspreis erhöhen
	{
		[[3,"AAN plant Neubau von der Antenne! Marktexperten vermuten starken anstieg bei Baupreise."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["cement", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["iron_r", [20,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["glass", [25,35] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		
		diag_log "+Market+ Event wcc";
	};
	case (_rand <= 64): //6% Goldpreis sinkt
	{
		[[3,"Anleger verlieren Vertrauen in Gold!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		
		diag_log "+Market+ Event goldm";
	};
	case (_rand <= 70): //6% Kupfer/Silber erhöht sich
	{
		[[3,"Elektronikindustrie benötigt Edelmetalle!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["copper_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		diag_log "+Market+ Event copperp";
	};
	case (_rand <= 76): //6% Goldpreis erhöht sich
	{
		[[3,"Anleger verlieren Vertrauen in Diamanten!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		["goldbar", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		
		diag_log "+Market+ Event goldp";
	};
	case (_rand <= 82): //6% Drogenpreis niedriger
	{
		[[3,"Neue Droge aus Salz überschwemmt Drogenmarkt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["marijuana", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["salt_r", [15,30] call life_fnc_randomRound, true] call life_fnc_marketBuy;
		
		diag_log "+Market+ Event drugm";
	};
	case (_rand <= 88): //10% Schildkröten höher
	{
		[[3,"Gangs entdeckt Schildkröten als neue Medizin! Tierschützer sind besorgt!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 94): //6% oil höher
	{
		[[3,"Forscher entdecken einen weg um aus Oil Diamant herzustellen!"],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["oilp", [20,40] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["diamondc", [15,30] call life_fnc_randomRound, true] call life_fnc_marketSell;
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 97): //3% alles höher
	{
		[[3,"Das Marksystem Bricht zusammen!Preise schiessen in die höhe."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["heroinp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["cocainep", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["marijuana", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 
		["goldbar", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["diamondc", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["iron_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["oilp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["cement", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["salt_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["glass", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		["copper_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketBuy; 	
		
		diag_log "+Market+ Event turtlep";
	};
	case (_rand <= 100): //3% alles sinkt
	{
		[[3,"Das Marksystem überflutet! Preise sinken stark."],"life_fnc_broadcast",true,false] spawn life_fnc_MP;
		
		//Erhöhe Marktpreis mit marketSell
		["turtle", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["heroinp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["cocainep", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["marijuana", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 
		["goldbar", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["diamondc", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["iron_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["oilp", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["cement", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["salt_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["glass", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		["copper_r", [4,10] call life_fnc_randomRound, true] call life_fnc_marketSell; 	
		
		diag_log "+Market+ Event turtlep";
	};
	default //market change: default version
	{
		//diag_log format["[MARKET] marketChange did nothing. Rand=%1", _rand];
		{
			//Get default price
			_defaultprice = 0;
			_shortname = _x select 0;
			_price = _x select 1;
			_globalchange = _x select 2;
		
			{
				if((_x select 0) == _shortname) exitWith
				{
					_defaultprice = _x select 1;
				};
			}
			foreach life_market_resources;
			
			if(_defaultprice > 0) then
			{
			
				//Get difference
				_difference = _defaultprice - _price; //Defaultprice - current price
			
				_modifier = _difference * (random 0.4);
				_modifier = round _modifier;
			
				//Protecting hard caps
				/*if( _modifier < -700) then {_modifier = -700;};
				if( _modifier > 700) then {_modifier = 700;};*/
			
				//_modifier = [-15,25] call life_fnc_randomRound; //Verkaufte/Gekaufte Items
				
				/*if(_modifier < 0) then
				{
					[_x select 0, -(_modifier), true] call life_fnc_marketSell; 
				}
				else
				{
					[_x select 0, _modifier, true] call life_fnc_marketBuy; 
				};*/
				
				diag_log format["+Market+ Correcting market value of %1 from %2 to %3 by %4", _shortname, _price, (_price + _modifier), _modifier];
				
				_price = _price + _modifier;
				_globalchange = _globalchange + _modifier;
				
				
				
				//New price arr
				life_market_prices set [_forEachIndex, [_shortname, _price,_globalchange,_modifier] ]; //set raw values
			
			}
			else
			{
				diag_log format["+Market+ Cannot correct market value of %1", _shortname];
			};
		}
		foreach life_market_prices;
	};
};

publicVariable "life_market_prices";