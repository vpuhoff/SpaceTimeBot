
function mining_info(chat_id) {
		Telegram.send(chat_id,
			"Справка по добыче в подземелье.\n"+
			"Основная цель - добыча денег💰, но засчитывается только если дойти до финиша🚪.\n"+
			"Перемещение:\n  ↑ ↓ ← → - на одну клетку\n"+
			"  ⇑ ⇓ ⇐ ⇒ - до упора (стены или монстра)\n"+
			"При нажатии кнопки 🧨 следующий переход взорвет стену⬛️ "+
			"(или ничего если вы решили потратить 🧨 на пустую клетку).\n"+
			"При переходе на монстра вы теряете здоровье❤️, но получаете деньги💰.\n"+
			"Типы монстров:\n  🐀Крыса - 1❤, ~3💰\n  🦇Летучая мышь - 2❤, ~5💰\n  👽Чужой - 3❤, ~10💰\n"+
			"Награда удваивается за каждый уровень 🏢Базы.\n"+
			"Повторный вход в подземелье возможно только через " + time2text(mining_timeout) + ".\n"+
			"Не спешите жать кнопки, telegram это не одобряет...");
}

function help_stock(chat_id) {
	let msg = "Справка о бирже:\n";
	msg += "На бирже можно размешать заказы на покупку или продажу ресурсов.\n";
	msg += "При создании заказа автоматически резервируются средства и ресурсы для его выполнения.\n";
	msg += "Заказ можно отменить если ещё никто не принял его и не отправил свои корабли.\n";
	msg += "За создание или удаление заказа расходуется энергия из аккумуляторов в количестве 50🔋.\n";
	Telegram.send(chat_id, msg);
}

function help_ships(chat_id) {
	let rd = [];
	for(let i=0; i<Resources_base; i++) rd.push(Resources_desc[i]);
	let msg = "Справка о кораблях:\n";
	msg += "Каждый тип корабля имеет свои характеристики: объём 📦трюма, расход 🔋энергии и т.п.\n";
	msg += "Постройка корабля осуществляется исключительно за ресурсы " + rd + "\n";
	msg += "Максимальное количество слотов кораблей ограничено и зависит от уровня 🏢Базы и 🏗Верфи.\n";
	msg += "Постройка новых уровней 🏗Верфи позволяет строить более большие корабли.\n";
	Telegram.send(chat_id, msg);
}

function help_expeditions(chat_id) {
	Telegram.send(chat_id, 
	"Справка об 👣️Экспедициях:\n"+
	"Для отправки требуется существенно больше 🔋энергии чем обычно "+
	"(ко-во часов * 10 * энергия пуска). "+
	"В процессе 👣️Экспедиции есть шанс встретить что-то интересное - "+
	"например астероид с ресурсами. "+
	"Этот шанс зависит от время экспедиции и от количества кораблей. "+
	"Таким образом чем больше кораблей и на более длительную экспедицию отправить, "+
	"тем больше вероятность встретить объект. "+
	"Когда экспедиция встречает объект, она там приостанавливается и ждет дальнейшей команды. "+
	"Если объект охраняется то ты можешь вступить в бой, "+
	"или запросить координаты для отправки подкрепления. "+
	"Причём координатами можно поделиться с другом, "+
	"и он получит возможность тоже отправить свой флот на сражение, "+
	"или загрузить ресурсами если охраны нет. "+
	"После победы, или если объект не охраняется, "+
	"ты можешь загрузиться ресурсами или отправить и дождаться с базы грузовиков. "+
	"Если экспедиция покидает найденный объект, то он становится недоступным, "+
	"и все подкрепления отправленные по этим координатам ничего не найдут и вернутся на базу. "+
	"Экспедиция завершится только после того как израсходует всю 🔋энергию.\n"+
	"Есть ограничение - возможна только одна активная экспедиция. "+
	"Пока она не завершится, нельзя отправить следующую.\n"+
	"В саму экспедицию не обязательно отправлять грузовики и боевые корабли: "+
	"когда экспедиция найдёт интересный объект, "+
	"вы всегда можете туда отправить отдельный флот для сражения или для вывоза ресурсов. "+
	"Причём его можно отправлять сколько угодно раз, "+
	"пока ты сам не отправишь экспедицию в дальнейшее плавание."+
	"");
}