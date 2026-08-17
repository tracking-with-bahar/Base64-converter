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
  "displayName": "Encode/Decode Converter",
  "description": "",
  "containerContexts": [
    "WEB"
  ]
}


___TEMPLATE_PARAMETERS___

[
  {
    "type": "RADIO",
    "name": "operationButton",
    "displayName": "Operation",
    "radioItems": [
      {
        "value": "encode",
        "displayValue": "Encode"
      },
      {
        "value": "decode",
        "displayValue": "Decode"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "RADIO",
    "name": "texttype",
    "displayName": "Data Type",
    "radioItems": [
      {
        "value": "text",
        "displayValue": "Text"
      },
      {
        "value": "json",
        "displayValue": "JSON"
      }
    ],
    "simpleValueType": true
  },
  {
    "type": "TEXT",
    "name": "text",
    "displayName": "Input Text",
    "simpleValueType": true
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const JSON = require('JSON');
const fromBase64 = require('fromBase64');
const toBase64 = require('toBase64');

if(!data.text) return;

if (data.operationButton === "encode" && data.texttype === "text") {
  return toBase64(data.text);
}

if (data.operationButton === "decode" && data.texttype === "text") {
  return fromBase64(data.text);
}

if (data.operationButton === "encode" && data.texttype === "json") {
  return toBase64(JSON.stringify(data.text));
}

if (data.operationButton === "decode" && data.texttype === "json") {
  return JSON.parse(fromBase64(data.text));
}


___TESTS___

scenarios: []


___NOTES___

Created on 8/13/2026, 11:01:25 PM


