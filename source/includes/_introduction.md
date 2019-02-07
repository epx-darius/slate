# Epharmix Overview 

Welcome to Epharmix's API documentation. [Epharmix](https://www.epharmix.com) automates the routine outreach of collecting patient-reported condition-specific information. Epharmix's API empowers developers to programatically assign, manage, and triage patients enrolled in the service.

### Why Use Epharmix as a Developer?
Epharmix has a growing number of interventions designed to scale the number of patients care providers can manage while improving the reporting and triaging of the providers. As a developer, Epharmix API access can allow you up to date access to Alerts, summarized reporting, and direct access to intervention results. Our goal as EpxDevelopers is to make it as easy as possible to manage patient enrollent and review the reported data / [outcomes](https://www.epharmix.com/outcomes). 

_API Support for Epharmix currently consists of the following interventions._

| Name  | Description |
|-------| ------------| 
| [EpxDiabetes](#epxdiabetes-create-a-schedule-for-the-patient)| Application to monitor patients dealing with diabetes | 
| [EpxHeart](#epxheartfailure-create-an-epxheartfailure-schedule-for-a-patient)| Application to monitor patients dealing with heart risk |
| [EpxHyper](#epxhypertension-create-an-epxhypertension-schedule-for-a-patient)| Application to monitor patients dealing with hypertension |
| [EpxCopd](#epxcopd-create-an-epxcopd-schedule-for-a-patient)| Application to montior patients dealing with COPD |

Care should be taken when utilizing the Epharmix API, assignment of patients to interventions will cause the primaryPhone number to receive phone calls or SMS messages. This could be troublesome to a party that has not given consent.



