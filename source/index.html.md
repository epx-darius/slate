---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell: Shell
  - http: HTTP
  - javascript: JavaScript
  - javascript--nodejs: Node.JS
  - ruby: Ruby
  - python: Python
  - java: Java
  - go: Go

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>

includes:
  - swagger
  - tutorials
  - errors

search: true
highlight_theme: darkula
headingLevel: 1
---

# Introduction

Welcome to the Epharmix API! You can use our API to access a series of Epharmix Interventions and programatically assign, manage, and triage patients enrolled in the service. API Support for Epharmix currently consists of the following interventions.

| Name  | Description |
|-------| ------------| 
| [EpxDiabetes](#epxdiabetes-create-a-schedule-for-the-patient)| Application to monitor patients dealing with diabetes | 
| [EpxHyper](#epxhypertension-create-an-epxhypertension-schedule-for-a-patient)| Application to monitor patients dealing with hypertension |
| [EpxCopd](#epxcopd-create-an-epxcopd-schedule-for-a-patient)| Application to montior patients dealing with COPD |
| [EpxHeart](#epxheartfailure-create-an-epxheartfailure-schedule-for-a-patient)| Application to monitor patients dealing with heart risk |

Care should be taken when utilizing the Epharmix API, assignment of patients to interventions will cause the primaryPhone number to receive phone calls or SMS messages. This could be troublesome to a party that has not given consent.   
