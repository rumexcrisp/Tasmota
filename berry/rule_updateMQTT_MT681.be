import mqtt, json

def rule_updateMQTT_MT681()
  # var sensor_mt681=tasmota.read_sensors()
  # mqtt.publish("test",sensor_mt681,0)
  tasmota.cmd("status 10")
end

tasmota.add_cron("*/1 * * * * *", rule_updateMQTT_MT681, "updateMQTT_MT681")