local function run(msg, matches)
    if is_momod(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['fosh'] then
                lock_fosh = data[tostring(msg.to.id)]['settings']['fosh']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_fosh == "yes" then
       delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
      
          "(الكس)$",
    "sex",
	"انيج",
	"سكسي",
	"عير",
	"العير",
    "كس",
	"نياجكم",
	"خواتكم",
	"بلاعين",
    "sexy",
	"انيجكم",
	"فروخ",
	"صرم",
	"اختك",
	"امك",
	"كوس",
	"كسختك",
	"كسخالتك",
	"كسعمتك",
	"كسختمك",
	"طيزك",
	"نيج",
	"تنح",
	"كحبة",
	"كحبه",
	"عيورة",
	"عيوره",
	"كساسة",
	"تنحو",
	"انيجك",
	"انيجج",
	"شرموط",
	"xnxx",
	"الصرم",
	"http",
	"ناج",
	"خواتكم",
	"نأج",
	"بعصكم",
	"طيز"
	},
  run = run
}



