do

local function run(msg, macthes)
local reply_id = msg['id']
if is_sudo(msg) and macthes[1] == 'sudo' then
    local text = [[
    🃏🔱 Ghost Bot 🔱🃏
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
🔹/aded :: تفعيل البوت | 📢
🔹/remo :: الغاء تفعيل البوت | 🔕
🔹/banall :: حضر عام | 📛
🔹/unbanall ::  الغاء الحضر العام | 🚫
🔹/gbanlist :: قائمة المحضورين عام | 📝
🔹/setowner :: رفع مشرف | 🔰
🔹/tosuper :: تحويل الكروب سوبر | 🚀
🔹/serverinfo ::  معلومات السيرفر | 🔘
🔹/leave :: البوت يخرج من المجموعة | ⛔️
🔹p :: قائمة ملفات البوت | 🀄️
🔹p = لتفعيل الملف :: اسم الملف | ✔️
🔹p - الغاء تفعيل الملف :: اسم الملف | ✖️
🔹➖🔸➖🔹➖🔸➖🔹➖🔸
Channel : @DevHelpTv 🎗
	]]
	reply_msg(reply_id, text, ok_cb, false)
end
	
local reply_id = msg ['id']
	if not is_momod(msg) then
local text = "Only Sudo 😐⛔️"
	reply_msg(reply_id, text, ok_cb, false)
end
	
end
return {
    patterns ={
	"^[/!#]([Ss][Uu][Dd][Oo])$",
	"[/!#](sudo)$"
	},
	run = run,
}
end 