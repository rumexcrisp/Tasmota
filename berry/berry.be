import mqtt, json

var power=json.load(tasmota.read_sensors()).item("MT681").item("Power_cur")

def rule_updateMQTT_MT681()
  var sensor_mt681=tasmota.read_sensors()
  #print(sensor_mt681)
  var power_tmp=json.load(sensor_mt681).item("MT681").item("Power_cur")
  #print(power_tmp==power)
  if power_tmp!=power
    mqtt.publish("test",sensor_mt681,0)
  end
  power=power_tmp
end

tasmota.add_rule("MT681#Power_cur", rule_updateMQTT_MT681)

# tasmota.remove_rule("MT681#Power_cur")

# tasmota.add_cron("*/1 * * * * *", rule_updateMQTT_MT681, "updateMQTT_MT681")

# tasmota.remove_cron("updateMQTT_MT681")

#############################################################################

import mqtt, json

def rule_updateMQTT_MT681()
  # var sensor_mt681=tasmota.read_sensors()
  # mqtt.publish("test",sensor_mt681,0)
  tasmota.cmd("status 10")
end

tasmota.add_cron("*/1 * * * * *", rule_updateMQTT_MT681, "updateMQTT_MT681")

tasmota.add_rule("MT681#Power_cur", rule_updateMQTT_MT681)