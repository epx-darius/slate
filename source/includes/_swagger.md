
<h1 id="full-reference-epharmix-platform-api-">Full Reference Epharmix Platform Api -  v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This documentation describes the RESTful API for the Epharmix platform.

Base URLs:

* <a href="https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1">https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1</a>

* <a href="https://stage.ephx.io">https://stage.ephx.io</a>

# Authentication

- HTTP Authentication, scheme: bearer Bearer token authentication scheme.

<h1 id="full-reference-epharmix-platform-api--patients">Patients</h1>

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

## Create a Patient

`POST /patient/create/`

Enroll a patient into the Epharmix system. Once enrolled a patient can be assigned to a number of active Epharmix Interventions.

> Body parameter

```json
{
  "type": "object",
  "description": "Expected parameters for constructing a Patient resource.",
  "properties": {
    "firstName": {
      "description": "The first name of the patient.",
      "type": "string",
      "example": "John"
    },
    "middleInitial": {
      "description": "The middle initial of the patient.",
      "type": "string",
      "example": "M"
    },
    "lastName": {
      "description": "The last name of the patient.",
      "type": "string",
      "example": "Smith"
    },
    "phone": {
      "description": "The phone number of the patient.",
      "type": "string",
      "pattern": "^\\d{10}$",
      "example": "5551234567"
    }
  },
  "required": [
    "firstName",
    "lastName",
    "phone"
  ]
}
```

<h3 id="create-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[PatientParams](#schemapatientparams)|true|Expected parameters to create a patient.|

> Example responses

> 201 Response

```json
{
  "status": "OK",
  "patient": {
    "id": 1,
    "firstName": "John",
    "middleInitial": "T",
    "lastName": "Doe",
    "phone": "0001112222"
  }
}
```

<h3 id="create-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Patient Created|Inline|

<h3 id="create-a-patient-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Edit a patient

`POST /patient/edit/`

Modify patient information within the Epharmix system.

> Body parameter

```json
{
  "type": "object",
  "description": "Expected parameters for constructing a Patient resource.",
  "properties": {
    "firstName": {
      "description": "The first name of the patient.",
      "type": "string",
      "example": "John"
    },
    "middleInitial": {
      "description": "The middle initial of the patient.",
      "type": "string",
      "example": "M"
    },
    "lastName": {
      "description": "The last name of the patient.",
      "type": "string",
      "example": "Smith"
    },
    "phone": {
      "description": "The phone number of the patient.",
      "type": "string",
      "pattern": "^\\d{10}$",
      "example": "5551234567"
    }
  },
  "required": [
    "firstName",
    "lastName",
    "phone"
  ]
}
```

<h3 id="edit-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[PatientParams](#schemapatientparams)|true|Expected parameters to edit a patient.|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "patient": {
    "id": 1,
    "firstName": "John",
    "middleInitial": "T",
    "lastName": "Doe",
    "phone": "0001112222"
  }
}
```

<h3 id="edit-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Patient Edited|Inline|

<h3 id="edit-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Delete a patient (paranoid)

`POST /patient/delete/`

Removes a patient from an account, but retains patient data in case it is needed.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "string",
      "example": 5,
      "description": "Patient ID"
    }
  }
}
```

<h3 id="delete-a-patient-(paranoid)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters to delete a patient.|
|» id|body|string|false|Patient ID|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "patient": {
    "id": 5,
    "firstName": "DELETED",
    "middleInitial": null,
    "lastName": "DELETED",
    "phone": "0000000000"
  }
}
```

<h3 id="delete-a-patient-(paranoid)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Patient Deleted|Inline|

<h3 id="delete-a-patient-(paranoid)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Get patient information

`POST /patient/data_single/`

Given an id, returns information stored for specific patient.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "string",
      "example": 5,
      "description": "Patient ID"
    }
  }
}
```

<h3 id="get-patient-information-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Uses Patient Id to retrieve information.|
|» id|body|string|false|Patient ID|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "patient": {
    "id": 1,
    "firstName": "John",
    "middleInitial": "T",
    "lastName": "Doe",
    "phone": "0001112222"
  }
}
```

<h3 id="get-patient-information-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Patient Data|Inline|

<h3 id="get-patient-information-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

<h1 id="full-reference-epharmix-platform-api--contacts">Contacts</h1>

The Contacts Api allows for the creation, editing, deletion and info retrieval of a single contact resource.  

## Add a contact to your Epharmix account

`POST /contact/create/`

Contacts are members of your account appointed to receive alerts and messages from patients enrolled in the Epharmix system. Its important to properly configure notification preferences to avoid any unintended interruptions for your Contacts.

> Body parameter

```json
{
  "type": "object",
  "description": "Expected parameters for constructing a Contact resource.",
  "properties": {
    "tz": {
      "type": "string",
      "example": "US/Eastern",
      "description": "Timezone"
    },
    "displayName": {
      "type": "string",
      "example": "Your Nurse Carly",
      "description": "The patient-facing name used in text messages/calls"
    },
    "description": {
      "type": "string",
      "example": "Dr. Woodward (Internal Medicine)",
      "description": "The internal description to help differentiate contacts"
    },
    "email": {
      "type": "string",
      "description": "Email"
    },
    "primaryPhone": {
      "type": "string",
      "description": "A 10-digit phone number, used to route calls/alerts to the contact.",
      "example": "5551234567"
    },
    "primaryStart": {
      "type": "string",
      "description": "The time that the primary phone becomes active. (24-hour time)",
      "example": "08:00"
    },
    "primaryEnd": {
      "type": "string",
      "description": "The time that the primary phone is no longer active. (24-hour time)"
    },
    "notificationPreference": {
      "type": "string",
      "enum": [
        "C",
        "T",
        "P",
        "E",
        "O"
      ],
      "description": "How the contact would like to be notified. Call, Text, Page, Email, Integration, Off"
    }
  }
}
```

<h3 id="add-a-contact-to-your-epharmix-account-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ContactParams](#schemacontactparams)|true|Expected Parameters to create a contact.|

> Example responses

> 201 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "contact": {
      "type": "object",
      "description": "A Contact resource to identify employees who communicate with / manage Patients",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53,
          "description": "id"
        },
        "displayName": {
          "type": "string",
          "example": "Your Nurse Carly",
          "description": "The patient-facing name used in text messages/calls"
        },
        "description": {
          "type": "string",
          "example": "Dr. Woodward (Internal Medicine)",
          "description": "The internal description to help differentiate contacts"
        },
        "email": {
          "type": "string",
          "description": "email"
        }
      }
    }
  }
}
```

<h3 id="add-a-contact-to-your-epharmix-account-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Contact Created|Inline|

<h3 id="add-a-contact-to-your-epharmix-account-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Edit a contact

`POST /contact/edit/`

Edit the information for a contact in the account. Use this to update contact information and alert preferences.

> Body parameter

```json
{
  "type": "object",
  "description": "Expected parameters for constructing a Contact resource.",
  "properties": {
    "tz": {
      "type": "string",
      "example": "US/Eastern",
      "description": "Timezone"
    },
    "displayName": {
      "type": "string",
      "example": "Your Nurse Carly",
      "description": "The patient-facing name used in text messages/calls"
    },
    "description": {
      "type": "string",
      "example": "Dr. Woodward (Internal Medicine)",
      "description": "The internal description to help differentiate contacts"
    },
    "email": {
      "type": "string",
      "description": "Email"
    },
    "primaryPhone": {
      "type": "string",
      "description": "A 10-digit phone number, used to route calls/alerts to the contact.",
      "example": "5551234567"
    },
    "primaryStart": {
      "type": "string",
      "description": "The time that the primary phone becomes active. (24-hour time)",
      "example": "08:00"
    },
    "primaryEnd": {
      "type": "string",
      "description": "The time that the primary phone is no longer active. (24-hour time)"
    },
    "notificationPreference": {
      "type": "string",
      "enum": [
        "C",
        "T",
        "P",
        "E",
        "O"
      ],
      "description": "How the contact would like to be notified. Call, Text, Page, Email, Integration, Off"
    }
  }
}
```

<h3 id="edit-a-contact-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ContactParams](#schemacontactparams)|true|Expected parameters to edit a contact.|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "contact": {
      "type": "object",
      "description": "A Contact resource to identify employees who communicate with / manage Patients",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53,
          "description": "id"
        },
        "displayName": {
          "type": "string",
          "example": "Your Nurse Carly",
          "description": "The patient-facing name used in text messages/calls"
        },
        "description": {
          "type": "string",
          "example": "Dr. Woodward (Internal Medicine)",
          "description": "The internal description to help differentiate contacts"
        },
        "email": {
          "type": "string",
          "description": "email"
        }
      }
    }
  }
}
```

<h3 id="edit-a-contact-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contact Edited|Inline|

<h3 id="edit-a-contact-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Delete a Contact (paranoid)

`POST /contact/delete/`

Marks the contact object as deleted in the Epharmix systems. It is not recommended that you delete contacts associated with active interventions.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "description": "Contact ID",
      "type": "string",
      "example": 5
    }
  }
}
```

<h3 id="delete-a-contact-(paranoid)-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters to delete a contact.|
|» id|body|string|false|Contact ID|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "contact": {
      "type": "object",
      "description": "A Contact resource to identify employees who communicate with / manage Patients",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53,
          "description": "id"
        },
        "displayName": {
          "type": "string",
          "example": "Your Nurse Carly",
          "description": "The patient-facing name used in text messages/calls"
        },
        "description": {
          "type": "string",
          "example": "Dr. Woodward (Internal Medicine)",
          "description": "The internal description to help differentiate contacts"
        },
        "email": {
          "type": "string",
          "description": "email"
        }
      }
    }
  }
}
```

<h3 id="delete-a-contact-(paranoid)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contact Deleted|Inline|

<h3 id="delete-a-contact-(paranoid)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Get contact information

`POST /contact/data_single/`

Given an id, returns information associated with the requested contact.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "string",
      "example": 5,
      "description": "Contact ID"
    }
  }
}
```

<h3 id="get-contact-information-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters to retrieve contact data.|
|» id|body|string|false|Contact ID|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "contact": {
      "type": "object",
      "description": "A Contact resource to identify employees who communicate with / manage Patients",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53,
          "description": "id"
        },
        "displayName": {
          "type": "string",
          "example": "Your Nurse Carly",
          "description": "The patient-facing name used in text messages/calls"
        },
        "description": {
          "type": "string",
          "example": "Dr. Woodward (Internal Medicine)",
          "description": "The internal description to help differentiate contacts"
        },
        "email": {
          "type": "string",
          "description": "email"
        }
      }
    }
  }
}
```

<h3 id="get-contact-information-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Contact Data|Inline|

<h3 id="get-contact-information-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

<h1 id="full-reference-epharmix-platform-api--triage">Triage</h1>

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

## Get triage information about patients

`POST /triage/data/`

Triage data uses options provided in the request body along with the start and end dates of a time frame to return a list of patients matching requested criteria. i.e _Up to 20 Patients in danger enrolled in the epxcopd & epxdiabetes interventions_. A list of alerts can also be queried using option values.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "start": {
      "type": "string",
      "example": "2019-01-18T10:22:09-06:00",
      "description": "the start date of the timeframe, ISO format"
    },
    "end": {
      "type": "string",
      "example": "2019-02-18T10:22:09-06:00",
      "description": "the end date of the timeframe, ISO format (optional)"
    },
    "options": {
      "type": "object",
      "description": "Payload options to customize a patient triage.",
      "properties": {
        "patients": {
          "type": "object",
          "description": "Define the lists of patients returned in the triage. Can be configured on a per patient status basis.",
          "properties": {
            "danger": {
              "description": "Filters to tune returned patient results in each category.",
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer",
                  "minimum": 0,
                  "description": "The requested page of triage data to return."
                },
                "limit": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 100,
                  "example": 20,
                  "description": "The limit of patients objects to return."
                },
                "apps": {
                  "type": "array",
                  "items": {
                    "type": "string",
                    "pattern": "^epx[a-z]+$"
                  },
                  "minItems": 1,
                  "uniqueItems": true,
                  "example": [
                    "epxcopd",
                    "epxdiabetes"
                  ],
                  "description": "Limit returned results to only include patients enrolled in provided apps."
                },
                "order": {
                  "type": "array",
                  "items": {
                    "oneOf": [
                      {
                        "type": "string",
                        "enum": [
                          "alerts",
                          "addressedAt",
                          "snoozedUntil",
                          "lastName",
                          "enrollDate"
                        ]
                      },
                      {
                        "type": "string",
                        "enum": [
                          "asc",
                          "desc"
                        ]
                      }
                    ]
                  },
                  "minItems": 1,
                  "maxItems": 2,
                  "example": [
                    "addressedAt",
                    "desc"
                  ],
                  "description": "Define the sort attribute and order of returned patients."
                }
              },
              "required": [
                "page",
                "limit"
              ]
            },
            "warning": {
              "description": "Filters to tune returned patient results in each category.",
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer",
                  "minimum": 0,
                  "description": "The requested page of triage data to return."
                },
                "limit": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 100,
                  "example": 20,
                  "description": "The limit of patients objects to return."
                },
                "apps": {
                  "type": "array",
                  "items": {
                    "type": "string",
                    "pattern": "^epx[a-z]+$"
                  },
                  "minItems": 1,
                  "uniqueItems": true,
                  "example": [
                    "epxcopd",
                    "epxdiabetes"
                  ],
                  "description": "Limit returned results to only include patients enrolled in provided apps."
                },
                "order": {
                  "type": "array",
                  "items": {
                    "oneOf": [
                      {
                        "type": "string",
                        "enum": [
                          "alerts",
                          "addressedAt",
                          "snoozedUntil",
                          "lastName",
                          "enrollDate"
                        ]
                      },
                      {
                        "type": "string",
                        "enum": [
                          "asc",
                          "desc"
                        ]
                      }
                    ]
                  },
                  "minItems": 1,
                  "maxItems": 2,
                  "example": [
                    "addressedAt",
                    "desc"
                  ],
                  "description": "Define the sort attribute and order of returned patients."
                }
              },
              "required": [
                "page",
                "limit"
              ]
            },
            "success": {
              "description": "Filters to tune returned patient results in each category.",
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer",
                  "minimum": 0,
                  "description": "The requested page of triage data to return."
                },
                "limit": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 100,
                  "example": 20,
                  "description": "The limit of patients objects to return."
                },
                "apps": {
                  "type": "array",
                  "items": {
                    "type": "string",
                    "pattern": "^epx[a-z]+$"
                  },
                  "minItems": 1,
                  "uniqueItems": true,
                  "example": [
                    "epxcopd",
                    "epxdiabetes"
                  ],
                  "description": "Limit returned results to only include patients enrolled in provided apps."
                },
                "order": {
                  "type": "array",
                  "items": {
                    "oneOf": [
                      {
                        "type": "string",
                        "enum": [
                          "alerts",
                          "addressedAt",
                          "snoozedUntil",
                          "lastName",
                          "enrollDate"
                        ]
                      },
                      {
                        "type": "string",
                        "enum": [
                          "asc",
                          "desc"
                        ]
                      }
                    ]
                  },
                  "minItems": 1,
                  "maxItems": 2,
                  "example": [
                    "addressedAt",
                    "desc"
                  ],
                  "description": "Define the sort attribute and order of returned patients."
                }
              },
              "required": [
                "page",
                "limit"
              ]
            },
            "unresponsive": {
              "description": "Filters to tune returned patient results in each category.",
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer",
                  "minimum": 0,
                  "description": "The requested page of triage data to return."
                },
                "limit": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 100,
                  "example": 20,
                  "description": "The limit of patients objects to return."
                },
                "apps": {
                  "type": "array",
                  "items": {
                    "type": "string",
                    "pattern": "^epx[a-z]+$"
                  },
                  "minItems": 1,
                  "uniqueItems": true,
                  "example": [
                    "epxcopd",
                    "epxdiabetes"
                  ],
                  "description": "Limit returned results to only include patients enrolled in provided apps."
                },
                "order": {
                  "type": "array",
                  "items": {
                    "oneOf": [
                      {
                        "type": "string",
                        "enum": [
                          "alerts",
                          "addressedAt",
                          "snoozedUntil",
                          "lastName",
                          "enrollDate"
                        ]
                      },
                      {
                        "type": "string",
                        "enum": [
                          "asc",
                          "desc"
                        ]
                      }
                    ]
                  },
                  "minItems": 1,
                  "maxItems": 2,
                  "example": [
                    "addressedAt",
                    "desc"
                  ],
                  "description": "Define the sort attribute and order of returned patients."
                }
              },
              "required": [
                "page",
                "limit"
              ]
            }
          }
        },
        "patientIds": {
          "type": "object",
          "description": "Return a list of patient ids with the triage results.",
          "properties": {
            "apps": {
              "type": "array",
              "items": {
                "type": "string",
                "pattern": "^epx[a-z]+$"
              },
              "minItems": 1,
              "uniqueItems": true,
              "example": [
                "epxdiabetes",
                "epxheart",
                "epxcopd"
              ],
              "description": "Limit returned results to only include patients enrolled in provided apps."
            }
          }
        },
        "alerts": {
          "type": "object",
          "description": "Define the list of alerts returned in the triage.",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0,
              "description": "The requested page of alert data to return."
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20,
              "description": "The limit of alerts to return."
            },
            "unreadOnly": {
              "type": "boolean",
              "example": false,
              "description": "If true, return only unread alerts. (default: False)"
            },
            "apps": {
              "type": "array",
              "items": {
                "type": "string",
                "pattern": "^epx[a-z]+$"
              },
              "minItems": 1,
              "uniqueItems": true,
              "example": [
                "epxdiabetes",
                "epxheart",
                "epxcopd"
              ],
              "description": "Filter to alerts triggered by provided apps."
            },
            "order": {
              "type": "string",
              "pattern": "^(asc)|(desc)$",
              "example": "desc",
              "description": "Order to sort returned alerts, orders by created date."
            }
          },
          "required": [
            "page",
            "limit"
          ]
        }
      }
    }
  }
}
```

<h3 id="get-triage-information-about-patients-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters to preform a triage.|
|» start|body|string|false|the start date of the timeframe, ISO format|
|» end|body|string|false|the end date of the timeframe, ISO format (optional)|
|»»» patientIds|body|object|false|Return a list of patient ids with the triage results.|
|»»»» apps|body|[string]|false|Limit returned results to only include patients enrolled in provided apps.|
|»»» alerts|body|object|false|Define the list of alerts returned in the triage.|
|»»»» page|body|integer|true|The requested page of alert data to return.|
|»»»» limit|body|integer|true|The limit of alerts to return.|
|»»»» unreadOnly|body|boolean|false|If true, return only unread alerts. (default: False)|
|»»»» apps|body|[string]|false|Filter to alerts triggered by provided apps.|
|»»»» order|body|string|false|Order to sort returned alerts, orders by created date.|

> Example responses

> 200 Response

```json
{
  "allOf": [
    {
      "type": "object",
      "properties": {
        "status": {
          "description": "Status Code",
          "type": "string",
          "enum": [
            "OK"
          ],
          "example": "OK"
        }
      }
    },
    {
      "type": "object",
      "description": "Triage payload, depending on the supplied request may contain information on alerts, contacts, & patients.",
      "properties": {
        "alerts": {
          "type": "object",
          "properties": {
            "limit": {
              "type": "integer",
              "description": "The limit set for returned results."
            },
            "page": {
              "type": "integer",
              "description": "The current page of returned results."
            },
            "total": {
              "type": "integer",
              "description": "The total amount of results without the limit restriction"
            },
            "results": {
              "type": "array",
              "description": "Array of results",
              "items": {
                "type": "object",
                "description": "An Alert resource to notify of changing patient conditions.",
                "properties": {
                  "id": {
                    "type": "integer",
                    "example": 2543
                  },
                  "app": {
                    "type": "string",
                    "example": "epxcopd"
                  },
                  "body": {
                    "type": "string",
                    "example": "Patient Brionna has responded that she is having trouble breathing."
                  },
                  "contact": {
                    "type": "object",
                    "description": "A Contact resource to identify employees who communicate with / manage Patients",
                    "properties": {
                      "id": {
                        "type": "integer",
                        "example": 53,
                        "description": "id"
                      },
                      "displayName": {
                        "type": "string",
                        "example": "Your Nurse Carly",
                        "description": "The patient-facing name used in text messages/calls"
                      },
                      "description": {
                        "type": "string",
                        "example": "Dr. Woodward (Internal Medicine)",
                        "description": "The internal description to help differentiate contacts"
                      },
                      "email": {
                        "type": "string",
                        "description": "email"
                      }
                    }
                  },
                  "createdAt": {
                    "type": "string",
                    "description": "When the alert was triggered (ISO timestamp)",
                    "example": "2019-02-01T19:37:00.000Z"
                  },
                  "isRead": {
                    "type": "boolean",
                    "description": "True if the alert has been addressed by a user"
                  },
                  "snoozedAt": {
                    "type": "string",
                    "description": "When the alert was snoozed (ISO timestamp)",
                    "example": "2019-02-18T10:00:00-06:00"
                  },
                  "snoozedUntil": {
                    "type": "string",
                    "description": "When the alert will no longer be snoozed (ISO timestamp)",
                    "example": "2019-02-25T10:00:09-06:00"
                  },
                  "patient": {
                    "description": "Epharmix patient resource.",
                    "allOf": [
                      {
                        "type": "object",
                        "description": "Expected parameters for constructing a Patient resource.",
                        "properties": {
                          "firstName": {
                            "description": "The first name of the patient.",
                            "type": "string",
                            "example": "John"
                          },
                          "middleInitial": {
                            "description": "The middle initial of the patient.",
                            "type": "string",
                            "example": "M"
                          },
                          "lastName": {
                            "description": "The last name of the patient.",
                            "type": "string",
                            "example": "Smith"
                          },
                          "phone": {
                            "description": "The phone number of the patient.",
                            "type": "string",
                            "pattern": "^\\d{10}$",
                            "example": "5551234567"
                          }
                        },
                        "required": [
                          "firstName",
                          "lastName",
                          "phone"
                        ]
                      },
                      {
                        "type": "object",
                        "properties": {
                          "id": {
                            "description": "Patient ID.",
                            "example": 623,
                            "type": "number"
                          }
                        },
                        "required": [
                          "id"
                        ]
                      }
                    ]
                  }
                }
              }
            }
          }
        },
        "contacts": {
          "type": "array",
          "description": "Array of contacts",
          "items": {
            "type": "object",
            "description": "A Contact resource to identify employees who communicate with / manage Patients",
            "properties": {
              "id": {
                "type": "integer",
                "example": 53,
                "description": "id"
              },
              "displayName": {
                "type": "string",
                "example": "Your Nurse Carly",
                "description": "The patient-facing name used in text messages/calls"
              },
              "description": {
                "type": "string",
                "example": "Dr. Woodward (Internal Medicine)",
                "description": "The internal description to help differentiate contacts"
              },
              "email": {
                "type": "string",
                "description": "email"
              }
            }
          }
        },
        "patientIds": {
          "type": "array",
          "description": "Array of Patient Ids returned from triage",
          "items": {
            "type": "integer",
            "description": "Patient Id"
          }
        },
        "patients": {
          "type": "object",
          "description": "Returned triage data of patients per category.",
          "properties": {
            "danger": {
              "type": "object",
              "description": "Total set of TriageCategoryResults",
              "properties": {
                "page": {
                  "type": "integer",
                  "description": "Page of returned results."
                },
                "limit": {
                  "type": "integer",
                  "description": "Provided limit of returned results."
                },
                "total": {
                  "type": "integer",
                  "description": "Total number of returned TriageCategory results"
                },
                "results": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "description": "Returned results for a patient & category in the Triage including alerts and app specific data.",
                    "properties": {
                      "alerts": {
                        "type": "array",
                        "description": "A list of alerts that belong to the patient.",
                        "items": {
                          "type": "object",
                          "description": "An Alert resource to notify of changing patient conditions.",
                          "properties": {
                            "id": {
                              "type": "integer",
                              "example": 2543
                            },
                            "app": {
                              "type": "string",
                              "example": "epxcopd"
                            },
                            "body": {
                              "type": "string",
                              "example": "Patient Brionna has responded that she is having trouble breathing."
                            },
                            "contact": {
                              "type": "object",
                              "description": "A Contact resource to identify employees who communicate with / manage Patients",
                              "properties": {
                                "id": {
                                  "type": "integer",
                                  "example": 53,
                                  "description": "id"
                                },
                                "displayName": {
                                  "type": "string",
                                  "example": "Your Nurse Carly",
                                  "description": "The patient-facing name used in text messages/calls"
                                },
                                "description": {
                                  "type": "string",
                                  "example": "Dr. Woodward (Internal Medicine)",
                                  "description": "The internal description to help differentiate contacts"
                                },
                                "email": {
                                  "type": "string",
                                  "description": "email"
                                }
                              }
                            },
                            "createdAt": {
                              "type": "string",
                              "description": "When the alert was triggered (ISO timestamp)",
                              "example": "2019-02-01T19:37:00.000Z"
                            },
                            "isRead": {
                              "type": "boolean",
                              "description": "True if the alert has been addressed by a user"
                            },
                            "snoozedAt": {
                              "type": "string",
                              "description": "When the alert was snoozed (ISO timestamp)",
                              "example": "2019-02-18T10:00:00-06:00"
                            },
                            "snoozedUntil": {
                              "type": "string",
                              "description": "When the alert will no longer be snoozed (ISO timestamp)",
                              "example": "2019-02-25T10:00:09-06:00"
                            },
                            "patient": {
                              "description": "Epharmix patient resource.",
                              "allOf": [
                                {
                                  "type": "object",
                                  "description": "Expected parameters for constructing a Patient resource.",
                                  "properties": {
                                    "firstName": {
                                      "description": "The first name of the patient.",
                                      "type": "string",
                                      "example": "John"
                                    },
                                    "middleInitial": {
                                      "description": "The middle initial of the patient.",
                                      "type": "string",
                                      "example": "M"
                                    },
                                    "lastName": {
                                      "description": "The last name of the patient.",
                                      "type": "string",
                                      "example": "Smith"
                                    },
                                    "phone": {
                                      "description": "The phone number of the patient.",
                                      "type": "string",
                                      "pattern": "^\\d{10}$",
                                      "example": "5551234567"
                                    }
                                  },
                                  "required": [
                                    "firstName",
                                    "lastName",
                                    "phone"
                                  ]
                                },
                                {
                                  "type": "object",
                                  "properties": {
                                    "id": {
                                      "description": "Patient ID.",
                                      "example": 623,
                                      "type": "number"
                                    }
                                  },
                                  "required": [
                                    "id"
                                  ]
                                }
                              ]
                            }
                          }
                        }
                      },
                      "apps": {
                        "type": "object",
                        "description": "Triage data for every requested app the patient is enrolled in.",
                        "properties": {
                          "epx{appname}": {
                            "type": "object",
                            "description": "The app specific triage data for a patient.",
                            "properties": {
                              "alert": {
                                "type": "object",
                                "properties": {
                                  "total": {
                                    "type": "integer",
                                    "example": 8,
                                    "description": "The total amount of alerts triggered by this patient in the given timeframe"
                                  },
                                  "unread": {
                                    "type": "integer",
                                    "example": 2,
                                    "description": "The amount of unresolved alerts for the patient in the given timeframe"
                                  },
                                  "active": {
                                    "type": "integer",
                                    "example": 2,
                                    "description": "The amount of active alerts for the patient in the given timeframe"
                                  }
                                }
                              },
                              "category": {
                                "type": "integer",
                                "example": 1,
                                "description": "The current category for the corresponding app. 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive"
                              },
                              "contactId": {
                                "type": "integer",
                                "example": 81,
                                "description": "The ID of the patient's contact for this app"
                              },
                              "engagement": {
                                "type": "object",
                                "properties": {
                                  "responded": {
                                    "type": "integer",
                                    "description": "The amount of sessions the patient responded to for the corresponding app (in the set timeframe)",
                                    "example": 10
                                  },
                                  "total": {
                                    "type": "integer",
                                    "description": "The total amount of sessions the patient had for the corresponding app (in the set timeframe)",
                                    "example": 14
                                  },
                                  "rate": {
                                    "type": "number",
                                    "example": ".714285",
                                    "description": "The response rate for this app (in the set timeframe)"
                                  }
                                }
                              },
                              "schedule": {
                                "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
                                "allOf": [
                                  {
                                    "type": "object",
                                    "description": "Expected parameters for constructing an apps Schedule.",
                                    "properties": {
                                      "start": {
                                        "type": "string",
                                        "description": "The start date of the intervention",
                                        "example": "2019-02-05T10:00:09-06:00"
                                      },
                                      "end": {
                                        "type": "string",
                                        "description": "The end date of the intervention (optional)",
                                        "example": "2019-03-05T10:00:09-06:00"
                                      },
                                      "times": {
                                        "type": "array",
                                        "description": "The times that the patient would prefer to receive messages (24-hour time)",
                                        "example": [
                                          "09:00",
                                          "17:30"
                                        ],
                                        "items": {
                                          "type": "string"
                                        }
                                      },
                                      "days": {
                                        "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                                        "example": [
                                          1,
                                          3,
                                          5
                                        ],
                                        "type": "array",
                                        "items": {
                                          "type": "integer",
                                          "minimum": 0,
                                          "maximum": 6
                                        }
                                      },
                                      "method": {
                                        "type": "string",
                                        "description": "The method in which the patient will be contacted.",
                                        "enum": [
                                          "message",
                                          "call"
                                        ]
                                      },
                                      "tz": {
                                        "type": "string",
                                        "description": "The timezone of the schedule",
                                        "example": "US/Central"
                                      },
                                      "patientId": {
                                        "type": "integer",
                                        "description": "The ID of the patient who will receive the intervention",
                                        "example": 1638
                                      },
                                      "contactId": {
                                        "type": "integer",
                                        "description": "The ID of the contact that will be assigned to the intervention",
                                        "example": 76
                                      }
                                    }
                                  },
                                  {
                                    "type": "object",
                                    "properties": {
                                      "id": {
                                        "type": "integer",
                                        "example": 14
                                      },
                                      "isCanceled": {
                                        "type": "boolean",
                                        "description": "If true, the patient will not longer receive calls/messages"
                                      },
                                      "canceledAt": {
                                        "type": "string",
                                        "description": "The time that the schedule was canceled"
                                      },
                                      "patientId": {
                                        "type": "integer",
                                        "example": 372,
                                        "description": "The ID of the patient"
                                      },
                                      "contactId": {
                                        "type": "integer",
                                        "description": "The ID of the contact associated to this schedule",
                                        "example": 39
                                      }
                                    }
                                  }
                                ]
                              }
                            }
                          }
                        }
                      },
                      "category": {
                        "type": "integer",
                        "example": 2,
                        "description": "The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent"
                      },
                      "patient": {
                        "description": "Epharmix patient resource.",
                        "allOf": [
                          {
                            "type": "object",
                            "description": "Expected parameters for constructing a Patient resource.",
                            "properties": {
                              "firstName": {
                                "description": "The first name of the patient.",
                                "type": "string",
                                "example": "John"
                              },
                              "middleInitial": {
                                "description": "The middle initial of the patient.",
                                "type": "string",
                                "example": "M"
                              },
                              "lastName": {
                                "description": "The last name of the patient.",
                                "type": "string",
                                "example": "Smith"
                              },
                              "phone": {
                                "description": "The phone number of the patient.",
                                "type": "string",
                                "pattern": "^\\d{10}$",
                                "example": "5551234567"
                              }
                            },
                            "required": [
                              "firstName",
                              "lastName",
                              "phone"
                            ]
                          },
                          {
                            "type": "object",
                            "properties": {
                              "id": {
                                "description": "Patient ID.",
                                "example": 623,
                                "type": "number"
                              }
                            },
                            "required": [
                              "id"
                            ]
                          }
                        ]
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  ]
}
```

<h3 id="get-triage-information-about-patients-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Triage Data|Inline|

<h3 id="get-triage-information-about-patients-responseschema">Response Schema</h3>

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Get triage information about a single patient

`POST /triage/data_single/`

Triage data (single) accepts a patient id and a timeframe to query patient information such as associated contacts, triggered alerts, enrolled app statistics, and patient metadata.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "example": 150,
      "description": "the ID of the patient"
    },
    "start": {
      "type": "string",
      "example": "2019-01-18T10:22:09-06:00",
      "description": "the start date of the timeframe, ISO format"
    },
    "end": {
      "type": "string",
      "example": "2019-02-18T10:22:09-06:00",
      "description": "the end date of the timeframe, ISO format (optional)"
    },
    "tz": {
      "type": "string",
      "example": "US/Central",
      "description": "Timezone"
    }
  }
}
```

<h3 id="get-triage-information-about-a-single-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters to triage a patient.|
|» id|body|integer|false|the ID of the patient|
|» start|body|string|false|the start date of the timeframe, ISO format|
|» end|body|string|false|the end date of the timeframe, ISO format (optional)|
|» tz|body|string|false|Timezone|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "contacts": {
      "type": "array",
      "items": {
        "type": "object",
        "description": "A Contact resource to identify employees who communicate with / manage Patients",
        "properties": {
          "id": {
            "type": "integer",
            "example": 53,
            "description": "id"
          },
          "displayName": {
            "type": "string",
            "example": "Your Nurse Carly",
            "description": "The patient-facing name used in text messages/calls"
          },
          "description": {
            "type": "string",
            "example": "Dr. Woodward (Internal Medicine)",
            "description": "The internal description to help differentiate contacts"
          },
          "email": {
            "type": "string",
            "description": "email"
          }
        }
      }
    },
    "data": {
      "type": "object",
      "description": "Returned results for a patient & category in the Triage including alerts and app specific data.",
      "properties": {
        "alerts": {
          "type": "array",
          "description": "A list of alerts that belong to the patient.",
          "items": {
            "type": "object",
            "description": "An Alert resource to notify of changing patient conditions.",
            "properties": {
              "id": {
                "type": "integer",
                "example": 2543
              },
              "app": {
                "type": "string",
                "example": "epxcopd"
              },
              "body": {
                "type": "string",
                "example": "Patient Brionna has responded that she is having trouble breathing."
              },
              "contact": {
                "type": "object",
                "description": "A Contact resource to identify employees who communicate with / manage Patients",
                "properties": {
                  "id": {
                    "type": "integer",
                    "example": 53,
                    "description": "id"
                  },
                  "displayName": {
                    "type": "string",
                    "example": "Your Nurse Carly",
                    "description": "The patient-facing name used in text messages/calls"
                  },
                  "description": {
                    "type": "string",
                    "example": "Dr. Woodward (Internal Medicine)",
                    "description": "The internal description to help differentiate contacts"
                  },
                  "email": {
                    "type": "string",
                    "description": "email"
                  }
                }
              },
              "createdAt": {
                "type": "string",
                "description": "When the alert was triggered (ISO timestamp)",
                "example": "2019-02-01T19:37:00.000Z"
              },
              "isRead": {
                "type": "boolean",
                "description": "True if the alert has been addressed by a user"
              },
              "snoozedAt": {
                "type": "string",
                "description": "When the alert was snoozed (ISO timestamp)",
                "example": "2019-02-18T10:00:00-06:00"
              },
              "snoozedUntil": {
                "type": "string",
                "description": "When the alert will no longer be snoozed (ISO timestamp)",
                "example": "2019-02-25T10:00:09-06:00"
              },
              "patient": {
                "description": "Epharmix patient resource.",
                "allOf": [
                  {
                    "type": "object",
                    "description": "Expected parameters for constructing a Patient resource.",
                    "properties": {
                      "firstName": {
                        "description": "The first name of the patient.",
                        "type": "string",
                        "example": "John"
                      },
                      "middleInitial": {
                        "description": "The middle initial of the patient.",
                        "type": "string",
                        "example": "M"
                      },
                      "lastName": {
                        "description": "The last name of the patient.",
                        "type": "string",
                        "example": "Smith"
                      },
                      "phone": {
                        "description": "The phone number of the patient.",
                        "type": "string",
                        "pattern": "^\\d{10}$",
                        "example": "5551234567"
                      }
                    },
                    "required": [
                      "firstName",
                      "lastName",
                      "phone"
                    ]
                  },
                  {
                    "type": "object",
                    "properties": {
                      "id": {
                        "description": "Patient ID.",
                        "example": 623,
                        "type": "number"
                      }
                    },
                    "required": [
                      "id"
                    ]
                  }
                ]
              }
            }
          }
        },
        "apps": {
          "type": "object",
          "description": "Triage data for every requested app the patient is enrolled in.",
          "properties": {
            "epx{appname}": {
              "type": "object",
              "description": "The app specific triage data for a patient.",
              "properties": {
                "alert": {
                  "type": "object",
                  "properties": {
                    "total": {
                      "type": "integer",
                      "example": 8,
                      "description": "The total amount of alerts triggered by this patient in the given timeframe"
                    },
                    "unread": {
                      "type": "integer",
                      "example": 2,
                      "description": "The amount of unresolved alerts for the patient in the given timeframe"
                    },
                    "active": {
                      "type": "integer",
                      "example": 2,
                      "description": "The amount of active alerts for the patient in the given timeframe"
                    }
                  }
                },
                "category": {
                  "type": "integer",
                  "example": 1,
                  "description": "The current category for the corresponding app. 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive"
                },
                "contactId": {
                  "type": "integer",
                  "example": 81,
                  "description": "The ID of the patient's contact for this app"
                },
                "engagement": {
                  "type": "object",
                  "properties": {
                    "responded": {
                      "type": "integer",
                      "description": "The amount of sessions the patient responded to for the corresponding app (in the set timeframe)",
                      "example": 10
                    },
                    "total": {
                      "type": "integer",
                      "description": "The total amount of sessions the patient had for the corresponding app (in the set timeframe)",
                      "example": 14
                    },
                    "rate": {
                      "type": "number",
                      "example": ".714285",
                      "description": "The response rate for this app (in the set timeframe)"
                    }
                  }
                },
                "schedule": {
                  "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
                  "allOf": [
                    {
                      "type": "object",
                      "description": "Expected parameters for constructing an apps Schedule.",
                      "properties": {
                        "start": {
                          "type": "string",
                          "description": "The start date of the intervention",
                          "example": "2019-02-05T10:00:09-06:00"
                        },
                        "end": {
                          "type": "string",
                          "description": "The end date of the intervention (optional)",
                          "example": "2019-03-05T10:00:09-06:00"
                        },
                        "times": {
                          "type": "array",
                          "description": "The times that the patient would prefer to receive messages (24-hour time)",
                          "example": [
                            "09:00",
                            "17:30"
                          ],
                          "items": {
                            "type": "string"
                          }
                        },
                        "days": {
                          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                          "example": [
                            1,
                            3,
                            5
                          ],
                          "type": "array",
                          "items": {
                            "type": "integer",
                            "minimum": 0,
                            "maximum": 6
                          }
                        },
                        "method": {
                          "type": "string",
                          "description": "The method in which the patient will be contacted.",
                          "enum": [
                            "message",
                            "call"
                          ]
                        },
                        "tz": {
                          "type": "string",
                          "description": "The timezone of the schedule",
                          "example": "US/Central"
                        },
                        "patientId": {
                          "type": "integer",
                          "description": "The ID of the patient who will receive the intervention",
                          "example": 1638
                        },
                        "contactId": {
                          "type": "integer",
                          "description": "The ID of the contact that will be assigned to the intervention",
                          "example": 76
                        }
                      }
                    },
                    {
                      "type": "object",
                      "properties": {
                        "id": {
                          "type": "integer",
                          "example": 14
                        },
                        "isCanceled": {
                          "type": "boolean",
                          "description": "If true, the patient will not longer receive calls/messages"
                        },
                        "canceledAt": {
                          "type": "string",
                          "description": "The time that the schedule was canceled"
                        },
                        "patientId": {
                          "type": "integer",
                          "example": 372,
                          "description": "The ID of the patient"
                        },
                        "contactId": {
                          "type": "integer",
                          "description": "The ID of the contact associated to this schedule",
                          "example": 39
                        }
                      }
                    }
                  ]
                }
              }
            }
          }
        },
        "category": {
          "type": "integer",
          "example": 2,
          "description": "The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent"
        },
        "patient": {
          "description": "Epharmix patient resource.",
          "allOf": [
            {
              "type": "object",
              "description": "Expected parameters for constructing a Patient resource.",
              "properties": {
                "firstName": {
                  "description": "The first name of the patient.",
                  "type": "string",
                  "example": "John"
                },
                "middleInitial": {
                  "description": "The middle initial of the patient.",
                  "type": "string",
                  "example": "M"
                },
                "lastName": {
                  "description": "The last name of the patient.",
                  "type": "string",
                  "example": "Smith"
                },
                "phone": {
                  "description": "The phone number of the patient.",
                  "type": "string",
                  "pattern": "^\\d{10}$",
                  "example": "5551234567"
                }
              },
              "required": [
                "firstName",
                "lastName",
                "phone"
              ]
            },
            {
              "type": "object",
              "properties": {
                "id": {
                  "description": "Patient ID.",
                  "example": 623,
                  "type": "number"
                }
              },
              "required": [
                "id"
              ]
            }
          ]
        }
      }
    }
  }
}
```

<h3 id="get-triage-information-about-a-single-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Triage Data|Inline|

<h3 id="get-triage-information-about-a-single-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» contacts|[[ContactObject](#schemacontactobject)]|false|none|[A Contact resource to identify employees who communicate with / manage Patients]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

<h1 id="full-reference-epharmix-platform-api--alerts">Alerts</h1>

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

## Fetch data about alerts

`POST /alert/data/`

Based on the query parameters applied to the request body will return a list of Alerts matching the queried specification.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "tz": {
      "type": "string",
      "example": "US/Eastern",
      "description": "Timezone"
    },
    "limit": {
      "type": "integer",
      "maximum": 100,
      "example": 30,
      "description": "If set, will return this amount of alerts per page"
    },
    "page": {
      "type": "integer",
      "example": 5
    },
    "contactIds": {
      "type": "array",
      "description": "If set, will only return alerts from the designated contact's patients",
      "example": [
        13,
        15,
        16
      ],
      "items": {
        "type": "integer"
      }
    },
    "patientIds": {
      "type": "array",
      "description": "If set, will only return alerts from the designated patients",
      "example": [
        1321,
        1522,
        1618
      ],
      "items": {
        "type": "integer"
      }
    },
    "apps": {
      "type": "array",
      "description": "If set, will only return alerts from the specified apps",
      "example": [
        "epxcopd",
        "epxdiabetes"
      ],
      "items": {
        "type": "string"
      }
    },
    "unreadOnly": {
      "type": "boolean",
      "description": "If true, will only return alerts that have not been resolved."
    },
    "snoozedOnly": {
      "type": "boolean",
      "description": "If true, will only return alerts that are currently snoozed"
    },
    "start": {
      "type": "string",
      "description": "The start date of the alerts being fetched.",
      "example": "2019-01-18T10:22:09-06:00"
    },
    "end": {
      "type": "string",
      "description": "The end date of the alerts being fetched.",
      "example": "2019-02-05T10:22:09-06:00"
    }
  }
}
```

<h3 id="fetch-data-about-alerts-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters to query alerts|
|» tz|body|string|false|Timezone|
|» limit|body|integer|false|If set, will return this amount of alerts per page|
|» page|body|integer|false|none|
|» contactIds|body|[integer]|false|If set, will only return alerts from the designated contact's patients|
|» patientIds|body|[integer]|false|If set, will only return alerts from the designated patients|
|» apps|body|[string]|false|If set, will only return alerts from the specified apps|
|» unreadOnly|body|boolean|false|If true, will only return alerts that have not been resolved.|
|» snoozedOnly|body|boolean|false|If true, will only return alerts that are currently snoozed|
|» start|body|string|false|The start date of the alerts being fetched.|
|» end|body|string|false|The end date of the alerts being fetched.|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "alerts": {
      "type": "array",
      "description": "A series of matched Alert results.",
      "items": {
        "type": "object",
        "description": "An Alert resource to notify of changing patient conditions.",
        "properties": {
          "id": {
            "type": "integer",
            "example": 2543
          },
          "app": {
            "type": "string",
            "example": "epxcopd"
          },
          "body": {
            "type": "string",
            "example": "Patient Brionna has responded that she is having trouble breathing."
          },
          "contact": {
            "type": "object",
            "description": "A Contact resource to identify employees who communicate with / manage Patients",
            "properties": {
              "id": {
                "type": "integer",
                "example": 53,
                "description": "id"
              },
              "displayName": {
                "type": "string",
                "example": "Your Nurse Carly",
                "description": "The patient-facing name used in text messages/calls"
              },
              "description": {
                "type": "string",
                "example": "Dr. Woodward (Internal Medicine)",
                "description": "The internal description to help differentiate contacts"
              },
              "email": {
                "type": "string",
                "description": "email"
              }
            }
          },
          "createdAt": {
            "type": "string",
            "description": "When the alert was triggered (ISO timestamp)",
            "example": "2019-02-01T19:37:00.000Z"
          },
          "isRead": {
            "type": "boolean",
            "description": "True if the alert has been addressed by a user"
          },
          "snoozedAt": {
            "type": "string",
            "description": "When the alert was snoozed (ISO timestamp)",
            "example": "2019-02-18T10:00:00-06:00"
          },
          "snoozedUntil": {
            "type": "string",
            "description": "When the alert will no longer be snoozed (ISO timestamp)",
            "example": "2019-02-25T10:00:09-06:00"
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    }
  }
}
```

<h3 id="fetch-data-about-alerts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Alert Data|Inline|

<h3 id="fetch-data-about-alerts-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|A series of matched Alert results.|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Snooze alerts

`POST /alert/snooze/`

If an alert has not been resolved but needs to be addressed at a later date, our snooze alert endpoint can silence the alert until a specified time.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "tz": {
      "type": "string",
      "example": "US/Eastern",
      "description": "The timezone"
    },
    "reason": {
      "type": "string",
      "description": "The reason why the alerts have been snoozed",
      "example": "Patient has been asked to update medication, will check back in a week"
    },
    "snoozeUntil": {
      "type": "string",
      "description": "The time when the alert will no longer be snoozed",
      "example": "2019-02-15T10:22:09-06:00"
    },
    "ids": {
      "type": "array",
      "description": "The IDs of the alerts that will be snoozed",
      "example": [
        5722,
        5725,
        5729
      ],
      "items": {
        "type": "integer"
      }
    }
  }
}
```

<h3 id="snooze-alerts-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters for snoozing an alert active on your account.|
|» tz|body|string|false|The timezone|
|» reason|body|string|false|The reason why the alerts have been snoozed|
|» snoozeUntil|body|string|false|The time when the alert will no longer be snoozed|
|» ids|body|[integer]|false|The IDs of the alerts that will be snoozed|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "alerts": {
      "description": "Array of alert objects modified.",
      "type": "array",
      "items": {
        "type": "object",
        "description": "An Alert resource to notify of changing patient conditions.",
        "properties": {
          "id": {
            "type": "integer",
            "example": 2543
          },
          "app": {
            "type": "string",
            "example": "epxcopd"
          },
          "body": {
            "type": "string",
            "example": "Patient Brionna has responded that she is having trouble breathing."
          },
          "contact": {
            "type": "object",
            "description": "A Contact resource to identify employees who communicate with / manage Patients",
            "properties": {
              "id": {
                "type": "integer",
                "example": 53,
                "description": "id"
              },
              "displayName": {
                "type": "string",
                "example": "Your Nurse Carly",
                "description": "The patient-facing name used in text messages/calls"
              },
              "description": {
                "type": "string",
                "example": "Dr. Woodward (Internal Medicine)",
                "description": "The internal description to help differentiate contacts"
              },
              "email": {
                "type": "string",
                "description": "email"
              }
            }
          },
          "createdAt": {
            "type": "string",
            "description": "When the alert was triggered (ISO timestamp)",
            "example": "2019-02-01T19:37:00.000Z"
          },
          "isRead": {
            "type": "boolean",
            "description": "True if the alert has been addressed by a user"
          },
          "snoozedAt": {
            "type": "string",
            "description": "When the alert was snoozed (ISO timestamp)",
            "example": "2019-02-18T10:00:00-06:00"
          },
          "snoozedUntil": {
            "type": "string",
            "description": "When the alert will no longer be snoozed (ISO timestamp)",
            "example": "2019-02-25T10:00:09-06:00"
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    }
  }
}
```

<h3 id="snooze-alerts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Alerts Snoozed|Inline|

<h3 id="snooze-alerts-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|Array of alert objects modified.|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## Change the resolved (isRead) value for alerts

`POST /alert/set_status/`

If an alert has been completed, update the status of the Alert to isRead=true. Read alerts are silenced from the system.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "reason": {
      "type": "string",
      "description": "The reason why the alerts have been resolved",
      "example": "Patient has been asked to update medication, will check back in a week"
    },
    "status": {
      "type": "boolean",
      "description": "If true, the alerts will be marked as resolved (isRead). If false, will set to unresolved."
    },
    "ids": {
      "type": "array",
      "description": "The IDs of the alerts that will be resolved",
      "example": [
        5722,
        5725,
        5729
      ],
      "items": {
        "type": "integer"
      }
    }
  }
}
```

<h3 id="change-the-resolved-(isread)-value-for-alerts-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters to resolve an alert.|
|» reason|body|string|false|The reason why the alerts have been resolved|
|» status|body|boolean|false|If true, the alerts will be marked as resolved (isRead). If false, will set to unresolved.|
|» ids|body|[integer]|false|The IDs of the alerts that will be resolved|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "alerts": {
      "type": "array",
      "description": "Array of Alert objects affected.",
      "items": {
        "type": "object",
        "description": "An Alert resource to notify of changing patient conditions.",
        "properties": {
          "id": {
            "type": "integer",
            "example": 2543
          },
          "app": {
            "type": "string",
            "example": "epxcopd"
          },
          "body": {
            "type": "string",
            "example": "Patient Brionna has responded that she is having trouble breathing."
          },
          "contact": {
            "type": "object",
            "description": "A Contact resource to identify employees who communicate with / manage Patients",
            "properties": {
              "id": {
                "type": "integer",
                "example": 53,
                "description": "id"
              },
              "displayName": {
                "type": "string",
                "example": "Your Nurse Carly",
                "description": "The patient-facing name used in text messages/calls"
              },
              "description": {
                "type": "string",
                "example": "Dr. Woodward (Internal Medicine)",
                "description": "The internal description to help differentiate contacts"
              },
              "email": {
                "type": "string",
                "description": "email"
              }
            }
          },
          "createdAt": {
            "type": "string",
            "description": "When the alert was triggered (ISO timestamp)",
            "example": "2019-02-01T19:37:00.000Z"
          },
          "isRead": {
            "type": "boolean",
            "description": "True if the alert has been addressed by a user"
          },
          "snoozedAt": {
            "type": "string",
            "description": "When the alert was snoozed (ISO timestamp)",
            "example": "2019-02-18T10:00:00-06:00"
          },
          "snoozedUntil": {
            "type": "string",
            "description": "When the alert will no longer be snoozed (ISO timestamp)",
            "example": "2019-02-25T10:00:09-06:00"
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    }
  }
}
```

<h3 id="change-the-resolved-(isread)-value-for-alerts-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Alert Statuses Updated|Inline|

<h3 id="change-the-resolved-(isread)-value-for-alerts-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|Array of Alert objects affected.|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

<h1 id="full-reference-epharmix-platform-api--interventions">Interventions</h1>

The interventions resource and its associated actions

## EpxDiabetes: Create a schedule for the patient

`POST /epxdiabetes/create/`

Enroll the selected patient in an EpxDiabetes schedule. The provided data will dictate the schedule the patient receives communication on.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "properties": {
        "language": {
          "type": "string",
          "description": "The language of messages/calls to the patient",
          "enum": [
            "en",
            "es"
          ]
        },
        "isFixed": {
          "type": "boolean",
          "description": "If true, the message will be on a fixed frequency of your choice. If false, the patient will be on \"smart schedule\", with the frequency based on their responses."
        },
        "mode": {
          "type": "string",
          "description": "Only required if schedule is fixed. Sets the frequency of sessions.",
          "enum": [
            "T",
            "P",
            "D",
            "B",
            "W",
            "C",
            "Q"
          ],
          "example": "D"
        }
      }
    }
  ]
}
```

<h3 id="epxdiabetes:-create-a-schedule-for-the-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|Expected parameters to create an epxDiabetes schedule.|

> Example responses

> 201 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "type": "object",
        "description": "Expected parameters for constructing an apps Schedule.",
        "properties": {
          "start": {
            "type": "string",
            "description": "The start date of the intervention",
            "example": "2019-02-05T10:00:09-06:00"
          },
          "end": {
            "type": "string",
            "description": "The end date of the intervention (optional)",
            "example": "2019-03-05T10:00:09-06:00"
          },
          "times": {
            "type": "array",
            "description": "The times that the patient would prefer to receive messages (24-hour time)",
            "example": [
              "09:00",
              "17:30"
            ],
            "items": {
              "type": "string"
            }
          },
          "days": {
            "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
            "example": [
              1,
              3,
              5
            ],
            "type": "array",
            "items": {
              "type": "integer",
              "minimum": 0,
              "maximum": 6
            }
          },
          "method": {
            "type": "string",
            "description": "The method in which the patient will be contacted.",
            "enum": [
              "message",
              "call"
            ]
          },
          "tz": {
            "type": "string",
            "description": "The timezone of the schedule",
            "example": "US/Central"
          },
          "patientId": {
            "type": "integer",
            "description": "The ID of the patient who will receive the intervention",
            "example": 1638
          },
          "contactId": {
            "type": "integer",
            "description": "The ID of the contact that will be assigned to the intervention",
            "example": 76
          }
        }
      }
    }
  }
}
```

<h3 id="epxdiabetes:-create-a-schedule-for-the-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxDiabetes Schedule Created|Inline|

<h3 id="epxdiabetes:-create-a-schedule-for-the-patient-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» schedule|[[ScheduleParams](#schemascheduleparams)]|false|none|[Expected parameters for constructing an apps Schedule.]|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxDiabetes: Edit a schedule for a patient

`POST /epxdiabetes/edit/`

Update the schedule options for a patients intervention changing the days and rates in which the Epharmix system will outreach.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "description": "Auto generated schedule fields",
      "properties": {
        "id": {
          "type": "integer",
          "description": "The ID of the schedule being edited",
          "example": 681
        },
        "isFixed": {
          "type": "boolean",
          "description": "If true, the message will be on a fixed frequency of your choice. If false, the patient will be on \"smart schedule\", with the frequency based on their responses."
        },
        "mode": {
          "type": "string",
          "description": "Only required if schedule is fixed. Sets the frequency of sessions.",
          "enum": [
            "T",
            "P",
            "D",
            "B",
            "W",
            "C",
            "Q"
          ]
        }
      }
    }
  ]
}
```

<h3 id="epxdiabetes:-edit-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|Expected payload to update an apps schedule|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "description": "Response for successfully editing a schedule.",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "description": "Returns modified schedule.",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxdiabetes:-edit-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Schedule Edited|Inline|

<h3 id="epxdiabetes:-edit-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

*Response for successfully editing a schedule.*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» schedule|[allOf]|false|none|Returns modified schedule.|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxDiabetes: Cancel a schedule for a patient

`POST /epxdiabetes/cancel/`

Cancel the patients enrollment in the EpxDiabetes intervention, the patient will no longer receive SMS or Voice messages related to this intervention.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "description": "The ID of the schedule being canceled",
      "example": 681
    }
  }
}
```

<h3 id="epxdiabetes:-cancel-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Request body data expected to cancel an intervention.|
|» id|body|integer|false|The ID of the schedule being canceled|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "description": "Response for successfully cancelling a schedule.",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "description": "Returns modified schedule.",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxdiabetes:-cancel-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Schedule Canceled|Inline|

<h3 id="epxdiabetes:-cancel-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

*Response for successfully cancelling a schedule.*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» schedule|[allOf]|false|none|Returns modified schedule.|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxDiabetes: Get EpxDiabetes data for a patient.

`POST /epxdiabetes/data/`

Return EpxDiabetes specific session data for the selected patient.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "patient": {
      "type": "integer",
      "description": "The ID of the patient",
      "example": 2645
    }
  }
}
```

<h3 id="epxdiabetes:-get-epxdiabetes-data-for-a-patient.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected parameters to get patient session data.|
|» patient|body|integer|false|The ID of the patient|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "sessions": {
      "type": "array",
      "description": "A list of returned Session objects.",
      "items": {
        "type": "object",
        "properties": {
          "time": {
            "type": "string",
            "description": "The time of the session",
            "example": "2019-02-15T10:22:09-06:00"
          },
          "respondedAt": {
            "type": "string",
            "description": "If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.",
            "example": "2019-02-15T10:22:15-55:00"
          },
          "bloodSugar": {
            "type": "integer",
            "description": "The patient's blood sugar",
            "example": 125
          },
          "hasEaten": {
            "type": "boolean",
            "description": "If true, the patient ate within 2 hours of taking the blood sugar reading"
          },
          "isCanceled": {
            "type": "boolean",
            "description": "If true, the session was canceled"
          },
          "schedule": {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    }
  }
}
```

<h3 id="epxdiabetes:-get-epxdiabetes-data-for-a-patient.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Session Data|Inline|

<h3 id="epxdiabetes:-get-epxdiabetes-data-for-a-patient.-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» sessions|[object]|false|none|A list of returned Session objects.|
|»» time|string|false|none|The time of the session|
|»» respondedAt|string|false|none|If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.|
|»» bloodSugar|integer|false|none|The patient's blood sugar|
|»» hasEaten|boolean|false|none|If true, the patient ate within 2 hours of taking the blood sugar reading|
|»» isCanceled|boolean|false|none|If true, the session was canceled|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxHeartFailure: Create a schedule for a patient

`POST /epxheart/create/`

Enroll the selected patient in a EpxHeartFailure schedule. The provided data will dictate the schedule the patient receives communication on.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "properties": {
        "isFixed": {
          "type": "boolean",
          "description": "If true, the message will be on a fixed frequency of your choice. If false, the patient will be on \"smart schedule\", with the frequency based on their responses."
        },
        "mode": {
          "type": "string",
          "description": "Only required if schedule is fixed. Sets the frequency of sessions.",
          "enum": [
            "D",
            "W"
          ],
          "example": "D"
        },
        "hasScale": {
          "type": "boolean",
          "description": "If true, the patient indicated that they own a scale."
        }
      }
    }
  ]
}
```

<h3 id="epxheartfailure:-create-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|Expected body parameters to create an EpxHeartRisk schedule.|

> Example responses

> 201 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "description": "Returned Schedule Objects",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxheartfailure:-create-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxHeartFailure Schedule Created|Inline|

<h3 id="epxheartfailure:-create-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» schedule|[allOf]|false|none|Returned Schedule Objects|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxHeartFailure: Edit an EpxHeartFailure schedule for a patient

`POST /epxheart/edit/`

Update the schedule options for a intervention, changing the days and rates in which the Epharmix system will outreach to the Patient.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "description": "Additional configurable schedule options.",
      "properties": {
        "id": {
          "type": "integer",
          "description": "The ID of the schedule being edited",
          "example": 681
        },
        "isFixed": {
          "type": "boolean",
          "description": "If true, the message will be on a fixed frequency of your choice. If false, the patient will be on \"smart schedule\", with the frequency based on their responses."
        },
        "mode": {
          "type": "string",
          "description": "Only required if schedule is fixed. Sets the frequency of sessions.",
          "enum": [
            "T",
            "D",
            "B",
            "C"
          ]
        },
        "hasScale": {
          "type": "boolean",
          "description": "If true, the patient indicated that they own a scale."
        }
      }
    }
  ]
}
```

<h3 id="epxheartfailure:-edit-an-epxheartfailure-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|Expected body parameters to edit an EpxHeartFailure schedule.|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxheartfailure:-edit-an-epxheartfailure-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHeartFailure Schedule Edited|Inline|

<h3 id="epxheartfailure:-edit-an-epxheartfailure-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» schedule|[allOf]|false|none|[The schedule controls the times and rate at which its associated app will communicate with the patient.]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxHeartFailure: Cancel a schedule for a patient

`POST /epxheart/cancel/`

Cancel enrollment in the EpxHeartFailure intervention, the patient will no longer receive SMS or Voice messages related to this intervention.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "description": "The ID of the schedule being canceled",
      "example": 681
    }
  }
}
```

<h3 id="epxheartfailure:-cancel-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected body parameters to canecl an EpxHeartFailure schedule.|
|» id|body|integer|false|The ID of the schedule being canceled|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxheartfailure:-cancel-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHeartFailure Schedule Canceled|Inline|

<h3 id="epxheartfailure:-cancel-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» schedule|[allOf]|false|none|[The schedule controls the times and rate at which its associated app will communicate with the patient.]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxHeartFailure: Get EpxHeartFailure data for a patient

`POST /epxheart/data/`

Return EpxHeartFailure specific session data for the selected patient.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "patient": {
      "type": "integer",
      "description": "The ID of the patient",
      "example": 2645
    }
  }
}
```

<h3 id="epxheartfailure:-get-epxheartfailure-data-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|Expected body parameters to retrieve ExpHeartFailure session information|
|» patient|body|integer|false|The ID of the patient|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "description": "Status Code",
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "sessions": {
      "type": "array",
      "description": "Returned Sessions",
      "items": {
        "type": "object",
        "description": "EpxHeartFailure session data for the requested Patient",
        "properties": {
          "time": {
            "type": "string",
            "description": "The time of the session",
            "example": "2019-02-15T10:22:09-06:00"
          },
          "respondedAt": {
            "type": "string",
            "description": "If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.",
            "example": "2019-02-15T10:22:15-55:00"
          },
          "weight": {
            "type": "integer",
            "description": "The patient's weight, in pounds",
            "example": 190
          },
          "dpe": {
            "type": "integer",
            "description": "Patient experiencing dyspnea or pedal edema. -1: worse, 0: same, 1: better",
            "example": 1
          },
          "orthopnea": {
            "type": "integer",
            "description": "Patient experiencing orthopnea. -1: worse, 0: same, 1: better",
            "example": 1
          },
          "edema": {
            "type": "integer",
            "description": "-1: more, 0: same, 1: less",
            "example": 0
          },
          "isCanceled": {
            "type": "boolean",
            "description": "If true, the session was canceled"
          },
          "schedule": {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    }
  }
}
```

<h3 id="epxheartfailure:-get-epxheartfailure-data-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHeartFailure Session Data|Inline|

<h3 id="epxheartfailure:-get-epxheartfailure-data-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|Status Code|
|» sessions|[object]|false|none|Returned Sessions|
|»» time|string|false|none|The time of the session|
|»» respondedAt|string|false|none|If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.|
|»» weight|integer|false|none|The patient's weight, in pounds|
|»» dpe|integer|false|none|Patient experiencing dyspnea or pedal edema. -1: worse, 0: same, 1: better|
|»» orthopnea|integer|false|none|Patient experiencing orthopnea. -1: worse, 0: same, 1: better|
|»» edema|integer|false|none|-1: more, 0: same, 1: less|
|»» isCanceled|boolean|false|none|If true, the session was canceled|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxHypertension: Create a schedule for a patient.

`POST /epxhyper/create/`

Enroll the selected patient in a EpxHypertension schedule. The provided data will dictate the schedule the patient receives communication on.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "properties": {
        "language": {
          "type": "string",
          "description": "The language of messages/calls to the patient",
          "enum": [
            "en",
            "es"
          ]
        },
        "isFixed": {
          "type": "boolean",
          "description": "If true, the message will be on a fixed frequency of your choice. If false, the patient will be on \"smart schedule\", with the frequency based on their responses."
        },
        "mode": {
          "type": "string",
          "description": "Only required if schedule is fixed. Sets the frequency of sessions.",
          "enum": [
            "T",
            "D",
            "B",
            "C"
          ],
          "example": "D"
        },
        "hasMedInstruction": {
          "type": "boolean",
          "description": "If true, the patient will be asked about taking their medication when the blood pressure is critical."
        }
      }
    }
  ]
}
```

<h3 id="epxhypertension:-create-a-schedule-for-a-patient.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 201 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxhypertension:-create-a-schedule-for-a-patient.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxHypertension Schedule Created|Inline|

<h3 id="epxhypertension:-create-a-schedule-for-a-patient.-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|[The schedule controls the times and rate at which its associated app will communicate with the patient.]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxHypertension: Edit a schedule for a patient

`POST /epxhyper/edit/`

Update the schedule options for a patients intervention changing the days and rates in which the Epharmix system will outreach.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "properties": {
        "id": {
          "type": "integer",
          "description": "The ID of the schedule being edited",
          "example": 681
        },
        "isFixed": {
          "type": "boolean",
          "description": "If true, the message will be on a fixed frequency of your choice. If false, the patient will be on \"smart schedule\", with the frequency based on their responses."
        },
        "mode": {
          "type": "string",
          "description": "Only required if schedule is fixed. Sets the frequency of sessions.",
          "enum": [
            "T",
            "D",
            "B",
            "C"
          ]
        },
        "hasMedInstruction": {
          "type": "boolean",
          "description": "If true, the patient will be asked about taking their medication when the blood pressure is critical."
        }
      }
    }
  ]
}
```

<h3 id="epxhypertension:-edit-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxhypertension:-edit-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHypertension Schedule Edited|Inline|

<h3 id="epxhypertension:-edit-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|[The schedule controls the times and rate at which its associated app will communicate with the patient.]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxHypertension: Cancel a schedule for a patient

`POST /epxhyper/cancel/`

Cancel enrollment in the EpxHypertension intervention, the patient will no longer receive SMS or Voice messages related to this intervention.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "description": "The ID of the schedule being canceled",
      "example": 681
    }
  }
}
```

<h3 id="epxhypertension:-cancel-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|integer|false|The ID of the schedule being canceled|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxhypertension:-cancel-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHypertension Schedule Canceled|Inline|

<h3 id="epxhypertension:-cancel-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|[The schedule controls the times and rate at which its associated app will communicate with the patient.]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxHypertension: Get EpxHypertension data for a patient

`POST /epxhyper/data/`

Return EpxHypertension specific session data for the selected patient.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "patient": {
      "type": "integer",
      "description": "The ID of the patient",
      "example": 2645
    }
  }
}
```

<h3 id="epxhypertension:-get-epxhypertension-data-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» patient|body|integer|false|The ID of the patient|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "sessions": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "time": {
            "type": "string",
            "description": "The time of the session",
            "example": "2019-02-15T10:22:09-06:00"
          },
          "respondedAt": {
            "type": "string",
            "description": "If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.",
            "example": "2019-02-15T10:22:15-55:00"
          },
          "upper": {
            "type": "integer",
            "description": "The patient's upper (systolic) blood pressure",
            "example": 110
          },
          "lower": {
            "type": "integer",
            "description": "The patient's lower (diastolic) blood pressure",
            "example": 80
          },
          "tookMedication": {
            "type": "boolean",
            "description": "If true, the patient has followed their doctor's medication instructions for the day"
          },
          "isCanceled": {
            "type": "boolean",
            "description": "If true, the session was canceled"
          },
          "schedule": {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    }
  }
}
```

<h3 id="epxhypertension:-get-epxhypertension-data-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHypertension Session Data|Inline|

<h3 id="epxhypertension:-get-epxhypertension-data-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» sessions|[object]|false|none|none|
|»» time|string|false|none|The time of the session|
|»» respondedAt|string|false|none|If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.|
|»» upper|integer|false|none|The patient's upper (systolic) blood pressure|
|»» lower|integer|false|none|The patient's lower (diastolic) blood pressure|
|»» tookMedication|boolean|false|none|If true, the patient has followed their doctor's medication instructions for the day|
|»» isCanceled|boolean|false|none|If true, the session was canceled|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxCopd: Create a schedule for a patient

`POST /epxcopd/create/`

Enroll the selected patient in a EpxCOPD schedule. The provided data will dictate the schedule the patient receives communication on.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "properties": {
        "language": {
          "type": "string",
          "description": "The language of messages/calls to the patient",
          "enum": [
            "en",
            "es"
          ]
        },
        "isFixed": {
          "type": "boolean",
          "description": "If true, the message will be on a fixed frequency of your choice. If false, the patient will be on \"smart schedule\", with the frequency based on their responses."
        },
        "mode": {
          "type": "string",
          "description": "Only required if schedule is fixed. Sets the frequency of sessions.",
          "enum": [
            "D",
            "B",
            "W"
          ],
          "example": "D"
        },
        "shouldAskSymptoms": {
          "type": "boolean",
          "description": "If true, the patient will be asked about symptoms other than just their difficulty breathing."
        }
      }
    }
  ]
}
```

<h3 id="epxcopd:-create-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 201 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxcopd:-create-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxCOPD Schedule Created|Inline|

<h3 id="epxcopd:-create-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|[The schedule controls the times and rate at which its associated app will communicate with the patient.]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxCopd: Edit a schedule for a patient

`POST /epxcopd/edit/`

Update the schedule options for a patients intervention changing the days and rates in which the Epharmix system will outreach.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "properties": {
        "id": {
          "type": "integer",
          "description": "The ID of the schedule being edited",
          "example": 681
        },
        "isFixed": {
          "type": "boolean",
          "description": "If true, the message will be on a fixed frequency of your choice. If false, the patient will be on \"smart schedule\", with the frequency based on their responses."
        },
        "mode": {
          "type": "string",
          "description": "Only required if schedule is fixed. Sets the frequency of sessions.",
          "enum": [
            "T",
            "D",
            "B",
            "C"
          ]
        },
        "shouldAskSymptoms": {
          "type": "boolean",
          "description": "If true, the patient will be asked about symptoms other than just their difficulty breathing."
        }
      }
    }
  ]
}
```

<h3 id="epxcopd:-edit-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxcopd:-edit-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxCOPD Schedule Edited|Inline|

<h3 id="epxcopd:-edit-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|[The schedule controls the times and rate at which its associated app will communicate with the patient.]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxCopd: Cancel a schedule for a patient

`POST /epxcopd/cancel/`

Cancel enrollment in the EpxCOPD intervention, the patient will no longer receive SMS or Voice messages related to this intervention.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "description": "The ID of the schedule being canceled",
      "example": 681
    }
  }
}
```

<h3 id="epxcopd:-cancel-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|integer|false|The ID of the schedule being canceled|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "schedule": {
      "type": "array",
      "items": {
        "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
        "allOf": [
          {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 14
              },
              "isCanceled": {
                "type": "boolean",
                "description": "If true, the patient will not longer receive calls/messages"
              },
              "canceledAt": {
                "type": "string",
                "description": "The time that the schedule was canceled"
              },
              "patientId": {
                "type": "integer",
                "example": 372,
                "description": "The ID of the patient"
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact associated to this schedule",
                "example": 39
              }
            }
          }
        ]
      }
    }
  }
}
```

<h3 id="epxcopd:-cancel-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxCOPD Schedule Canceled|Inline|

<h3 id="epxcopd:-cancel-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|[The schedule controls the times and rate at which its associated app will communicate with the patient.]|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

## EpxCOPD: Get EpxCOPD data for a patient

`POST /epxcopd/data/`

Return EpxDiabetes specific session data for the selected patient.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "patient": {
      "type": "integer",
      "description": "The ID of the patient",
      "example": 2645
    }
  }
}
```

<h3 id="epxcopd:-get-epxcopd-data-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» patient|body|integer|false|The ID of the patient|

> Example responses

> 200 Response

```json
{
  "type": "object",
  "properties": {
    "status": {
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "sessions": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "time": {
            "type": "string",
            "description": "The time of the session",
            "example": "2019-02-15T10:22:09-06:00"
          },
          "respondedAt": {
            "type": "string",
            "description": "If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.",
            "example": "2019-02-15T10:22:15-55:00"
          },
          "breathing": {
            "type": "integer",
            "description": "-1: worse, 0: same, 1: better",
            "example": 1
          },
          "coughing": {
            "type": "integer",
            "description": "-1: worse, 0: same, 1: better",
            "example": 1
          },
          "sputum": {
            "type": "integer",
            "description": "1: no change, 2: more, 3: changed color",
            "example": 3
          },
          "isCanceled": {
            "type": "boolean",
            "description": "If true, the session was canceled"
          },
          "schedule": {
            "type": "object",
            "description": "Expected parameters for constructing an apps Schedule.",
            "properties": {
              "start": {
                "type": "string",
                "description": "The start date of the intervention",
                "example": "2019-02-05T10:00:09-06:00"
              },
              "end": {
                "type": "string",
                "description": "The end date of the intervention (optional)",
                "example": "2019-03-05T10:00:09-06:00"
              },
              "times": {
                "type": "array",
                "description": "The times that the patient would prefer to receive messages (24-hour time)",
                "example": [
                  "09:00",
                  "17:30"
                ],
                "items": {
                  "type": "string"
                }
              },
              "days": {
                "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                "example": [
                  1,
                  3,
                  5
                ],
                "type": "array",
                "items": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 6
                }
              },
              "method": {
                "type": "string",
                "description": "The method in which the patient will be contacted.",
                "enum": [
                  "message",
                  "call"
                ]
              },
              "tz": {
                "type": "string",
                "description": "The timezone of the schedule",
                "example": "US/Central"
              },
              "patientId": {
                "type": "integer",
                "description": "The ID of the patient who will receive the intervention",
                "example": 1638
              },
              "contactId": {
                "type": "integer",
                "description": "The ID of the contact that will be assigned to the intervention",
                "example": 76
              }
            }
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    }
  }
}
```

<h3 id="epxcopd:-get-epxcopd-data-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxCOPD Session Data|Inline|

<h3 id="epxcopd:-get-epxcopd-data-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» sessions|[object]|false|none|none|
|»» time|string|false|none|The time of the session|
|»» respondedAt|string|false|none|If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.|
|»» breathing|integer|false|none|-1: worse, 0: same, 1: better|
|»» coughing|integer|false|none|-1: worse, 0: same, 1: better|
|»» sputum|integer|false|none|1: no change, 2: more, 3: changed color|
|»» isCanceled|boolean|false|none|If true, the session was canceled|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="warning">
To perform this operation, you must be authenticated by means of one of the following methods:
BearerAuth
</aside>

# Schemas

<h2 id="tocSpatientparams">PatientParams</h2>

<a id="schemapatientparams"></a>

```json
{
  "type": "object",
  "description": "Expected parameters for constructing a Patient resource.",
  "properties": {
    "firstName": {
      "description": "The first name of the patient.",
      "type": "string",
      "example": "John"
    },
    "middleInitial": {
      "description": "The middle initial of the patient.",
      "type": "string",
      "example": "M"
    },
    "lastName": {
      "description": "The last name of the patient.",
      "type": "string",
      "example": "Smith"
    },
    "phone": {
      "description": "The phone number of the patient.",
      "type": "string",
      "pattern": "^\\d{10}$",
      "example": "5551234567"
    }
  },
  "required": [
    "firstName",
    "lastName",
    "phone"
  ]
}

```

*Expected parameters for constructing a Patient resource.*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|firstName|string|true|none|The first name of the patient.|
|middleInitial|string|false|none|The middle initial of the patient.|
|lastName|string|true|none|The last name of the patient.|
|phone|string|true|none|The phone number of the patient.|

<h2 id="tocSpatientobject">PatientObject</h2>

<a id="schemapatientobject"></a>

```json
{
  "description": "Epharmix patient resource.",
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing a Patient resource.",
      "properties": {
        "firstName": {
          "description": "The first name of the patient.",
          "type": "string",
          "example": "John"
        },
        "middleInitial": {
          "description": "The middle initial of the patient.",
          "type": "string",
          "example": "M"
        },
        "lastName": {
          "description": "The last name of the patient.",
          "type": "string",
          "example": "Smith"
        },
        "phone": {
          "description": "The phone number of the patient.",
          "type": "string",
          "pattern": "^\\d{10}$",
          "example": "5551234567"
        }
      },
      "required": [
        "firstName",
        "lastName",
        "phone"
      ]
    },
    {
      "type": "object",
      "properties": {
        "id": {
          "description": "Patient ID.",
          "example": 623,
          "type": "number"
        }
      },
      "required": [
        "id"
      ]
    }
  ]
}

```

*Epharmix patient resource.*

### Properties

*allOf*

*and*

<h2 id="tocStriagecategory">TriageCategory</h2>

<a id="schematriagecategory"></a>

```json
{
  "description": "Filters to tune returned patient results in each category.",
  "type": "object",
  "properties": {
    "page": {
      "type": "integer",
      "minimum": 0,
      "description": "The requested page of triage data to return."
    },
    "limit": {
      "type": "integer",
      "minimum": 0,
      "maximum": 100,
      "example": 20,
      "description": "The limit of patients objects to return."
    },
    "apps": {
      "type": "array",
      "items": {
        "type": "string",
        "pattern": "^epx[a-z]+$"
      },
      "minItems": 1,
      "uniqueItems": true,
      "example": [
        "epxcopd",
        "epxdiabetes"
      ],
      "description": "Limit returned results to only include patients enrolled in provided apps."
    },
    "order": {
      "type": "array",
      "items": {
        "oneOf": [
          {
            "type": "string",
            "enum": [
              "alerts",
              "addressedAt",
              "snoozedUntil",
              "lastName",
              "enrollDate"
            ]
          },
          {
            "type": "string",
            "enum": [
              "asc",
              "desc"
            ]
          }
        ]
      },
      "minItems": 1,
      "maxItems": 2,
      "example": [
        "addressedAt",
        "desc"
      ],
      "description": "Define the sort attribute and order of returned patients."
    }
  },
  "required": [
    "page",
    "limit"
  ]
}

```

*Filters to tune returned patient results in each category.*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|page|integer|true|none|The requested page of triage data to return.|
|limit|integer|true|none|The limit of patients objects to return.|
|apps|[string]|false|none|Limit returned results to only include patients enrolled in provided apps.|
|order|[oneOf]|false|none|Define the sort attribute and order of returned patients.|

*oneOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

*xor*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» *anonymous*|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|*anonymous*|alerts|
|*anonymous*|addressedAt|
|*anonymous*|snoozedUntil|
|*anonymous*|lastName|
|*anonymous*|enrollDate|
|*anonymous*|asc|
|*anonymous*|desc|

<h2 id="tocStriageoptions">TriageOptions</h2>

<a id="schematriageoptions"></a>

```json
{
  "type": "object",
  "description": "Payload options to customize a patient triage.",
  "properties": {
    "patients": {
      "type": "object",
      "description": "Define the lists of patients returned in the triage. Can be configured on a per patient status basis.",
      "properties": {
        "danger": {
          "description": "Filters to tune returned patient results in each category.",
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0,
              "description": "The requested page of triage data to return."
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20,
              "description": "The limit of patients objects to return."
            },
            "apps": {
              "type": "array",
              "items": {
                "type": "string",
                "pattern": "^epx[a-z]+$"
              },
              "minItems": 1,
              "uniqueItems": true,
              "example": [
                "epxcopd",
                "epxdiabetes"
              ],
              "description": "Limit returned results to only include patients enrolled in provided apps."
            },
            "order": {
              "type": "array",
              "items": {
                "oneOf": [
                  {
                    "type": "string",
                    "enum": [
                      "alerts",
                      "addressedAt",
                      "snoozedUntil",
                      "lastName",
                      "enrollDate"
                    ]
                  },
                  {
                    "type": "string",
                    "enum": [
                      "asc",
                      "desc"
                    ]
                  }
                ]
              },
              "minItems": 1,
              "maxItems": 2,
              "example": [
                "addressedAt",
                "desc"
              ],
              "description": "Define the sort attribute and order of returned patients."
            }
          },
          "required": [
            "page",
            "limit"
          ]
        },
        "warning": {
          "description": "Filters to tune returned patient results in each category.",
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0,
              "description": "The requested page of triage data to return."
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20,
              "description": "The limit of patients objects to return."
            },
            "apps": {
              "type": "array",
              "items": {
                "type": "string",
                "pattern": "^epx[a-z]+$"
              },
              "minItems": 1,
              "uniqueItems": true,
              "example": [
                "epxcopd",
                "epxdiabetes"
              ],
              "description": "Limit returned results to only include patients enrolled in provided apps."
            },
            "order": {
              "type": "array",
              "items": {
                "oneOf": [
                  {
                    "type": "string",
                    "enum": [
                      "alerts",
                      "addressedAt",
                      "snoozedUntil",
                      "lastName",
                      "enrollDate"
                    ]
                  },
                  {
                    "type": "string",
                    "enum": [
                      "asc",
                      "desc"
                    ]
                  }
                ]
              },
              "minItems": 1,
              "maxItems": 2,
              "example": [
                "addressedAt",
                "desc"
              ],
              "description": "Define the sort attribute and order of returned patients."
            }
          },
          "required": [
            "page",
            "limit"
          ]
        },
        "success": {
          "description": "Filters to tune returned patient results in each category.",
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0,
              "description": "The requested page of triage data to return."
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20,
              "description": "The limit of patients objects to return."
            },
            "apps": {
              "type": "array",
              "items": {
                "type": "string",
                "pattern": "^epx[a-z]+$"
              },
              "minItems": 1,
              "uniqueItems": true,
              "example": [
                "epxcopd",
                "epxdiabetes"
              ],
              "description": "Limit returned results to only include patients enrolled in provided apps."
            },
            "order": {
              "type": "array",
              "items": {
                "oneOf": [
                  {
                    "type": "string",
                    "enum": [
                      "alerts",
                      "addressedAt",
                      "snoozedUntil",
                      "lastName",
                      "enrollDate"
                    ]
                  },
                  {
                    "type": "string",
                    "enum": [
                      "asc",
                      "desc"
                    ]
                  }
                ]
              },
              "minItems": 1,
              "maxItems": 2,
              "example": [
                "addressedAt",
                "desc"
              ],
              "description": "Define the sort attribute and order of returned patients."
            }
          },
          "required": [
            "page",
            "limit"
          ]
        },
        "unresponsive": {
          "description": "Filters to tune returned patient results in each category.",
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0,
              "description": "The requested page of triage data to return."
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20,
              "description": "The limit of patients objects to return."
            },
            "apps": {
              "type": "array",
              "items": {
                "type": "string",
                "pattern": "^epx[a-z]+$"
              },
              "minItems": 1,
              "uniqueItems": true,
              "example": [
                "epxcopd",
                "epxdiabetes"
              ],
              "description": "Limit returned results to only include patients enrolled in provided apps."
            },
            "order": {
              "type": "array",
              "items": {
                "oneOf": [
                  {
                    "type": "string",
                    "enum": [
                      "alerts",
                      "addressedAt",
                      "snoozedUntil",
                      "lastName",
                      "enrollDate"
                    ]
                  },
                  {
                    "type": "string",
                    "enum": [
                      "asc",
                      "desc"
                    ]
                  }
                ]
              },
              "minItems": 1,
              "maxItems": 2,
              "example": [
                "addressedAt",
                "desc"
              ],
              "description": "Define the sort attribute and order of returned patients."
            }
          },
          "required": [
            "page",
            "limit"
          ]
        }
      }
    },
    "patientIds": {
      "type": "object",
      "description": "Return a list of patient ids with the triage results.",
      "properties": {
        "apps": {
          "type": "array",
          "items": {
            "type": "string",
            "pattern": "^epx[a-z]+$"
          },
          "minItems": 1,
          "uniqueItems": true,
          "example": [
            "epxdiabetes",
            "epxheart",
            "epxcopd"
          ],
          "description": "Limit returned results to only include patients enrolled in provided apps."
        }
      }
    },
    "alerts": {
      "type": "object",
      "description": "Define the list of alerts returned in the triage.",
      "properties": {
        "page": {
          "type": "integer",
          "minimum": 0,
          "description": "The requested page of alert data to return."
        },
        "limit": {
          "type": "integer",
          "minimum": 0,
          "maximum": 100,
          "example": 20,
          "description": "The limit of alerts to return."
        },
        "unreadOnly": {
          "type": "boolean",
          "example": false,
          "description": "If true, return only unread alerts. (default: False)"
        },
        "apps": {
          "type": "array",
          "items": {
            "type": "string",
            "pattern": "^epx[a-z]+$"
          },
          "minItems": 1,
          "uniqueItems": true,
          "example": [
            "epxdiabetes",
            "epxheart",
            "epxcopd"
          ],
          "description": "Filter to alerts triggered by provided apps."
        },
        "order": {
          "type": "string",
          "pattern": "^(asc)|(desc)$",
          "example": "desc",
          "description": "Order to sort returned alerts, orders by created date."
        }
      },
      "required": [
        "page",
        "limit"
      ]
    }
  }
}

```

*Payload options to customize a patient triage.*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|patients|object|false|none|Define the lists of patients returned in the triage. Can be configured on a per patient status basis.|
|patientIds|object|false|none|Return a list of patient ids with the triage results.|
|» apps|[string]|false|none|Limit returned results to only include patients enrolled in provided apps.|
|alerts|object|false|none|Define the list of alerts returned in the triage.|
|» page|integer|true|none|The requested page of alert data to return.|
|» limit|integer|true|none|The limit of alerts to return.|
|» unreadOnly|boolean|false|none|If true, return only unread alerts. (default: False)|
|» apps|[string]|false|none|Filter to alerts triggered by provided apps.|
|» order|string|false|none|Order to sort returned alerts, orders by created date.|

<h2 id="tocStriageobjects">TriageObjects</h2>

<a id="schematriageobjects"></a>

```json
{
  "type": "object",
  "description": "Triage payload, depending on the supplied request may contain information on alerts, contacts, & patients.",
  "properties": {
    "alerts": {
      "type": "object",
      "properties": {
        "limit": {
          "type": "integer",
          "description": "The limit set for returned results."
        },
        "page": {
          "type": "integer",
          "description": "The current page of returned results."
        },
        "total": {
          "type": "integer",
          "description": "The total amount of results without the limit restriction"
        },
        "results": {
          "type": "array",
          "description": "Array of results",
          "items": {
            "type": "object",
            "description": "An Alert resource to notify of changing patient conditions.",
            "properties": {
              "id": {
                "type": "integer",
                "example": 2543
              },
              "app": {
                "type": "string",
                "example": "epxcopd"
              },
              "body": {
                "type": "string",
                "example": "Patient Brionna has responded that she is having trouble breathing."
              },
              "contact": {
                "type": "object",
                "description": "A Contact resource to identify employees who communicate with / manage Patients",
                "properties": {
                  "id": {
                    "type": "integer",
                    "example": 53,
                    "description": "id"
                  },
                  "displayName": {
                    "type": "string",
                    "example": "Your Nurse Carly",
                    "description": "The patient-facing name used in text messages/calls"
                  },
                  "description": {
                    "type": "string",
                    "example": "Dr. Woodward (Internal Medicine)",
                    "description": "The internal description to help differentiate contacts"
                  },
                  "email": {
                    "type": "string",
                    "description": "email"
                  }
                }
              },
              "createdAt": {
                "type": "string",
                "description": "When the alert was triggered (ISO timestamp)",
                "example": "2019-02-01T19:37:00.000Z"
              },
              "isRead": {
                "type": "boolean",
                "description": "True if the alert has been addressed by a user"
              },
              "snoozedAt": {
                "type": "string",
                "description": "When the alert was snoozed (ISO timestamp)",
                "example": "2019-02-18T10:00:00-06:00"
              },
              "snoozedUntil": {
                "type": "string",
                "description": "When the alert will no longer be snoozed (ISO timestamp)",
                "example": "2019-02-25T10:00:09-06:00"
              },
              "patient": {
                "description": "Epharmix patient resource.",
                "allOf": [
                  {
                    "type": "object",
                    "description": "Expected parameters for constructing a Patient resource.",
                    "properties": {
                      "firstName": {
                        "description": "The first name of the patient.",
                        "type": "string",
                        "example": "John"
                      },
                      "middleInitial": {
                        "description": "The middle initial of the patient.",
                        "type": "string",
                        "example": "M"
                      },
                      "lastName": {
                        "description": "The last name of the patient.",
                        "type": "string",
                        "example": "Smith"
                      },
                      "phone": {
                        "description": "The phone number of the patient.",
                        "type": "string",
                        "pattern": "^\\d{10}$",
                        "example": "5551234567"
                      }
                    },
                    "required": [
                      "firstName",
                      "lastName",
                      "phone"
                    ]
                  },
                  {
                    "type": "object",
                    "properties": {
                      "id": {
                        "description": "Patient ID.",
                        "example": 623,
                        "type": "number"
                      }
                    },
                    "required": [
                      "id"
                    ]
                  }
                ]
              }
            }
          }
        }
      }
    },
    "contacts": {
      "type": "array",
      "description": "Array of contacts",
      "items": {
        "type": "object",
        "description": "A Contact resource to identify employees who communicate with / manage Patients",
        "properties": {
          "id": {
            "type": "integer",
            "example": 53,
            "description": "id"
          },
          "displayName": {
            "type": "string",
            "example": "Your Nurse Carly",
            "description": "The patient-facing name used in text messages/calls"
          },
          "description": {
            "type": "string",
            "example": "Dr. Woodward (Internal Medicine)",
            "description": "The internal description to help differentiate contacts"
          },
          "email": {
            "type": "string",
            "description": "email"
          }
        }
      }
    },
    "patientIds": {
      "type": "array",
      "description": "Array of Patient Ids returned from triage",
      "items": {
        "type": "integer",
        "description": "Patient Id"
      }
    },
    "patients": {
      "type": "object",
      "description": "Returned triage data of patients per category.",
      "properties": {
        "danger": {
          "type": "object",
          "description": "Total set of TriageCategoryResults",
          "properties": {
            "page": {
              "type": "integer",
              "description": "Page of returned results."
            },
            "limit": {
              "type": "integer",
              "description": "Provided limit of returned results."
            },
            "total": {
              "type": "integer",
              "description": "Total number of returned TriageCategory results"
            },
            "results": {
              "type": "array",
              "items": {
                "type": "object",
                "description": "Returned results for a patient & category in the Triage including alerts and app specific data.",
                "properties": {
                  "alerts": {
                    "type": "array",
                    "description": "A list of alerts that belong to the patient.",
                    "items": {
                      "type": "object",
                      "description": "An Alert resource to notify of changing patient conditions.",
                      "properties": {
                        "id": {
                          "type": "integer",
                          "example": 2543
                        },
                        "app": {
                          "type": "string",
                          "example": "epxcopd"
                        },
                        "body": {
                          "type": "string",
                          "example": "Patient Brionna has responded that she is having trouble breathing."
                        },
                        "contact": {
                          "type": "object",
                          "description": "A Contact resource to identify employees who communicate with / manage Patients",
                          "properties": {
                            "id": {
                              "type": "integer",
                              "example": 53,
                              "description": "id"
                            },
                            "displayName": {
                              "type": "string",
                              "example": "Your Nurse Carly",
                              "description": "The patient-facing name used in text messages/calls"
                            },
                            "description": {
                              "type": "string",
                              "example": "Dr. Woodward (Internal Medicine)",
                              "description": "The internal description to help differentiate contacts"
                            },
                            "email": {
                              "type": "string",
                              "description": "email"
                            }
                          }
                        },
                        "createdAt": {
                          "type": "string",
                          "description": "When the alert was triggered (ISO timestamp)",
                          "example": "2019-02-01T19:37:00.000Z"
                        },
                        "isRead": {
                          "type": "boolean",
                          "description": "True if the alert has been addressed by a user"
                        },
                        "snoozedAt": {
                          "type": "string",
                          "description": "When the alert was snoozed (ISO timestamp)",
                          "example": "2019-02-18T10:00:00-06:00"
                        },
                        "snoozedUntil": {
                          "type": "string",
                          "description": "When the alert will no longer be snoozed (ISO timestamp)",
                          "example": "2019-02-25T10:00:09-06:00"
                        },
                        "patient": {
                          "description": "Epharmix patient resource.",
                          "allOf": [
                            {
                              "type": "object",
                              "description": "Expected parameters for constructing a Patient resource.",
                              "properties": {
                                "firstName": {
                                  "description": "The first name of the patient.",
                                  "type": "string",
                                  "example": "John"
                                },
                                "middleInitial": {
                                  "description": "The middle initial of the patient.",
                                  "type": "string",
                                  "example": "M"
                                },
                                "lastName": {
                                  "description": "The last name of the patient.",
                                  "type": "string",
                                  "example": "Smith"
                                },
                                "phone": {
                                  "description": "The phone number of the patient.",
                                  "type": "string",
                                  "pattern": "^\\d{10}$",
                                  "example": "5551234567"
                                }
                              },
                              "required": [
                                "firstName",
                                "lastName",
                                "phone"
                              ]
                            },
                            {
                              "type": "object",
                              "properties": {
                                "id": {
                                  "description": "Patient ID.",
                                  "example": 623,
                                  "type": "number"
                                }
                              },
                              "required": [
                                "id"
                              ]
                            }
                          ]
                        }
                      }
                    }
                  },
                  "apps": {
                    "type": "object",
                    "description": "Triage data for every requested app the patient is enrolled in.",
                    "properties": {
                      "epx{appname}": {
                        "type": "object",
                        "description": "The app specific triage data for a patient.",
                        "properties": {
                          "alert": {
                            "type": "object",
                            "properties": {
                              "total": {
                                "type": "integer",
                                "example": 8,
                                "description": "The total amount of alerts triggered by this patient in the given timeframe"
                              },
                              "unread": {
                                "type": "integer",
                                "example": 2,
                                "description": "The amount of unresolved alerts for the patient in the given timeframe"
                              },
                              "active": {
                                "type": "integer",
                                "example": 2,
                                "description": "The amount of active alerts for the patient in the given timeframe"
                              }
                            }
                          },
                          "category": {
                            "type": "integer",
                            "example": 1,
                            "description": "The current category for the corresponding app. 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive"
                          },
                          "contactId": {
                            "type": "integer",
                            "example": 81,
                            "description": "The ID of the patient's contact for this app"
                          },
                          "engagement": {
                            "type": "object",
                            "properties": {
                              "responded": {
                                "type": "integer",
                                "description": "The amount of sessions the patient responded to for the corresponding app (in the set timeframe)",
                                "example": 10
                              },
                              "total": {
                                "type": "integer",
                                "description": "The total amount of sessions the patient had for the corresponding app (in the set timeframe)",
                                "example": 14
                              },
                              "rate": {
                                "type": "number",
                                "example": ".714285",
                                "description": "The response rate for this app (in the set timeframe)"
                              }
                            }
                          },
                          "schedule": {
                            "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
                            "allOf": [
                              {
                                "type": "object",
                                "description": "Expected parameters for constructing an apps Schedule.",
                                "properties": {
                                  "start": {
                                    "type": "string",
                                    "description": "The start date of the intervention",
                                    "example": "2019-02-05T10:00:09-06:00"
                                  },
                                  "end": {
                                    "type": "string",
                                    "description": "The end date of the intervention (optional)",
                                    "example": "2019-03-05T10:00:09-06:00"
                                  },
                                  "times": {
                                    "type": "array",
                                    "description": "The times that the patient would prefer to receive messages (24-hour time)",
                                    "example": [
                                      "09:00",
                                      "17:30"
                                    ],
                                    "items": {
                                      "type": "string"
                                    }
                                  },
                                  "days": {
                                    "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                                    "example": [
                                      1,
                                      3,
                                      5
                                    ],
                                    "type": "array",
                                    "items": {
                                      "type": "integer",
                                      "minimum": 0,
                                      "maximum": 6
                                    }
                                  },
                                  "method": {
                                    "type": "string",
                                    "description": "The method in which the patient will be contacted.",
                                    "enum": [
                                      "message",
                                      "call"
                                    ]
                                  },
                                  "tz": {
                                    "type": "string",
                                    "description": "The timezone of the schedule",
                                    "example": "US/Central"
                                  },
                                  "patientId": {
                                    "type": "integer",
                                    "description": "The ID of the patient who will receive the intervention",
                                    "example": 1638
                                  },
                                  "contactId": {
                                    "type": "integer",
                                    "description": "The ID of the contact that will be assigned to the intervention",
                                    "example": 76
                                  }
                                }
                              },
                              {
                                "type": "object",
                                "properties": {
                                  "id": {
                                    "type": "integer",
                                    "example": 14
                                  },
                                  "isCanceled": {
                                    "type": "boolean",
                                    "description": "If true, the patient will not longer receive calls/messages"
                                  },
                                  "canceledAt": {
                                    "type": "string",
                                    "description": "The time that the schedule was canceled"
                                  },
                                  "patientId": {
                                    "type": "integer",
                                    "example": 372,
                                    "description": "The ID of the patient"
                                  },
                                  "contactId": {
                                    "type": "integer",
                                    "description": "The ID of the contact associated to this schedule",
                                    "example": 39
                                  }
                                }
                              }
                            ]
                          }
                        }
                      }
                    }
                  },
                  "category": {
                    "type": "integer",
                    "example": 2,
                    "description": "The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent"
                  },
                  "patient": {
                    "description": "Epharmix patient resource.",
                    "allOf": [
                      {
                        "type": "object",
                        "description": "Expected parameters for constructing a Patient resource.",
                        "properties": {
                          "firstName": {
                            "description": "The first name of the patient.",
                            "type": "string",
                            "example": "John"
                          },
                          "middleInitial": {
                            "description": "The middle initial of the patient.",
                            "type": "string",
                            "example": "M"
                          },
                          "lastName": {
                            "description": "The last name of the patient.",
                            "type": "string",
                            "example": "Smith"
                          },
                          "phone": {
                            "description": "The phone number of the patient.",
                            "type": "string",
                            "pattern": "^\\d{10}$",
                            "example": "5551234567"
                          }
                        },
                        "required": [
                          "firstName",
                          "lastName",
                          "phone"
                        ]
                      },
                      {
                        "type": "object",
                        "properties": {
                          "id": {
                            "description": "Patient ID.",
                            "example": 623,
                            "type": "number"
                          }
                        },
                        "required": [
                          "id"
                        ]
                      }
                    ]
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

```

*Triage payload, depending on the supplied request may contain information on alerts, contacts, & patients.*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|alerts|object|false|none|none|
|» limit|integer|false|none|The limit set for returned results.|
|» page|integer|false|none|The current page of returned results.|
|» total|integer|false|none|The total amount of results without the limit restriction|
|» results|[[AlertObject](#schemaalertobject)]|false|none|Array of results|
|contacts|[[ContactObject](#schemacontactobject)]|false|none|Array of contacts|

<h2 id="tocStriagecategorydata">TriageCategoryData</h2>

<a id="schematriagecategorydata"></a>

```json
{
  "type": "object",
  "description": "Total set of TriageCategoryResults",
  "properties": {
    "page": {
      "type": "integer",
      "description": "Page of returned results."
    },
    "limit": {
      "type": "integer",
      "description": "Provided limit of returned results."
    },
    "total": {
      "type": "integer",
      "description": "Total number of returned TriageCategory results"
    },
    "results": {
      "type": "array",
      "items": {
        "type": "object",
        "description": "Returned results for a patient & category in the Triage including alerts and app specific data.",
        "properties": {
          "alerts": {
            "type": "array",
            "description": "A list of alerts that belong to the patient.",
            "items": {
              "type": "object",
              "description": "An Alert resource to notify of changing patient conditions.",
              "properties": {
                "id": {
                  "type": "integer",
                  "example": 2543
                },
                "app": {
                  "type": "string",
                  "example": "epxcopd"
                },
                "body": {
                  "type": "string",
                  "example": "Patient Brionna has responded that she is having trouble breathing."
                },
                "contact": {
                  "type": "object",
                  "description": "A Contact resource to identify employees who communicate with / manage Patients",
                  "properties": {
                    "id": {
                      "type": "integer",
                      "example": 53,
                      "description": "id"
                    },
                    "displayName": {
                      "type": "string",
                      "example": "Your Nurse Carly",
                      "description": "The patient-facing name used in text messages/calls"
                    },
                    "description": {
                      "type": "string",
                      "example": "Dr. Woodward (Internal Medicine)",
                      "description": "The internal description to help differentiate contacts"
                    },
                    "email": {
                      "type": "string",
                      "description": "email"
                    }
                  }
                },
                "createdAt": {
                  "type": "string",
                  "description": "When the alert was triggered (ISO timestamp)",
                  "example": "2019-02-01T19:37:00.000Z"
                },
                "isRead": {
                  "type": "boolean",
                  "description": "True if the alert has been addressed by a user"
                },
                "snoozedAt": {
                  "type": "string",
                  "description": "When the alert was snoozed (ISO timestamp)",
                  "example": "2019-02-18T10:00:00-06:00"
                },
                "snoozedUntil": {
                  "type": "string",
                  "description": "When the alert will no longer be snoozed (ISO timestamp)",
                  "example": "2019-02-25T10:00:09-06:00"
                },
                "patient": {
                  "description": "Epharmix patient resource.",
                  "allOf": [
                    {
                      "type": "object",
                      "description": "Expected parameters for constructing a Patient resource.",
                      "properties": {
                        "firstName": {
                          "description": "The first name of the patient.",
                          "type": "string",
                          "example": "John"
                        },
                        "middleInitial": {
                          "description": "The middle initial of the patient.",
                          "type": "string",
                          "example": "M"
                        },
                        "lastName": {
                          "description": "The last name of the patient.",
                          "type": "string",
                          "example": "Smith"
                        },
                        "phone": {
                          "description": "The phone number of the patient.",
                          "type": "string",
                          "pattern": "^\\d{10}$",
                          "example": "5551234567"
                        }
                      },
                      "required": [
                        "firstName",
                        "lastName",
                        "phone"
                      ]
                    },
                    {
                      "type": "object",
                      "properties": {
                        "id": {
                          "description": "Patient ID.",
                          "example": 623,
                          "type": "number"
                        }
                      },
                      "required": [
                        "id"
                      ]
                    }
                  ]
                }
              }
            }
          },
          "apps": {
            "type": "object",
            "description": "Triage data for every requested app the patient is enrolled in.",
            "properties": {
              "epx{appname}": {
                "type": "object",
                "description": "The app specific triage data for a patient.",
                "properties": {
                  "alert": {
                    "type": "object",
                    "properties": {
                      "total": {
                        "type": "integer",
                        "example": 8,
                        "description": "The total amount of alerts triggered by this patient in the given timeframe"
                      },
                      "unread": {
                        "type": "integer",
                        "example": 2,
                        "description": "The amount of unresolved alerts for the patient in the given timeframe"
                      },
                      "active": {
                        "type": "integer",
                        "example": 2,
                        "description": "The amount of active alerts for the patient in the given timeframe"
                      }
                    }
                  },
                  "category": {
                    "type": "integer",
                    "example": 1,
                    "description": "The current category for the corresponding app. 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive"
                  },
                  "contactId": {
                    "type": "integer",
                    "example": 81,
                    "description": "The ID of the patient's contact for this app"
                  },
                  "engagement": {
                    "type": "object",
                    "properties": {
                      "responded": {
                        "type": "integer",
                        "description": "The amount of sessions the patient responded to for the corresponding app (in the set timeframe)",
                        "example": 10
                      },
                      "total": {
                        "type": "integer",
                        "description": "The total amount of sessions the patient had for the corresponding app (in the set timeframe)",
                        "example": 14
                      },
                      "rate": {
                        "type": "number",
                        "example": ".714285",
                        "description": "The response rate for this app (in the set timeframe)"
                      }
                    }
                  },
                  "schedule": {
                    "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
                    "allOf": [
                      {
                        "type": "object",
                        "description": "Expected parameters for constructing an apps Schedule.",
                        "properties": {
                          "start": {
                            "type": "string",
                            "description": "The start date of the intervention",
                            "example": "2019-02-05T10:00:09-06:00"
                          },
                          "end": {
                            "type": "string",
                            "description": "The end date of the intervention (optional)",
                            "example": "2019-03-05T10:00:09-06:00"
                          },
                          "times": {
                            "type": "array",
                            "description": "The times that the patient would prefer to receive messages (24-hour time)",
                            "example": [
                              "09:00",
                              "17:30"
                            ],
                            "items": {
                              "type": "string"
                            }
                          },
                          "days": {
                            "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                            "example": [
                              1,
                              3,
                              5
                            ],
                            "type": "array",
                            "items": {
                              "type": "integer",
                              "minimum": 0,
                              "maximum": 6
                            }
                          },
                          "method": {
                            "type": "string",
                            "description": "The method in which the patient will be contacted.",
                            "enum": [
                              "message",
                              "call"
                            ]
                          },
                          "tz": {
                            "type": "string",
                            "description": "The timezone of the schedule",
                            "example": "US/Central"
                          },
                          "patientId": {
                            "type": "integer",
                            "description": "The ID of the patient who will receive the intervention",
                            "example": 1638
                          },
                          "contactId": {
                            "type": "integer",
                            "description": "The ID of the contact that will be assigned to the intervention",
                            "example": 76
                          }
                        }
                      },
                      {
                        "type": "object",
                        "properties": {
                          "id": {
                            "type": "integer",
                            "example": 14
                          },
                          "isCanceled": {
                            "type": "boolean",
                            "description": "If true, the patient will not longer receive calls/messages"
                          },
                          "canceledAt": {
                            "type": "string",
                            "description": "The time that the schedule was canceled"
                          },
                          "patientId": {
                            "type": "integer",
                            "example": 372,
                            "description": "The ID of the patient"
                          },
                          "contactId": {
                            "type": "integer",
                            "description": "The ID of the contact associated to this schedule",
                            "example": 39
                          }
                        }
                      }
                    ]
                  }
                }
              }
            }
          },
          "category": {
            "type": "integer",
            "example": 2,
            "description": "The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent"
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    }
  }
}

```

*Total set of TriageCategoryResults*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|page|integer|false|none|Page of returned results.|
|limit|integer|false|none|Provided limit of returned results.|
|total|integer|false|none|Total number of returned TriageCategory results|
|results|[[TriageCategoryResult](#schematriagecategoryresult)]|false|none|[Returned results for a patient & category in the Triage including alerts and app specific data.]|

<h2 id="tocStriagecategoryresult">TriageCategoryResult</h2>

<a id="schematriagecategoryresult"></a>

```json
{
  "type": "object",
  "description": "Returned results for a patient & category in the Triage including alerts and app specific data.",
  "properties": {
    "alerts": {
      "type": "array",
      "description": "A list of alerts that belong to the patient.",
      "items": {
        "type": "object",
        "description": "An Alert resource to notify of changing patient conditions.",
        "properties": {
          "id": {
            "type": "integer",
            "example": 2543
          },
          "app": {
            "type": "string",
            "example": "epxcopd"
          },
          "body": {
            "type": "string",
            "example": "Patient Brionna has responded that she is having trouble breathing."
          },
          "contact": {
            "type": "object",
            "description": "A Contact resource to identify employees who communicate with / manage Patients",
            "properties": {
              "id": {
                "type": "integer",
                "example": 53,
                "description": "id"
              },
              "displayName": {
                "type": "string",
                "example": "Your Nurse Carly",
                "description": "The patient-facing name used in text messages/calls"
              },
              "description": {
                "type": "string",
                "example": "Dr. Woodward (Internal Medicine)",
                "description": "The internal description to help differentiate contacts"
              },
              "email": {
                "type": "string",
                "description": "email"
              }
            }
          },
          "createdAt": {
            "type": "string",
            "description": "When the alert was triggered (ISO timestamp)",
            "example": "2019-02-01T19:37:00.000Z"
          },
          "isRead": {
            "type": "boolean",
            "description": "True if the alert has been addressed by a user"
          },
          "snoozedAt": {
            "type": "string",
            "description": "When the alert was snoozed (ISO timestamp)",
            "example": "2019-02-18T10:00:00-06:00"
          },
          "snoozedUntil": {
            "type": "string",
            "description": "When the alert will no longer be snoozed (ISO timestamp)",
            "example": "2019-02-25T10:00:09-06:00"
          },
          "patient": {
            "description": "Epharmix patient resource.",
            "allOf": [
              {
                "type": "object",
                "description": "Expected parameters for constructing a Patient resource.",
                "properties": {
                  "firstName": {
                    "description": "The first name of the patient.",
                    "type": "string",
                    "example": "John"
                  },
                  "middleInitial": {
                    "description": "The middle initial of the patient.",
                    "type": "string",
                    "example": "M"
                  },
                  "lastName": {
                    "description": "The last name of the patient.",
                    "type": "string",
                    "example": "Smith"
                  },
                  "phone": {
                    "description": "The phone number of the patient.",
                    "type": "string",
                    "pattern": "^\\d{10}$",
                    "example": "5551234567"
                  }
                },
                "required": [
                  "firstName",
                  "lastName",
                  "phone"
                ]
              },
              {
                "type": "object",
                "properties": {
                  "id": {
                    "description": "Patient ID.",
                    "example": 623,
                    "type": "number"
                  }
                },
                "required": [
                  "id"
                ]
              }
            ]
          }
        }
      }
    },
    "apps": {
      "type": "object",
      "description": "Triage data for every requested app the patient is enrolled in.",
      "properties": {
        "epx{appname}": {
          "type": "object",
          "description": "The app specific triage data for a patient.",
          "properties": {
            "alert": {
              "type": "object",
              "properties": {
                "total": {
                  "type": "integer",
                  "example": 8,
                  "description": "The total amount of alerts triggered by this patient in the given timeframe"
                },
                "unread": {
                  "type": "integer",
                  "example": 2,
                  "description": "The amount of unresolved alerts for the patient in the given timeframe"
                },
                "active": {
                  "type": "integer",
                  "example": 2,
                  "description": "The amount of active alerts for the patient in the given timeframe"
                }
              }
            },
            "category": {
              "type": "integer",
              "example": 1,
              "description": "The current category for the corresponding app. 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive"
            },
            "contactId": {
              "type": "integer",
              "example": 81,
              "description": "The ID of the patient's contact for this app"
            },
            "engagement": {
              "type": "object",
              "properties": {
                "responded": {
                  "type": "integer",
                  "description": "The amount of sessions the patient responded to for the corresponding app (in the set timeframe)",
                  "example": 10
                },
                "total": {
                  "type": "integer",
                  "description": "The total amount of sessions the patient had for the corresponding app (in the set timeframe)",
                  "example": 14
                },
                "rate": {
                  "type": "number",
                  "example": ".714285",
                  "description": "The response rate for this app (in the set timeframe)"
                }
              }
            },
            "schedule": {
              "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
              "allOf": [
                {
                  "type": "object",
                  "description": "Expected parameters for constructing an apps Schedule.",
                  "properties": {
                    "start": {
                      "type": "string",
                      "description": "The start date of the intervention",
                      "example": "2019-02-05T10:00:09-06:00"
                    },
                    "end": {
                      "type": "string",
                      "description": "The end date of the intervention (optional)",
                      "example": "2019-03-05T10:00:09-06:00"
                    },
                    "times": {
                      "type": "array",
                      "description": "The times that the patient would prefer to receive messages (24-hour time)",
                      "example": [
                        "09:00",
                        "17:30"
                      ],
                      "items": {
                        "type": "string"
                      }
                    },
                    "days": {
                      "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
                      "example": [
                        1,
                        3,
                        5
                      ],
                      "type": "array",
                      "items": {
                        "type": "integer",
                        "minimum": 0,
                        "maximum": 6
                      }
                    },
                    "method": {
                      "type": "string",
                      "description": "The method in which the patient will be contacted.",
                      "enum": [
                        "message",
                        "call"
                      ]
                    },
                    "tz": {
                      "type": "string",
                      "description": "The timezone of the schedule",
                      "example": "US/Central"
                    },
                    "patientId": {
                      "type": "integer",
                      "description": "The ID of the patient who will receive the intervention",
                      "example": 1638
                    },
                    "contactId": {
                      "type": "integer",
                      "description": "The ID of the contact that will be assigned to the intervention",
                      "example": 76
                    }
                  }
                },
                {
                  "type": "object",
                  "properties": {
                    "id": {
                      "type": "integer",
                      "example": 14
                    },
                    "isCanceled": {
                      "type": "boolean",
                      "description": "If true, the patient will not longer receive calls/messages"
                    },
                    "canceledAt": {
                      "type": "string",
                      "description": "The time that the schedule was canceled"
                    },
                    "patientId": {
                      "type": "integer",
                      "example": 372,
                      "description": "The ID of the patient"
                    },
                    "contactId": {
                      "type": "integer",
                      "description": "The ID of the contact associated to this schedule",
                      "example": 39
                    }
                  }
                }
              ]
            }
          }
        }
      }
    },
    "category": {
      "type": "integer",
      "example": 2,
      "description": "The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent"
    },
    "patient": {
      "description": "Epharmix patient resource.",
      "allOf": [
        {
          "type": "object",
          "description": "Expected parameters for constructing a Patient resource.",
          "properties": {
            "firstName": {
              "description": "The first name of the patient.",
              "type": "string",
              "example": "John"
            },
            "middleInitial": {
              "description": "The middle initial of the patient.",
              "type": "string",
              "example": "M"
            },
            "lastName": {
              "description": "The last name of the patient.",
              "type": "string",
              "example": "Smith"
            },
            "phone": {
              "description": "The phone number of the patient.",
              "type": "string",
              "pattern": "^\\d{10}$",
              "example": "5551234567"
            }
          },
          "required": [
            "firstName",
            "lastName",
            "phone"
          ]
        },
        {
          "type": "object",
          "properties": {
            "id": {
              "description": "Patient ID.",
              "example": 623,
              "type": "number"
            }
          },
          "required": [
            "id"
          ]
        }
      ]
    }
  }
}

```

*Returned results for a patient & category in the Triage including alerts and app specific data.*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|alerts|[[AlertObject](#schemaalertobject)]|false|none|A list of alerts that belong to the patient.|
|» category|integer|false|none|The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent|

<h2 id="tocScontactobject">ContactObject</h2>

<a id="schemacontactobject"></a>

```json
{
  "type": "object",
  "description": "A Contact resource to identify employees who communicate with / manage Patients",
  "properties": {
    "id": {
      "type": "integer",
      "example": 53,
      "description": "id"
    },
    "displayName": {
      "type": "string",
      "example": "Your Nurse Carly",
      "description": "The patient-facing name used in text messages/calls"
    },
    "description": {
      "type": "string",
      "example": "Dr. Woodward (Internal Medicine)",
      "description": "The internal description to help differentiate contacts"
    },
    "email": {
      "type": "string",
      "description": "email"
    }
  }
}

```

*A Contact resource to identify employees who communicate with / manage Patients*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|none|id|
|displayName|string|false|none|The patient-facing name used in text messages/calls|
|description|string|false|none|The internal description to help differentiate contacts|
|email|string|false|none|email|

<h2 id="tocScontactparams">ContactParams</h2>

<a id="schemacontactparams"></a>

```json
{
  "type": "object",
  "description": "Expected parameters for constructing a Contact resource.",
  "properties": {
    "tz": {
      "type": "string",
      "example": "US/Eastern",
      "description": "Timezone"
    },
    "displayName": {
      "type": "string",
      "example": "Your Nurse Carly",
      "description": "The patient-facing name used in text messages/calls"
    },
    "description": {
      "type": "string",
      "example": "Dr. Woodward (Internal Medicine)",
      "description": "The internal description to help differentiate contacts"
    },
    "email": {
      "type": "string",
      "description": "Email"
    },
    "primaryPhone": {
      "type": "string",
      "description": "A 10-digit phone number, used to route calls/alerts to the contact.",
      "example": "5551234567"
    },
    "primaryStart": {
      "type": "string",
      "description": "The time that the primary phone becomes active. (24-hour time)",
      "example": "08:00"
    },
    "primaryEnd": {
      "type": "string",
      "description": "The time that the primary phone is no longer active. (24-hour time)"
    },
    "notificationPreference": {
      "type": "string",
      "enum": [
        "C",
        "T",
        "P",
        "E",
        "O"
      ],
      "description": "How the contact would like to be notified. Call, Text, Page, Email, Integration, Off"
    }
  }
}

```

*Expected parameters for constructing a Contact resource.*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|tz|string|false|none|Timezone|
|displayName|string|false|none|The patient-facing name used in text messages/calls|
|description|string|false|none|The internal description to help differentiate contacts|
|email|string|false|none|Email|
|primaryPhone|string|false|none|A 10-digit phone number, used to route calls/alerts to the contact.|
|primaryStart|string|false|none|The time that the primary phone becomes active. (24-hour time)|
|primaryEnd|string|false|none|The time that the primary phone is no longer active. (24-hour time)|
|notificationPreference|string|false|none|How the contact would like to be notified. Call, Text, Page, Email, Integration, Off|

#### Enumerated Values

|Property|Value|
|---|---|
|notificationPreference|C|
|notificationPreference|T|
|notificationPreference|P|
|notificationPreference|E|
|notificationPreference|O|

<h2 id="tocSalertobject">AlertObject</h2>

<a id="schemaalertobject"></a>

```json
{
  "type": "object",
  "description": "An Alert resource to notify of changing patient conditions.",
  "properties": {
    "id": {
      "type": "integer",
      "example": 2543
    },
    "app": {
      "type": "string",
      "example": "epxcopd"
    },
    "body": {
      "type": "string",
      "example": "Patient Brionna has responded that she is having trouble breathing."
    },
    "contact": {
      "type": "object",
      "description": "A Contact resource to identify employees who communicate with / manage Patients",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53,
          "description": "id"
        },
        "displayName": {
          "type": "string",
          "example": "Your Nurse Carly",
          "description": "The patient-facing name used in text messages/calls"
        },
        "description": {
          "type": "string",
          "example": "Dr. Woodward (Internal Medicine)",
          "description": "The internal description to help differentiate contacts"
        },
        "email": {
          "type": "string",
          "description": "email"
        }
      }
    },
    "createdAt": {
      "type": "string",
      "description": "When the alert was triggered (ISO timestamp)",
      "example": "2019-02-01T19:37:00.000Z"
    },
    "isRead": {
      "type": "boolean",
      "description": "True if the alert has been addressed by a user"
    },
    "snoozedAt": {
      "type": "string",
      "description": "When the alert was snoozed (ISO timestamp)",
      "example": "2019-02-18T10:00:00-06:00"
    },
    "snoozedUntil": {
      "type": "string",
      "description": "When the alert will no longer be snoozed (ISO timestamp)",
      "example": "2019-02-25T10:00:09-06:00"
    },
    "patient": {
      "description": "Epharmix patient resource.",
      "allOf": [
        {
          "type": "object",
          "description": "Expected parameters for constructing a Patient resource.",
          "properties": {
            "firstName": {
              "description": "The first name of the patient.",
              "type": "string",
              "example": "John"
            },
            "middleInitial": {
              "description": "The middle initial of the patient.",
              "type": "string",
              "example": "M"
            },
            "lastName": {
              "description": "The last name of the patient.",
              "type": "string",
              "example": "Smith"
            },
            "phone": {
              "description": "The phone number of the patient.",
              "type": "string",
              "pattern": "^\\d{10}$",
              "example": "5551234567"
            }
          },
          "required": [
            "firstName",
            "lastName",
            "phone"
          ]
        },
        {
          "type": "object",
          "properties": {
            "id": {
              "description": "Patient ID.",
              "example": 623,
              "type": "number"
            }
          },
          "required": [
            "id"
          ]
        }
      ]
    }
  }
}

```

*An Alert resource to notify of changing patient conditions.*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|none|none|
|app|string|false|none|none|
|body|string|false|none|none|

<h2 id="tocSscheduleparams">ScheduleParams</h2>

<a id="schemascheduleparams"></a>

```json
{
  "type": "object",
  "description": "Expected parameters for constructing an apps Schedule.",
  "properties": {
    "start": {
      "type": "string",
      "description": "The start date of the intervention",
      "example": "2019-02-05T10:00:09-06:00"
    },
    "end": {
      "type": "string",
      "description": "The end date of the intervention (optional)",
      "example": "2019-03-05T10:00:09-06:00"
    },
    "times": {
      "type": "array",
      "description": "The times that the patient would prefer to receive messages (24-hour time)",
      "example": [
        "09:00",
        "17:30"
      ],
      "items": {
        "type": "string"
      }
    },
    "days": {
      "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
      "example": [
        1,
        3,
        5
      ],
      "type": "array",
      "items": {
        "type": "integer",
        "minimum": 0,
        "maximum": 6
      }
    },
    "method": {
      "type": "string",
      "description": "The method in which the patient will be contacted.",
      "enum": [
        "message",
        "call"
      ]
    },
    "tz": {
      "type": "string",
      "description": "The timezone of the schedule",
      "example": "US/Central"
    },
    "patientId": {
      "type": "integer",
      "description": "The ID of the patient who will receive the intervention",
      "example": 1638
    },
    "contactId": {
      "type": "integer",
      "description": "The ID of the contact that will be assigned to the intervention",
      "example": 76
    }
  }
}

```

*Expected parameters for constructing an apps Schedule.*

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|start|string|false|none|The start date of the intervention|
|end|string|false|none|The end date of the intervention (optional)|
|times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|method|string|false|none|The method in which the patient will be contacted.|
|tz|string|false|none|The timezone of the schedule|
|patientId|integer|false|none|The ID of the patient who will receive the intervention|
|contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

#### Enumerated Values

|Property|Value|
|---|---|
|method|message|
|method|call|

<h2 id="tocSscheduleobject">ScheduleObject</h2>

<a id="schemascheduleobject"></a>

```json
{
  "description": "The schedule controls the times and rate at which its associated app will communicate with the patient.",
  "allOf": [
    {
      "type": "object",
      "description": "Expected parameters for constructing an apps Schedule.",
      "properties": {
        "start": {
          "type": "string",
          "description": "The start date of the intervention",
          "example": "2019-02-05T10:00:09-06:00"
        },
        "end": {
          "type": "string",
          "description": "The end date of the intervention (optional)",
          "example": "2019-03-05T10:00:09-06:00"
        },
        "times": {
          "type": "array",
          "description": "The times that the patient would prefer to receive messages (24-hour time)",
          "example": [
            "09:00",
            "17:30"
          ],
          "items": {
            "type": "string"
          }
        },
        "days": {
          "description": "Days of the week that the sessions will occur (0: Sunday... 6: Saturday)",
          "example": [
            1,
            3,
            5
          ],
          "type": "array",
          "items": {
            "type": "integer",
            "minimum": 0,
            "maximum": 6
          }
        },
        "method": {
          "type": "string",
          "description": "The method in which the patient will be contacted.",
          "enum": [
            "message",
            "call"
          ]
        },
        "tz": {
          "type": "string",
          "description": "The timezone of the schedule",
          "example": "US/Central"
        },
        "patientId": {
          "type": "integer",
          "description": "The ID of the patient who will receive the intervention",
          "example": 1638
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact that will be assigned to the intervention",
          "example": 76
        }
      }
    },
    {
      "type": "object",
      "properties": {
        "id": {
          "type": "integer",
          "example": 14
        },
        "isCanceled": {
          "type": "boolean",
          "description": "If true, the patient will not longer receive calls/messages"
        },
        "canceledAt": {
          "type": "string",
          "description": "The time that the schedule was canceled"
        },
        "patientId": {
          "type": "integer",
          "example": 372,
          "description": "The ID of the patient"
        },
        "contactId": {
          "type": "integer",
          "description": "The ID of the contact associated to this schedule",
          "example": 39
        }
      }
    }
  ]
}

```

*The schedule controls the times and rate at which its associated app will communicate with the patient.*

### Properties

*allOf*

*and*

<span id="swagger-id"></span>