import mqtt, json

def rule_updateMQTT()
  tasmota.cmd("status 10")
end

tasmota.add_cron("*/2 * * * * *", rule_updateMQTT, "updateMQTT")