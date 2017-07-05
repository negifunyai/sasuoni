# -*- coding: utf-8 -*-

Plugin.create(:sasuoni) do
  command(:sasuoni,
          name: 'さすおに',
          condition: Plugin::Command[:CanReplyAll],
          visible: true,
          role: :timeline
         ) do |opt|
      
    message = opt.messages.first
    screen_name = message.user[:idname]
    message.post(:message => "さすがは" + "@#{screen_name}様です")
  end 
end
