do

local function run(msg, matches)
  if matches[1]:lower() == 'rank' then
    if is_sudo(msg) then
    send_document(get_receiver(msg), "./data/me/extreme1a.webp", ok_cb, false)
      return "You Are Sudo"
    elseif is_admin1(msg) then
    send_document(get_receiver(msg), "./data/me/admin.webp", ok_cb, false)
      return "You're Admin"
    elseif is_owner(msg) then
    send_document(get_receiver(msg), "./data/me/owner.webp", ok_cb, false)
      return "You're Owner"
    elseif is_momod(msg) then
    send_document(get_receiver(msg), "./data/me/mod.webp", ok_cb, false)
      return "You're Moderator"
    else
    send_document(get_receiver(msg), "./data/me/mmbr.webp", ok_cb, false)
      return "You're Just member :("
    end
  end
end

return {
  patterns = {
    "^[#!/]([Rr]ank)$",
    "^([Rr]ank)$"
    },
  run = run
}
end
