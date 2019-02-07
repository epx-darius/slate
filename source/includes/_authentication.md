<br/>

```javascript--nodejs
let url = '<rootUrl>/v1/auth/authenticate';
let exampleResponseToken = null;
let data = {
  apiKey: '<apiKey>',
  apiSecret: '<apiSecret>'
}
$.post({
  url: url, 
  data: data
}, (err, data) => {
  console.log(data.body.status); // OK
  exampleResponseToken = data.body.token;
});
```

```python
url = '<rootUrl>/v1/auth/authenticate'
exampleResponseToken = None
data = {
  apiKey: '<apiKey>',
  apiSecret: '<apiSecret>'
}
response = requests.post(url, data)
body = json.dumps(response.body)
print body.status # OK
exampleResponseToken = body.token
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