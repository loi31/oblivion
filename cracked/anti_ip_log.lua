getgenv().IpProtection=true;_1="@everyone | https://dsc.gg/azurelua | loi#8700"IP_Trackers={"https://v4.ident.me","https://api.ipify.org","https://httpbin.org/get"}local a;a=hookfunction(game.HttpGet,function(self,b)if type(b)=="string"and getgenv().IpProtection then if table.find(IP_Trackers,b)then warn(b,"tried to log your IP. It was protected.")return _1 end end;return a(self,b)end)local c;c=hookfunction(syn and syn.request or request,function(d,e)if type(d)=="table"and getgenv().IpProtection then for f,g in pairs(d)do if f=="Url"and table.find(IP_Trackers,g)then warn(g,"tried to log your IP. It was protected.")return{StatusCode=200,Body=spoofedIP}end end end;return c(d,e)end)
