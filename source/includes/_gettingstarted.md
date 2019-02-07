<div></div>
> Set Up

```javascript--nodejs
let headers = {
  authorization: 'bearer ' + exampleResponseToken
}
let patientId = null;
let contactId = null; 

// Create our patient iff does not exist
let url = rootUrl + '/patient/create/';
let params = {
  firstName: 'Jane',
  lastName: 'Dough'
}
$.post({
  url: url, body: params, headers: headers
  }, (err, data) => {
  console.log(data.status); // OK
  patientId = data.patient.id;
});

// Create our contact iff does not exist
let url = rootUrl + '/contact/create/';
let params = {
  tz: 'US/Eastern'
  displayName: 'Your Nurse Carly'
  description: 'Dr. Woodward (Internal Medicine)'
  email: 'string'
  primaryPhone: '5551234567'
  primaryStart: '08:00'
  primaryEnd: '17:00'
  notificationPreference: 'C'
}
$.post({
  url: url, body: params, headers: headers
}, (err, data) => {
  console.log(data.status); // OK
  contactId = data.contact.id;
});
```

```python
headers = {
  authorization: 'bearer ' + exampleResponseToken
}
patientId = None
contactId = None 

# Create our patient iff does not exist
url = rootUrl + '/patient/create/'
params = {
  firstName: 'Jane',
  lastName: 'Dough'
}
response = requests.post(url=url, params=params, headers=headers)
results = json.dumps(response.body)
print results.status # OK
patientId = results.patient.id # 1

# Create our contact iff does not exist
url = rootUrl + '/contact/create/'
params = {
  tz: 'US/Eastern'
  displayName: 'Your Nurse Carly'
  description: 'Dr. Woodward (Internal Medicine)'
  email: 'string'
  primaryPhone: '5551234567'
  primaryStart: '08:00'
  primaryEnd: '17:00'
  notificationPreference: 'C' 
}
response = requests.post(url=url, params=params, headers=headers)
results = json.dumps(response.body)
print results.staus # OK
contactId = results.contact.id # 1
```

### How to Use the API

The Epharmix system consists of a collection of apps -referred to as EpxApps in our code and Interventions in real life. These apps send a scheduled series of pre-defined messages, either SMS or voice to a Patient. Patients in our systems can be enrolled in a number of different apps, all serving to routinely check-in and monitor Patient progress. Alerts are issued whenever a patient being monitored reports a status outside the restrained of condition specific thresholds. 

> Enroll a Patient in EpxDiabetes

```javascript--nodejs
// Schedule the patient to the EpxDiabetes intervention
let headers = {
  authorization: 'bearer ' + exampleResponseToken
}
let url = rootUrl + '/epxdiabetes/create/'
let patientId = 1 // Jane Dough
let contactId = 1 // Your Nurse Carly
let params = {
  start: '2019-02-05T10:00:09-06:00', // Start Feb 5
  end: '2019-03-05T10:00:09-06:00', // End March 5
  times: [ '9:00', '17:30'],  // 9am & 5:30pm
  days: [1,3,5], // Monday, Wednesday, Friday
  method: 'message', // SMS communications
  tz: 'US/Central',
  language: 'en',
  mode: 'D', // communication granulariy set to a Daily granularity
  isFixed: true, // fixed schedules
  patientId: patientId,
  contactId: contactId
}
$.post({
  url: url, body: params, headers: headers
}, (err, data) => {
  console.log(data.status); // OK
  let schedule = data.schedule
});
```

```python
# Schedule the patient to the EpxDiabetes intervention
headers = {
  authorization: 'bearer ' + exampleResponseToken
}
url = rootUrl + '/epxdiabetes/create/'
patientId = 1  # Jane Dough
contactId = 1  # Your Nurse Carly 
params = {
  start: '2019-02-05T10:00:09-06:00', # Start Feb 5
  end: '2019-03-05T10:00:09-06:00', # End March 5
  times: [ '9:00', '17:30'],  # 9am & 5:30pm
  days: [1,3,5], # Monday, Wednesday, Friday
  method: 'message', # SMS communications
  tz: 'US/Central',
  language: 'en',
  mode: 'D', # communication granulariy set to a Daily granularity
  isFixed: True # fixed schedules
  patientId: patientId
  contactId: contactId
}
response = requests.post(url=url, params=params, headers=headers)
print response.body.status # OK
schedule = response.body.schedule
```

**Example Use Case #1**

_Organization A would like it's providers to be able to refer patients with uncontrolled diabetes to a centralized care management team._

**Solution**

Develop a rule within the EMR or within your Patient management solution to make a request to the EpxDiabetes resource's `create` endpoint. You will need to retrieve the id of a previously created Patient and Contact. 

<aside class="notice">
If the designated Patient or Contact resource does not exist on your account yet, you can utilize their create endpoints to instantiate and retrieve their IDs. Be sure to store this ID for the associated resources in your system.
</aside>

The constructed request will define a Schedule that details when and how a patient should be contacted during their enrollment in the EpxDiabetes intervention. 

- `start` & `end` date of the enrollment.
- designated `times` for the system to contact the Patient 
- `days` of the week to contact the Patient
- `tz` is the timezone of the Patient
- the `language` the Patient prefers
- the schedule `mode` determines if the system should reach out on a `D`aily or `W`eekly basis. ( if the schedule mode is Daily, the `days` parameter is effectively ignored. )
- If the app supports a smart schedule, setting
 `isFixed` to false will enable the schedule to adjust its communication frequency based on its Patient's condition trends.

**Based on the examples provided to the right**- this solution will result in our patient, Jane Dough, being enrolled in the EpxDiabetes intervention. She will be enrolled in the app from Februrary 5, 2019 - March 5, 2019 and will receive SMS communications at 9am, 5:30pm on Monday, Wednesday & Friday. If Jane's reported condition triggers an Alert, it will be assigned to Your Nurse Carly. If the Alert is assigned during Nurse Carly's scheduled business hours she will also receive a call at (555) 123-4567.

**Additional Benefits**

- Providers want to view the blood sugar charts of patients during office visits?

Once Jane Dough, our patient, is enrolled into the EpxDiabetes intervention she will routinely be prompted to provide updated status checks, including blood sugar. By using the EpxDiabetes resource's `data` endpoint developers can retrieve a list of the stored sessions and collect that data for display to the Providers.

- Population health department wants to see how the whole patient panel is doing across the organization.

Once multiple patients are enrolled and active in the EpxDiabetes intervention the Epharmix Triage resource becomes a powerful point for managing and reviewing patient population risk. Developer software can query the `data` endpoint using various filtering options:

1. Patients are organized by their status, one of: `danger`, `warning`, `success`, `unresponsive`, `inactive`, `snoozed`, `completed`, `paused`, `recent`.
2. For each patient status requested, the results can be furter filtered by supplying an object of TriageOptions
  - page
  - limit
  - apps
  - order

**Example Use Case #2**

> Enroll a Patient in EpxHeartFailure

```javascript--nodejs
// Upon notification of a patient discharge recieve patient identifying information
// This script contains mock functions and objects for example purposes.

let patientId = internalPatientInformation.patientId;

// Schedule the patient to the EpxHeartFailure intervention
let url = rootUrl;
if (shouldEnrollInEpxHeartFailure(patientId)) {
  // true
  url = url + '/epxheart/create/';
} else if (shouldEnrollInEpxCOPD(patientId)) {
  url = url + '/epxcopd/create/';
}
let headers = {
  authorization: 'bearer ' + exampleResponseToken
}
let patientPreferences = loadSchedulePreferencesFromPatientId(patientId) // mock
let params = {
  start: patientPreferences.start, // Start Feb 5
  end: patientPreferences.end, // End March 5
  times: patientPreferences.times,  // 9am & 5:30pm
  days: patientPreferences.days, // Monday, Wednesday, Friday
  method: patientPreferences.method, // SMS communications
  tz: patientPreferences.tz,
  language: patientPreferences.language,
  mode: patientPreferences.mode, // communication granulariy set to a Daily granularity
  isFixed: false, // adjustable schedules
  patientId: patientId,
  contactId: contactId
}
$.post({
  url: url, body: params, headers: headers
}, (err, data) => {
  console.log(data.status); // OK
  let schedule = data.schedule
});
```

```python
# Upon notification of a patient discharge receive patient identifying information
# This script contains some mock functions and objects for example purposes.

patientId = internal_patient_information['patientId']
# Schedule the patient to the EpxHeartFailure intervention
url = rootUrl
if shouldEnrollInEpxHeartFailure(patientId): 
  # true
  url += '/epxheart/create/'
elif shouldEnrollInEpxCOPD(patientId):
  url += '/epxcopd/create/'

headers = {
  authorization: 'bearer ' + exampleResponseToken
} 
patientPreferences = loadSchedulePreferencesFromPatientId(patientId)
params = {
  start: patientPreferences.start, # Start Feb 5
  end: patientPreferences.end, # End March 5
  times: patientPreferences.times,  # 9am & 5:30pm
  days: patientPreferences.days, # Monday, Wednesday, Friday
  method: patientPreferences.method, # SMS communications
  tz: patientPreferences.tz,
  language: patientPreferences.language,
  mode: patientPreferences.mode, # communication granulariy set to a Daily granularity
  isFixed: False # fixed schedules
  patientId: patientId
  contactId: contactId
}
response = requests.post(url=url, params=params, headers=headers)
print response.body.status # OK
schedule = response.body.schedule
```

_Organization B wants to closely monitor its patients post-discharge, especially those with COPD, heart failure, or other readmission-prone complication_

**Solution**

Set up rules based on your system's ADT feed for discharged patients with relevant diagnosis. Depending on the patients specific condition or situation, automatically enroll the patient into EpxCOPD, EpxHeartFailure, or EpxPostDischarge [<span style="color:red">in development</span>] for other complications.
