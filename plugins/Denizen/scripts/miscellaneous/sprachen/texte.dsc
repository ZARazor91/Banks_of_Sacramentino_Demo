lang:
  type: data

  # Allgemeine Quest-Texte
  summe_erhalten:
    ger: Taler wurden deinem Konto hinzugefügt.
    eng: Thaler were added to your account.
  quest_gestartet:
    ger: <yellow>Quest angenommen<&co>
    eng: <yellow>Quest accepted<&co>
  quest_beendet:
    ger: <yellow>Quest abgeschlossen<&nl><white>
    eng: <yellow>Quest completed<&nl><white>
  gruss:
    ger: Na <player.name>? Wie läuft's?
    eng: Hi there, <player.name>! What's up?
  shop:
    ger: <npc.name>'s Laden
    eng: <npc.name>'s Shop
  bier:
    ger: <&r>Bier
    eng: <&r>Beer
  item_gekauft:
    ger: Vielen Dank, Du hast T<[summe]> bezahlt.
    eng: Thank you, you paid T<[summe]>.
  item_verkauft:
    ger: Vielen Dank, du erhälst T<[summe]>.
    eng: Thank you, you receive T<[summe]>.
  item_geld_fehlt:
    ger: Tut mir leid, Du hast nicht genug Geld.
    eng: I'm sorry, you don't have enough money.
  item_item_fehlt:
    ger: Tut mir leid, du hast dieses Item nicht.
    eng: I'm sorry, you don't have that item.
  quest_frage:
    ger: Quest annehmen?
    eng: Accept quest?
  auswahl:
    ger: <element[<green>[JA]<white>].on_click[/wahl a6105c0a611b41b08f1209506350279e].type[RUN_COMMAND]> <element[<red>[NEIN]<white>].on_click[/wahl 7fa3b767c460b54a2be4d49030b349c7].type[RUN_COMMAND]>
    eng: <element[<green>[YES]<white>].on_click[/wahl a6105c0a611b41b08f1209506350279e].type[RUN_COMMAND]> <element[<red>[NO]<white>].on_click[/wahl 7fa3b767c460b54a2be4d49030b349c7].type[RUN_COMMAND]>
  hat_quest:
    ger: Du hast bereits eine Quest von <yellow><npc[<server.flag[curNPC]>].name>
    eng: You already have a quest from <yellow><npc[<server.flag[curNPC]>].name>
  sidebar_quest:
    ger: <yellow>= Quest von <npc[<server.flag[curNPC]>].name> =
    eng: <yellow>= Quest by <npc[<server.flag[curNPC]>].name> =

  #System-Texte
  d_sprache:
    ger: Deutsch ausgewählt
    eng: English selected
  d_money:
    ger: <green>Kontostand<&co> <gold>T<red><player.money>
    eng: <green>Balance<&co> <gold>T<red><player.money>
  d_money_s:
    ger: Taler
    eng: Thaler
  d_money_p:
    ger: Taler
    eng: Thalers
  d_cmd_blocked:
    ger: Du hast keinen Zugriff auf diesen Befehl
    eng: You do not have access to this command
  d_play_area:
    ger: Du verlässt den Spielbereich!
    eng: You're leaving the play area!
  d_cmd_unknown:
    ger: Unbekannter Befehl. Geben Sie <&dq>/help<&dq> für Hilfe ein.
    eng: Unknown command. Type <&dq>/help<&dq> for help.
  d_chest_locked:
    ger: <red>Diese Kiste ist verschlossen
    eng: <red>This chest is locked
  d_gate_locked:
    ger: <red>Dieses Tor ist verschlossen
    eng: <red>This gate is locked
  d_door_locked:
    ger: <red>Diese Tür ist verschlossen
    eng: <red>This door is locked
  d_store_closed:
    ger: <red>Dieses Geschäft hat geschlossen
    eng: <red>This store is closed
  d_no_use:
    ger: Nicht für den normalen Gebrauch
    eng: Not for normal use
  d_time:
    ger: <green>Uhrzeit<&co> <red><[hour]>:<[minute]>
    eng: <green>Time of day<&co> <red><[hour]>:<[minute]> <[app]>
  d_help:
    ger: Verfügbare Befehle dieses Adventures:<&nl>/bos      Zeigt die BoS-Einführung<&nl>/time     Zeigt die aktuelle Uhrzeit<&nl>/money  Zeigt deinen aktuellen Kontostand<&nl>/stop     Speichert und beendet das Adventure
    eng: Available commands of this adventure:<&nl>/bos      Shows the BoD-Introduction<&nl>/time     Shows the current time<&nl>/money  Shows your current bank balance<&nl>/stop     Saves and ends the adventure

  #Hilfetexte
  d_bos_about:
    ger: <&nbsp><&nl> <red>- Das Adventure -<white><&nl> Du befindest dich hier in einem etwas anderen Adventure. Hier gilt es nicht nur, durch einen linearen Baukasten von Rätseln zu gehen, sondern dich erwartet ein vollständiges Rollenspiel.<&nl><&nl> Die Handlung<&co> Das Einzige, was du weißt, ist, dass du ein/e Farmer/in bist und hier in Wüstenstedt lebst. Der Reisende an der Bushaltestelle kommt gerade hier vorbei und hat dir sicher etwas Interessantes zu erzählen. Sprich ihn an, um die Handlung zu beginnen.<&nl><&nl> Du hast Zugriff auf die Befehle '/time' sowie '/money'<&nl><&nl> Für Tipps für den Start klicke einfach <element[<gold>[hier]<white>].on_click[/bos help].type[RUN_COMMAND]>
    eng: <&nbsp><&nl> <red>- The Adventure -<white><&nl> You are in a slightly different adventure here. Here you don't just have to go through a linear set of puzzles, but a complete role-playing game awaits you.<&nl><&nl> The plot<&co> The only thing you know is that you are a farmer and live here in Desert Ville. The traveler at the bus stop is just passing by and must have something interesting to tell you. Talk to him to start the plot.<&nl><&nl> You have access to the commands '/time' as well as '/money'<&nl><&nl> For tips on how to get started just click <element[<gold>[here]<white>].on_click[/bos help].type[RUN_COMMAND]>
  d_bos_help:
    ger: <&nbsp><&nl> <red>- Start-Tipps -<white><&nl> <&gt> Es gibt keine 'Regeln'. Abbauen ist normalerweise (bis auf Ausnahmen) nicht möglich. Craften u.Ä. schon.<&nl><&nl> <&gt> Du wirst von vielen NPCs Quests erhalten. Klicke sie dazu einfach rechts an, es sollte recht intuitiv sein. Bitte beachte, dass Quests nicht ohne weiteres abgebrochen werden können, erledige sie also nacheinander.<&nl><&nl> <&gt> Lies immer alle Texte sorgfältig, denn darin sind viele Informationen enthalten. Wenn du möchtest, kannst du im Werkzeugladen ein Notizbuch kaufen.<&nl><&nl> <&gt> Der Tipp-Trick-Man am Brunnen wird dir in der Anfangsphase noch helfen. Kannst ihn ja mal ansprechen!<&nl><&nl> <&gt> Dass ein NPC nichts sagt, muss nicht bedeuten, dass er später nicht noch was zu sagen haben wird! Nicht schüchtern sein, immer anklicken! ;)<&nl><&nl> <&gt> Wenn du herumschnüffeln musst, tu das, aber schmeiße niemals etwas weg, was du gefunden hast. Vieles ist relevant für den weiteren Spielverlauf!
    eng: <&nbsp><&nl> <red>- Starting tips -<white><&nl> <&gt> There are no 'rules'. Mining is usually (with exceptions) not possible. Crafting etc. is.<&nl><&nl> <&gt> You will receive quests from many NPCs. Just click them on the right to do so, it should be quite intuitive. Please note that quests can't be canceled easily, so do them one by one.<&nl><&nl> <&gt> Always read all texts carefully, because there is a lot of information in them. If you want, you can buy a notebook in the tool store.<&nl><&nl> <&gt> The tip-trick-man at the fountain will help you in the beginning. You can talk to him!<&nl><&nl> <&gt> That an NPC doesn't say anything doesn't have to mean that he won't have something to say later! Don't be shy, always click! ;)<&nl><&nl> <&gt> If you need to snoop around, do so, but never throw away anything you've found. A lot of stuff is relevant to the rest of the game!
  d_bos_quest:
    ger: <&nbsp><&nl> <red>- Die Quests -<white><&nl> <&gt> Ansprechen<&co> Rechtsklick auf einen NPC.<&nl><&nl> <&gt> Text fortsetzen<&co> Rechtsklick auf den NPC.<&nl><&nl> <&gt> Mission annehmen<&co> <green>[JA]<white> im Chat anklicken.<&nl><&nl> <&gt> Mission ablehnen<&co> <red>[NEIN]<white> im Chat anklicken oder weggehen.<&nl><&nl> Bitte beachte, dass du eine Quest nicht ohne weiteres abgebrechen kannst, erledige sie also nacheinander.
    eng: <&nbsp><&nl> <red>- Quests -<white><&nl> <&gt> Address<&co> Right click on an NPC.<&nl><&nl> <&gt> Continue text<&co> Right click on the NPC.<&nl><&nl> <&gt> Accept mission<&co> Click <green>[YES]<white> in chat. <&nl><&nl> <&gt> Decline mission<&co> Click <red>[NO]<white> in chat or walk away.<&nl><&nl> Please note that you can't easily cancel a quest, so do them one by one.
  d_bos_trade:
    ger: <&nbsp><&nl> <red>- Der Handel -<white><&nl> <&gt> Kaufen<&co> Rechtsklick auf den Händler. Item linksklicken zum kaufen, den Preis findest du im Tooltip.<&nl><&nl> <&gt> Verkaufen<&co> Shift + Rechtsklick auf den Händler. Item in dessen Inventar anklicken zum verkaufen, sein Angebot findest du im Tooltip.
    eng: <&nbsp><&nl> <red>- Trading -<white><&nl> <&gt> Buy<&co> Right click on the merchant. Item left click to buy, you can find the price in the tooltip.<&nl><&nl> <&gt> Sell<&co> Shift + right click on the merchant. Click on the item in his inventory to sell it, you can find his offer in the tooltip.
  d_bos_hints:
    ger: <&nbsp><&nl> <red>- Hinweise -<white><&nl> <&gt> TEXTE<&co> Immer genau lesen. Falls du dich ausloggen willst, im später weiterzumachen, unbedingt notieren, was gerade deine Aufgabe war!<&nl><&nl> <&gt> LIFTS<&co> Dies sind Schilder mit der Aufschrift [Lift up] oder [Lift down], einfach Rechtsklick!<&nl><&nl> <&gt> GELD VERDIENEN<&co> Wie auch in der echten Welt geht es immer nur ums Geld. ;) Nimm Quests an, sei neugierig, sieh dich um und vor allem<&co> Wirf nie Gegenstände weg, die du gefunden hast.
    eng: <&nbsp><&nl> <red>- Hints -<white><&nl> <&gt> TEXTS<&co> Always read carefully. If you want to log out to continue later, be sure to note what your quest was!<&nl><&nl> <&gt> LIFTS<&co> These are signs that say [Lift up] or [Lift down], just right click!<&nl><&nl> <&gt> MAKING MONEY<&co> Just like in the real world, it's all about money. ;) Take quests, be curious, look around and most of all<&co> Never throw away items you found.
  d_bos_start:
    ger: <&nbsp><&nl> <red>--------------- <gold>BANKS of SACRAMENTINO<red> ----------------<&nl> <red>--------------- <green>von ZARazor91 & D0N_H_<red> ---------------<&nl><&nl> <white>Herzlich willkommen! Danke, dass du BoS spielst. Klicke die unten stehenden Kapitel im Chat an, um Tutorials und Infos zu erhalten.
    eng: <&nbsp><&nl> <red>--------------- <gold>BANKS of SACRAMENTINO<red> ----------------<&nl> <red>--------------- <green>by ZARazor91 & D0N_H_<red> ----------------<&nl><&nl> <white>Welcome! Thanks for playing BoS. Click the chapters below inside the chat for tutorials and information.
  d_bos_menu:
    ger: <&nl> <red>---- <element[<blue>[Das Adventure]<white>].on_click[/bos about].type[RUN_COMMAND]> <element[<green>[Die Quests]<white>].on_click[/bos quest].type[RUN_COMMAND]> <element[<gold>[Der Handel]<white>].on_click[/bos trade].type[RUN_COMMAND]> <element[<gray>[Hinweise]<white>].on_click[/bos hints].type[RUN_COMMAND]><red> ---
    eng: <&nl> <red>---- <element[<blue>[Aventure]<white>].on_click[/bos about].type[RUN_COMMAND]> <element[<green>[Quests]<white>].on_click[/bos quest].type[RUN_COMMAND]> <element[<gold>[Trading]<white>].on_click[/bos trade].type[RUN_COMMAND]> <element[<gray>[Hints]<white>].on_click[/bos hints].type[RUN_COMMAND]><red> ----

  #Das goldene Schwert
  sch_name:
    ger: Das goldene Schwert
    eng: The golden sword
  sch_start:
    ger: Ach, <player.name>. Ich muss so oft an meinen verstorbenen Großvater denken... er erzählte immer etwas von einem alten goldenen Familienschwert, das würde ich gerne finden. Möchtest du mir dabei helfen?
    eng: Oh, <player.name>. I'm thinking about my grandfather who passed away a while ago. He always talked about an old golden family sword that is supposed to be hidden somewhere... yould you like to help me find it?
  sch_annahme:
    ger: Das Schwert muss irgendwo in den Bergen versteckt sein, glaube ich. Viele haben ihn für einen Trottel gehalten, aber ich glaube, er meinte das ernst. Er sagte immer 'Gefahren erwarten dich auf dem Weg gen Osten' und sowas. Ich habe gesucht, aber ich konnte nie etwas finden. Vielleicht hast du mehr Glück.
    eng: The sword is probably to be found somewhere in the mountains. My grandfather was often called an old fool but I think he meant what he said. He kept babbling about 'dangers awaiting him on his eastwards journey to the mountains' or something. I looked, but I could never find anything. Maybe you'll be luckier.
  sch_ablehnung:
    ger: Okay, ich warte hier, bis du es dir anders überlegt hast.
    eng: Too bad. I'll be here in case you change your mind!
  sch_frage:
    ger: Hallo! Hast du schon das alte Schwert meines Großvaters gefunden? Es muss irgendwo in den Bergen sein...
    eng: Hi! Did you already find my grandfather's sword? Ist must be hidden somewhere up in the mountains east of Desertville...
  sch_abgabe:
    ger: Unglaublich! Ich kann dir gar nicht genug dafür danken! Nimm das hier. Es wird dir vielleicht mal in einer schwierigen Situation weiterhelfen. Aber verschwende es nicht!
    eng: Unbelievable! I can't thank you enough. Take this. It might help you out in a tough situation. But don't waste it!
  sch_lohn:
    ger: <green>Du erhälst einen Speed II-Trank
    eng: <green>You receive a Speed II potion
  sch_sidebar_un:
    ger: <server.flag[unchecked]> Finde das goldene Schwert
    eng: <server.flag[unchecked]> Find the golden sword
  sch_sidebar_ch:
    ger: <server.flag[checked]> Finde das goldene Schwert
    eng: <server.flag[checked]> Find the golden sword

  #Der Bekehrer
  bek_name:
    ger: Der Bekehrer
    eng: The converter
  bek_start:
    ger: Sei gegrüßt, <player.name>! Könntest du mir den Gefallen tun und die aktuelle Ausgabe der Gemeindezeitung an die Dorfbewohner verteilen?
    eng: Greetings, <player.name>! Would you like to help me spread the word by delivering the new parish newsletter to the people?
  bek_annahme:
    ger: Ich danke dir, hier sind die 10 Zeitungen. Kehre anschließend zu mir zurück für die Belohnung.
    eng: Thank you so much. Here you have the ten letters. As you're finished, return to me for your reward.
  bek_item:
    ger: <&r>Gemeindeblatt
    eng: <&r>Parish Newsletter
  bek_item_2:
    ger: Gemeindeblatt
    eng: Parish Newsletter
  bek_ablehnung:
    ger: Na gut. Friede sei mit dir.
    eng: Alright then. Peace be with you.
  bek_frage:
    ger: Sei gegrüßt, hast du schon alle Gemeindezeitungen verteilt?
    eng: Greetings, have you distributed all the parish papers yet?
  bek_abgabe:
    ger: Sei bedankt! Die Gemeinde spendet dir dafür 100 Taler.
    eng: Thank you a lot! The parish donates this with 100 Thaler.
  bek_ja:
    ger: Ah, danke für die Gemeindezeitung.
    eng: Ah, thanks for the parish newsletter.
  bek_nein:
    ger: Gemeindeblatt? Nee, lass mal.
    eng: Parish news? Nah, thanks.
  bek_hat:
    ger: Danke, aber ich habe bereits eine Ausgabe.
    eng: Thanks, but I already have a copy.
  bek_sidebar_un:
    ger: <server.flag[unchecked]> Verteile die Gemeindezeitung
    eng: <server.flag[unchecked]> Distribute the parish newsletter
  bek_sidebar_ch:
    ger: <server.flag[checked]> Verteile die Gemeindezeitung
    eng: <server.flag[checked]> Distribute the parish newsletter

  #Der Bücherwurm
  bue_name:
    ger: Der Bücherwurm
    eng: The bookworm
  bue_start:
    ger: Hallo <player.name>, ich möchte in meinem Haus Bücherregale aufstellen, allerdings fehlen mir noch einige Bücher. Möchtest du mir welche organisieren?
    eng: Hi <player.name>, good to see you! I would like to put up some more bookshelves in my house, but I am still missing some books. Would you like to organize some for me?
  bue_annahme:
    ger: Danke! Ich brauche 20 Bücher. Ich warte auf dich.
    eng: Thanks! I'll need 20 books. I'm waiting here for you.
  bue_ablehnung:
    ger: Schade, aber vielleicht überlegst du es dir ja noch anders. Bis bald!
    eng: Too bad, but maybe you'll change your mind. See you soon!
  bue_frage:
    ger: Na, hast du meine 20 Bücher schon?
    eng: So, have you got my 20 books yet?
  bue_abgabe:
    ger: Danke.
    eng: Thank you.
  bue_sidebar_un:
    ger: <server.flag[unchecked]> Beschaffe 20x Buch
    eng: <server.flag[unchecked]> Obtain 20x book
  bue_sidebar_ch:
    ger: <server.flag[checked]> Beschaffe 20x Buch
    eng: <server.flag[checked]> Obtain 20x book

  #Der neidische Bernd
  ber_name:
    ger: Der neidische Bernd
    eng: The jealous Freddy
  ber_start:
    ger: Hey, <player.name>! Psst! Du, sag mal... ich hab mitgekriegt, dass der Garten-Gerd da irgendwie an ziemlich viel Knochenmehl rangekommen ist, und jetzt will er natürlich meinen Garten übertrumpfen, dieser Schlingel. Was meinst du, würdest du mir auch einen kleinen Gefallen tun? Ich würd mich das auch was kosten lassen!
    eng: Hey, <player.name>! Shh, come over here! Say... I hear Garden-Gary got a hold of quite an amount of bonemeal earlier. Naturally, now he wants to surpass my garden. Would you like to do me a little - uh - favor? I'd make it worth your time!
  ber_annahme:
    ger: Stark! Hier der Plan<&co> Geh einfach in sein Haus und nimm ihm das Zeug heimlich weg! Er lagert seine Gartengeräte immer in einer Kiste hinten im Haus. Ich warte hier auf dich!
    eng: Fancy! This is the plan<&co> Just sneak into his house and secretly take that stuff from him, will you? He keeps his gardening stuff in a box somewhere. I'll wait here for you.
  ber_ablehnung:
    ger: Na schön. Du bist wohl so ein ganz Korrekter, wa? Hmpf.
    eng: Well OK then. You're one of these overly correct people, aight?
  ber_frage:
    ger: Hey! Psst! Und, hast du schon... du weißt schon... das Knochenmehl vom ollen Gerd?
    eng: Hey! Shhh! So, did you already - you know - take Garden-Gary's bone meal from his house?
  ber_abgabe:
    ger: Wow, danke, Mann. Hier sind 120 Kröten, du bist ein Held!
    eng: Wow, thanks man! Here you got 120 bucks, you're a hero!
  ber_sidebar_un:
    ger: <server.flag[unchecked]> Stiehl das Knochenmehl
    eng: <server.flag[unchecked]> Steal the bone meal
  ber_sidebar_ch:
    ger: <server.flag[checked]> Stiehl das Knochenmehl
    eng: <server.flag[checked]> Steal the bone meal

  #Der Reisende
  rei_start:
    ger: Guten Tag, <player.name>! Ich komme von weit her und will weit weg. Leider fährt hier irgendwie selten ein Bus... naja. Jedenfalls gebe ich dir einen Tipp. In der großen Stadt, weit weg von hier, sie nennt sich Sacramentino, da geht echt viel mehr ab als in diesem Kaff hier. Da werden Millionäre geboren! Und ich bin deine Chance, dorthin zu kommen. Wenn du mir einen Heiltrank der Stufe II und einen goldenen Super-Apfel bringst, dann bekommst du von mir dieses Minecart hier und ich zeige dir den Weg nach Sacramentino. Wir sprechen uns also später!
    eng: Hello there, <player.name>! I have travelled a long way and there is still much to come. Somehow buses are really rare here, though... Anyway, let me tell you something. There's not too much going on here, is it? That's in marked contrast to the sprawling metropolis I passed on my journey - Sacramentino City. This is where people get from rags to riches, I can tell you. See... if you should feel an urge to get there, I could give you this here minecart and I'll show you the way. All I need are two things<&co> An enhanced potion Healing II and an enchanted golden super-apple. Don't know if you have things like these here, but they're essential to my dangerous journey. I'll be waiting here, come back whenever you like!
  rei_frage:
    ger: Hey, <player.name>! Hast du schon das Bedürfnis verspürt, nach Sacramentino zu gehen? Denk dran, ich brauche Heilung Stufe II und einen dieser verzauberten goldenen Super-Äpfel. Fühl dich frei, mir die Sachen wann immer du magst zu bringen!
    eng: Hey, <player.name>! Did you already feel the need to go to Sacramentino? Remember, I need a Healing II potion and an enchanted golden super-apple. Feel free to get me that stuff whenever you like!
  rei_abgabe:
    ger: Sei bedankt, <player.name>. Hier ist dein Minecart und 2000 Taler in bar, die wirst du für einen guten Start brauchen. Nun noch ein Tipp für dich. In dem Haus der vor Jahren umgezogenen Familie Idiotus gibt es unter dem Bett einen geheimen Schalter. Betätige ihn, komm dann hierher zurück und sieh dich ein wenig um. Viel Glück noch!
    eng: Thank you, <player.name>. What a glorious day. Here, take your minecart and 2000 Thaler, you'll need that for an auspicious start in the city. I asked around a little in the village. There is an old, abandoned train track that leads to Sacramentino. The Idiotus family apparently has a secret switch under one of the beds in their old house right here in the village. Find that lever, pull it, and then come back to me and take a look around right here, there should be a surprise for you. Good luck!
  rei_lohn:
    ger: <green>Du erhälst eine Lore
    eng: <green>You receive a minecart

  #Des Lehrers Schwämme
  leh_name:
    ger: Des Lehrers Schwämme
    eng: The teacher's sponges
  leh_start:
    ger: Hallo, <player.name>! Na, Lust, nochmal die Schulbank zu drücken? Späßchen. Nein, hier wurde lange nicht mehr unterrichtet. Liegt wohl daran, dass die ganzen jungen Leute nach Sacramentino gezogen sind, in die Großstadt. Ich häette eine Aufgabe für dich. Möchtest du mir helfen, etwas zu finden?
    eng: Good morning, <player.name>! Wanna go to school again? He-he. Just kidding. Nobody attended school here for a long time now... probably because all the young people moved to Sacramentino years ago. Well, well. But you look like you might want to help me. I lost something, would you like to search it?
  leh_annahme:
    ger: Danke dir. Irgendwo im Haus habe ich meine alten Tafelschwämme liegen lassen. Muss aber noch ein paar Klausuren von 1957 korrigieren, keine Zeit zum Suchen. Wenn du sie findest, komm einfach zurück. Ich bin da!
    eng: Cool. OK I left my sponges for the blackboard somewhere in the schoolhouse, can't seem to find them. I don't have time to look for them because I need to mark some exam papers from 1957. So thank you for having a look around!
  leh_ablehnung:
    ger: Schon gut, war auch nicht so wichtig.
    eng: OK, it wasn't that important anyway.
  leh_frage:
    ger: Und, hast du meine alten Schwämme gefunden? Sie müssen irgendwo im Schulhaus sein...
    eng: Hey, did you find my old sponges already? They must be somewhere in the schoolhouse...
  leh_abgabe:
    ger: Hey, danke! Wo hast du die denn gefunden? Hier, ich hab was für dich. Habe es einmal unter einem Tisch klebend gefunden, ich habe keine Ahnung, wozu es gut ist. Vielleicht kannst du es gebrauchen, sieht glänzend aus.
    eng: Gee, thanks! Where did you find those? Oh, I got something for you here. Found it sticking beneath a table once, I have no idea what it's good for. Maybe you can use it, looks shiny.
  leh_lohn:
    ger: <green>Du erhälst 1x Glowstonestaub
    eng: <green>You receive 1 glowstone dust
  leh_sidebar_un:
    ger: <server.flag[unchecked]> Finde die Schwämme
    eng: <server.flag[unchecked]> Find the sponges
  leh_sidebar_ch:
    ger: <server.flag[checked]> Finde die Schwämme
    eng: <server.flag[checked]> Find the sponges

  #Die Hungersnot
  hun_name:
    ger: Die Hungersnot
    eng: The famine
  hun_start:
    ger: Guten Tag, <player.name>! Wüstenstedt benötigt deine Hilfe. Wir leiden gerade an einer kleinen Hungersnot, der Supermarkt zieht die Preise an und du bist hier die einzige Seele mit einer Farm. Möchtest du deinem Dorf aushelfen? Du wirst selbstverständlich entlohnt.
    eng: Hello, <player.name>! Desert Ville needs your help. A small famine is rising. The supermarket is getting more expensive every week and you're the only one operating a farm. Will you bring me some food to feed the people? Your effort will be remunerated.
  hun_annahme:
    ger: Danke, dass wir auf dich zählen können. Wir brauchen 20 gebratene Rindersteaks, 10 Eier und 10 Brote, um erstmal alle zu versorgen. Wir sprechen uns bald!
    eng: Great! We need 20 cooked beef steaks, 10 eggs and 10 breads for now. See you soon!
  hun_ablehnung:
    ger: Schade, aber vielleicht überlegst du es dir ja noch anders. Bis bald!
    eng: Too bad. I'll be here in case you change your mind!
  hun_frage:
    ger: <player.name>, bitte bring uns das Essen bald. Wir brauchen 20 gebratene Steaks, 10 Eier und 10 Brote. Wir hungern!
    eng: <player.name>, please deliver the food soon. We need 20 cooked steaks, 10 eggs and 10 breads. Otherwise, we might end up in a famine.
  hun_abgabe:
    ger: Du bist wirklich unbezahlbar, <player.name>. Dafür kriegst du 250 Taler und diesen goldenen Apfel hier, das ist ein altes Familienerbstück!
    eng: You are really priceless, <player.name>. The village pays you 250 Thaler for that. Oh, and take this old family heirloom. It's quite precious.
  hun_lohn:
    ger: <green>Du erhälst einen magischen goldenen Apfel
    eng: <green>You receive a magic golden apple
  hun_sidebar1_un:
    ger: <server.flag[unchecked]> Beschaffe 20x gebratenes Rindersteak
    eng: <server.flag[unchecked]> Obtain 20x cooked beef steak
  hun_sidebar1_ch:
    ger: <server.flag[checked]> Beschaffe 20x gebratene Rindersteak
    eng: <server.flag[checked]> Obtain 20x cooked beef steak
  hun_sidebar2_un:
    ger: <server.flag[unchecked]> Beschaffe 10x Ei
    eng: <server.flag[unchecked]> Obtain 10x egg
  hun_sidebar2_ch:
    ger: <server.flag[checked]> Beschaffe 10x Ei
    eng: <server.flag[checked]> Obtain 10x egg
  hun_sidebar3_un:
    ger: <server.flag[unchecked]> Beschaffe 10x Brot
    eng: <server.flag[unchecked]> Obtain 10x bread
  hun_sidebar3_ch:
    ger: <server.flag[checked]> Beschaffe 10x Brot
    eng: <server.flag[checked]> Obtain 10x breads

  #Die Not des Dealers
  dea_name:
    ger: Die Not des Dealers
    eng: The plight of the dealer
  dea_start:
    ger: Heey, <player.name>! Hast du Lust, dir ein paar Mäuse dazuzuverdienen? Ich wüsste da was. Mein Sohnemann, der ist ein Drogendealer. Ziemlich erfolglos in diesem kleinen Kaff hier... aber er tut mir so leid, der Eumel. Wenn du ihm ein bisschen Nachschub bringen könntest, wär das super! Was meinst du, Bruder?
    eng: Heeey, <player.name>! Wanna make some money? I'd have a job for you. My son is a - well - dealer... you know... weed and such. He needs some resupplies. Would you like to help, brother? I'll pay you and such...
  dea_annahme:
    ger: Stark, Alter. 30x Gras wird erstmal genug sein. Es muss ganz normales Gras sein, kein hohes Gras. Er dealt immer irgendwo hinter der Schule. Ach, hier hast du ein paar Taler für eine Schere, um das Zeuch zu besorgen. Soll dein Schaden nicht sein, wenn du's ausführst! Du bist hier echt sowas wie unser Held!
    eng: Sweet, mah friend. OK 30x grass should be enough to begin with. It must be regular grass, not tall grass. He mostly deals somewhere behind the schoolhouse. Here you have 30 bucks to get a pair of shears to collect that stuff. You're kinda... my hero right now, man!
  dea_ablehnung:
    ger: Na gut. Hab ja nur mal gefragt. Hat noch jemand 'n Bier für mich?
    eng: Okay okay, I was just askin', man. Can I get another beer, anybody?
  dea_frage:
    ger: Na, hast du meinem Sohnemann schon den Stoff gebracht? Er braucht Nachschub, Alter.
    eng: Yo, did you already bring my son 30x grass? He needs some resupplies, man.
  dea_abgabe:
    ger: Ey tut mir sorry, Mann, aber ich hab leider mein ganzes Geld versoffen. So ein Mist aber auch... ich kann dir nix zahlen! Aber du hast was gut bei mir, das schwör ich dir...
    eng: Aaah I'm so sorry, I spent all my dough for drinks, man. Can't pay you right now. But buddy... I owe you.
  dea_lieferung:
    ger: Danke für den Stoff, Alter!
    eng: Weyy thanks for that stuff, dude!
  dea_sidebar_un:
    ger: <server.flag[unchecked]> Beschaffe 30x Gras
    eng: <server.flag[unchecked]> Obtain 30x grass
  dea_sidebar_ch:
    ger: <server.flag[checked]> Beschaffe 30x Gras
    eng: <server.flag[checked]> Obtain 30x grass
  dea_sidebar2_un:
    ger: <server.flag[unchecked]> Kehre zum Saufkumpanen zurück
    eng: <server.flag[unchecked]> Return to Booze Buddy

  #Flower Power
  flo_name:
    ger: Flower Power
    eng: Flower Power
  flo_start:
    ger: Hi <player.name>! Hast du grade fünf Minuten Zeit? Du kennst doch den Blumen-Bernd, oder? Der Kerl will immer die Schönheit meines Gartens übertrumpfen... was hältst du davon, wenn du mir etwas Material bringst, damit bei mir alles viel toller sprießt als bei ihm? Ich würde mich auch erkenntlich zeigen...
    eng: Hi <player.name>! Can you spare a minute? You know that Flower-Freddy guy, right? He always tries to make his garden bloom nicer than mine. How would you like to bring me some materials so mine can yield some really beautiful plants? I'll make it worth your time...
  flo_annahme:
    ger: Ich danke dir! Ich brauche 12x Knochenmehl. Leider sind Knochen hier sehr schwer zu finden. Aber ich glaube, es gab vor Jahren im Dorf mal ein paar Grufties, die sich irgendwo eine Art Höhle gebuddelt haben und da mit Knochen spielten... Keine Ahnung, wo, aber deren Klamotten waren immer klatschnass. Du sollst es nicht bereuen, wenn du mir den Kram bringst!
    eng: Thanks, great! I need 12x bone meal. This will have an overwhelmingly fertilizing effect. Unfortunately, there aren't too many bones around here... but I think there were some goth kids a while ago who used to play somewhere below the village in some kind of cave. I don't know exactly how they got down there, but there probably would be some bones down there. These kids used to come home with wet clothes every other day... huh. Maybe you can find something.
  flo_ablehnung:
    ger: Okay, ich warte hier, bis du es dir anders überlegt hast.
    eng: Too bad. I'll be here in case you change your mind!
  flo_frage:
    ger: Hallo! Hast du schon mein Knochenmehl gefunden? Es muss eine Art Höhle oder ein Abflusssystem unterhalb des Dorfes geben...
    eng: Hi! Did you already find my bone meal? There must be some kind of cave or drainage system below the village...
  flo_abgabe:
    ger: Du bist ein Schatz. Hier sind 150 Piepen, das ist mir das wert!
    eng: You're priceless! Here, take some money, that's worth it.
  flo_sidebar_un:
    ger: <server.flag[unchecked]> Beschaffe 12x Knochenmehl
    eng: <server.flag[unchecked]> Obtain 12x bone meal
  flo_sidebar_ch:
    ger: <server.flag[checked]> Beschaffe 12x Knochenmehl
    eng: <server.flag[checked]> Obtain 12x bone meal

  #Tip-Trick-Man
  tip_start:
    ger: Moment, was sagt mein schlaues Büchlein...
    eng: Let's see what my magic booklet says...
  tip_buecher:
    ger: Du brauchst Bücher? Nun, Bücher werden aus Papier und Leder hergestellt, und Papier besteht in der Welt von MineCraft aus Zuckerrohr. Sowas wächst in der Natur oder auf deiner Farm...
    eng: So you need books? Well, they're made from paper and leather. Paper is made from sugar canes in this universe. You'll find these next to water. Of course, you aren't restricted to the stuff that grows on your farm, just wander around. Leather will be dropped by cows.
  tip_schwert:
    ger: Ja, ganz recht, der alte Herr Müller war ein komischer Kauz. Aber manche glauben, dass da was Wahres dran war an seinen Erzählungen... erinnerst du dich an die Hinweise, die dir Frau Müller gegeben hat? Im Gebirge, gen Osten... das könnte auf den Mount Craftigus hinweisen, der die Sonne morgens immer so lange vom Dorf fernhält. Ach ja, und ausserdem wurde der alte Müller oft gesehen, wie er in dem Birkenwäldchen auf dem Berg herumcreepte. Nun aber los!
    eng: Ah yes, the old Miller. What a strange old pal. Still, his stories might have a little truth in them! Mrs. Miller gave you some hints, didn't she? The mountains... eastward... might as well be Mount Craftigus. The sun rises late in Desert Ville because of that big rock. I think old Miller has sometimes been seen creeping around in that little birch grove up there...
  tip_bernd:
    ger: Ach, immer diese beiden Pflanzenfreaks mit ihrem Gehabe. Der Garten-Gard, der passt überhaupt nicht auf seine Sachen auf. Bei dem geht öfter das halbe Dorf ein und aus und bedient sich, haha! Vielleicht wartest du vorsichtshalber, bis es dunkel ist... aber ansonsten bedien dich einfach bei ihm!
    eng: Ah, those two flowerish freaks. They would always try to have the most beautiful garden, each of them. Actually, half the village takes Gary's stuff because he doesn't pay attention to anything but his flowers. Just sneak in, I think he didn't lock his door again this morning.
  tip_flower:
    ger: Na? Ich hätte einen Tipp für dich... fast direkt neben mir, aber auf einer anderen Ebene, da hab ich mal eine Kiste mit Knochen entdeckt... du musst wirklich nicht weit gehen!
    eng: Hey, I have a little hint for you<&co> Practically right next to me, but on a different height level, that's where I once found the bones these goth kids used to play with. Don't forget to train your lungs!
  tip_schwaemme:
    ger: Brauchst du da echt noch Hilfe? Der Lehrer Lempel hatte schon einen sehr brauchbaren Tipp gegeben.
    eng: Do you really need help with that one? I think the teacher couldn't have given you more information. He probably left his stuff in that one creepy, dirty classroom that nobody used for years again.
  tip_hungersnot:
    ger: Steaks, Brote und Eier, ja? Und eine ganz besondere Belohnung will er dir geben? Na, dann nichts wie auf deine Farm und nutze deine Tiere und Pflanzen!
    eng: Steaks, breads and eggs. Well, head to your farm, you can produce all that stuff there!
  tip_dealer:
    ger: Drogen sind hier in Wüstenstedt illegal. Da werde ich dir nicht helfen - du solltest wirklich nicht für diesen alten Saufkumpanen arbeiten.
    eng: Drugs are illegal here in Desert Ville. I won't help you with that one - you shouldn't work for that old booze buddy, really.
  tip_bekehrer:
    ger: Ah, schön, dass du die Gemeindezeitung verteilst. In einer säkularen Welt wie dieser ist es ja fast ein Wunder, wenn noch jemand an was glaubt. Wer alles noch so eine haben will, erfährst du nur durch Nachfragen, fürchte ich. Probier alle durch, auch die, die sich in Gebäuden aufhalten!
    eng: Ah, how nice of you to spread the parish newsletter. Just ask everyone you see if they want one of these. There are some believers left here in the village, although that's a backwards trend, of course. Like everywhere.
  tip_hilfe:
    ger: Hallo, <player.name>! Falls du bei einer Aufgabe nicht weiter kommst, klick mich ab und zu mal an, vielleicht habe ich ja einen Tipp oder einen Trick...
    eng: Hi, <player.name>! If you should be stuck at a quest, click me and see if I might have a tip or a trick for you...
