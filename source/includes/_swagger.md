<h1 id="epharmix-platform-api">Epharmix Platform API v1</h1>

> Scroll down for code samples, example requests and responses. Select a language for code samples from the tabs above or the mobile navigation menu.

This documentation describes the RESTful API for the Epharmix platform.

Base URLs:

* <a href="https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1">https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1</a>

* <a href="https://stage.ephx.io">https://stage.ephx.io</a>

# Authentication

- HTTP Authentication, scheme: bearer 

<h1 id="epharmix-platform-api-patients">Patients</h1>

## Create a Patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/create/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"firstName":"John","middleInitial":"M","lastName":"Smith","phone":"5551234567"}'
```

```javascript
var data = JSON.stringify({
  "firstName": "John",
  "middleInitial": "M",
  "lastName": "Smith",
  "phone": "5551234567"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/create/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/create/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"firstName\":\"John\",\"middleInitial\":\"M\",\"lastName\":\"Smith\",\"phone\":\"5551234567\"}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"firstName\":\"John\",\"middleInitial\":\"M\",\"lastName\":\"Smith\",\"phone\":\"5551234567\"}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/patient/create/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/create/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"firstName\":\"John\",\"middleInitial\":\"M\",\"lastName\":\"Smith\",\"phone\":\"5551234567\"}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/create/"

	payload := strings.NewReader("{\"firstName\":\"John\",\"middleInitial\":\"M\",\"lastName\":\"Smith\",\"phone\":\"5551234567\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /patient/create/`

Enroll a patient into the Epharmix system. Once enrolled a patient can be assigned to a number of active Epharmix Interventions.

> Body parameter

```json
{
  "firstName": "John",
  "middleInitial": "M",
  "lastName": "Smith",
  "phone": "5551234567"
}
```

<h3 id="create-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[PatientParams](#schemapatientparams)|true|none|
|» firstName|body|string|true|The first name of the patient.|
|» middleInitial|body|string|false|The middle initial of the patient.|
|» lastName|body|string|true|The last name of the patient.|
|» phone|body|string|true|The phone number of the patient.|

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
|» status|string|false|none|none|
|» patient|[PatientParams](#schemapatientparams)|false|none|none|
|»» firstName|string|true|none|The first name of the patient.|
|»» middleInitial|string|false|none|The middle initial of the patient.|
|»» lastName|string|true|none|The last name of the patient.|
|»» phone|string|true|none|The phone number of the patient.|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## Edit a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/edit/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"firstName":"John","middleInitial":"M","lastName":"Smith","phone":"5551234567"}'
```

```javascript
var data = JSON.stringify({
  "firstName": "John",
  "middleInitial": "M",
  "lastName": "Smith",
  "phone": "5551234567"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/edit/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/edit/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"firstName\":\"John\",\"middleInitial\":\"M\",\"lastName\":\"Smith\",\"phone\":\"5551234567\"}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"firstName\":\"John\",\"middleInitial\":\"M\",\"lastName\":\"Smith\",\"phone\":\"5551234567\"}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/patient/edit/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/edit/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"firstName\":\"John\",\"middleInitial\":\"M\",\"lastName\":\"Smith\",\"phone\":\"5551234567\"}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/edit/"

	payload := strings.NewReader("{\"firstName\":\"John\",\"middleInitial\":\"M\",\"lastName\":\"Smith\",\"phone\":\"5551234567\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /patient/edit/`

> Body parameter

```json
{
  "firstName": "John",
  "middleInitial": "M",
  "lastName": "Smith",
  "phone": "5551234567"
}
```

<h3 id="edit-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[PatientParams](#schemapatientparams)|true|none|
|» firstName|body|string|true|The first name of the patient.|
|» middleInitial|body|string|false|The middle initial of the patient.|
|» lastName|body|string|true|The last name of the patient.|
|» phone|body|string|true|The phone number of the patient.|

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
|» patient|[PatientParams](#schemapatientparams)|false|none|none|
|»» firstName|string|true|none|The first name of the patient.|
|»» middleInitial|string|false|none|The middle initial of the patient.|
|»» lastName|string|true|none|The last name of the patient.|
|»» phone|string|true|none|The phone number of the patient.|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## Delete a patient (paranoid)

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/delete/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":5}'
```

```javascript
var data = JSON.stringify({
  "id": 5
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/delete/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/delete/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":5}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":5}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/patient/delete/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/delete/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":5}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/delete/"

	payload := strings.NewReader("{\"id\":5}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /patient/delete/`

Removes a patient from an account, but retains patient data in case it is needed.

> Body parameter

```json
{
  "id": 5
}
```

<h3 id="delete-a-patient-(paranoid)-parameters">Parameters</h3>

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

<h3 id="delete-a-patient-(paranoid)-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Patient Deleted|Inline|

<h3 id="delete-a-patient-(paranoid)-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» patient|[PatientParams](#schemapatientparams)|false|none|none|
|»» firstName|string|true|none|The first name of the patient.|
|»» middleInitial|string|false|none|The middle initial of the patient.|
|»» lastName|string|true|none|The last name of the patient.|
|»» phone|string|true|none|The phone number of the patient.|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## Get patient information

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/data_single/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":5}'
```

```javascript
var data = JSON.stringify({
  "id": 5
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/data_single/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/data_single/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":5}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":5}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/patient/data_single/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/data_single/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":5}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/patient/data_single/"

	payload := strings.NewReader("{\"id\":5}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /patient/data_single/`

Given an id, returns information stored for specific patient.

> Body parameter

```json
{
  "id": 5
}
```

<h3 id="get-patient-information-parameters">Parameters</h3>

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

<h3 id="get-patient-information-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Patient Data|Inline|

<h3 id="get-patient-information-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» patient|[PatientParams](#schemapatientparams)|false|none|none|
|»» firstName|string|true|none|The first name of the patient.|
|»» middleInitial|string|false|none|The middle initial of the patient.|
|»» lastName|string|true|none|The last name of the patient.|
|»» phone|string|true|none|The phone number of the patient.|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="epharmix-platform-api-contacts">Contacts</h1>

## Add a contact to your Epharmix account

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/create/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"tz":"US/Eastern","displayName":"Your Nurse Carly","description":"Dr. Woodward (Internal Medicine)","email":"string","primaryPhone":"5551234567","primaryStart":"08:00","primaryEnd":"string","notificationPreference":"C"}'
```

```javascript
var data = JSON.stringify({
  "tz": "US/Eastern",
  "displayName": "Your Nurse Carly",
  "description": "Dr. Woodward (Internal Medicine)",
  "email": "string",
  "primaryPhone": "5551234567",
  "primaryStart": "08:00",
  "primaryEnd": "string",
  "notificationPreference": "C"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/create/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/create/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"tz\":\"US/Eastern\",\"displayName\":\"Your Nurse Carly\",\"description\":\"Dr. Woodward (Internal Medicine)\",\"email\":\"string\",\"primaryPhone\":\"5551234567\",\"primaryStart\":\"08:00\",\"primaryEnd\":\"string\",\"notificationPreference\":\"C\"}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"tz\":\"US/Eastern\",\"displayName\":\"Your Nurse Carly\",\"description\":\"Dr. Woodward (Internal Medicine)\",\"email\":\"string\",\"primaryPhone\":\"5551234567\",\"primaryStart\":\"08:00\",\"primaryEnd\":\"string\",\"notificationPreference\":\"C\"}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/contact/create/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/create/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"tz\":\"US/Eastern\",\"displayName\":\"Your Nurse Carly\",\"description\":\"Dr. Woodward (Internal Medicine)\",\"email\":\"string\",\"primaryPhone\":\"5551234567\",\"primaryStart\":\"08:00\",\"primaryEnd\":\"string\",\"notificationPreference\":\"C\"}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/create/"

	payload := strings.NewReader("{\"tz\":\"US/Eastern\",\"displayName\":\"Your Nurse Carly\",\"description\":\"Dr. Woodward (Internal Medicine)\",\"email\":\"string\",\"primaryPhone\":\"5551234567\",\"primaryStart\":\"08:00\",\"primaryEnd\":\"string\",\"notificationPreference\":\"C\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /contact/create/`

> Body parameter

```json
{
  "tz": "US/Eastern",
  "displayName": "Your Nurse Carly",
  "description": "Dr. Woodward (Internal Medicine)",
  "email": "string",
  "primaryPhone": "5551234567",
  "primaryStart": "08:00",
  "primaryEnd": "string",
  "notificationPreference": "C"
}
```

<h3 id="add-a-contact-to-your-epharmix-account-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ContactParams](#schemacontactparams)|true|none|
|» tz|body|string|false|none|
|» displayName|body|string|false|The patient-facing name used in text messages/calls|
|» description|body|string|false|The internal description to help differentiate contacts|
|» email|body|string|false|none|
|» primaryPhone|body|string|false|A 10-digit phone number, used to route calls/alerts to the contact.|
|» primaryStart|body|string|false|The time that the primary phone becomes active. (24-hour time)|
|» primaryEnd|body|string|false|The time that the primary phone is no longer active. (24-hour time)|
|» notificationPreference|body|string|false|How the contact would like to be notified. Call, Text, Page, Email, Integration, Off|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» notificationPreference|C|
|» notificationPreference|T|
|» notificationPreference|P|
|» notificationPreference|E|
|» notificationPreference|O|

> Example responses

> 201 Response

```json
{
  "status": "OK",
  "contact": {
    "id": 53,
    "displayName": "Your Nurse Carly",
    "description": "Dr. Woodward (Internal Medicine)",
    "email": "string"
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
|» status|string|false|none|none|
|» contact|[ContactObject](#schemacontactobject)|false|none|none|
|»» id|integer|false|none|none|
|»» displayName|string|false|none|The patient-facing name used in text messages/calls|
|»» description|string|false|none|The internal description to help differentiate contacts|
|»» email|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## Edit a contact

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/edit/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"tz":"US/Eastern","displayName":"Your Nurse Carly","description":"Dr. Woodward (Internal Medicine)","email":"string","primaryPhone":"5551234567","primaryStart":"08:00","primaryEnd":"string","notificationPreference":"C"}'
```

```javascript
var data = JSON.stringify({
  "tz": "US/Eastern",
  "displayName": "Your Nurse Carly",
  "description": "Dr. Woodward (Internal Medicine)",
  "email": "string",
  "primaryPhone": "5551234567",
  "primaryStart": "08:00",
  "primaryEnd": "string",
  "notificationPreference": "C"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/edit/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/edit/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"tz\":\"US/Eastern\",\"displayName\":\"Your Nurse Carly\",\"description\":\"Dr. Woodward (Internal Medicine)\",\"email\":\"string\",\"primaryPhone\":\"5551234567\",\"primaryStart\":\"08:00\",\"primaryEnd\":\"string\",\"notificationPreference\":\"C\"}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"tz\":\"US/Eastern\",\"displayName\":\"Your Nurse Carly\",\"description\":\"Dr. Woodward (Internal Medicine)\",\"email\":\"string\",\"primaryPhone\":\"5551234567\",\"primaryStart\":\"08:00\",\"primaryEnd\":\"string\",\"notificationPreference\":\"C\"}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/contact/edit/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/edit/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"tz\":\"US/Eastern\",\"displayName\":\"Your Nurse Carly\",\"description\":\"Dr. Woodward (Internal Medicine)\",\"email\":\"string\",\"primaryPhone\":\"5551234567\",\"primaryStart\":\"08:00\",\"primaryEnd\":\"string\",\"notificationPreference\":\"C\"}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/edit/"

	payload := strings.NewReader("{\"tz\":\"US/Eastern\",\"displayName\":\"Your Nurse Carly\",\"description\":\"Dr. Woodward (Internal Medicine)\",\"email\":\"string\",\"primaryPhone\":\"5551234567\",\"primaryStart\":\"08:00\",\"primaryEnd\":\"string\",\"notificationPreference\":\"C\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /contact/edit/`

> Body parameter

```json
{
  "tz": "US/Eastern",
  "displayName": "Your Nurse Carly",
  "description": "Dr. Woodward (Internal Medicine)",
  "email": "string",
  "primaryPhone": "5551234567",
  "primaryStart": "08:00",
  "primaryEnd": "string",
  "notificationPreference": "C"
}
```

<h3 id="edit-a-contact-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|[ContactParams](#schemacontactparams)|true|none|
|» tz|body|string|false|none|
|» displayName|body|string|false|The patient-facing name used in text messages/calls|
|» description|body|string|false|The internal description to help differentiate contacts|
|» email|body|string|false|none|
|» primaryPhone|body|string|false|A 10-digit phone number, used to route calls/alerts to the contact.|
|» primaryStart|body|string|false|The time that the primary phone becomes active. (24-hour time)|
|» primaryEnd|body|string|false|The time that the primary phone is no longer active. (24-hour time)|
|» notificationPreference|body|string|false|How the contact would like to be notified. Call, Text, Page, Email, Integration, Off|

#### Enumerated Values

|Parameter|Value|
|---|---|
|» notificationPreference|C|
|» notificationPreference|T|
|» notificationPreference|P|
|» notificationPreference|E|
|» notificationPreference|O|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "contact": {
    "id": 53,
    "displayName": "Your Nurse Carly",
    "description": "Dr. Woodward (Internal Medicine)",
    "email": "string"
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
|» status|string|false|none|none|
|» contact|[ContactObject](#schemacontactobject)|false|none|none|
|»» id|integer|false|none|none|
|»» displayName|string|false|none|The patient-facing name used in text messages/calls|
|»» description|string|false|none|The internal description to help differentiate contacts|
|»» email|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## Removes a contact from an account, but retains contact data in case it is needed.

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/delete/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":5}'
```

```javascript
var data = JSON.stringify({
  "id": 5
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/delete/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/delete/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":5}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":5}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/contact/delete/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/delete/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":5}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/delete/"

	payload := strings.NewReader("{\"id\":5}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /contact/delete/`

> Body parameter

```json
{
  "id": 5
}
```

<h3 id="removes-a-contact-from-an-account,-but-retains-contact-data-in-case-it-is-needed.-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "contact": {
    "id": 53,
    "displayName": "Your Nurse Carly",
    "description": "Dr. Woodward (Internal Medicine)",
    "email": "string"
  }
}
```

<h3 id="removes-a-contact-from-an-account,-but-retains-contact-data-in-case-it-is-needed.-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Contact Deleted|Inline|

<h3 id="removes-a-contact-from-an-account,-but-retains-contact-data-in-case-it-is-needed.-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» contact|[ContactObject](#schemacontactobject)|false|none|none|
|»» id|integer|false|none|none|
|»» displayName|string|false|none|The patient-facing name used in text messages/calls|
|»» description|string|false|none|The internal description to help differentiate contacts|
|»» email|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## Get a contact's info

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/data_single/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":5}'
```

```javascript
var data = JSON.stringify({
  "id": 5
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/data_single/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/data_single/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":5}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":5}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/contact/data_single/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/data_single/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":5}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/contact/data_single/"

	payload := strings.NewReader("{\"id\":5}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /contact/data_single/`

> Body parameter

```json
{
  "id": 5
}
```

<h3 id="get-a-contact's-info-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|string|false|none|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "contact": {
    "id": 53,
    "displayName": "Your Nurse Carly",
    "description": "Dr. Woodward (Internal Medicine)",
    "email": "string"
  }
}
```

<h3 id="get-a-contact's-info-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|Retrieved Contact Data|Inline|

<h3 id="get-a-contact's-info-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» contact|[ContactObject](#schemacontactobject)|false|none|none|
|»» id|integer|false|none|none|
|»» displayName|string|false|none|The patient-facing name used in text messages/calls|
|»» description|string|false|none|The internal description to help differentiate contacts|
|»» email|string|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="epharmix-platform-api-triage">Triage</h1>

## Get triage information about patients

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-01-18T10:22:09-06:00","end":"2019-02-18T10:22:09-06:00","options":{"patients":{"danger":{"page":0,"limit":20,"apps":["epxcopd","epxdiabetes"],"order":["addressedAt","desc"]},"warning":{"page":0,"limit":20,"apps":["epxcopd","epxdiabetes"],"order":["addressedAt","desc"]},"success":{"page":0,"limit":20,"apps":["epxcopd","epxdiabetes"],"order":["addressedAt","desc"]},"unresponsive":{"page":0,"limit":20,"apps":["epxcopd","epxdiabetes"],"order":["addressedAt","desc"]}},"alerts":{"page":0,"limit":20,"unreadOnly":false,"apps":["epxdiabetes","epxheart"],"order":"desc"}}}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-01-18T10:22:09-06:00",
  "end": "2019-02-18T10:22:09-06:00",
  "options": {
    "patients": {
      "danger": {
        "page": 0,
        "limit": 20,
        "apps": [
          "epxcopd",
          "epxdiabetes"
        ],
        "order": [
          "addressedAt",
          "desc"
        ]
      },
      "warning": {
        "page": 0,
        "limit": 20,
        "apps": [
          "epxcopd",
          "epxdiabetes"
        ],
        "order": [
          "addressedAt",
          "desc"
        ]
      },
      "success": {
        "page": 0,
        "limit": 20,
        "apps": [
          "epxcopd",
          "epxdiabetes"
        ],
        "order": [
          "addressedAt",
          "desc"
        ]
      },
      "unresponsive": {
        "page": 0,
        "limit": 20,
        "apps": [
          "epxcopd",
          "epxdiabetes"
        ],
        "order": [
          "addressedAt",
          "desc"
        ]
      }
    },
    "alerts": {
      "page": 0,
      "limit": 20,
      "unreadOnly": false,
      "apps": [
        "epxdiabetes",
        "epxheart"
      ],
      "order": "desc"
    }
  }
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-18T10:22:09-06:00\",\"options\":{\"patients\":{\"danger\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"warning\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"success\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"unresponsive\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]}},\"alerts\":{\"page\":0,\"limit\":20,\"unreadOnly\":false,\"apps\":[\"epxdiabetes\",\"epxheart\"],\"order\":\"desc\"}}}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-18T10:22:09-06:00\",\"options\":{\"patients\":{\"danger\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"warning\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"success\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"unresponsive\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]}},\"alerts\":{\"page\":0,\"limit\":20,\"unreadOnly\":false,\"apps\":[\"epxdiabetes\",\"epxheart\"],\"order\":\"desc\"}}}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/triage/data/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-18T10:22:09-06:00\",\"options\":{\"patients\":{\"danger\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"warning\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"success\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"unresponsive\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]}},\"alerts\":{\"page\":0,\"limit\":20,\"unreadOnly\":false,\"apps\":[\"epxdiabetes\",\"epxheart\"],\"order\":\"desc\"}}}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data/"

	payload := strings.NewReader("{\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-18T10:22:09-06:00\",\"options\":{\"patients\":{\"danger\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"warning\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"success\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]},\"unresponsive\":{\"page\":0,\"limit\":20,\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"order\":[\"addressedAt\",\"desc\"]}},\"alerts\":{\"page\":0,\"limit\":20,\"unreadOnly\":false,\"apps\":[\"epxdiabetes\",\"epxheart\"],\"order\":\"desc\"}}}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /triage/data/`

> Body parameter

```json
{
  "start": "2019-01-18T10:22:09-06:00",
  "end": "2019-02-18T10:22:09-06:00",
  "options": {
    "patients": {
      "danger": {
        "page": 0,
        "limit": 20,
        "apps": [
          "epxcopd",
          "epxdiabetes"
        ],
        "order": [
          "addressedAt",
          "desc"
        ]
      },
      "warning": {
        "page": 0,
        "limit": 20,
        "apps": [
          "epxcopd",
          "epxdiabetes"
        ],
        "order": [
          "addressedAt",
          "desc"
        ]
      },
      "success": {
        "page": 0,
        "limit": 20,
        "apps": [
          "epxcopd",
          "epxdiabetes"
        ],
        "order": [
          "addressedAt",
          "desc"
        ]
      },
      "unresponsive": {
        "page": 0,
        "limit": 20,
        "apps": [
          "epxcopd",
          "epxdiabetes"
        ],
        "order": [
          "addressedAt",
          "desc"
        ]
      }
    },
    "alerts": {
      "page": 0,
      "limit": 20,
      "unreadOnly": false,
      "apps": [
        "epxdiabetes",
        "epxheart"
      ],
      "order": "desc"
    }
  }
}
```

<h3 id="get-triage-information-about-patients-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» start|body|string|false|the start date of the timeframe, ISO format|
|» end|body|string|false|the end date of the timeframe, ISO format (optional)|
|» options|body|[TriageOptions](#schematriageoptions)|false|none|
|»» patients|body|object|false|none|
|»»» danger|body|[TriageCategory](#schematriagecategory)|false|none|
|»»»» page|body|integer|true|none|
|»»»» limit|body|integer|true|none|
|»»»» apps|body|[string]|false|none|
|»»»» order|body|[oneOf]|false|none|
|»»»»» *anonymous*|body|string|false|none|
|»»»»» *anonymous*|body|string|false|none|
|»»»» warning|body|[TriageCategory](#schematriagecategory)|false|none|
|»»»» success|body|[TriageCategory](#schematriagecategory)|false|none|
|»»»» unresponsive|body|[TriageCategory](#schematriagecategory)|false|none|
|»»» alerts|body|object|false|none|
|»»»» page|body|integer|true|none|
|»»»» limit|body|integer|true|none|
|»»»» unreadOnly|body|boolean|false|none|
|»»»» apps|body|[string]|false|none|
|»»»» order|body|string|false|none|

#### Enumerated Values

|Parameter|Value|
|---|---|
|»»»»» *anonymous*|alerts|
|»»»»» *anonymous*|addressedAt|
|»»»»» *anonymous*|snoozedUntil|
|»»»»» *anonymous*|lastName|
|»»»»» *anonymous*|enrollDate|
|»»»»» *anonymous*|asc|
|»»»»» *anonymous*|desc|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "alerts": {
    "limit": 0,
    "page": 0,
    "total": 0,
    "results": [
      {
        "id": 2543,
        "app": "epxcopd",
        "body": "Patient Brionna has responded that she is having trouble breathing.",
        "contact": {
          "id": 53,
          "displayName": "Your Nurse Carly",
          "description": "Dr. Woodward (Internal Medicine)",
          "email": "string"
        },
        "createdAt": "2019-02-01T19:37:00.000Z",
        "isRead": true,
        "snoozedAt": "2019-02-18T10:00:00-06:00",
        "snoozedUntil": "2019-02-25T10:00:09-06:00",
        "patient": {
          "firstName": "John",
          "middleInitial": "M",
          "lastName": "Smith",
          "phone": "5551234567",
          "id": 623
        }
      }
    ]
  },
  "contacts": [
    {
      "id": 53,
      "displayName": "Your Nurse Carly",
      "description": "Dr. Woodward (Internal Medicine)",
      "email": "string"
    }
  ],
  "patientIds": [
    0
  ],
  "patients": {
    "danger": {
      "page": 0,
      "limit": 0,
      "total": 0,
      "results": [
        {
          "alerts": [
            {
              "id": 2543,
              "app": "epxcopd",
              "body": "Patient Brionna has responded that she is having trouble breathing.",
              "contact": {
                "id": 53,
                "displayName": "Your Nurse Carly",
                "description": "Dr. Woodward (Internal Medicine)",
                "email": "string"
              },
              "createdAt": "2019-02-01T19:37:00.000Z",
              "isRead": true,
              "snoozedAt": "2019-02-18T10:00:00-06:00",
              "snoozedUntil": "2019-02-25T10:00:09-06:00",
              "patient": {
                "firstName": "John",
                "middleInitial": "M",
                "lastName": "Smith",
                "phone": "5551234567",
                "id": 623
              }
            }
          ],
          "apps": {
            "epx{appname}": {
              "alert": {
                "total": 8,
                "unread": 2,
                "active": 2
              },
              "category": 1,
              "contactId": 81,
              "engagement": {
                "responded": 10,
                "total": 14,
                "rate": 0.714285
              },
              "schedule": {
                "start": "2019-02-05T10:00:09-06:00",
                "end": "2019-03-05T10:00:09-06:00",
                "times": [
                  "09:00",
                  "17:30"
                ],
                "days": [
                  1,
                  3,
                  5
                ],
                "method": "message",
                "tz": "US/Central",
                "patientId": 372,
                "contactId": 39,
                "id": 14,
                "isCanceled": true,
                "canceledAt": "string"
              }
            }
          },
          "category": 2,
          "patient": {
            "firstName": "John",
            "middleInitial": "M",
            "lastName": "Smith",
            "phone": "5551234567",
            "id": 623
          }
        }
      ]
    }
  }
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
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## Get triage information about a single patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data_single/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":150,"start":"2019-01-18T10:22:09-06:00","end":"2019-02-18T10:22:09-06:00","tz":"US/Central"}'
```

```javascript
var data = JSON.stringify({
  "id": 150,
  "start": "2019-01-18T10:22:09-06:00",
  "end": "2019-02-18T10:22:09-06:00",
  "tz": "US/Central"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data_single/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data_single/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":150,\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-18T10:22:09-06:00\",\"tz\":\"US/Central\"}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":150,\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-18T10:22:09-06:00\",\"tz\":\"US/Central\"}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/triage/data_single/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data_single/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":150,\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-18T10:22:09-06:00\",\"tz\":\"US/Central\"}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/triage/data_single/"

	payload := strings.NewReader("{\"id\":150,\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-18T10:22:09-06:00\",\"tz\":\"US/Central\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /triage/data_single/`

> Body parameter

```json
{
  "id": 150,
  "start": "2019-01-18T10:22:09-06:00",
  "end": "2019-02-18T10:22:09-06:00",
  "tz": "US/Central"
}
```

<h3 id="get-triage-information-about-a-single-patient-parameters">Parameters</h3>

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
  "status": "OK",
  "contacts": [
    {
      "id": 53,
      "displayName": "Your Nurse Carly",
      "description": "Dr. Woodward (Internal Medicine)",
      "email": "string"
    }
  ],
  "data": {
    "alerts": [
      {
        "id": 2543,
        "app": "epxcopd",
        "body": "Patient Brionna has responded that she is having trouble breathing.",
        "contact": {
          "id": 53,
          "displayName": "Your Nurse Carly",
          "description": "Dr. Woodward (Internal Medicine)",
          "email": "string"
        },
        "createdAt": "2019-02-01T19:37:00.000Z",
        "isRead": true,
        "snoozedAt": "2019-02-18T10:00:00-06:00",
        "snoozedUntil": "2019-02-25T10:00:09-06:00",
        "patient": {
          "firstName": "John",
          "middleInitial": "M",
          "lastName": "Smith",
          "phone": "5551234567",
          "id": 623
        }
      }
    ],
    "apps": {
      "epx{appname}": {
        "alert": {
          "total": 8,
          "unread": 2,
          "active": 2
        },
        "category": 1,
        "contactId": 81,
        "engagement": {
          "responded": 10,
          "total": 14,
          "rate": 0.714285
        },
        "schedule": {
          "start": "2019-02-05T10:00:09-06:00",
          "end": "2019-03-05T10:00:09-06:00",
          "times": [
            "09:00",
            "17:30"
          ],
          "days": [
            1,
            3,
            5
          ],
          "method": "message",
          "tz": "US/Central",
          "patientId": 372,
          "contactId": 39,
          "id": 14,
          "isCanceled": true,
          "canceledAt": "string"
        }
      }
    },
    "category": 2,
    "patient": {
      "firstName": "John",
      "middleInitial": "M",
      "lastName": "Smith",
      "phone": "5551234567",
      "id": 623
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
|» status|string|false|none|none|
|» contacts|[[ContactObject](#schemacontactobject)]|false|none|none|
|»» id|integer|false|none|none|
|»» displayName|string|false|none|The patient-facing name used in text messages/calls|
|»» description|string|false|none|The internal description to help differentiate contacts|
|»» email|string|false|none|none|
|» data|[TriageCategoryResult](#schematriagecategoryresult)|false|none|none|
|»» alerts|[[AlertObject](#schemaalertobject)]|false|none|none|
|»»» id|integer|false|none|none|
|»»» app|string|false|none|none|
|»»» body|string|false|none|none|
|»»» contact|[ContactObject](#schemacontactobject)|false|none|none|
|»»» createdAt|string|false|none|When the alert was triggered (ISO timestamp)|
|»»» isRead|boolean|false|none|True if the alert has been addressed by a user|
|»»» snoozedAt|string|false|none|When the alert was snoozed (ISO timestamp)|
|»»» snoozedUntil|string|false|none|When the alert will no longer be snoozed (ISO timestamp)|
|»»» patient|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»»» *anonymous*|[PatientParams](#schemapatientparams)|false|none|none|
|»»»»» firstName|string|true|none|The first name of the patient.|
|»»»»» middleInitial|string|false|none|The middle initial of the patient.|
|»»»»» lastName|string|true|none|The last name of the patient.|
|»»»»» phone|string|true|none|The phone number of the patient.|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»»» *anonymous*|object|false|none|none|
|»»»»» id|number|true|none|none|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»»» apps|object|false|none|none|
|»»»»» epx{appname}|object|false|none|none|
|»»»»»» alert|object|false|none|none|
|»»»»»»» total|integer|false|none|The total amount of alerts triggered by this patient in the given timeframe|
|»»»»»»» unread|integer|false|none|The amount of unresolved alerts for the patient in the given timeframe|
|»»»»»»» active|integer|false|none|none|
|»»»»»» category|integer|false|none|The current category for the corresponding app. 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive|
|»»»»»» contactId|integer|false|none|The ID of the patient's contact for this app|
|»»»»»» engagement|object|false|none|none|
|»»»»»»» responded|integer|false|none|The amount of sessions the patient responded to for the corresponding app (in the set timeframe)|
|»»»»»»» total|integer|false|none|The total amount of sessions the patient had for the corresponding app (in the set timeframe)|
|»»»»»»» rate|number|false|none|The response rate for this app (in the set timeframe)|
|»»»»»» schedule|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»»»»»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»»»»»»» start|string|false|none|The start date of the intervention|
|»»»»»»»» end|string|false|none|The end date of the intervention (optional)|
|»»»»»»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»»»»»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»»»»»»» method|string|false|none|The method in which the patient will be contacted.|
|»»»»»»»» tz|string|false|none|The timezone of the schedule|
|»»»»»»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»»»»»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»»»»»» *anonymous*|object|false|none|none|
|»»»»»»»» id|integer|false|none|none|
|»»»»»»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»»»»»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»»»»»»» patientId|integer|false|none|The ID of the patient|
|»»»»»»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

*continued*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»»»»»» category|integer|false|none|The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent|
|»»»»»»» patient|any|false|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="epharmix-platform-api-alerts">Alerts</h1>

## Fetch data about alerts

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/data/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"tz":"US/Eastern","limit":30,"page":5,"contactIds":[13,15,16],"patientIds":[1321,1522,1618],"apps":["epxcopd","epxdiabetes"],"unreadOnly":true,"snoozedOnly":true,"start":"2019-01-18T10:22:09-06:00","end":"2019-02-05T10:22:09-06:00"}'
```

```javascript
var data = JSON.stringify({
  "tz": "US/Eastern",
  "limit": 30,
  "page": 5,
  "contactIds": [
    13,
    15,
    16
  ],
  "patientIds": [
    1321,
    1522,
    1618
  ],
  "apps": [
    "epxcopd",
    "epxdiabetes"
  ],
  "unreadOnly": true,
  "snoozedOnly": true,
  "start": "2019-01-18T10:22:09-06:00",
  "end": "2019-02-05T10:22:09-06:00"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/data/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/data/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"tz\":\"US/Eastern\",\"limit\":30,\"page\":5,\"contactIds\":[13,15,16],\"patientIds\":[1321,1522,1618],\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"unreadOnly\":true,\"snoozedOnly\":true,\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-05T10:22:09-06:00\"}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"tz\":\"US/Eastern\",\"limit\":30,\"page\":5,\"contactIds\":[13,15,16],\"patientIds\":[1321,1522,1618],\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"unreadOnly\":true,\"snoozedOnly\":true,\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-05T10:22:09-06:00\"}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/alert/data/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/data/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"tz\":\"US/Eastern\",\"limit\":30,\"page\":5,\"contactIds\":[13,15,16],\"patientIds\":[1321,1522,1618],\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"unreadOnly\":true,\"snoozedOnly\":true,\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-05T10:22:09-06:00\"}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/data/"

	payload := strings.NewReader("{\"tz\":\"US/Eastern\",\"limit\":30,\"page\":5,\"contactIds\":[13,15,16],\"patientIds\":[1321,1522,1618],\"apps\":[\"epxcopd\",\"epxdiabetes\"],\"unreadOnly\":true,\"snoozedOnly\":true,\"start\":\"2019-01-18T10:22:09-06:00\",\"end\":\"2019-02-05T10:22:09-06:00\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /alert/data/`

> Body parameter

```json
{
  "tz": "US/Eastern",
  "limit": 30,
  "page": 5,
  "contactIds": [
    13,
    15,
    16
  ],
  "patientIds": [
    1321,
    1522,
    1618
  ],
  "apps": [
    "epxcopd",
    "epxdiabetes"
  ],
  "unreadOnly": true,
  "snoozedOnly": true,
  "start": "2019-01-18T10:22:09-06:00",
  "end": "2019-02-05T10:22:09-06:00"
}
```

<h3 id="fetch-data-about-alerts-parameters">Parameters</h3>

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
  "status": "OK",
  "alerts": [
    {
      "id": 2543,
      "app": "epxcopd",
      "body": "Patient Brionna has responded that she is having trouble breathing.",
      "contact": {
        "id": 53,
        "displayName": "Your Nurse Carly",
        "description": "Dr. Woodward (Internal Medicine)",
        "email": "string"
      },
      "createdAt": "2019-02-01T19:37:00.000Z",
      "isRead": true,
      "snoozedAt": "2019-02-18T10:00:00-06:00",
      "snoozedUntil": "2019-02-25T10:00:09-06:00",
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ]
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
|» status|string|false|none|none|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|none|
|»» id|integer|false|none|none|
|»» app|string|false|none|none|
|»» body|string|false|none|none|
|»» contact|[ContactObject](#schemacontactobject)|false|none|none|
|»»» id|integer|false|none|none|
|»»» displayName|string|false|none|The patient-facing name used in text messages/calls|
|»»» description|string|false|none|The internal description to help differentiate contacts|
|»»» email|string|false|none|none|
|»» createdAt|string|false|none|When the alert was triggered (ISO timestamp)|
|»» isRead|boolean|false|none|True if the alert has been addressed by a user|
|»» snoozedAt|string|false|none|When the alert was snoozed (ISO timestamp)|
|»» snoozedUntil|string|false|none|When the alert will no longer be snoozed (ISO timestamp)|
|»» patient|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[PatientParams](#schemapatientparams)|false|none|none|
|»»»» firstName|string|true|none|The first name of the patient.|
|»»»» middleInitial|string|false|none|The middle initial of the patient.|
|»»»» lastName|string|true|none|The last name of the patient.|
|»»»» phone|string|true|none|The phone number of the patient.|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» id|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## Snooze alerts

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/snooze/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"tz":"US/Eastern","reason":"Patient has been asked to update medication, will check back in a week","snoozeUntil":"2019-02-15T10:22:09-06:00","ids":[5722,5725,5729]}'
```

```javascript
var data = JSON.stringify({
  "tz": "US/Eastern",
  "reason": "Patient has been asked to update medication, will check back in a week",
  "snoozeUntil": "2019-02-15T10:22:09-06:00",
  "ids": [
    5722,
    5725,
    5729
  ]
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/snooze/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/snooze/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"tz\":\"US/Eastern\",\"reason\":\"Patient has been asked to update medication, will check back in a week\",\"snoozeUntil\":\"2019-02-15T10:22:09-06:00\",\"ids\":[5722,5725,5729]}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"tz\":\"US/Eastern\",\"reason\":\"Patient has been asked to update medication, will check back in a week\",\"snoozeUntil\":\"2019-02-15T10:22:09-06:00\",\"ids\":[5722,5725,5729]}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/alert/snooze/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/snooze/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"tz\":\"US/Eastern\",\"reason\":\"Patient has been asked to update medication, will check back in a week\",\"snoozeUntil\":\"2019-02-15T10:22:09-06:00\",\"ids\":[5722,5725,5729]}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/snooze/"

	payload := strings.NewReader("{\"tz\":\"US/Eastern\",\"reason\":\"Patient has been asked to update medication, will check back in a week\",\"snoozeUntil\":\"2019-02-15T10:22:09-06:00\",\"ids\":[5722,5725,5729]}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /alert/snooze/`

> Body parameter

```json
{
  "tz": "US/Eastern",
  "reason": "Patient has been asked to update medication, will check back in a week",
  "snoozeUntil": "2019-02-15T10:22:09-06:00",
  "ids": [
    5722,
    5725,
    5729
  ]
}
```

<h3 id="snooze-alerts-parameters">Parameters</h3>

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
  "status": "OK",
  "alerts": [
    {
      "id": 2543,
      "app": "epxcopd",
      "body": "Patient Brionna has responded that she is having trouble breathing.",
      "contact": {
        "id": 53,
        "displayName": "Your Nurse Carly",
        "description": "Dr. Woodward (Internal Medicine)",
        "email": "string"
      },
      "createdAt": "2019-02-01T19:37:00.000Z",
      "isRead": true,
      "snoozedAt": "2019-02-18T10:00:00-06:00",
      "snoozedUntil": "2019-02-25T10:00:09-06:00",
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ]
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
|» status|string|false|none|none|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|none|
|»» id|integer|false|none|none|
|»» app|string|false|none|none|
|»» body|string|false|none|none|
|»» contact|[ContactObject](#schemacontactobject)|false|none|none|
|»»» id|integer|false|none|none|
|»»» displayName|string|false|none|The patient-facing name used in text messages/calls|
|»»» description|string|false|none|The internal description to help differentiate contacts|
|»»» email|string|false|none|none|
|»» createdAt|string|false|none|When the alert was triggered (ISO timestamp)|
|»» isRead|boolean|false|none|True if the alert has been addressed by a user|
|»» snoozedAt|string|false|none|When the alert was snoozed (ISO timestamp)|
|»» snoozedUntil|string|false|none|When the alert will no longer be snoozed (ISO timestamp)|
|»» patient|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[PatientParams](#schemapatientparams)|false|none|none|
|»»»» firstName|string|true|none|The first name of the patient.|
|»»»» middleInitial|string|false|none|The middle initial of the patient.|
|»»»» lastName|string|true|none|The last name of the patient.|
|»»»» phone|string|true|none|The phone number of the patient.|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» id|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

## Change the resolved (isRead) value for alerts

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/set_status/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"reason":"Patient has been asked to update medication, will check back in a week","status":true,"ids":[5722,5725,5729]}'
```

```javascript
var data = JSON.stringify({
  "reason": "Patient has been asked to update medication, will check back in a week",
  "status": true,
  "ids": [
    5722,
    5725,
    5729
  ]
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/set_status/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/set_status/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"reason\":\"Patient has been asked to update medication, will check back in a week\",\"status\":true,\"ids\":[5722,5725,5729]}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"reason\":\"Patient has been asked to update medication, will check back in a week\",\"status\":true,\"ids\":[5722,5725,5729]}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/alert/set_status/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/set_status/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"reason\":\"Patient has been asked to update medication, will check back in a week\",\"status\":true,\"ids\":[5722,5725,5729]}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/alert/set_status/"

	payload := strings.NewReader("{\"reason\":\"Patient has been asked to update medication, will check back in a week\",\"status\":true,\"ids\":[5722,5725,5729]}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /alert/set_status/`

> Body parameter

```json
{
  "reason": "Patient has been asked to update medication, will check back in a week",
  "status": true,
  "ids": [
    5722,
    5725,
    5729
  ]
}
```

<h3 id="change-the-resolved-(isread)-value-for-alerts-parameters">Parameters</h3>

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
  "status": "OK",
  "alerts": [
    {
      "id": 2543,
      "app": "epxcopd",
      "body": "Patient Brionna has responded that she is having trouble breathing.",
      "contact": {
        "id": 53,
        "displayName": "Your Nurse Carly",
        "description": "Dr. Woodward (Internal Medicine)",
        "email": "string"
      },
      "createdAt": "2019-02-01T19:37:00.000Z",
      "isRead": true,
      "snoozedAt": "2019-02-18T10:00:00-06:00",
      "snoozedUntil": "2019-02-25T10:00:09-06:00",
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ]
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
|» status|string|false|none|none|
|» alerts|[[AlertObject](#schemaalertobject)]|false|none|none|
|»» id|integer|false|none|none|
|»» app|string|false|none|none|
|»» body|string|false|none|none|
|»» contact|[ContactObject](#schemacontactobject)|false|none|none|
|»»» id|integer|false|none|none|
|»»» displayName|string|false|none|The patient-facing name used in text messages/calls|
|»»» description|string|false|none|The internal description to help differentiate contacts|
|»»» email|string|false|none|none|
|»» createdAt|string|false|none|When the alert was triggered (ISO timestamp)|
|»» isRead|boolean|false|none|True if the alert has been addressed by a user|
|»» snoozedAt|string|false|none|When the alert was snoozed (ISO timestamp)|
|»» snoozedUntil|string|false|none|When the alert will no longer be snoozed (ISO timestamp)|
|»» patient|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[PatientParams](#schemapatientparams)|false|none|none|
|»»»» firstName|string|true|none|The first name of the patient.|
|»»»» middleInitial|string|false|none|The middle initial of the patient.|
|»»»» lastName|string|true|none|The last name of the patient.|
|»»»» phone|string|true|none|The phone number of the patient.|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» id|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|

<aside class="success">
This operation does not require authentication
</aside>

<h1 id="epharmix-platform-api-interventions">Interventions</h1>

## EpxDiabetes: Create a schedule for the patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/create/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-02-05T10:00:09-06:00","end":"2019-03-05T10:00:09-06:00","times":["09:00","17:30"],"days":[1,3,5],"method":"message","tz":"US/Central","patientId":1638,"contactId":76,"language":"en","isFixed":true,"mode":"D"}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "language": "en",
  "isFixed": true,
  "mode": "D"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/create/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/create/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\"}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\"}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxdiabetes/create/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/create/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\"}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/create/"

	payload := strings.NewReader("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxdiabetes/create/`

Enrolls a patient into the Epharmix EpxDiabetes intervention.

> Body parameter

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "language": "en",
  "isFixed": true,
  "mode": "D"
}
```

<h3 id="epxdiabetes:-create-a-schedule-for-the-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 201 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 1638,
      "contactId": 76
    }
  ]
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
|» status|string|false|none|none|
|» schedule|[[ScheduleParams](#schemascheduleparams)]|false|none|none|
|»» start|string|false|none|The start date of the intervention|
|»» end|string|false|none|The end date of the intervention (optional)|
|»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»» method|string|false|none|The method in which the patient will be contacted.|
|»» tz|string|false|none|The timezone of the schedule|
|»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxDiabetes: Edit a schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/edit/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-02-05T10:00:09-06:00","end":"2019-03-05T10:00:09-06:00","times":["09:00","17:30"],"days":[1,3,5],"method":"message","tz":"US/Central","patientId":1638,"contactId":76,"id":681,"isFixed":true,"mode":"T"}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "id": 681,
  "isFixed": true,
  "mode": "T"
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/edit/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/edit/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\"}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\"}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxdiabetes/edit/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/edit/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\"}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/edit/"

	payload := strings.NewReader("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\"}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxdiabetes/edit/`

> Body parameter

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "id": 681,
  "isFixed": true,
  "mode": "T"
}
```

<h3 id="epxdiabetes:-edit-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxdiabetes:-edit-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Schedule Edited|Inline|

<h3 id="epxdiabetes:-edit-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxDiabetes: Cancel a schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/cancel/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":681}'
```

```javascript
var data = JSON.stringify({
  "id": 681
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/cancel/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/cancel/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":681}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":681}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxdiabetes/cancel/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/cancel/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":681}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/cancel/"

	payload := strings.NewReader("{\"id\":681}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxdiabetes/cancel/`

> Body parameter

```json
{
  "id": 681
}
```

<h3 id="epxdiabetes:-cancel-a-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|integer|false|The ID of the schedule being canceled|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxdiabetes:-cancel-a-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Schedule Canceled|Inline|

<h3 id="epxdiabetes:-cancel-a-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxDiabetes: get epxdiabetes data for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/data/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"patient":2645}'
```

```javascript
var data = JSON.stringify({
  "patient": 2645
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/data/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/data/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"patient\":2645}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"patient\":2645}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxdiabetes/data/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/data/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"patient\":2645}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxdiabetes/data/"

	payload := strings.NewReader("{\"patient\":2645}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxdiabetes/data/`

> Body parameter

```json
{
  "patient": 2645
}
```

<h3 id="epxdiabetes:-get-epxdiabetes-data-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» patient|body|integer|false|The ID of the patient|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "sessions": [
    {
      "time": "2019-02-15T10:22:09-06:00",
      "respondedAt": "2019-02-15T10:22:15-55:00",
      "bloodSugar": 125,
      "hasEaten": true,
      "isCanceled": true,
      "schedule": {
        "start": "2019-02-05T10:00:09-06:00",
        "end": "2019-03-05T10:00:09-06:00",
        "times": [
          "09:00",
          "17:30"
        ],
        "days": [
          1,
          3,
          5
        ],
        "method": "message",
        "tz": "US/Central",
        "patientId": 1638,
        "contactId": 76
      },
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ]
}
```

<h3 id="epxdiabetes:-get-epxdiabetes-data-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxDiabetes Session Data|Inline|

<h3 id="epxdiabetes:-get-epxdiabetes-data-for-a-patient-responseschema">Response Schema</h3>

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
|»» schedule|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|
|»» patient|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[PatientParams](#schemapatientparams)|false|none|none|
|»»»» firstName|string|true|none|The first name of the patient.|
|»»»» middleInitial|string|false|none|The middle initial of the patient.|
|»»»» lastName|string|true|none|The last name of the patient.|
|»»»» phone|string|true|none|The phone number of the patient.|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» id|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxHypertension: Create an epxhypertension schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/create/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-02-05T10:00:09-06:00","end":"2019-03-05T10:00:09-06:00","times":["09:00","17:30"],"days":[1,3,5],"method":"message","tz":"US/Central","patientId":1638,"contactId":76,"language":"en","isFixed":true,"mode":"D","hasMedInstruction":true}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "language": "en",
  "isFixed": true,
  "mode": "D",
  "hasMedInstruction": true
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/create/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/create/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\",\"hasMedInstruction\":true}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\",\"hasMedInstruction\":true}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxhyper/create/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/create/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\",\"hasMedInstruction\":true}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/create/"

	payload := strings.NewReader("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\",\"hasMedInstruction\":true}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxhyper/create/`

> Body parameter

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "language": "en",
  "isFixed": true,
  "mode": "D",
  "hasMedInstruction": true
}
```

<h3 id="epxhypertension:-create-an-epxhypertension-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 201 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxhypertension:-create-an-epxhypertension-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxHypertension Schedule Created|Inline|

<h3 id="epxhypertension:-create-an-epxhypertension-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxHypertension: Edit an epxhypertension schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/edit/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-02-05T10:00:09-06:00","end":"2019-03-05T10:00:09-06:00","times":["09:00","17:30"],"days":[1,3,5],"method":"message","tz":"US/Central","patientId":1638,"contactId":76,"id":681,"isFixed":true,"mode":"T","hasMedInstruction":true}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "id": 681,
  "isFixed": true,
  "mode": "T",
  "hasMedInstruction": true
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/edit/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/edit/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"hasMedInstruction\":true}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"hasMedInstruction\":true}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxhyper/edit/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/edit/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"hasMedInstruction\":true}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/edit/"

	payload := strings.NewReader("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"hasMedInstruction\":true}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxhyper/edit/`

> Body parameter

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "id": 681,
  "isFixed": true,
  "mode": "T",
  "hasMedInstruction": true
}
```

<h3 id="epxhypertension:-edit-an-epxhypertension-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxhypertension:-edit-an-epxhypertension-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHypertension Schedule Edited|Inline|

<h3 id="epxhypertension:-edit-an-epxhypertension-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxHypertension: Cancel an EpxHypertension schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/cancel/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":681}'
```

```javascript
var data = JSON.stringify({
  "id": 681
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/cancel/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/cancel/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":681}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":681}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxhyper/cancel/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/cancel/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":681}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/cancel/"

	payload := strings.NewReader("{\"id\":681}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxhyper/cancel/`

> Body parameter

```json
{
  "id": 681
}
```

<h3 id="epxhypertension:-cancel-an-epxhypertension-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|integer|false|The ID of the schedule being canceled|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxhypertension:-cancel-an-epxhypertension-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHypertension Schedule Canceled|Inline|

<h3 id="epxhypertension:-cancel-an-epxhypertension-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxHypertension: Get EpxHypertension data for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/data/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"patient":2645}'
```

```javascript
var data = JSON.stringify({
  "patient": 2645
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/data/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/data/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"patient\":2645}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"patient\":2645}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxhyper/data/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/data/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"patient\":2645}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxhyper/data/"

	payload := strings.NewReader("{\"patient\":2645}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxhyper/data/`

> Body parameter

```json
{
  "patient": 2645
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
  "status": "OK",
  "sessions": [
    {
      "time": "2019-02-15T10:22:09-06:00",
      "respondedAt": "2019-02-15T10:22:15-55:00",
      "upper": 110,
      "lower": 80,
      "tookMedication": true,
      "isCanceled": true,
      "schedule": {
        "start": "2019-02-05T10:00:09-06:00",
        "end": "2019-03-05T10:00:09-06:00",
        "times": [
          "09:00",
          "17:30"
        ],
        "days": [
          1,
          3,
          5
        ],
        "method": "message",
        "tz": "US/Central",
        "patientId": 1638,
        "contactId": 76
      },
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ]
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
|»» schedule|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|
|»» patient|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[PatientParams](#schemapatientparams)|false|none|none|
|»»»» firstName|string|true|none|The first name of the patient.|
|»»»» middleInitial|string|false|none|The middle initial of the patient.|
|»»»» lastName|string|true|none|The last name of the patient.|
|»»»» phone|string|true|none|The phone number of the patient.|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» id|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxCopd: Create an EpxCOPD schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/create/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-02-05T10:00:09-06:00","end":"2019-03-05T10:00:09-06:00","times":["09:00","17:30"],"days":[1,3,5],"method":"message","tz":"US/Central","patientId":1638,"contactId":76,"language":"en","isFixed":true,"mode":"D","shouldAskSymptoms":true}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "language": "en",
  "isFixed": true,
  "mode": "D",
  "shouldAskSymptoms": true
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/create/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/create/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\",\"shouldAskSymptoms\":true}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\",\"shouldAskSymptoms\":true}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxcopd/create/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/create/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\",\"shouldAskSymptoms\":true}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/create/"

	payload := strings.NewReader("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"language\":\"en\",\"isFixed\":true,\"mode\":\"D\",\"shouldAskSymptoms\":true}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxcopd/create/`

> Body parameter

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "language": "en",
  "isFixed": true,
  "mode": "D",
  "shouldAskSymptoms": true
}
```

<h3 id="epxcopd:-create-an-epxcopd-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 201 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxcopd:-create-an-epxcopd-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxCOPD Schedule Created|Inline|

<h3 id="epxcopd:-create-an-epxcopd-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxCopd: Edit an EpxCOPD schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/edit/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-02-05T10:00:09-06:00","end":"2019-03-05T10:00:09-06:00","times":["09:00","17:30"],"days":[1,3,5],"method":"message","tz":"US/Central","patientId":1638,"contactId":76,"id":681,"isFixed":true,"mode":"T","shouldAskSymptoms":true}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "id": 681,
  "isFixed": true,
  "mode": "T",
  "shouldAskSymptoms": true
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/edit/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/edit/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"shouldAskSymptoms\":true}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"shouldAskSymptoms\":true}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxcopd/edit/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/edit/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"shouldAskSymptoms\":true}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/edit/"

	payload := strings.NewReader("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"shouldAskSymptoms\":true}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxcopd/edit/`

> Body parameter

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "id": 681,
  "isFixed": true,
  "mode": "T",
  "shouldAskSymptoms": true
}
```

<h3 id="epxcopd:-edit-an-epxcopd-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxcopd:-edit-an-epxcopd-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxCOPD Schedule Edited|Inline|

<h3 id="epxcopd:-edit-an-epxcopd-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxCopd: Cancel an EpxCOPD schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/cancel/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":681}'
```

```javascript
var data = JSON.stringify({
  "id": 681
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/cancel/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/cancel/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":681}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":681}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxcopd/cancel/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/cancel/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":681}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/cancel/"

	payload := strings.NewReader("{\"id\":681}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxcopd/cancel/`

> Body parameter

```json
{
  "id": 681
}
```

<h3 id="epxcopd:-cancel-an-epxcopd-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|integer|false|The ID of the schedule being canceled|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxcopd:-cancel-an-epxcopd-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxCOPD Schedule Canceled|Inline|

<h3 id="epxcopd:-cancel-an-epxcopd-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxCOPD: Get EpxCOPD data for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/data/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"patient":2645}'
```

```javascript
var data = JSON.stringify({
  "patient": 2645
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/data/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/data/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"patient\":2645}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"patient\":2645}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxcopd/data/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/data/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"patient\":2645}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxcopd/data/"

	payload := strings.NewReader("{\"patient\":2645}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxcopd/data/`

> Body parameter

```json
{
  "patient": 2645
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
  "status": "OK",
  "sessions": [
    {
      "time": "2019-02-15T10:22:09-06:00",
      "respondedAt": "2019-02-15T10:22:15-55:00",
      "breathing": 1,
      "coughing": 1,
      "sputum": 3,
      "isCanceled": true,
      "schedule": {
        "start": "2019-02-05T10:00:09-06:00",
        "end": "2019-03-05T10:00:09-06:00",
        "times": [
          "09:00",
          "17:30"
        ],
        "days": [
          1,
          3,
          5
        ],
        "method": "message",
        "tz": "US/Central",
        "patientId": 1638,
        "contactId": 76
      },
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ]
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
|»» schedule|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|
|»» patient|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[PatientParams](#schemapatientparams)|false|none|none|
|»»»» firstName|string|true|none|The first name of the patient.|
|»»»» middleInitial|string|false|none|The middle initial of the patient.|
|»»»» lastName|string|true|none|The last name of the patient.|
|»»»» phone|string|true|none|The phone number of the patient.|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» id|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxHeartFailure: Create an EpxHeartFailure schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/create/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-02-05T10:00:09-06:00","end":"2019-03-05T10:00:09-06:00","times":["09:00","17:30"],"days":[1,3,5],"method":"message","tz":"US/Central","patientId":1638,"contactId":76,"isFixed":true,"mode":"D","hasScale":true}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "isFixed": true,
  "mode": "D",
  "hasScale": true
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/create/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/create/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"isFixed\":true,\"mode\":\"D\",\"hasScale\":true}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"isFixed\":true,\"mode\":\"D\",\"hasScale\":true}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxheart/create/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/create/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"isFixed\":true,\"mode\":\"D\",\"hasScale\":true}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/create/"

	payload := strings.NewReader("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"isFixed\":true,\"mode\":\"D\",\"hasScale\":true}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxheart/create/`

> Body parameter

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "isFixed": true,
  "mode": "D",
  "hasScale": true
}
```

<h3 id="epxheartfailure:-create-an-epxheartfailure-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 201 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxheartfailure:-create-an-epxheartfailure-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|201|[Created](https://tools.ietf.org/html/rfc7231#section-6.3.2)|EpxHeartFailure Schedule Created|Inline|

<h3 id="epxheartfailure:-create-an-epxheartfailure-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **201**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxHeartFailure: Edit an EpxHeartFailure schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/edit/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"start":"2019-02-05T10:00:09-06:00","end":"2019-03-05T10:00:09-06:00","times":["09:00","17:30"],"days":[1,3,5],"method":"message","tz":"US/Central","patientId":1638,"contactId":76,"id":681,"isFixed":true,"mode":"T","hasScale":true}'
```

```javascript
var data = JSON.stringify({
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "id": 681,
  "isFixed": true,
  "mode": "T",
  "hasScale": true
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/edit/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/edit/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"hasScale\":true}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"hasScale\":true}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxheart/edit/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/edit/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"hasScale\":true}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/edit/"

	payload := strings.NewReader("{\"start\":\"2019-02-05T10:00:09-06:00\",\"end\":\"2019-03-05T10:00:09-06:00\",\"times\":[\"09:00\",\"17:30\"],\"days\":[1,3,5],\"method\":\"message\",\"tz\":\"US/Central\",\"patientId\":1638,\"contactId\":76,\"id\":681,\"isFixed\":true,\"mode\":\"T\",\"hasScale\":true}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxheart/edit/`

> Body parameter

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76,
  "id": 681,
  "isFixed": true,
  "mode": "T",
  "hasScale": true
}
```

<h3 id="epxheartfailure:-edit-an-epxheartfailure-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|any|true|none|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
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
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxHeartFailure: Cancel an EpxHeartFailure schedule for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/cancel/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"id":681}'
```

```javascript
var data = JSON.stringify({
  "id": 681
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/cancel/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/cancel/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"id\":681}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"id\":681}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxheart/cancel/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/cancel/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"id\":681}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/cancel/"

	payload := strings.NewReader("{\"id\":681}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxheart/cancel/`

> Body parameter

```json
{
  "id": 681
}
```

<h3 id="epxheartfailure:-cancel-an-epxheartfailure-schedule-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» id|body|integer|false|The ID of the schedule being canceled|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "schedule": [
    {
      "start": "2019-02-05T10:00:09-06:00",
      "end": "2019-03-05T10:00:09-06:00",
      "times": [
        "09:00",
        "17:30"
      ],
      "days": [
        1,
        3,
        5
      ],
      "method": "message",
      "tz": "US/Central",
      "patientId": 372,
      "contactId": 39,
      "id": 14,
      "isCanceled": true,
      "canceledAt": "string"
    }
  ]
}
```

<h3 id="epxheartfailure:-cancel-an-epxheartfailure-schedule-for-a-patient-responses">Responses</h3>

|Status|Meaning|Description|Schema|
|---|---|---|---|
|200|[OK](https://tools.ietf.org/html/rfc7231#section-6.3.1)|EpxHeartFailure Schedule Canceled|Inline|

<h3 id="epxheartfailure:-cancel-an-epxheartfailure-schedule-for-a-patient-responseschema">Response Schema</h3>

Status Code **200**

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|» status|string|false|none|none|
|» schedule|[allOf]|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»» *anonymous*|object|false|none|none|
|»»» id|integer|false|none|none|
|»»» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|»»» canceledAt|string|false|none|The time that the schedule was canceled|
|»»» patientId|integer|false|none|The ID of the patient|
|»»» contactId|integer|false|none|The ID of the contact associated to this schedule|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

## EpxHeartFailure: Get EpxHeartFailure data for a patient

> Code samples

```shell
curl --request POST \
  --url https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/data/ \
  --header 'accept: application/json' \
  --header 'content-type: application/json' \
  --data '{"patient":2645}'
```

```javascript
var data = JSON.stringify({
  "patient": 2645
});

var xhr = new XMLHttpRequest();
xhr.withCredentials = true;

xhr.addEventListener("readystatechange", function () {
  if (this.readyState === this.DONE) {
    console.log(this.responseText);
  }
});

xhr.open("POST", "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/data/");
xhr.setRequestHeader("content-type", "application/json");
xhr.setRequestHeader("accept", "application/json");

xhr.send(data);
```

```ruby
require 'uri'
require 'net/http'

url = URI("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/data/")

http = Net::HTTP.new(url.host, url.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE

request = Net::HTTP::Post.new(url)
request["content-type"] = 'application/json'
request["accept"] = 'application/json'
request.body = "{\"patient\":2645}"

response = http.request(request)
puts response.read_body
```

```python
import http.client

conn = http.client.HTTPSConnection("virtserver.swaggerhub.com")

payload = "{\"patient\":2645}"

headers = {
    'content-type': "application/json",
    'accept': "application/json"
    }

conn.request("POST", "/EpxHealth/Epharmix/1/epxheart/data/", payload, headers)

res = conn.getresponse()
data = res.read()

print(data.decode("utf-8"))
```

```java
HttpResponse<String> response = Unirest.post("https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/data/")
  .header("content-type", "application/json")
  .header("accept", "application/json")
  .body("{\"patient\":2645}")
  .asString();
```

```go
package main

import (
	"fmt"
	"strings"
	"net/http"
	"io/ioutil"
)

func main() {

	url := "https://virtserver.swaggerhub.com/EpxHealth/Epharmix/1/epxheart/data/"

	payload := strings.NewReader("{\"patient\":2645}")

	req, _ := http.NewRequest("POST", url, payload)

	req.Header.Add("content-type", "application/json")
	req.Header.Add("accept", "application/json")

	res, _ := http.DefaultClient.Do(req)

	defer res.Body.Close()
	body, _ := ioutil.ReadAll(res.Body)

	fmt.Println(res)
	fmt.Println(string(body))

}
```

`POST /epxheart/data/`

> Body parameter

```json
{
  "patient": 2645
}
```

<h3 id="epxheartfailure:-get-epxheartfailure-data-for-a-patient-parameters">Parameters</h3>

|Name|In|Type|Required|Description|
|---|---|---|---|---|
|body|body|object|true|none|
|» patient|body|integer|false|The ID of the patient|

> Example responses

> 200 Response

```json
{
  "status": "OK",
  "sessions": [
    {
      "time": "2019-02-15T10:22:09-06:00",
      "respondedAt": "2019-02-15T10:22:15-55:00",
      "weight": 190,
      "dpe": 1,
      "orthopnea": 1,
      "edema": 0,
      "isCanceled": true,
      "schedule": {
        "start": "2019-02-05T10:00:09-06:00",
        "end": "2019-03-05T10:00:09-06:00",
        "times": [
          "09:00",
          "17:30"
        ],
        "days": [
          1,
          3,
          5
        ],
        "method": "message",
        "tz": "US/Central",
        "patientId": 1638,
        "contactId": 76
      },
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ]
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
|» status|string|false|none|none|
|» sessions|[object]|false|none|none|
|»» time|string|false|none|The time of the session|
|»» respondedAt|string|false|none|If set, it is the time that the patient first responded to the session. If null, the patient has not yet responded.|
|»» weight|integer|false|none|The patient's weight, in pounds|
|»» dpe|integer|false|none|Patient experiencing dyspnea or pedal edema. -1: worse, 0: same, 1: better|
|»» orthopnea|integer|false|none|Patient experiencing orthopnea. -1: worse, 0: same, 1: better|
|»» edema|integer|false|none|-1: more, 0: same, 1: less|
|»» isCanceled|boolean|false|none|If true, the session was canceled|
|»» schedule|[ScheduleParams](#schemascheduleparams)|false|none|none|
|»»» start|string|false|none|The start date of the intervention|
|»»» end|string|false|none|The end date of the intervention (optional)|
|»»» times|[string]|false|none|The times that the patient would prefer to receive messages (24-hour time)|
|»»» days|[integer]|false|none|Days of the week that the sessions will occur (0: Sunday... 6: Saturday)|
|»»» method|string|false|none|The method in which the patient will be contacted.|
|»»» tz|string|false|none|The timezone of the schedule|
|»»» patientId|integer|false|none|The ID of the patient who will receive the intervention|
|»»» contactId|integer|false|none|The ID of the contact that will be assigned to the intervention|
|»» patient|any|false|none|none|

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|[PatientParams](#schemapatientparams)|false|none|none|
|»»»» firstName|string|true|none|The first name of the patient.|
|»»»» middleInitial|string|false|none|The middle initial of the patient.|
|»»»» lastName|string|true|none|The last name of the patient.|
|»»»» phone|string|true|none|The phone number of the patient.|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|»»» *anonymous*|object|false|none|none|
|»»»» id|number|true|none|none|

#### Enumerated Values

|Property|Value|
|---|---|
|status|OK|
|method|message|
|method|call|

<aside class="success">
This operation does not require authentication
</aside>

# Schemas

<h2 id="tocSpatientparams">PatientParams</h2>

<a id="schemapatientparams"></a>

```json
{
  "firstName": "John",
  "middleInitial": "M",
  "lastName": "Smith",
  "phone": "5551234567"
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
  "firstName": "John",
  "middleInitial": "M",
  "lastName": "Smith",
  "phone": "5551234567",
  "id": 623
}

```

### Properties

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[PatientParams](#schemapatientparams)|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|object|false|none|none|
|» id|number|true|none|none|

<h2 id="tocStriagecategory">TriageCategory</h2>

<a id="schematriagecategory"></a>

```json
{
  "page": 0,
  "limit": 20,
  "apps": [
    "epxcopd",
    "epxdiabetes"
  ],
  "order": [
    "addressedAt",
    "desc"
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
  "patients": {
    "danger": {
      "page": 0,
      "limit": 20,
      "apps": [
        "epxcopd",
        "epxdiabetes"
      ],
      "order": [
        "addressedAt",
        "desc"
      ]
    },
    "warning": {
      "page": 0,
      "limit": 20,
      "apps": [
        "epxcopd",
        "epxdiabetes"
      ],
      "order": [
        "addressedAt",
        "desc"
      ]
    },
    "success": {
      "page": 0,
      "limit": 20,
      "apps": [
        "epxcopd",
        "epxdiabetes"
      ],
      "order": [
        "addressedAt",
        "desc"
      ]
    },
    "unresponsive": {
      "page": 0,
      "limit": 20,
      "apps": [
        "epxcopd",
        "epxdiabetes"
      ],
      "order": [
        "addressedAt",
        "desc"
      ]
    }
  },
  "alerts": {
    "page": 0,
    "limit": 20,
    "unreadOnly": false,
    "apps": [
      "epxdiabetes",
      "epxheart"
    ],
    "order": "desc"
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|patients|object|false|none|none|
|» danger|[TriageCategory](#schematriagecategory)|false|none|none|
|» warning|[TriageCategory](#schematriagecategory)|false|none|none|
|» success|[TriageCategory](#schematriagecategory)|false|none|none|
|» unresponsive|[TriageCategory](#schematriagecategory)|false|none|none|
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
  "alerts": {
    "limit": 0,
    "page": 0,
    "total": 0,
    "results": [
      {
        "id": 2543,
        "app": "epxcopd",
        "body": "Patient Brionna has responded that she is having trouble breathing.",
        "contact": {
          "id": 53,
          "displayName": "Your Nurse Carly",
          "description": "Dr. Woodward (Internal Medicine)",
          "email": "string"
        },
        "createdAt": "2019-02-01T19:37:00.000Z",
        "isRead": true,
        "snoozedAt": "2019-02-18T10:00:00-06:00",
        "snoozedUntil": "2019-02-25T10:00:09-06:00",
        "patient": {
          "firstName": "John",
          "middleInitial": "M",
          "lastName": "Smith",
          "phone": "5551234567",
          "id": 623
        }
      }
    ]
  },
  "contacts": [
    {
      "id": 53,
      "displayName": "Your Nurse Carly",
      "description": "Dr. Woodward (Internal Medicine)",
      "email": "string"
    }
  ],
  "patientIds": [
    0
  ],
  "patients": {
    "danger": {
      "page": 0,
      "limit": 0,
      "total": 0,
      "results": [
        {
          "alerts": [
            {
              "id": 2543,
              "app": "epxcopd",
              "body": "Patient Brionna has responded that she is having trouble breathing.",
              "contact": {
                "id": 53,
                "displayName": "Your Nurse Carly",
                "description": "Dr. Woodward (Internal Medicine)",
                "email": "string"
              },
              "createdAt": "2019-02-01T19:37:00.000Z",
              "isRead": true,
              "snoozedAt": "2019-02-18T10:00:00-06:00",
              "snoozedUntil": "2019-02-25T10:00:09-06:00",
              "patient": {
                "firstName": "John",
                "middleInitial": "M",
                "lastName": "Smith",
                "phone": "5551234567",
                "id": 623
              }
            }
          ],
          "apps": {
            "epx{appname}": {
              "alert": {
                "total": 8,
                "unread": 2,
                "active": 2
              },
              "category": 1,
              "contactId": 81,
              "engagement": {
                "responded": 10,
                "total": 14,
                "rate": 0.714285
              },
              "schedule": {
                "start": "2019-02-05T10:00:09-06:00",
                "end": "2019-03-05T10:00:09-06:00",
                "times": [
                  "09:00",
                  "17:30"
                ],
                "days": [
                  1,
                  3,
                  5
                ],
                "method": "message",
                "tz": "US/Central",
                "patientId": 372,
                "contactId": 39,
                "id": 14,
                "isCanceled": true,
                "canceledAt": "string"
              }
            }
          },
          "category": 2,
          "patient": {
            "firstName": "John",
            "middleInitial": "M",
            "lastName": "Smith",
            "phone": "5551234567",
            "id": 623
          }
        }
      ]
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
|patientIds|[integer]|false|none|none|
|patients|object|false|none|none|
|» danger|[TriageCategoryData](#schematriagecategorydata)|false|none|none|

<h2 id="tocStriagecategorydata">TriageCategoryData</h2>

<a id="schematriagecategorydata"></a>

```json
{
  "page": 0,
  "limit": 0,
  "total": 0,
  "results": [
    {
      "alerts": [
        {
          "id": 2543,
          "app": "epxcopd",
          "body": "Patient Brionna has responded that she is having trouble breathing.",
          "contact": {
            "id": 53,
            "displayName": "Your Nurse Carly",
            "description": "Dr. Woodward (Internal Medicine)",
            "email": "string"
          },
          "createdAt": "2019-02-01T19:37:00.000Z",
          "isRead": true,
          "snoozedAt": "2019-02-18T10:00:00-06:00",
          "snoozedUntil": "2019-02-25T10:00:09-06:00",
          "patient": {
            "firstName": "John",
            "middleInitial": "M",
            "lastName": "Smith",
            "phone": "5551234567",
            "id": 623
          }
        }
      ],
      "apps": {
        "epx{appname}": {
          "alert": {
            "total": 8,
            "unread": 2,
            "active": 2
          },
          "category": 1,
          "contactId": 81,
          "engagement": {
            "responded": 10,
            "total": 14,
            "rate": 0.714285
          },
          "schedule": {
            "start": "2019-02-05T10:00:09-06:00",
            "end": "2019-03-05T10:00:09-06:00",
            "times": [
              "09:00",
              "17:30"
            ],
            "days": [
              1,
              3,
              5
            ],
            "method": "message",
            "tz": "US/Central",
            "patientId": 372,
            "contactId": 39,
            "id": 14,
            "isCanceled": true,
            "canceledAt": "string"
          }
        }
      },
      "category": 2,
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ]
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
  "alerts": [
    {
      "id": 2543,
      "app": "epxcopd",
      "body": "Patient Brionna has responded that she is having trouble breathing.",
      "contact": {
        "id": 53,
        "displayName": "Your Nurse Carly",
        "description": "Dr. Woodward (Internal Medicine)",
        "email": "string"
      },
      "createdAt": "2019-02-01T19:37:00.000Z",
      "isRead": true,
      "snoozedAt": "2019-02-18T10:00:00-06:00",
      "snoozedUntil": "2019-02-25T10:00:09-06:00",
      "patient": {
        "firstName": "John",
        "middleInitial": "M",
        "lastName": "Smith",
        "phone": "5551234567",
        "id": 623
      }
    }
  ],
  "apps": {
    "epx{appname}": {
      "alert": {
        "total": 8,
        "unread": 2,
        "active": 2
      },
      "category": 1,
      "contactId": 81,
      "engagement": {
        "responded": 10,
        "total": 14,
        "rate": 0.714285
      },
      "schedule": {
        "start": "2019-02-05T10:00:09-06:00",
        "end": "2019-03-05T10:00:09-06:00",
        "times": [
          "09:00",
          "17:30"
        ],
        "days": [
          1,
          3,
          5
        ],
        "method": "message",
        "tz": "US/Central",
        "patientId": 372,
        "contactId": 39,
        "id": 14,
        "isCanceled": true,
        "canceledAt": "string"
      }
    }
  },
  "category": 2,
  "patient": {
    "firstName": "John",
    "middleInitial": "M",
    "lastName": "Smith",
    "phone": "5551234567",
    "id": 623
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|alerts|[[AlertObject](#schemaalertobject)]|false|none|none|
|apps|object|false|none|none|
|» epx{appname}|object|false|none|none|
|»» alert|object|false|none|none|
|»»» total|integer|false|none|The total amount of alerts triggered by this patient in the given timeframe|
|»»» unread|integer|false|none|The amount of unresolved alerts for the patient in the given timeframe|
|»»» active|integer|false|none|none|
|»» category|integer|false|none|The current category for the corresponding app. 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive|
|»» contactId|integer|false|none|The ID of the patient's contact for this app|
|»» engagement|object|false|none|none|
|»»» responded|integer|false|none|The amount of sessions the patient responded to for the corresponding app (in the set timeframe)|
|»»» total|integer|false|none|The total amount of sessions the patient had for the corresponding app (in the set timeframe)|
|»»» rate|number|false|none|The response rate for this app (in the set timeframe)|
|»» schedule|[ScheduleObject](#schemascheduleobject)|false|none|none|
|» category|integer|false|none|The current primary category for the patient (patients can be in more than one category at a time). 1: danger 2: warning 3: success 4: unresponsive 5: empty 6: inactive 7: snoozed 8: completed 9: paused 10: recent|
|» patient|[PatientObject](#schemapatientobject)|false|none|none|

<h2 id="tocScontactobject">ContactObject</h2>

<a id="schemacontactobject"></a>

```json
{
  "id": 53,
  "displayName": "Your Nurse Carly",
  "description": "Dr. Woodward (Internal Medicine)",
  "email": "string"
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
  "tz": "US/Eastern",
  "displayName": "Your Nurse Carly",
  "description": "Dr. Woodward (Internal Medicine)",
  "email": "string",
  "primaryPhone": "5551234567",
  "primaryStart": "08:00",
  "primaryEnd": "string",
  "notificationPreference": "C"
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
  "id": 2543,
  "app": "epxcopd",
  "body": "Patient Brionna has responded that she is having trouble breathing.",
  "contact": {
    "id": 53,
    "displayName": "Your Nurse Carly",
    "description": "Dr. Woodward (Internal Medicine)",
    "email": "string"
  },
  "createdAt": "2019-02-01T19:37:00.000Z",
  "isRead": true,
  "snoozedAt": "2019-02-18T10:00:00-06:00",
  "snoozedUntil": "2019-02-25T10:00:09-06:00",
  "patient": {
    "firstName": "John",
    "middleInitial": "M",
    "lastName": "Smith",
    "phone": "5551234567",
    "id": 623
  }
}

```

### Properties

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|id|integer|false|none|none|
|app|string|false|none|none|
|body|string|false|none|none|
|contact|[ContactObject](#schemacontactobject)|false|none|none|
|createdAt|string|false|none|When the alert was triggered (ISO timestamp)|
|isRead|boolean|false|none|True if the alert has been addressed by a user|
|snoozedAt|string|false|none|When the alert was snoozed (ISO timestamp)|
|snoozedUntil|string|false|none|When the alert will no longer be snoozed (ISO timestamp)|
|patient|[PatientObject](#schemapatientobject)|false|none|none|

<h2 id="tocSscheduleparams">ScheduleParams</h2>

<a id="schemascheduleparams"></a>

```json
{
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 1638,
  "contactId": 76
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
  "start": "2019-02-05T10:00:09-06:00",
  "end": "2019-03-05T10:00:09-06:00",
  "times": [
    "09:00",
    "17:30"
  ],
  "days": [
    1,
    3,
    5
  ],
  "method": "message",
  "tz": "US/Central",
  "patientId": 372,
  "contactId": 39,
  "id": 14,
  "isCanceled": true,
  "canceledAt": "string"
}

```

### Properties

*allOf*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|[ScheduleParams](#schemascheduleparams)|false|none|none|

*and*

|Name|Type|Required|Restrictions|Description|
|---|---|---|---|---|
|*anonymous*|object|false|none|none|
|» id|integer|false|none|none|
|» isCanceled|boolean|false|none|If true, the patient will not longer receive calls/messages|
|» canceledAt|string|false|none|The time that the schedule was canceled|
|» patientId|integer|false|none|The ID of the patient|
|» contactId|integer|false|none|The ID of the contact associated to this schedule|

