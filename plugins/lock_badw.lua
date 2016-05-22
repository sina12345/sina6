local function run(msg, matches)
    if is_owner(msg) then
        return
    end
    local data = load_data(_config.moderation.data)
    if data[tostring(msg.to.id)] then
        if data[tostring(msg.to.id)]['settings'] then
            if data[tostring(msg.to.id)]['settings']['lock_badw'] then
                lock_badw = data[tostring(msg.to.id)]['settings']['lock_badw']
            end
        end
    end
    local chat = get_receiver(msg)
    local user = "user#id"..msg.from.id
    if lock_badw == "yes" then
        delete_msg(msg.id, ok_cb, true)
    end
end
 
return {
  patterns = {
    "کس(.*)",
    "کون(.*)",
    "کیر(.*)",
    "ممه(.*)",
    "سکس(.*)",
    "سیکتیر(.*)",
    "قهبه(.*)",
    "بسیک(.*)",
    "بیناموس(.*)",
    "اوبی(.*)",
    "کونی(.*)",
    "بیشرف(.*)",
    "کس ننه(.*)",
    "ساک(.*)",
    "کیری(.*)",
    "خار کوسه(.*)",
    "ننه(.*)",
    "خواهرتو(.*)",
    "سکسی(.*)",
    "کسکش(.*)",
    "سیک تیر(.*)",
    "گاییدم(.*)",
    "میگام(.*)",
    "میگامت(.*)",
    "بسیک(.*)",
    "خواهرت(.*)",
    "خارتو(.*)",
    "کونت(.*)",
    "کوست(.*)",
    "شورت(.*)",
    "سگ(.*)",
    "کیری(.*)",
    "دزد(.*)",
    "ننت(.*)",
    "ابمو(.*)",
    "جق(.*)",
    "سیکتیر",
    "کیر",
    "کس",
    "کون",
    "عوضی",
    "اشغال",
    "نفهم",
    "سکسی",
    "ممه",
  },
  run = run
}
