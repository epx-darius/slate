<br/>

```javascript--nodejs
let url = '<rootUrl>/alert/data/';
let data = {
  start: '2019-01-18T10:22:09-06:00',
  end: '2019-02-05T10:22:09-06:00',
  apps: ['epxdiabetes','epxheart']
}
$.post(url, data, function(data, status){
  console.log(data.alerts);
});
```

```python
url = '<rootUrl>/alert/data/'
data = {
  start: '2019-01-18T10:22:09-06:00',
  end: '2019-02-05T10:22:09-06:00',
  apps: ['epxdiabetes','epxheart']
}
response = requests.post(url, data)
body = json.dumps(response.body)
console.log(body.alerts)
```

As Patients report changes in their condition the Epharmix system compares their progress against condition-specific thresholds. If the Patient's condition warrants, the Epharmix system will issue an unread Alert to the assigned Contact. 

Our api exposes the ability to manipulate the Alerts resource by fetching alert data, as well as snoozing & resolving alerts.