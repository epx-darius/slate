---
title: Epharmix Platform API
language_tabs:
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - javascript--nodejs: Node.JS
  - ruby: Ruby
  - python: Python
  - java: Java
  - go: Go
toc_footers: []
includes: []
search: true
highlight_theme: darkula
headingLevel: 2

---

<h1 id="epharmix-platform-api">Epharmix Platform API v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This documentation describes the RESTful API for the Epharmix platform.

Base URLs:

* <a href="https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1">https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1</a>

* <a href="https://stage.ephx.io">https://stage.ephx.io</a>

# Authentication

- HTTP Authentication, scheme: bearer 

<h1 id="epharmix-platform-api-patients">Patients</h1>

## post__patient_create_

`POST /patient/create/`

*Create a Patient*

Enroll a patient into the Epharmix system. Once enrolled a patient can be assigned to a number of active Epharmix Interventions.

> Body parameter

```json
{
  "type": "object",
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

<h3 id="post__patient_create_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[PatientParams](#schemapatientparams)|true|none|

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

<h3 id="post__patient_create_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Patient Created|Inline|

<h3 id="post__patient_create_-responseschema">Response Schema</h3>

Status Code **201**

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

<aside class="success">
This operation does not require authentication
</aside>

## post__patient_edit_

`POST /patient/edit/`

*Edit a patient*

> Body parameter

```json
{
  "type": "object",
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

<h3 id="post__patient_edit_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[PatientParams](#schemapatientparams)|true|none|

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

<h3 id="post__patient_edit_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Patient Edited|Inline|

<h3 id="post__patient_edit_-responseschema">Response Schema</h3>

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

<aside class="success">
This operation does not require authentication
</aside>

## post__patient_delete_

`POST /patient/delete/`

*Delete a patient (paranoid)*

Removes a patient from an account, but retains patient data in case it is needed.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "string",
      "example": 5
    }
  }
}
```

<h3 id="post__patient_delete_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|string|false|none|

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

<h3 id="post__patient_delete_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Patient Deleted|Inline|

<h3 id="post__patient_delete_-responseschema">Response Schema</h3>

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

<aside class="success">
This operation does not require authentication
</aside>

## post__patient_data_single_

`POST /patient/data_single/`

*Get patient information*

Given an id, returns information stored for specific patient.

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "string",
      "example": 5
    }
  }
}
```

<h3 id="post__patient_data_single_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|string|false|none|

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

<h3 id="post__patient_data_single_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Patient Data|Inline|

<h3 id="post__patient_data_single_-responseschema">Response Schema</h3>

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

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="epharmix-platform-api-contacts">Contacts</h1>

## post__contact_create_

`POST /contact/create/`

*Add a contact to your Epharmix account*

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "tz": {
      "type": "string",
      "example": "US/Eastern"
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
      "type": "string"
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

<h3 id="post__contact_create_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ContactParams](#schemacontactparams)|true|none|

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
    "contact": {
      "type": "object",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53
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
          "type": "string"
        }
      }
    }
  }
}
```

<h3 id="post__contact_create_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|Contact Created|Inline|

<h3 id="post__contact_create_-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## post__contact_edit_

`POST /contact/edit/`

*Edit a contact*

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "tz": {
      "type": "string",
      "example": "US/Eastern"
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
      "type": "string"
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

<h3 id="post__contact_edit_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ContactParams](#schemacontactparams)|true|none|

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
    "contact": {
      "type": "object",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53
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
          "type": "string"
        }
      }
    }
  }
}
```

<h3 id="post__contact_edit_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contact Edited|Inline|

<h3 id="post__contact_edit_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## post__contact_delete_

`POST /contact/delete/`

*Removes a contact from an account, but retains contact data in case it is needed.*

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "string",
      "example": 5
    }
  }
}
```

<h3 id="post__contact_delete_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|string|false|none|

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
    "contact": {
      "type": "object",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53
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
          "type": "string"
        }
      }
    }
  }
}
```

<h3 id="post__contact_delete_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contact Deleted|Inline|

<h3 id="post__contact_delete_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## post__contact_data_single_

`POST /contact/data_single/`

*Get a contact's info*

> Body parameter

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "string",
      "example": 5
    }
  }
}
```

<h3 id="post__contact_data_single_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|string|false|none|

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
    "contact": {
      "type": "object",
      "properties": {
        "id": {
          "type": "integer",
          "example": 53
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
          "type": "string"
        }
      }
    }
  }
}
```

<h3 id="post__contact_data_single_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Contact Data|Inline|

<h3 id="post__contact_data_single_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="epharmix-platform-api-triage">Triage</h1>

## post__triage_data_

`POST /triage/data/`

*Get triage information about patients*

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
      "properties": {
        "patients": {
          "type": "object",
          "properties": {
            "danger": {
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer",
                  "minimum": 0
                },
                "limit": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 100,
                  "example": 20
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
                  ]
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
                  ]
                }
              },
              "required": [
                "page",
                "limit"
              ]
            },
            "warning": {
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer",
                  "minimum": 0
                },
                "limit": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 100,
                  "example": 20
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
                  ]
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
                  ]
                }
              },
              "required": [
                "page",
                "limit"
              ]
            },
            "success": {
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer",
                  "minimum": 0
                },
                "limit": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 100,
                  "example": 20
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
                  ]
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
                  ]
                }
              },
              "required": [
                "page",
                "limit"
              ]
            },
            "unresponsive": {
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer",
                  "minimum": 0
                },
                "limit": {
                  "type": "integer",
                  "minimum": 0,
                  "maximum": 100,
                  "example": 20
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
                  ]
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
                  ]
                }
              },
              "required": [
                "page",
                "limit"
              ]
            }
          }
        },
        "alerts": {
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20
            },
            "unreadOnly": {
              "type": "boolean",
              "example": false
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
              ]
            },
            "order": {
              "type": "string",
              "pattern": "^(asc)|(desc)$",
              "example": "desc"
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

<h3 id="post__triage_data_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» start|body|string|false|the start date of the timeframe, ISO format|
|» end|body|string|false|the end date of the timeframe, ISO format (optional)|
|»»» alerts|body|object|false|none|
|»»»» page|body|integer|true|none|
|»»»» limit|body|integer|true|none|
|»»»» unreadOnly|body|boolean|false|none|
|»»»» apps|body|[string]|false|none|
|»»»» order|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "allOf": [
    {
      "type": "object",
      "properties": {
        "status": {
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
      "properties": {
        "alerts": {
          "type": "object",
          "properties": {
            "limit": {
              "type": "integer"
            },
            "page": {
              "type": "integer"
            },
            "total": {
              "type": "integer",
              "description": "The total amount of results without the limit restriction"
            },
            "results": {
              "type": "array",
              "items": {
                "type": "object",
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
                    "properties": {
                      "id": {
                        "type": "integer",
                        "example": 53
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
                        "type": "string"
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
                    "allOf": [
                      {
                        "type": "object",
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
          "items": {
            "type": "object",
            "properties": {
              "id": {
                "type": "integer",
                "example": 53
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
                "type": "string"
              }
            }
          }
        },
        "patientIds": {
          "type": "array",
          "items": {
            "type": "integer",
            "description": "IDs of the patients that are included in the results"
          }
        },
        "patients": {
          "type": "object",
          "properties": {
            "danger": {
              "type": "object",
              "properties": {
                "page": {
                  "type": "integer"
                },
                "limit": {
                  "type": "integer"
                },
                "total": {
                  "type": "integer"
                },
                "results": {
                  "type": "array",
                  "items": {
                    "type": "object",
                    "properties": {
                      "alerts": {
                        "type": "array",
                        "items": {
                          "type": "object",
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
                              "properties": {
                                "id": {
                                  "type": "integer",
                                  "example": 53
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
                                  "type": "string"
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
                              "allOf": [
                                {
                                  "type": "object",
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
                        "properties": {
                          "epx{appname}": {
                            "type": "object",
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
                                    "example": 2
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
                                "allOf": [
                                  {
                                    "type": "object",
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
                        "allOf": [
                          {
                            "type": "object",
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

<h3 id="post__triage_data_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Triage Data|Inline|

<h3 id="post__triage_data_-responseschema">Response Schema</h3>

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## post__triage_data_single_

`POST /triage/data_single/`

*Get triage information about a single patient*

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
      "example": "US/Central"
    }
  }
}
```

<h3 id="post__triage_data_single_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|integer|false|the ID of the patient|
|» start|body|string|false|the start date of the timeframe, ISO format|
|» end|body|string|false|the end date of the timeframe, ISO format (optional)|
|» tz|body|string|false|none|

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
    "contacts": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "id": {
            "type": "integer",
            "example": 53
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
            "type": "string"
          }
        }
      }
    },
    "data": {
      "type": "object",
      "properties": {
        "alerts": {
          "type": "array",
          "items": {
            "type": "object",
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
                "properties": {
                  "id": {
                    "type": "integer",
                    "example": 53
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
                    "type": "string"
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
                "allOf": [
                  {
                    "type": "object",
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
          "properties": {
            "epx{appname}": {
              "type": "object",
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
                      "example": 2
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
                  "allOf": [
                    {
                      "type": "object",
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
          "allOf": [
            {
              "type": "object",
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

<h3 id="post__triage_data_single_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Triage Data|Inline|

<h3 id="post__triage_data_single_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» contacts|[[ContactObject](#schemacontactobject)]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="epharmix-platform-api-alerts">Alerts</h1>

## post__alert_data_

`POST /alert/data/`

*Fetch data about alerts*

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

<h3 id="post__alert_data_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» tz|body|string|false|The timezone|
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
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "alerts": {
      "type": "array",
      "items": {
        "type": "object",
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
            "properties": {
              "id": {
                "type": "integer",
                "example": 53
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
                "type": "string"
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
            "allOf": [
              {
                "type": "object",
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

<h3 id="post__alert_data_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Alert Data|Inline|

<h3 id="post__alert_data_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__alert_snooze_

`POST /alert/snooze/`

*Snooze alerts*

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

<h3 id="post__alert_snooze_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
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
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "alerts": {
      "type": "array",
      "items": {
        "type": "object",
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
            "properties": {
              "id": {
                "type": "integer",
                "example": 53
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
                "type": "string"
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
            "allOf": [
              {
                "type": "object",
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

<h3 id="post__alert_snooze_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Alerts Snoozed|Inline|

<h3 id="post__alert_snooze_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__alert_set_status_

`POST /alert/set_status/`

*Change the resolved (isRead) value for alerts*

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

<h3 id="post__alert_set_status_-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
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
      "type": "string",
      "enum": [
        "OK"
      ]
    },
    "alerts": {
      "type": "array",
      "items": {
        "type": "object",
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
            "properties": {
              "id": {
                "type": "integer",
                "example": 53
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
                "type": "string"
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
            "allOf": [
              {
                "type": "object",
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

<h3 id="post__alert_set_status_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Alert Statuses Updated|Inline|

<h3 id="post__alert_set_status_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="epharmix-platform-api-interventions">Interventions</h1>

## post__epxdiabetes_create_

`POST /epxdiabetes/create/`

*EpxDiabetes: Create a schedule for the patient*

Enrolls a patient into the Epharmix EpxDiabetes intervention.

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
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

<h3 id="post__epxdiabetes_create_-parameters">Parameters</h3>

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
        "type": "object",
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

<h3 id="post__epxdiabetes_create_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxDiabetes Schedule Created|Inline|

<h3 id="post__epxdiabetes_create_-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[[ScheduleParams](#schemascheduleparams)]|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## post__epxdiabetes_edit_

`POST /epxdiabetes/edit/`

*EpxDiabetes: Edit a schedule for a patient*

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
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

<h3 id="post__epxdiabetes_edit_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxdiabetes_edit_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Schedule Edited|Inline|

<h3 id="post__epxdiabetes_edit_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxdiabetes_cancel_

`POST /epxdiabetes/cancel/`

*EpxDiabetes: Cancel a schedule for a patient*

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

<h3 id="post__epxdiabetes_cancel_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxdiabetes_cancel_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Schedule Canceled|Inline|

<h3 id="post__epxdiabetes_cancel_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxdiabetes_data_

`POST /epxdiabetes/data/`

*EpxDiabetes: get epxdiabetes data for a patient*

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

<h3 id="post__epxdiabetes_data_-parameters">Parameters</h3>

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
            "allOf": [
              {
                "type": "object",
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

<h3 id="post__epxdiabetes_data_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Session Data|Inline|

<h3 id="post__epxdiabetes_data_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» sessions|[object]|false|none|none|
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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxhyper_create_

`POST /epxhyper/create/`

*EpxHypertension: Create an epxhypertension schedule for a patient*

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
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

<h3 id="post__epxhyper_create_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxhyper_create_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxHypertension Schedule Created|Inline|

<h3 id="post__epxhyper_create_-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxhyper_edit_

`POST /epxhyper/edit/`

*EpxHypertension: Edit an epxhypertension schedule for a patient*

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
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

<h3 id="post__epxhyper_edit_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxhyper_edit_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHypertension Schedule Edited|Inline|

<h3 id="post__epxhyper_edit_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxhyper_cancel_

`POST /epxhyper/cancel/`

*EpxHypertension: Cancel an EpxHypertension schedule for a patient*

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

<h3 id="post__epxhyper_cancel_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxhyper_cancel_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHypertension Schedule Canceled|Inline|

<h3 id="post__epxhyper_cancel_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxhyper_data_

`POST /epxhyper/data/`

*EpxHypertension: Get EpxHypertension data for a patient*

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

<h3 id="post__epxhyper_data_-parameters">Parameters</h3>

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
            "allOf": [
              {
                "type": "object",
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

<h3 id="post__epxhyper_data_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHypertension Session Data|Inline|

<h3 id="post__epxhyper_data_-responseschema">Response Schema</h3>

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxcopd_create_

`POST /epxcopd/create/`

*EpxCopd: Create an EpxCOPD schedule for a patient*

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
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

<h3 id="post__epxcopd_create_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxcopd_create_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxCOPD Schedule Created|Inline|

<h3 id="post__epxcopd_create_-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxcopd_edit_

`POST /epxcopd/edit/`

*EpxCopd: Edit an EpxCOPD schedule for a patient*

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
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

<h3 id="post__epxcopd_edit_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxcopd_edit_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxCOPD Schedule Edited|Inline|

<h3 id="post__epxcopd_edit_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxcopd_cancel_

`POST /epxcopd/cancel/`

*EpxCopd: Cancel an EpxCOPD schedule for a patient*

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

<h3 id="post__epxcopd_cancel_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxcopd_cancel_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxCOPD Schedule Canceled|Inline|

<h3 id="post__epxcopd_cancel_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxcopd_data_

`POST /epxcopd/data/`

*EpxCOPD: Get EpxCOPD data for a patient*

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

<h3 id="post__epxcopd_data_-parameters">Parameters</h3>

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
            "allOf": [
              {
                "type": "object",
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

<h3 id="post__epxcopd_data_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxCOPD Session Data|Inline|

<h3 id="post__epxcopd_data_-responseschema">Response Schema</h3>

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxheart_create_

`POST /epxheart/create/`

*EpxHeartFailure: Create an EpxHeartFailure schedule for a patient*

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
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

<h3 id="post__epxheart_create_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxheart_create_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxHeartFailure Schedule Created|Inline|

<h3 id="post__epxheart_create_-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxheart_edit_

`POST /epxheart/edit/`

*EpxHeartFailure: Edit an EpxHeartFailure schedule for a patient*

> Body parameter

```json
{
  "allOf": [
    {
      "type": "object",
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
        "hasScale": {
          "type": "boolean",
          "description": "If true, the patient indicated that they own a scale."
        }
      }
    }
  ]
}
```

<h3 id="post__epxheart_edit_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxheart_edit_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHeartFailure Schedule Edited|Inline|

<h3 id="post__epxheart_edit_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxheart_cancel_

`POST /epxheart/cancel/`

*EpxHeartFailure: Cancel an EpxHeartFailure schedule for a patient*

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

<h3 id="post__epxheart_cancel_-parameters">Parameters</h3>

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
        "allOf": [
          {
            "type": "object",
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

<h3 id="post__epxheart_cancel_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHeartFailure Schedule Canceled|Inline|

<h3 id="post__epxheart_cancel_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

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

<aside class="success">
This operation does not require authentication
</aside>

## post__epxheart_data_

`POST /epxheart/data/`

*EpxHeartFailure: Get EpxHeartFailure data for a patient*

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

<h3 id="post__epxheart_data_-parameters">Parameters</h3>

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
            "allOf": [
              {
                "type": "object",
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

<h3 id="post__epxheart_data_-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHeartFailure Session Data|Inline|

<h3 id="post__epxheart_data_-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» sessions|[object]|false|none|none|
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

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocSpatientparams">PatientParams</h2>

<a id="schemapatientparams"></a>

```json
{
  "type": "object",
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
  "allOf": [
    {
      "type": "object",
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

### Properties

*allOf*

*and*

<h2 id="tocStriagecategory">TriageCategory</h2>

<a id="schematriagecategory"></a>

```json
{
  "type": "object",
  "properties": {
    "page": {
      "type": "integer",
      "minimum": 0
    },
    "limit": {
      "type": "integer",
      "minimum": 0,
      "maximum": 100,
      "example": 20
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
      ]
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
      ]
    }
  },
  "required": [
    "page",
    "limit"
  ]
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|page|integer|true|none|none|
|limit|integer|true|none|none|
|apps|[string]|false|none|none|
|order|[oneOf]|false|none|none|

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
  "properties": {
    "patients": {
      "type": "object",
      "properties": {
        "danger": {
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20
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
              ]
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
              ]
            }
          },
          "required": [
            "page",
            "limit"
          ]
        },
        "warning": {
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20
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
              ]
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
              ]
            }
          },
          "required": [
            "page",
            "limit"
          ]
        },
        "success": {
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20
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
              ]
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
              ]
            }
          },
          "required": [
            "page",
            "limit"
          ]
        },
        "unresponsive": {
          "type": "object",
          "properties": {
            "page": {
              "type": "integer",
              "minimum": 0
            },
            "limit": {
              "type": "integer",
              "minimum": 0,
              "maximum": 100,
              "example": 20
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
              ]
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
              ]
            }
          },
          "required": [
            "page",
            "limit"
          ]
        }
      }
    },
    "alerts": {
      "type": "object",
      "properties": {
        "page": {
          "type": "integer",
          "minimum": 0
        },
        "limit": {
          "type": "integer",
          "minimum": 0,
          "maximum": 100,
          "example": 20
        },
        "unreadOnly": {
          "type": "boolean",
          "example": false
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
          ]
        },
        "order": {
          "type": "string",
          "pattern": "^(asc)|(desc)$",
          "example": "desc"
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|patients|object|false|none|none|
|alerts|object|false|none|none|
|» page|integer|true|none|none|
|» limit|integer|true|none|none|
|» unreadOnly|boolean|false|none|none|
|» apps|[string]|false|none|none|
|» order|string|false|none|none|

<h2 id="tocStriageobjects">TriageObjects</h2>

<a id="schematriageobjects"></a>

```json
{
  "type": "object",
  "properties": {
    "alerts": {
      "type": "object",
      "properties": {
        "limit": {
          "type": "integer"
        },
        "page": {
          "type": "integer"
        },
        "total": {
          "type": "integer",
          "description": "The total amount of results without the limit restriction"
        },
        "results": {
          "type": "array",
          "items": {
            "type": "object",
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
                "properties": {
                  "id": {
                    "type": "integer",
                    "example": 53
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
                    "type": "string"
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
                "allOf": [
                  {
                    "type": "object",
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
      "items": {
        "type": "object",
        "properties": {
          "id": {
            "type": "integer",
            "example": 53
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
            "type": "string"
          }
        }
      }
    },
    "patientIds": {
      "type": "array",
      "items": {
        "type": "integer",
        "description": "IDs of the patients that are included in the results"
      }
    },
    "patients": {
      "type": "object",
      "properties": {
        "danger": {
          "type": "object",
          "properties": {
            "page": {
              "type": "integer"
            },
            "limit": {
              "type": "integer"
            },
            "total": {
              "type": "integer"
            },
            "results": {
              "type": "array",
              "items": {
                "type": "object",
                "properties": {
                  "alerts": {
                    "type": "array",
                    "items": {
                      "type": "object",
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
                          "properties": {
                            "id": {
                              "type": "integer",
                              "example": 53
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
                              "type": "string"
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
                          "allOf": [
                            {
                              "type": "object",
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
                    "properties": {
                      "epx{appname}": {
                        "type": "object",
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
                                "example": 2
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
                            "allOf": [
                              {
                                "type": "object",
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
                    "allOf": [
                      {
                        "type": "object",
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|alerts|object|false|none|none|
|» limit|integer|false|none|none|
|» page|integer|false|none|none|
|» total|integer|false|none|The total amount of results without the limit restriction|
|» results|[[AlertObject](#schemaalertobject)]|false|none|none|
|contacts|[[ContactObject](#schemacontactobject)]|false|none|none|

<h2 id="tocStriagecategorydata">TriageCategoryData</h2>

<a id="schematriagecategorydata"></a>

```json
{
  "type": "object",
  "properties": {
    "page": {
      "type": "integer"
    },
    "limit": {
      "type": "integer"
    },
    "total": {
      "type": "integer"
    },
    "results": {
      "type": "array",
      "items": {
        "type": "object",
        "properties": {
          "alerts": {
            "type": "array",
            "items": {
              "type": "object",
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
                  "properties": {
                    "id": {
                      "type": "integer",
                      "example": 53
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
                      "type": "string"
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
                  "allOf": [
                    {
                      "type": "object",
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
            "properties": {
              "epx{appname}": {
                "type": "object",
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
                        "example": 2
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
                    "allOf": [
                      {
                        "type": "object",
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
            "allOf": [
              {
                "type": "object",
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|page|integer|false|none|none|
|limit|integer|false|none|none|
|total|integer|false|none|none|
|results|[[TriageCategoryResult](#schematriagecategoryresult)]|false|none|none|

<h2 id="tocStriagecategoryresult">TriageCategoryResult</h2>

<a id="schematriagecategoryresult"></a>

```json
{
  "type": "object",
  "properties": {
    "alerts": {
      "type": "array",
      "items": {
        "type": "object",
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
            "properties": {
              "id": {
                "type": "integer",
                "example": 53
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
                "type": "string"
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
            "allOf": [
              {
                "type": "object",
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
      "properties": {
        "epx{appname}": {
          "type": "object",
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
                  "example": 2
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
              "allOf": [
                {
                  "type": "object",
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
      "allOf": [
        {
          "type": "object",
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|alerts|[[AlertObject](#schemaalertobject)]|false|none|none|
|» category|integer|false|none|The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent|

<h2 id="tocScontactobject">ContactObject</h2>

<a id="schemacontactobject"></a>

```json
{
  "type": "object",
  "properties": {
    "id": {
      "type": "integer",
      "example": 53
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
      "type": "string"
    }
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|none|none|
|displayName|string|false|none|The patient-facing name used in text messages/calls|
|description|string|false|none|The internal description to help differentiate contacts|
|email|string|false|none|none|

<h2 id="tocScontactparams">ContactParams</h2>

<a id="schemacontactparams"></a>

```json
{
  "type": "object",
  "properties": {
    "tz": {
      "type": "string",
      "example": "US/Eastern"
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
      "type": "string"
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

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|tz|string|false|none|none|
|displayName|string|false|none|The patient-facing name used in text messages/calls|
|description|string|false|none|The internal description to help differentiate contacts|
|email|string|false|none|none|
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
      "properties": {
        "id": {
          "type": "integer",
          "example": 53
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
          "type": "string"
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
      "allOf": [
        {
          "type": "object",
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
  "allOf": [
    {
      "type": "object",
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

### Properties

*allOf*

*and*

