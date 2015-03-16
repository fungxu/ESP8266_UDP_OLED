print(node.heap())
wifi.setmode(wifi.STATION)
wifi.sta.config("SSID","Password")
wifi.sta.setip({ip="192.168.178.111",netmask="255.255.255.0",gateway= "192.168.178.1"})
print(wifi.sta.getip())
firststart = true
sda = 5
scl = 6
sla = 0x3c
i2c.setup(0, sda, scl, i2c.SLOW)
disp = u8g.ssd1306_128x64_i2c(sla)
dofile("oledsrv.lua")
