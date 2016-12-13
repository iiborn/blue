do

local function run(msg, matches)
  if matches[1]:lower() == 'ping' or 'test' then
    send_document(get_receiver(msg), "/root/black/data/me/nerkh1.webp", ok_cb, false)
      return "<b>Bot Online</b>\n<code>[0]Bug found</code>"
end
end
return {
  patterns = {
    "^[#!/]([Pp]ing)$",
	"^[#!/]([Tt]est)$",
    "^([Pp]ing)$",
	"^([Tt]est)$",

    },
  run = run
}
end
