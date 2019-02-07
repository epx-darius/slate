The Triage resource allows you a great deal of flexibility in defining the data would would like to retrieve about patient status' from our servers. A request to this endpoint accepts a timeframe `start` & `end` as well as options - a <[TriageOptions](#schematriageoptions)> object.

The TriageOptions accepts a series of objects, each of them specifying a summary of resources to return. 

### TriageOptions.Patients 

The `patients` object can contain a <[TriageCategory](#tocStriagecategory)> object for each category of patient you want data on. Options are:

- `danger`
- `warning`
- `success`
- `unresponsive`

Within each of these four categories, you can filter returned patients based on `page`, `limit` & `apps`. You can control the sorting of patients with `order`. 

### TriageOptions.PatientIds

The `patientIds` object returns a list of Patient ID's filtered by a supplied list of `apps`.

### TriageOptions.Alerts

The `alerts` object accepts a series of parameters and filters `page`, `limit`, `unreadOnly` & `apps` 

<br/>
The Triage resource is a great way to define summaries that will allow your team to more efficiently have access to the patients & info they need to review.