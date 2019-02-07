<div></div>

> Get Alert Data

## Managing Alerts

```javascript--nodejs
let url = rootUrl + '/alert/data/';
let headers = {
  authorization: 'bearer ' + exampleResponseToken
}
let data = {
  start: '2019-01-18T10:22:09-06:00', // Alerts triggered after Jan 18, 2019
  end: '2019-02-05T10:22:09-06:00', // Alerts triggered before Feb 05, 2019
  apps: ['epxdiabetes','epxheart'] // Alerts from the EpxDiabetes & EpxHeart Interventions
}
$.post({url: url, body: data, headers: headers}, (data, status) => {
  console.log(data.alerts);
});
```

```python
url = rootUrl + '/alert/data/'
headers = {
  authorization: 'bearer ' + exampleResponseToken
}
data = {
  start: '2019-01-18T10:22:09-06:00', # Alerts triggered after Jan 18, 2019
  end: '2019-02-05T10:22:09-06:00', # Alerts triggered before Feb 05, 2019
  apps: ['epxdiabetes','epxheart'] # Alerts from the EpxDiabetes & EpxHeart Interventions
}
response = requests.post(url, data)
body = json.dumps(response.body)
print body.alerts
```


As Patients report changes in their condition the Epharmix system compares their progress against condition-specific thresholds. If the Patient's condition warrants, the Epharmix system will issue an unread Alert to the assigned Contact. 

Our api exposes the ability to manipulate the Alerts resource by: 

- fetching alert data, with the `data` endpoint.
  - This returns the alert body text, timestamp, as well as the associated epxapp name, Patient, and Contact.
- snooze active alerts programatically with the `snooze` endpoint.
- (un)resolve alerts programatically using the `set_status`.