<br/>

```javascript--nodejs
let url = '<rootUrl>/v1/auth/authenticate';
let data = {
  apiKey: '<apiKey>',
  apiSecret: '<apiSecret>'
}
$.post(url, data, function(data, status){
  console.log(`My token! ${data}`);
});
```

```python
url = '<rootUrl>/v1/auth/authenticate'
data = {
  apiKey: '<apiKey>',
  apiSecret: '<apiSecret>'
}
response = requests.post(url, data)
body = json.dumps(response.body)
console.log(body.token)
```

> Token Response

```json
{
  "status": "OK",
  "token": "<exampleResponseToken>"
}
```
<br/>

### Authorizing a request

The first step in utilizing the Epharmix API is to contact us to receive an:
  
- apiKey
- apiSecret 

These two values will be used to request an authorization token from **/v1/auth/authenticate**. Use this token to sign the header in your subsequent requests.

`authorization: bearer [token]`

## Getting Started

### How to Use the API

The Epharmix system consists of a collection of apps -referred to as EpxApps in our code and Interventions in real life. These apps send a scheduled series of pre-defined messages, either SMS or voice to a Patient. Patients in our systems can be enrolled in a number of different apps, all serving to routinely check-in and monitor Patient progress. Alerts are issued whenever a patient being monitored reports a status outside the restrained of condition specific thresholds. 




