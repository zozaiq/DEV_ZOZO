do

local function run(msg, macthes)
local reply_id = msg['id']
if is_momod(msg) and macthes[1] == 'help' then
    local text = [[
أهلا وسهلا 

🔹 توجد ثلاثة قوائم للمساعدة

🔹 الاوامر تعمل مع [/!#]
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹- /list1 == أوامر أدارة المجموعة

🔹- /list2 == أوامر حماية المجموعة

🔹- /sudo == أوامر خاصة بالمطور  فقط!
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
Channel : @DevHelpTv 🎗
	]]
	reply_msg(reply_id, text, ok_cb, false)
end
	
local reply_id = msg ['id']
	if not is_momod(msg) then
local text = "Only managers 😐⛔️"
	reply_msg(reply_id, text, ok_cb, false)
end
	
end
return {
    patterns ={
	"^[/!#]([Hh][Ee][Ll][Pp])$",
	"[/!#](help)$"
	},
	run = run,
}
end 