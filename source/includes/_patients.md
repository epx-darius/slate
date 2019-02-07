<br/>

```javascript--nodejs
let url = '<rootUrl>/patient/create/';
let data = {
  firstName: 'John',
  lastName: 'Smith',
  phone: '5551234567'
}
$.post(url, data, function(data, status){
  console.log(data.patient);
});
```

```python
url = '<rootUrl>/patient/create/'
data = {
  firstName: 'John',
  lastName: 'Smith',
  phone: '5551234567'
}
response = requests.post(url, data)
body = json.dumps(response.body)
console.log(body.patient)
```

The Patients resource contains the necessary identification and contact information needed for the Epharmix system to effectively communicate with the patient. The api allows you to create, edit, delete and retrieve this information on a per Patient basis.

