waitUntil {!isNull player && player == player};
if(player diarySubjectExists "rules")exitwith{};

player createDiarySubject ["Kontakt","Kontakt"];
player createDiarySubject ["Serverregeln","Serverregeln"];
player createDiarySubject ["Bundeswehr","Bundeswehr"];
player createDiarySubject ["Polizeiregeln","Polizeiregeln"];
player createDiarySubject ["illegalitems","Illegale Items"];
player createDiarySubject ["Busscash-Katalog","Busscash-Katalog"];
player createDiarySubject ["controls","Controls"];

 
    player createDiaryRecord ["Bundeswehr", //Container
        [
            "Bundeswehrregeln", //Subsection
                "1.Bewaffnete Fahrzeuge dürfen erst dann rausgeholt werden wenn es ein hoch räniger Offizier es ermaechtigt.<br/><br/>
				 2.Jeder Zivilist/Rebellen dürfen erschossen werden wenn die ohne aufforderung oder grundlosen betreten des Bundeswehr HQ erfolgt.<br/><br/>
				 2.1.Ausgenommen ist die Hauptstrass.<br/><br/>
				 3.Jeder der Bundeswehr sollte Respect vor seinem Vorgesezten haben und auch dies berücksichtigen.<br/><br/>
				 4.Bei einem Einsatz ist absolute funk disziplin einzuhalten.<br/><br/>
				 5.Die Bundeswehr darf Zivilisten/Rebellen festzuhalten wenn es ein verdacht gibt auf Mord oder Illegalen activitäten bis die örtliche Polizei eintrift.<br/><br/>
				 5.1.Sollte keine Polizei Online sein darf die Bundeswehr polizeiliche Ordnungen volziehen.<br/><br/>
				 6.Die Bundeswehr steht Über der Polizei.<br/><br/>
				 7.Es wird erst dann ausgerückt sobald ein General oder ein hoch räniger Offizier den Befehl erteilt.<br/><br/>
				 8.Die Bundeswehr darf auch Strassen Kontrollen druchführen.<br/>
                "
        ]
    ];
    
    player createDiaryRecord ["Kontakt",
        [
            "TS Daten und das Team",
            "TS Daten:		89.163.227.42 <br/><br/>
			Admin Team:<br/>
			-Warsheep(GER)			Owner, Admin, Skripts, Support<br/>
			-StaatsfeindNR1    	Admin, Mapper, Support<br/>"
        ]
    ];
 
        player createDiaryRecord ["Serverregeln",
        [
            "Exploits",
                "<br/>Folgende Exploits fuehren ohne Vorwarnung zu einem permanenten Serverban:<br/><br/>
1. Ausbruch aus dem Gefaengnis ohne die Nutzung eines Helikopters oder dem Bezahlen der faelligen Summe.<br/><br/>
2. Suizid mit dem Ziel dem RP zu entgehen. Sich aus dem Status getazert, gefesselt, eingesperrt, etc. zu sein. Das Log gibt uns Auskunft darueber, ob du verhaftet wurdest und dann direkt gestorben bist.<br/><br/>
3. Duplizieren/Cheaten von cash und Items. Wenn dir jemand einen extrem hohen cashbetrag sendet, melde dies UMGEHEND einem Admin (Ingame/Forum) und ueberweise das cash an ihn. Tue dies SOFORT!!!<br/><br/>
4. Nutzung von offensichtlich gehackten Gegenstaenden. Betritt ein Hacker den Server und spawnt besagte Gegenstaende, kannst du fuer die Nutzung dieser gebannt werden. Melde die Gegenstaende einem Admin und halte dich von ihnen fern.<br/><br/>
5. Missbrauch von Bugs und Glitches, um einen Vorteil zu erhalten. Dupliziert sich irgendwo eine Waffe? Melde sie und lass sie liegen. Erwischt dich ein Admin bei der Benutzung, wirst du gebannt.<br/>
                "
        ]
    ];
    
    player createDiaryRecord ["Serverregeln",
        [
            "Safe Zones",
                "<br/>Folgende Gebiete sind Safezones. In ihrem Umkreis (100 Meter) duerfen keine Spieler getoetet, ausgeraubt oder bedroht werden. Nichteinhaltung wird mit Kick und Ban bestraft.<br/><br/>
1.Jede Fahrzeuggarage<br/>
2.Jeder Waffenshop<br/>
3.Alle Polizeireviere<br/>
4.Rebellen Outposts<br/>
5.cashautomaten/ATMs<br/>
6.Donator Shops<br/>
"
        ]
    ];
                    
    
    player createDiaryRecord ["Serverregeln",
        [
            "Bangruende",
                "<br/>Sieh dies als deine einzige und letzte Warnung an.<br/><br/>
1. Hacking<br/>
2. Cheating<br/>
3. Exploiting (Siehe 'Exploits')<br/>
4. Nach dem dritten verwarnenden Kick wirst du gebannt.<br/>
"
        ]
    ];
    
    player createDiaryRecord ["Serverregeln",
        [
            "Interaktion mit Polizisten",
                "<br/>Verstoesst du gegen folgende Regeln im Zusammenhang mit der Polizei, kannst du gekickt und gebannt werden.<br/><br/>
1. Zivilisten koennen dafuer verhaftet werden in die Rucksaecke der Polizisten zu schauen. Im Wiederholungsfall wirst du vom Server entfernt.<br/><br/>
2. Zivilisten koennen dafuer verhaftet werden die Polizei dauerhaft zu verfolgen um ihre Position preiszugeben.<br/><br/>
3. Zivilisten und Rebellen, die sich bewaffnen und in Staedten immer wieder Polizisten toeten, werden des RDM bezichtigt. Entsprechende Massnahmen entnimmst du dem Punkt.RDM.<br/><br/>
4. Die Verfolgung und Belaestigung der Polizei ueber einen laengeren Zeitraum wird als Trolling und Spamming gewertet und fuehrt zu einem Kick.<br/><br/>
5. Die aktive Behinderung der Polizeiarbeit fuehrt zu deiner Verhaftung. Im Wiederholungsfall wirst du gekickt.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Serverregeln",
        [
            "Boote",
                "<br/>Verstoesst du gegen folgende Regeln im Zusammenhang mit Booten, kannst du gekickt und gebannt werden.<br/><br/>
1. Das wiederholte Verschieben von Booten ohne Erlaubnis.<br/><br/>
2. Das Verschieben von Booten mit der Absicht jemanden zu verletzen oder zu toeten. Das hat nichts mit RP zu tun, sondern ist einfach ein Mangel des Spiels.<br/><br/>
3. Absichtliches ueberfahren von Schwimmern und Tauchern.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Serverregeln",
        [
            "Fliegen",
                "<br/>Verstoesst du gegen folgende Regeln im Zusammenhang mit Fliegen, kannst du gekickt und gebannt werden.<br/><br/>
                
1. Absichtliches Rammen des Helikopters in andere Dinge. Dazu zaehlen andere Flugzeuge, Fahrzeuge und Gebaeude.<br/><br/>
2. Dauerhaft eine Flughoehe von 200 Metern innerhalb von Staedten. Erstens ist es gegen die Spielerregeln und zweitens riskierst du damit unnoetige Unfaelle, bei denen Spieler getoetet werden koennen.<br/><br/>
3. Das Stehlen von Helikoptern ohne vorherige Warnung und Gewaehrung einer gewissen Zeit, um das Objekt abschliessen zu koennen. Landet der Helikopter gerade und der Pilot rennt raus ohne abzuschliessen, ist das okay, steigt der Pilot jedoch aus und du direkt ein, ohne dass er die Chance hatte abzuschliessen, ist das ein Verstoss.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Serverregeln",
        [
            "Fahrzeuge",
                "<br/>Verstoesst du gegen folgende Regeln im Zusammenhang mit Fahrzeugen, kannst du gekickt und gebannt werden.<br/><br/>
                
1. Absichtliches ueberfahren von anderen Spielern (VDM).<br/><br/>
2. Sich mit Absicht vor Autos werfen, mit dem Ziel ueberfahren zu werden.<br/><br/>
3. Andere Fahrzeuge zu rammen, mit dem Ziel sie zur Explosion zu bringen.<br/><br/>
4. Der dauerhafte Versuch in fremde Fahrzeuge einzusteigen, um den Inhaber zu nerven. Das hat nichts mit RP zu tun, sondern ist einfach nur daemlich.<br/><br/>
5. Das Stehlen eines fremden Fahrzeugs, nur um es zu beschaedigen oder zu zerstoeren.<br/><br/>
6. Das Kaufen von vielen Fahrzeugen mit dem Ziel eines der oben genannten Dinge zu tun.<br/><br/>
7. Die einzigen Gruende, um auf ein Fahrzeug zu schiessen sind um es fahrunfaehig zu machen oder um Warnschuesse innerhalb eines RP-Szenarios abzugeben. Alles andere wird bestraft.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Serverregeln",
        [
            "Kommunikationsregeln",
                "<br/>Verstoesst du gegen folgende Regeln im Zusammenhang mit der Kommunikation, kannst du gekickt und gebannt werden.<br/><br/>
                
1. Im Sidechat darf nicht geredet und keine Musik abgespielt werden.<br/><br/>
2. Spamst du in irgendeinem Channel, wirst du gekickt.<br/><br/>
3. Der Teamspeak ist nicht umsonst in verschiedene Sektionen aufgeteilt. Polizisten haben sich waehrend ihres Dienstes in den Polizeichannels einzufinden.<br/><br/>
4. Zivilisten duerfen die Polizeichannel nicht betreten, um die Position von Polizisten herauszufinden. Werden sie dabei erwischt, werden sie aus dem Channel entfernt. Wiederholungen fuehren zu einem Kick und Ban vom TS und Ingame.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Serverregeln",
        [
            "Random Deathmatching (RDM)",
                "<br/>Verstoesst du gegen folgende Regeln, kannst du gekickt und gebannt werden.<br/><br/>
1. Das Toeten eines anderen Spielers ohne RP-Hintergrund.<br/><br/>
2. Sich der Rebellion anzuschliessen ermaechtigt niemanden RDM zu betreiben - egal ob gegen Zivilisten oder Polizisten.<br/><br/>
3. Polizisten und Zivilisten/Rebellen duerfen sich nur beschiessen, wenn ein offensichtliches Verbrechen vorliegt.<br/><br/>
4. Wirst du im Kugelhagel eines RPs als unbeteiligter getoetet, handelt es sich nicht um RDM.<br/><br/>
5. Das Toeten eines anderen Spielers, um dein Leben oder das eines anderen zu schuetzen ist kein RDM.<br/><br/>
6. Schiesst du auf einen anderen Spieler, ohne ihm Zeit zu gewaehren deine Befehle auszufuehren, wird dies als RDM gewertet. Unabhaengig davon ob er stirbt oder nicht.<br/><br/>
                
Tritt einer der oben genannten Faelle auf, ist ein Admin zu kontaktieren. Er faellt hier immer eine Einzelfallentscheidung und zieht daraus die noetigen Konsequenzen.<br/><br/>
"
        ]
    ];
    player createDiaryRecord ["Serverregeln",
        [
            "New Life Rule",
                "<br/>Die New Life Rule bezieht sich auf Zivilisten/Rebellen. Polizisten haben eine eigene New Life Rule.<br/>
Verstoesst du gegen die New Life Rule, kannst du gekickt und gebannt werden.<br/><br/>
1. Wirst du getoetet, darfst du den Ort des Geschehens als Cop fuer 10 Minuten und als Zivilist fuer 20 Minuten in einem Umkreis von 250 Metern nicht betreten.<br/><br/>
2. Stirbst du waehrend eines RP, giltst du als begnadigt. Du kannst fuer deine bis dahin begangenen Verbrechen nicht mehr belangt werden, hast aber auch kein Anrecht auf einen Rachekill.<br/><br/>
3. Wurdest du in Folge eines RDM getoetet, findet die New Life Regel keine Anwendung.<br/><br/>
4. Drueckst du selbst auf Respawn, findet die New Life Regel keine Anwendung.<br/><br/>
5. Begehst du Suizid, um einem RP zu entgehen, findet die New Life Regel keine Anwendung.<br/><br/>
"
        ]
    ];
 
    player createDiaryRecord ["Serverregeln",
        [
            "Sei kein Arschloch!",
                "<br/>Wenn dir jemand sagt, dass du dich beschissen verhaeltst, wirst du wohl Dinge tun die diesen Anschein erwecken.<br/><br/>
Nerve keine anderen, betreibe RP, sei einfach normal.<br/><br/>
Sei einfach kein Arschloch, okay?<br/><br/>
"
        ]
    ];
    
// Police Section
    player createDiaryRecord ["Polizeiregeln",
        [
            "Verhandlung in Krisensituationen",
                "<br/>Verhandlungen in Krisensituationen werden durch den Polizeipraesidenten oder seinen Stellvertreter durchgefuehrt. Sind beide nicht anwesend, wird die Befehlskette weiter abwaerts bearbeitet.<br/><br/>
"
        ]
    ];
    player createDiaryRecord ["Polizeiregeln",
        [
            "Zentralbank",
                "<br/>1. Das Betreten des Gebiets der Zentralbank ist fuer Zivilisten in einem Umkreis von 300 Metern dauerhaft gesperrt. Wird diese Sperrzone betreten, muss der Zivilist des Ortes verwiesen, festgenommen oder hinauseskortiert werden.<br/><br/>
2. Helikopter, die ueber der Sperrzone fliegen muessen zum Verlassen dieser gebracht werden. Reagieren sie nicht auf Ansprache ist der Einsatz von Waffengewalt genehmigt.<br/><br/>
3. Wird die Zentralbank ausgeraubt, haben sich alle verfuegbaren Einheiten direkt an der Verhinderung des Raubs zu beteiligen.<br/><br/>
4. Polizisten in der Naehe muessen umgehend zur Zentralbank kommen. Die Aufklaerung kleinerer Verbrechen ist dafuer zu vernachlaessigen.<br/><br/>
5. Versagt die Verhandlung mit den Raeubern, ist der Einsatz von toedlicher Gewalt gestattet. Allerdings hat die Moeglichkeit der Verhaftung und der Einsatz des Tazers Vorrang.<br/><br/>
6. Die Polizei hat nicht blind in die Bank zu schiessen.<br/><br/>
7. Die Polizei muss unbeteiligte Zivilisten und Geiseln zuerst evakuieren. Dies hat immer Vorrang!<br/><br/>
8. Jeder Zivilist, der absichtlich die Polizeiarbeit bei einem Bankraub verhindert wird als Komplize angesehen und als solcher behandelt.<br/><br/>
"
        ]
    ];
    player createDiaryRecord ["Polizeiregeln",
        [
            "Fliegen",
                "<br/>1. Kein Helikopter darf ohne die Landeerlaubnis des ranghoechsten Polizisten der online ist innerhalb von Staedten an den folgenden Punkten landen.<br/><br/>

Kavala: Das Helipad des Krankenhauses (037129) und an den Docks (031128).<br/>
Athira: Der Sportplatz (138185) oder das Feld an der Fuehrerscheinstelle (140188).<br/>
Pyrgos: Das Feld nordoestlich der Fuehrerscheinstelle (170127)<br/>
Sofia: Gegenueber des Autoshops (258214) und die Felder suedoestlich der Garage (257212)<br/><br/>
Kleinere Staedte: Es muss eine geeignete Landeflaeche gefunden werden. Hierbei entscheidet der betreffende Polizist einzeln, ob die Landeerlaubnis erteilt wird oder nicht.<br/><br/>
                
2. Helikopter duerfen nicht auf befestigten Strassen landen.<br/><br/>
3. Die Polizei darf kurzzeitig das Landen in bestimmten Zonen ausserhalb der oben ausgewiesenen verbieten, darf diese Sperre jedoch nicht langfristig aufrechterhalten.<br/><br/>
4. Helikopter duerfen nicht unter einer Flughoehe von 200 Metern ueber Staedten fliegen, ausser sie haben eine entsprechende Genehmigung.<br/><br/>
5. Helikopter duerfen nicht ueber Staedten schweben. Ausnahmen sind Polizeihelikopter, solange gerade ein Einsatz stattfindet.<br/><br/>"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Illegale Gebiete",
                "<br/>1. Gebiete krimineller Organisationen sind kein Sperrgebiet fuer Polizisten. Trotzdem darf kein Polizist einen Zivilisten verhaften, der sich in dem Gebiet aufhaelt ohne einem Verbrechen nachzugehen. (Die Nutzung der NPCs in dem jeweiligen Gebiet sind KEINE illegale Aktivitaet.)<br/><br/>
2. Polizisten duerfen sich illegalen Gebieten in einem Umkreis von 250 Metern nicht naehern, sofern sie keinen Verdachtsmoment (durch Insider-Inofmrationen o.ae.) haben.<br/><br/>
3. Verfolgt ein Polizist einen Verdaechtigen in ein illegales Gebiet, darf er Verstaerkung anfordern.<br/><br/>
4. Es ist der Polizei unter keinen Umstaenden erlaubt illegale Gebiete unter Beobachtung zu halten und sie zu becampen (maximale Aufenthaltszeit 10 Minuten).<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Patrouillen",
                "<br/>1. Die Polizei darf die Strassen von Altis routinemaessig patrouillieren, um nach verlassenen Fahrzeugen und Verbrechen ausschau zu halten.<br/><br/>
2. Patrouillen werden innerhalb von Staedten zu Fuss und in Fahrzeugen, ausserhalb von Staedten ausschliesslich in Fahrzeugen durchgefuehrt.<br/><br/>
3. Illegale Gebiete sind von den Patrouillen strengstens ausgenommen.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Kontrollpunkte",
                "<br/>Polizisten duerfen an strategisch wichtigen Punkten, Kontrollpunkte unter Beruecksichtigung folgender Punkte aufstellen:<br/><br/>
1. Ein Kontrollpunkt erfordert mindestens zwei Polizisten und einen Streifenwagen.<br/><br/>
2. Kontrollpunkte duerfen nicht im Umkreis von 300 Metern zu einem illegalen Gebiet aufgestellt werden. Des weiteren muessen Zufahrtsstrassen zu illegalen Gebieten freigehalten werden.<br/><br/>
3. Kontrollpunkte muessen auf befestigten Strassen aufgestellt werden.<br/><br/>
4. Kleiner Kontrollpunkte muessen nicht auf der Karte markiert werden.<br/><br/>

Ablauf einer Kontrolle:<br/><br/>
1. Ansprache des Fahrers mit der Bitte sein Fahrzeug auf der vorgesehenen Flaeche abzustellen und den Motor auszuschalten.<br/><br/>
2. Der Fahrer wird gefragt, ob er oder einer seiner Mitfahrer Waffen tragen.<br/><br/>
3. Ansprache des Fahrers und der Insassen auszusteigen und das Fahrzeug abzuschliessen. Tragen sie Waffen, muessen sie gebeten werden diese zu senken. Dafuer ist ihnen ausreichend Zeit zu gewaehren. Erfolgt dies nicht, duerfen sie gefesselt werden.<br/><br/>
4. Fragen Sie woher die Gruppe kommt und was ihr Ziel ist.<br/><br/>
5. Fragen Sie, ob Sie die Personen durchsuchen duerfen.<br/><br/>
6. Bejaht der Zivilist diese Frage, durchsuchen Sie ihn.<br/><br/>
7. Verneint der Zivilist die Frage, duerfen Sie ihn nicht durchsuchen. Haben Sie jedoch einen begruendeten Verdacht, ist Ihr Vorgesetzter zu informieren. Dieser entscheidet, ob eine Durchsuchung stattfindet, oder nicht.<br/><br/>
8. Werden bei der Durchsuchung keine illegalen Gegenstaende gefunden, ist die Gruppe aus der Kontrolle zu entlassen.<br/><br/>
9. Finden Sie illegale Gegenstaende, so ist ein Ticket bzw. ggf. eine Gefaengnisstrafe zu erteilen. Einzelheiten entnehmen Sie die Busscash- und Strafenkatalog im Forum.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Fahrzeuge",
                "<br/>1. Fahrzeuge, die auf einem Parkplatz oder an einem anderen sicheren Ort stehen, duerfen nicht beruehrt oder beschlagnahmt werden.<br/><br/>
2. Fahrzeuge, die ausserhalb von Staedten verlassen oder beschaedigt aussehen und kein Fahrer in Sicht ist, duerfen beschlagnahmt werden.<br/><br/>
3. Boote muessen an der Kueste geparkt sein.<br/><br/>
4. Alle Fahrzeuge, die sich innerhalb von 20 Minuten nicht bewegt haben (egal ob auf einem Parkplatz oder nicht), duerfen beschlagnahmt werden.<br/><br/>
5. Das Beschlagnahmen von Fahrzeugen ist ein wichtiger Teil der Polizeiarbeit. Er sorgt fuer die Sauberkait auf dem Server und verhindert Lags.<br/><br/>
6. Haben Sie Zweifel, ob Sie ein Fahrzeug beschlagnahmen sollen, finden Sie heraus wem das Fahrzeug gehoert und kontaktieren Sie den Halter. Reagiert er nicht nach zwei Minuten, ist das Fahrzeug zu beschlagnahmen.<br/><br/>
7. Schnellboote und bewaffnete Polizeifahrzeuge dienen der Unterstuetzung bei der Bekaempfung von Verbrechern. Sie duerfen nicht dazu genutzt werden Fahrzeuge zu zerstoeren, sondern nur sie fahrunfaehig zu machen.<br/><br/>
"
        ]
    ];
 
    player createDiaryRecord ["Polizeiregeln",
        [
            "Geschwindigkeitsbegrenzungen",
                "<br/>Die folgenden Geschwindigkeitsbegrenzungen wurden vom Polizeipraesidenten festgelegt und dienen der Sicherheit der Bevoelkerung und der Sicherheit auf unseren Strassen.<br/><br/>
Innerhalb der Hauptstaedte:<br/>
Nebenstrassen: 40km/h<br/>
Marktplatz: 30km/h<br/>
Hauptstrassen: 50km/h<br/><br/>
Ausserhalb geschlossener Ortschaften:<br/>
Nebenstrassen: 100km/h<br/>
Highway (rote Strasse auf der Karte): 150km/h<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Verhalten in Staedten",
                "1. Polizisten patrouillieren in den folgenden Staedten regelmaessig: Kavala, Athira, Pyrgos und Sofia.<br/><br/>
2. Polizisten ueberpruefen regelmaessig den Autoshop und die Garage der jeweiligen Stadt, um blockierende Fahrzeuge zu beschlagnahmen.<br/><br/>
3. Polizisten duerfen nicht nutzlos in der Gegend herumstehen. Es gibt immer was zu tun!<br/><br/>
4. Eine hohe Zahl an Polizisten darf nur dann in einer Stadt sein, wenn die Rebellion bekaempft werden muss. Nachdem das Gebiet als sicher eingestuft wurde, muessen sich die Polizeikraefte wieder auf der Karte verteilen.<br/><br/>
5. Selbstjustiz darf zu keiner Zeit betrieben werden.<br/><br/>
6. Das Betreten von Polizeiquartieren ist fuer Zivilisten verboten, sofern sie keine Genehmigung vorweisen koennen. Dies gilt nicht fuer die direkte Umgebung, sofern die Zivilisten die Polizeiarbeit nicht behindern.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Verhaftung und Busscasher",
                "<br/>Verhaftet werden sollen nur Personen, die eines Verbrechens bezichtigt werden, oder eine Gefahr fuer sich und andere darstellen.<br/><br/>
1. Wird jemandem ein Busscash ausgestellt und der Verdaechtige bezahlt dieses, ist er nicht zu verhaften.<br/><br/>
2. Verdaechtigen muss der Grund ihrer Verhaftung mitgeteilt werden.<br/><br/>
3. Steht ein Zivilist auf der Fahndungsliste, ist er zu verhaften. Der Einsatz toedlicher Gewalt ist nicht gestattet, solange keine Notwehrsituation vorliegt, oder der ranghoechste Vorgesetzte die entsprechende Erlaubnis erteilt hat.<br/><br/>
Das Ausstellen eines Busscashes dient als Verwarnung an den Zivilisten. Brechen sie das Gesetz, stellen aber keine Gefahr fuer andere dar, reicht das Ausstellen eines Busscashes vollkommen aus.<br/><br/>
 
1. Die Busscasher sollen sich am Busscashkatalog orientieren. Dieser ist im Forum zu finden.<br/><br/>
2. Die Busscasher basieren auf den begangenen Verbrechen des Verdaechtigen.<br/><br/>
3. Weigert sich der Verdaechtige das Busscash zu bezahlen, ist er zu verhaften.<br/><br/>
4. Stellen Sie einem Verdaechtigen ein unverhaeltnismaessig hohes Busscash aus (z.B. 100.000$ fuer eine Geschwindigkeitsuebertretung), werden sie abgemahnt. Entsprechende Konsequenzen entnehmen Sie dem Busscashkatalog.<br/><br/>
"
        ]
    ];
        
    player createDiaryRecord ["Polizeiregeln",
        [
            "Waffen",
                "<br/>Ein Polizist darf NIEMALS einen Zivilisten mit Waffen versorgen. Dies fuehrt zum sofortigen Ausschluss aus dem Polizeidienst und weiteren Sanktionen (kompletter Charakter-Reset).<br/><br/>
Folgende Waffen duerfen von Zivilisten mit einer Waffenlizenz tragen:<br/>
1. Rook40<br/>
2. PDW2000<br/>
3. ACP-C2.45<br/>
4. Sting<br/>
5. Zubr.45<br/><br/>
Jede andere Waffe (dazu zaehlt auch die schallgedaempfte P07, die dies eine ausschliessliche Polizeiwaffe ist) ist illegal.<br/><br/>
1. Zivilisten duerfen Waffen innerhalb von Staedten nicht offen tragen.<br/><br/>
2. Zivilisten duerfen Waffen ausserhalb von Staedten offen tragen. Trotzdem muessen sie eine Waffenlizenz auf Nachfrage vorweisen koennen und ihre Waffe bei der Konfrontation mit anderen Polizisten gesenkt haben (durch das doppelte Druecken der Strg-Taste).<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Einsatz nicht-toedlicher Gewalt",
                "<br/>Zurzeit ist der Taser (schallgedaempfte P07) die einzige Moeglichkeit nicht-toedliche Gewalt einzusetzen.<br/><br/>
1. Taser sollen nur dazu genutzt werden verhandlungsunwillige Zivilisten bewegungsunfaehig zu machen, um sie anschliessend zu fesseln.<br/><br/>
2. Entladen Sie Ihren Taser nicht fuer andere Zwecke, als den oben genannten. Zuwiderhandlungen fuehren zu den im Forum ausgewiesenen Sanktionen.<br/><br/>
3. Benutzen Sie den Taser nur im Rahmen der geltenden Gesetze und NICHT um Ihren Willen zu bekommen.<br/><br/>
"
        ]
    ];
 
    player createDiaryRecord ["Polizeiregeln",
        [
            "Raiding/Camping",
                "<br/>Raiding bezeichnet das Eindringen von einer Gruppe Polizisten in ein illegales Gebiet, um die dortigen Verdaechtigen von illegalen Aktivitaeten abzuhalten.<br/><br/>
1. Um ein Gebiet raiden zu koennen, muessen mindestens drei Polizisten teilnehmen, von denen einer mindestens Polizeimeister sein muss.<br/><br/>
2. Alle Zivilisten in einem geraideten Gebiet muessen festgenommen werden. Werden keine illegalen Aktivitaeten nachgewiesen bzw. keine illegalen Gegenstaende gefunden, muessen sie unverzueglich freigelassen werden.<br/><br/>
3. Werden illegale Gegenstaende gefunden, werden die Verdaechtigen gemaess des Busscash- und Strafenkataloges sanktioniert.<br/><br/>
4. Der Einsatz toedlicher Gewalt ist nur in Faellen von Notwehr oder nach der Authorisierung des Polizeipraesidenten und seines Stellvertreters genehmigt.<br/><br/>
5. Sobald das Gebiet gesichert ist, muss es von den Polizisten verlassen werden.<br/><br/>
6. Ein Gebiet darf fuer 20 Minuten nicht geraidet werden, wenn es geraidet wurde.<br/><br/>
7. Schlaegt ein Raid fehl (also sterben Polizisten), gilt die 10 Minuten Regel fuer die gefallenen Polizisten trotzdem.<br/><br/>
8. Es darf jederzeit Verstaerkung gerufen werden - zu dieser koennen waehrend des Raids getoetete Polizisten nicht hinzugezogen werden.<br/><br/>
Camping bezeichnet die Beobachtung eines Gebietes durch einen oder mehrere Polizisten ueber einen laengeren Zeitraum (mehr als 10 Minuten ist verboten). Sollte das Einsatzteam Vorort kommen und eine Straftat ist bereits im Gange, so darf bis zur Verhaftung am Ort geblieben werden. <br/><br/>
 
1. Kontrollpunkte zaehlen nicht als Camping.<br/>
2. Es ist verboten illegale Gebiete zu becampen.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Befehlskette",
                "Der ranghoechste im Dienst befindliche Polizist ist gleichzeitig Befehlshaber. Es wird von ihm erwartet, dass er die Polizeiregeln nach bestem Wissen und Gewissen befolgt. Der Einsatz toedlicher Gewalt muss immer dem Polizeipraesidenten gemeldet werden, sobald dieser online ist.<br/><br/>
Befehlskette:<br/>
1. Polizeipraesident (Oberbefehlshaber Polizei und SEK)<br/>
2. Stellvertretender Polizeipraesident<br/>
3. Gebietsleiter Ost bzw. West<br/>
4. Polizeimeister<br/>
5. Polizeiwachtmeister<br/>
6. Polizeirekrut<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Einsatz toedlicher Gewalt",
                "<br/>1. Der Einsatz toedlicher Gewalt ist nur gestattet, wenn eine Notwehrsituation vorliegt, das eigene Leben, das Leben eines Kollegen oder das Leben eines Zivilisten auf dem Spiel steht und der Einsatz nicht-toedlicher Gewalt versagt hat. Toedliche Gewalt muss im letzten Fall vom Polizeipraesidenten genehmigt werden.<br/><br/>
2. Jeder Waffeneinsatz ausserhalb der oben genannten Szenarien und in Trainingssituationen ist verboten. Zuwiderhandlungen werden gemaess des Strafkataloges sanktioniert.<br/><br/>
"
        ]
    ];
    
    player createDiaryRecord ["Polizeiregeln",
        [
            "Teamspeak",
                "<br/>TS3 Daten: 89.163.227.42<br/><br/>
1. Alle Polizisten muessen sich waehrend Ihres Dienstes im Groupchannel auf dem Server und in einem der Polizeichannel auf dem TS einfinden. Missachtung dieser Regel wird mit einer Abmahnung bestraft.<br/><br/>
2. Kommt auf den TS bevor ihr euch ueberhaupt auf dem Server einloggt.<br/><br/>
"
        ]
    ];
    
    
    
// Illegal Items Section
    player createDiaryRecord ["illegalitems",
        [
            "Regeln der Rebellion",
                "<br/>Ein Rebell ist, wer sich gewalttaetig gegen die Staatsgewalt auflehnt. In diesem Fall ist das die Polizei. Trotzdem ist die Zahl der Polizisten, verglichen mit der theoretisch moeglichen Zahl der Rebellen, ziemlich klein. Deswegen attackiert die Polizisten nicht sofort bei Sichtkontakt. Maessigt euch, schaltet euren Verstand ein und nehmt das Wort Rebell nicht sofort woertlich. Stattdessen lasst uns alle zu einem angenehmen Spielgeschehen beitragen.<br/><br/>
1. Ein Rebell muss zuerst ein Kartell gruenden und seine Ziele und Absichten verkuenden. Dies geschieht im Forum in der entsprechenden Sektion.<br/><br/>
2. Mitglied der Rebellion zu sein ermaechtigt euch nicht zum RDM.<br/><br/>
3. Das Rollenspiel eines Rebellen sollte mehr beinhalten als das staendige Ausrauben der Bank und Toeten von Polizisten.<br/><br/>
4. Die Rebellion muss koordiniert sein.<br/><br/>
5. Hinter jeder einzelnen Attacke muss ein NACHVOLLZIEHBARER Grund stecken.<br/><br/>
"
        ]
    ];
    player createDiaryRecord ["illegalitems",
        [
            "Regeln legaler und illegaler Organisationen",
                "1. Mitglied in einer legalen oder illegalen Organisation zu sein ist nicht verboten.<br/><br/>
2. Sich in dem Gebiet einer kriminellen Organisation aufzuhalten ist nicht illegal, sofern man sich nicht an Verbrechen beteiligt.<br/><br/>
3. Illegale Organisationen duerfen in Apsrache mit den Admins eigene Gebiete fuer sich ernennen. Andere Organisationen duerfen versuchen diese zu erobern.<br/><br/>
4. Um einer anderen Organisation den Krieg zu erklaeren, muss dies zunaechst im Forum angekuendigt sein. Alle beteiligten muessen informiert werden. Die Polizei darf in diesen Kriegen nur aufklaererische Taetigkeiten uebernehmen (z.B. den Tod unbeteiligter aufklaeren), sich aber nicht aktiv ins Geschehen einmischen.<br/><br/>
5. Mitglieder illegaler Organisationen duerfen keine unbewaffneten Zivilisten angreifen, sofern diese nicht Teil einer verfeindeten Organisation sind und sich im feindlichen Gebiet aufhalten.<br/><br/>
6. Mitglieder illegaler Organisationen duerfen Zivilisten nicht angreifen, sofern sie nicht bedroht werden. Werden Zivilisten getoetet, weil sie sich nicht der Organisation anschliessen wollen, wird dies als RDM gewertet.<br/><br/>
"
        ]
    ];
    player createDiaryRecord ["illegalitems",
        [
            "Illegale Fahrzeuge",
                "<br/>Ein Zivilist, der folgende Fahrzeuge ohne Genehmigung fuehrt, wird nach den entsprechenden Strafen im Busscash- und Strafenkatalog bestraft.<br/><br/>
1. Rebellen Off-road<br/>
2. Rebellen Off-road + Waffe<br/>
3. Ifrit<br/>
4. Ifrit + Waffe<br/>
5. saemtliche Polizeifahrzeuge<br/><br/>
"
        ]
    ];
    player createDiaryRecord ["illegalitems",
        [
            "Illegale Waffen",
                "<br/>Ein Zivilist, der folgende Waffen am Koerper oder in seinem Rucksack traegt, wird nach dem Busscash- und Strafenkatalog bestraft, welcher im Forum einsehbar ist.<br/><br/>
1. MX Series<br/>
2. Katiba Series<br/>
3. Sniper<br/>
4. TRG Series<br/>
5. Mk.20 Series<br/>
6. Mk.18 ABR<br/>
7. SDAR Rifle<br/>
8. Schallgedaempfte P07 (Taser)<br/>
9. Jede Art von Sprengstoff<br/>
10.saemtliche Polizeiwaffen<br/><br/>
"
        ]
    ];
    player createDiaryRecord ["illegalitems",
        [
            "Illegale Gegenstaende",
                "<br/>Der Besitz folgender Gegenstaende ist verboten:<br/><br/>
1. Schildkroetenfleisch<br/>
2. Kokain<br/>
3. Heroin<br/>
4. Cannabis<br/>
5. Marijuana<br/>
"
        ]
    ];
 
// Bußcash-Katalog
    player createDiaryRecord ["Busscash-Katalog", 
        [
            "oeffentliche Ordnung", //Subsection
                "<br/>- Drohungen an Spieler max 5.000$ bei Wiederholung bis max 20.000$ + Inhaftierung<br/><br/>
- Das Tragen von Kampftarnanzuegen (Ghillie-Anzug) in Bewohnten Gebieten ist verboten: max 10.000$ bei Wiederholung Beschlagnahmung<br/><br/>
- versuchter Fahrzeugdiebstahl: 3.000$<br/><br/>
- Fahrzeugdiebstahl: 10.000$ + Inhaftierung + Rueckgabe an den Besitzer<br/><br/>
- Unbeabsichtigte Fahrzeugbeschaedigung mit Fahrzeug: 10.000$<br/><br/>
- Beabsichtigte Fahrzeugbeschaedigung mit Fahrzeug: 20.000$ + Fahrzeugbeschlagnahmung<br/><br/>
- Raubueberfall: 15.000$ + Inhaftierung<br/><br/>
- Mord: 500.000$ + Inhaftierung 30 Min.<br/><br/>
- Bankueberfall: 350.000$ + Tod/Inhaftierung<br/><br/>
- Missachten eines Checkpoints: 20.000$<br/><br/>
- Versuchter / Diebstahl aus Rucksack: 10.000$<br/><br/>
- Betteln und Hausieren: 10.000$ / Bei Wiederholung 10.000$ + Inhaftierung<br/><br/>
- Ernst gemeinte Beleidigung anderer Spieler: Kick als einmalige Verwarnung. Bei Wiederholung Ban!<br/><br/>
- Aufstand: Inhaftierung aller Beteiligten so wie ein Busscash das vom Ranghoechsten Beamten im Dienst verhaengt wird + Beschlagnahmung von Fahrzeugen und Waffen<br/><br/>
- Angriff durch Rebellen: Inhaftierung aller Beteiligten so wie ein Busscash das vom Ranghoechsten Beamten im Dienst verhaengt wird + Beschlagnahung bzw.Zerstoerung von Fahrzeugen & Waffen<br/><br/>
- Der Diebstahlt von Staat´s eigentum ist zu unterlassen wer dies nicht befolgt wir entweder mit einem hohen buscash/haft oder Bann behstraft je nach grad des diligtes 
- Das betreten des HQ von der Bundeswehr ist zu unterlassen wer dies nicht befolgt wird sofort und ohne wiederede Erschossen.
"
        ]
    ];


    player createDiaryRecord ["Busscash-Katalog", 
        [
            "Waffendelikte", //Subsection
                "<br/>Waffendelikte (nicht der alleinige Besitz) werden immer mit Inhaftierung bestraft<br/><br/>
- Waffenbesitz ohne Lizenz: 20.000$<br/><br/>
- Mit offener Waffe durch eine Safezone laufen: min. 1.000$ / max.10.000$ (keine Inhaftierung)<br/><br/>
- Besitz einer verbotenen Waffe: 50.000$ + Beschlagnahmung der Waffe und aller Munition<br/><br/>
- Schusswaffengebrauch innerhalb von Staedten: wird vom Polizisten festgelegt / max. 50.000$<br/><br/>
- Geiselnahme: 100.000$ je Geiselnehmer<br/><br/>
- Ueberfall auf Person oder Fahrzeug: min. 15.000$ / max 50.000$<br/><br/>
"
        ]
    ];


    player createDiaryRecord ["Busscash-Katalog", 
        [
            "Drogen Delikte", //Subsection
                "<br/>- Drogenschmuggel/-handel/-schwarzcash bis 100.000$ Warenwert: Beschlagnahmung des Fahrzeugs + Inhaftierung + Beschlagnahmung der Waren + 50.000$<br/><br/>
- Drogenschmuggel/-handel/-schwarzcash ab 100.000$ Warenwert: Beschlagnahmung des Fahrzeugs + Inhaftierung + Beschlagnahmung der Waren + 100.000$<br/><br/>
- Drogenschmuggel/-handel/-schwarzcash bei Info durch Dealer/ Wanted Liste: 20.000$<br/><br/>
- Schmuggel mit verbotenen Tieren (Schildkroeten): Beschlagnahmung des Fahrzeugs + Inhaftierung + Beschlagnahmung der Waren + 100.000$<br/><br/>
"
        ]
    ];

    player createDiaryRecord ["Busscash-Katalog", 
        [
            "Umgang mit der Polizei", //Subsection
                "<br/>Das Betreten von gesperrten Zonen ist verboten und wird mit Busscash und oder einer Haftstrafe geahndet! Wenn sich Polizisten um ihr eigenes Leben bedroht fuehlen, steht ihnen der Gebrauch von scharfen Schusswaffen frei.<br/><br/>
- Das Tragen oder Besitzen von Polizeiausruestung: 2.000$ 180.000$ + Beschlagnahmen der Ausruestung<br/><br/>
- Widerstand gegen die Staatsgewalt: 5.000$ - 20.000$<br/><br/>
- Behinderung der Polizei: 5.000$<br/><br/>
- Behinderung der Polizei (mehrfach): 10.000$ + Inhaftierung<br/><br/>
- Diebstahl von Polizeifahrzeugen: 50.000$ - 5.000.000$ + Inhaftierung<br/><br/>
- Versuchter Diebstahl von Polizeifahrzeugen: 25.000$ + Inhaftierung<br/><br/>
- Nicht befolgen einer polizeilichen Anordnung: 1.000$ beim 2.mal Inhaftierung<br/><br/>
- Beleidigung gegenueber der Polizei (Spielerisch): 5.000$ bei Wiederholung bis 20.000$<br/><br/>
- Belaestigung eines Polizeibeamten: 1.500$ - 5.000$ + Inhaftierung<br/><br/>
- Betreten der polizeilichen Sperrzone: Einmalige Verwarnung, anschliessend 2.500$ + Inhaftierung<br/><br/>
- Befreien festgesetzter Personen (einmaliger Verstoss): 10.000$ + Inhaftierung<br/><br/>
- Befreien festgesetzter Personen (mehrfach): Schussfreigabe der Beteiligten durch SEK<br/><br/>
- Inspizierung der Ausruestung und Fahrzeuge von Beamten: 11.000$<br/><br/>
- Beschuss eines Beamten ohne Koerpertreffer: 15.000$ + Inhaftierung<br/><br/>
- Beschuss eines Beamten mit Koerpertreffer: 30.000$ + Inhaftierung<br/><br/>
- Ermorden eines Bundeswehr Manschaftler 400.000$ + Inhaftierung<br/><br/>
- Ermorden eines Bundeswehr Offizier 800.000 - 1.500.000 + Inhaftierung<br/><br/>
- Toeten eines Beamten: 150.000$ + Inhaftierung<br/><br/>
- Zerstoerung von Polizeieigentum: 30.000$ - 1.000.000$ + Erstattung des entstandenen Schadens<br/><br/>
- Einlagern von PKW's waehrend einer Kontrolle bzw. einer Verfolgung: 100.000$<br/><br/>
- Einlagern von Helis waehrend einer Kontrolle bzw. einer Verfolgung: 150.000$<br/><br/>
- Einlagern von LKW's waehrend einer Kontrolle bzw. einer Verfolgung: 200.000$ + Inhaftierung<br/><br/><br/>
"
        ]
    ];

player createDiaryRecord ["Busscash-Katalog",
        [
            "Verkehrsdelikte - Luft:", //Subsection
                "<br/>- Landen in Flugverbotszonen: 50.000$ + Fahrzeug Zerstoerung<br/>
- Schweben ueber bewohnten Gebiet unter 100m: 7.000$<br/>
- Landen auf Strassen: 25.000$<br/>
- Landen in gesperrten Gebieten (z.B. Polizei, Bank): 50.000$<br/>
- Heli-Rettung / Sicherung vor der Polizei: 30.000$<br/>
- Fliegen ohne Beleuchtung: 20.000$<br/>
- Fliegen ohne Lizenz: 50.000$<br/>
"
        ]
    ];

    player createDiaryRecord ["Busscash-Katalog", 
        [
            "Verkehrsdelikte - Boden", //Subsection
                "<br/>Geschwindigkeit Innerorts:<br/>
- 50-60km/h: 2.500$<br/>
- 60-85km/h: 3.000$<br/>
- 85-100km/h: 5.000$<br/>
- 100-130km/h: 10.000$<br/><br/>
Geschwindigkeit Ausserorts:
- ueber 130km/h+: 10.000$<br/><br/>
Sonstiges:<br/>
- Laermbelaestigung: 10.000$<br/>
- Schilder missachten: 500-1500$<br/>
- falsche Strassenseite: max. 2.000$<br/>
- Offroadfahrten: max. 5000$<br/>
- Fahrerflucht bei Unfall: min 1.000$-6.000$<br/>
- Flucht vor der Polizei: 2.000$-8.000$<br/>
- Ueberfahren anderen Spielers: 50.000$ + Haft<br/>
- Fahrlaessiges Ueberfahren eines Spielers: 25.000$<br/>
- Illegale Strassensperre Beteiligte: 30.000$<br/>
- Fuehren von illegalen Fahrzeugen: 100.000$ + evtl. Zerstoerung<br/>
- Fahren ohne Fuehrerschein: 1000$-5.000$<br/>
- Fahren ohne Licht bei Dunkelheit oder Daemmerung: max. 1.500$<br/><br/>
"
        ]
    ];
    player createDiaryRecord ["Busscash-Katalog", 
        [
            "Illegale Fahrzeuge", //Subsection
                "<br/>Alle Fahrzeuge im Rebellenshops bis auf das Quad sind illegal.<br/>"
        ]
    ]; 

    player createDiaryRecord ["Busscash-Katalog", 
        [
            "Grundlegendes", //Subsection
                "<br/>- Ist es einem Spieler nicht moeglich das Busscash zu zahlen, wird die Haftstrafe entsprechend verlaengert.<br/><br/>
Bsp.:<br/>
Bis 50.000$ Strafe: 15 Minuten<br/>
Bis 100.000$ Strafe: 20 Minuten<br/>
Bis 150.000$ Strafe: 25 Minuten<br/>
Bis 200.000$ Strafe: 30 Minuten<br/>
Ab 200.000$ Strafe: 45 Minuten<br/><br/>
- Das Entziehen der Strafe durch Ausloggen oder Disconnecten vom Server gilt als Banngrund.<br/><br/>
- Alle Polizisten koennen die Hoehe des Busscashes selbst bestimmen wenn ein minimaler und ein maximaler Wert vorhanden ist. In geringfuegigen Vergehen kann man es bei einer Verwarnung belassen. Dies gilt nur bei Taten bei denen nicht automatisch eine Haftstrafe angeordnet wird.<br/><br/>
Aenderungen Vorbehalten! <br/><br/>
"
        ]
    ]; 
  
// Controls Section
 
    player createDiaryRecord ["controls",
        [
            "",
                "Z: oeffnen des Spielermenues<br/>
U: oeffnen und Verschliessen von Fahrzeugen<br/>
T: Kofferraum eines Fahrzeugs oeffnen<br/>
Shift links + R: Fesseln<br/>
Shift links + G: einen Spieler K.O. schlagen<br/><br/>
F: Polizeisirene (nur als Polizist moeglich)<br/>
Shift links + L: Blaulicht aktivieren (nur als Polizist moeglich).<br/>
K-Taste: Polizisten koennen mit manchen Helikoptern Boden-Fahrzeuge per EMP warnen oder deaktivieren.<br/><br/>
Windowstaste links: Haupttaste um zu interagieren (z.B. cash aufheben, Autos reparieren, ...). Polizisten koennen ueber diese Taste mit Zivilisten interagieren.<br/><br/>
"
        ]
    ];