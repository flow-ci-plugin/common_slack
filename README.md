# Slack Notify Step
Post message to slack

### INPUTS

* `FLOW_SLACK_MSG_JSON` - The data you want send(must json).
* `FLOW_SLACK_INCOMING_URL` - Your Slack webhook URL.


## EXAMPLE 

```yml
steps:
  - name: slack
    enable: true
    failure: true
    plugin:
      name: slack_plugin
      inputs:
        - FLOW_SLACK_INCOMING_URL=$FLOW_SLACK_INCOMING_URL
        - FLOW_SLACK_MSG_JSON=$FLOW_SLACK_MSG_JSON
```
