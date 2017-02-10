# ************************************************************
#
# This step will push your msg to slack
#
#   Variables used:
#     $FLOW_SLACK_INCOMING_URL
#     $FLOW_SLACK_MSG_JSON
#
#   Outputs:
#
# ************************************************************

set +e
curl -sSL "$FLOW_SLACK_INCOMING_URL" -H 'Accept-Encoding: gzip, deflate' \
  -H 'Accept-Language: zh' \
  -H "Content-Type: application/json" \
  -H 'Accept: */*' \
  -H 'Cache-Control: no-cache' \
  -H 'Connection: keep-alive' \
  --data-binary "$FLOW_SLACK_MSG_JSON" --compressed

flow_result $?

