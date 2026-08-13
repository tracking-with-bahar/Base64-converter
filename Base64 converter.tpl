___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "MACRO",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Base64 converter",
  "description": "",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "RADIO",
    "name": "radioButton",
    "displayName": "",
    "radioItems": [
      {
        "value": "fromBase64",
        "displayValue": "fromBase64"
      },
      {
        "value": "toBase64",
        "displayValue": "toBase64"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "text",
    "displayName": "value",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const fromBase64 = require('fromBase64');
const toBase64 = require('toBase64');
return data.radioButton === "fromBase64" ? fromBase64(data.text) : toBase64(data.text);


___TESTS___

scenarios: []


___NOTES___

Created on 8/13/2026, 8:23:39 PM


