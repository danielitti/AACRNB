# Definitions and Glossary of Terms
[← Back to Welcome page](/projects/commercial_road_new_business/documents/index.md)

---

## Table of contents

### Core concepts

|    | Concept |
|:---|:------------|:-----------------|:----------|
| 1 | [Policies](#policies) |
| 2 | [Customers](#customers) |
| 3 | [Households](#households) |
| 4 | [Marketing Channels](#marketing-channels) |
| 5 | [Leads](#lead-groups) |
| 6 | [Contracts and Recurrences](#contracts-and-recurrences) |
| 7 | [The Consumer Roadside policy contract lifecycle](#the-consumer-roadside-policy-contract-lifecycle) |
| 8 | [Financial periods](#financial-periods) |
| 9 | [Financial metrics](#financial-metrics) |


### Detailed definitions

|    | Definitions | Accountable team |
|:---|:------------|:-----------------|
| 1 | [Roadside Policy attributes](#roadside-policy-attributes) | Product |
| 2 | [Product attributes](#product-attributes) | Product |
| 3 | [Add-on attributes](#add-on-attributes) | Product |
| 4 | [Recurrence and Payment attributes](#recurrence-and-payment-attributes) | Product |
| 5 | [Channel attributes](#channel-attributes) | Product |
| 6 | [Direct Sales Force Sales Effectiveness attributes](#direct-sales-force-sales-effectiveness-attributes) | Product |
| 7 | [Date and Time measures](#date-and-time-measures) | Road Consumer Finance |
| 8 | [Financial measures](#financial-measures) | Road Consumer Finance |
| 9 | [Contact Centre Sales Effectiveness measures](#contact-centre-sales-effectiveness-measures) | Contact Centre |




---
[↑](#definitions-and-glossary-of-terms)

### Policies
Consumer Road is sold to members as a **Policy**.

---
[↑](#definitions-and-glossary-of-terms)

### Customers
A **Customer** is uniquely defined and may hold multiple policies.

---
[↑](#definitions-and-glossary-of-terms)

### Households
Customers live within a **Household**. All customers on the policy must live at the same address.

---
[↑](#definitions-and-glossary-of-terms)

### Marketing Channels
Inbound Interactions (e.g., Digital visits, Inbound dials, Inbound calls) and Policy transactions (e.g., New business sales) are attributed to a Marketing Channel. Marketing channel shows where that business has come from originally.
Depending on the data source, Marketing Channel is based on several different data items.

| Data Source         | Description |
|:--------------------|:------------|
| Google Analytics    | Google sends data that shows what the customer originally searched for/clicked through from |
| Call Data           | We match the telephone number of the call into a decode list for the marketing activity, this link is set up when a new telephone number is allocated. There is more detail about this in the inbound call section |
| Source Code         | See below |


The marketing channel is then selected based on the 3 input items in this hierarchical order:
1. Google Analytics data
2. Call event data
3. Source Code

If the membership is present in the Google Analytics data then the marketing channel provided by Google is used, else if the membership it matched to a call (the matching criteria is that the sale happens during the call), if we cannot find the membership in either of those two then we use the source code to define the marketing channel.

---
[↑](#definitions-and-glossary-of-terms)

### Leads
Outbound dials are attributed to a lead group.

| Item         | Description |
|:--------------------|:------------|
| Leads Selected    | All leads from campaign table specified below taken from the Genesys dialler at 9pm each evening  |
| New Leads         | All records created on the date in question                                                       |
| Closed leads      |  All records with a status changed to closed (record_status = 3) on the date in question          |
| Total Dials       | Taken from a summarised table provided by the Cheadle MI team                                     |


| Leads Selected from following Campaigns |
|:--------------|
| TA_SALES_T1 |
| TA_SALES_T2 |
| TA_SALES_T3 |
| MANCON |
| TA_SAM |
| RENEWAL1 |
| SALES_COMP_CB |
| INTERNET1 |
| ANK1 |
| ANK2 |
| ANK3 |
| ANK4 |
| ANK5 |
| ANK6 |
| PASC_TIER1 |
| PSD |
| PAVT |
| BRC_NCL1_1 |
| BRC_NCL2 |
| BRC_NCL3 |
| MANDATES |
| CLOSURE_CB |
| TA_TASC_T1 |
| TA_TASC_T2 |
| TA_TASC_T3 |

---
[↑](#definitions-and-glossary-of-terms)

### Contracts and Recurrences
Policies are contracted as follows:

<a href="https://tippco-web.s3.amazonaws.com/lookaa/contract-and-recurrence.png" target="_blank"><img src='https://tippco-web.s3.amazonaws.com/lookaa/contract-and-recurrence.png'></a>

---
[↑](#definitions-and-glossary-of-terms)

### The Consumer Roadside policy contract lifecycle

<a href="https://tippco-web.s3.amazonaws.com/lookaa/consumer-road-policy-contract-lifecycle.png" target="_blank"><img src='https://tippco-web.s3.amazonaws.com/lookaa/consumer-road-policy-contract-lifecycle.png'></a>

---
[↑](#definitions-and-glossary-of-terms)

### Financial periods
The AA's Financial Year begins on the 1 Feb of the previous calendar year. For example, Financial Year 2018 began on 1 Feb 2017.

The AA's Trading Weeks run from Thursday to Wednesday. Trading Week 1 begins on the first Thursday such that 1 Feb sits within Trading Week 1. For example, if 1 Feb is a Wednesday then Trading Week 1 begins on Thursday 26 Jan.

---
[↑](#definitions-and-glossary-of-terms)

### Financial metrics

<a href="https://tippco-web.s3.amazonaws.com/lookaa/financial-metrics.png" target="_blank"><img src='https://tippco-web.s3.amazonaws.com/lookaa/financial-metrics.png'></a>

---
[↑](#definitions-and-glossary-of-terms)

## Detailed definitions

---
[↑](#definitions-and-glossary-of-terms)

### Roadside Policy attributes


#### Membership Type Level 1
Whether the Membership Type corresponds to Personal or Vehicle.
Type: String
Valid values:

| Value         | Definition                               |
|:--------------|:-----------------------------------------|
| Personal      | Covers the customer in any vehicle       |
| Vehicle       | Covers the vehicle whoever is driving it |

#### Membership Type Level 2
If Personal, then either Single, Joint or Family
Type: String
Valid values:

| Value                  | Definition                                                            |
|:-----------------------|:----------------------------------------------------------------------|
| Personal – Single      | One person is covered in any vehicle                                  |
| Personal – Joint       | Two persons from the same household are covered in any vehicle        |
| Personal – Family      | Three/Four persons from the same household are covered in any vehicle |
| Vehicle                | As above                                                              |

#### Policy Type Level 1
Whether this policy is currently being paid for or not. Determined by price paid and prospective future value of policy to business. Also known as “Sale Type”.
Type: String
Valid values:

| Value         | Definition                                              |
|:--------------|:--------------------------------------------------------|
| Paid          | The policy is being paid for |
| Free          | The policy is being provided to the policyholder at zero cost,  |


#### Policy Type Level 2
If Free, then whether there is Future value or not. Also known as “Sale Type”.
Type: String
Valid values:

| Value                           | Definition                                              |
|:--------------------------------|:--------------------------------------------------------|
| Paid                            | The policy is being paid for |
| Free – With future value          | Future value is where we believe the policy will be paid in the next renewal, e.g., AA Cars members. Defined based on Policy and Offer Code |
| Free – Without future value       | Without Future value, e.g., VIPs |

#### Product package Level 1
The summary bundle of products that has been purchase or is held.
Type: String
Valid values:

| Value              | Definition                                              |
|:-------------------|:--------------------------------------------------------|
| Basics             | As per roadside, but limited to just one call out a year |
| Roadside           | Assistance at the roadside if you are broken down more than ¼ mile from home. Tow to the AA’s choice of relevant local repairer or a local destination of your choice, provided it is no further, for you, your vehicle and up to 7 passengers, if the AA is unable to fix your vehicle at the roadside |
| Roadside + 1       | Corresponds to Roadside plus any one of Homestart, Relay and Staymobile |
| Roadside + 2       | Corresponds to Roadside plus any two of Homestart, Relay and Staymobile |
| Roadside + 3       | Corresponds to either “Roadside, Homestart, Relay, Staymobile” or “Personal Response” |

#### Complimentary product package
The bundle of products that are supplied complimentary.
Type: String

---
[↑](#definitions-and-glossary-of-terms)

### Product attributes

#### Product Level 1
The product that has been purchased, amended or cancelled.
Type: String
Valid values:

| Value                      | Definition                                              |
|:---------------------------|:--------------------------------------------------------|
| Basics                     | Single vehicle, single call-out |
| Roadside                   | As above |
| Homestart                  | Provides the benefits outlined under ‘Roadside Assistance’, if you break down at or within ¼ mile from home |
| Relay                      | Recovery to any single UK destination of your choice if the AA is unable to fix your car at the roadside or arrange a prompt local repair |
| Staymobile                 | Choice of onward travel options if the AA is unable to fix your car at the roadside or arrange a prompt local repair. Options include:
|                            | - replacement car hire for up to 72 consecutive hours (a collection and delivery service, or equivalent, is available from chosen suppliers, subject to availability and to supplier’s Terms and Conditions which include payment of supplier’s fuel charges) |
|                            | - public transport costs or |
|                            | - overnight accommodation |
| Keycare                    | Exclusively with AA Gold membership,  £1,000 worth of key insurance to cover you if your keys are lost, stolen or simply locked inside your home or vehicle |



#### Product Level 2
The more detailed level of the product that has been purchased, amended or cancelled, if Roadside.
Type: String
Valid values:

| Value                      | Definition                                              |
|:---------------------------|:--------------------------------------------------------|
| Basics                     | Single vehicle, single call-out |
| Roadside – Standard        | As above |
| Roadside – Local Driver    | Not for general purchase, sold to existing members to stop a cancellation. Covers the Member within a 20 mile radius of their home |
| Roadside – Standby         | Not for general purchase, sold to existing members to stop a cancellation. You pay £10 but do not have a membership, if you breakdown the charge to be recovered is £80, offering a saving on the will join fee |
| Roadside – Youth           | Not for general purchase, only sold to driving school customers All new customers who are under the age of 25 and are have AA/BSM driving lessons can receive free AA Roadside Membership for one year upon booking lessons. There is no minimum number of lessons necessary in order to get the offer |
| Roadside – One Callout     | Not for general purchase, sold to existing members to stop a cancellation. Single call out for one person |
| Roadside – One Person One Vehicle | Not for general purchase, one person in a nominated vehicle only |
| Homestart                 | As above |
| Relay                     | As above |
| Staymobile                | As above |
| Keycare                   | As above |

#### Complimentary Cover
Whether the product is supplied complementary.
Type: String
Valid values:

| Value                      | Definition                                              |
|:---------------------------|:--------------------------------------------------------|
| On-going Complimentary     | The product is supplied complimentary now and will be complimentary subsequent to renewal or reprice |
| One-off Complimentary      | The product is supplied complimentary now but will no longer be complimentary after the next renewal or reprice |
| Not Complimentary          | The product is not complimentary  |

---
[↑](#definitions-and-glossary-of-terms)

### Add-on attributes

#### Add-on Level 1
The summary add-on that has been purchased, amended or cancelled.
Type: String
Valid values:

| Value                      | Definition                                              |
|:---------------------------|:--------------------------------------------------------|
| Breakdown and Repair Cover | Breakdown Repair Cover helps with the cost of repairs and replacement parts after your nominated vehicle has broken down and can’t be repaired at roadside. With the following benefits:|
|                            | - Covers up to £535 per claim |
|                            | - Cover up to 4 vehicles on a single policy |
|                            | - Up to 5 claims a year |
|                            | - Covers vehicles of any age or mileage |

#### Add-on Level 2
The detailed add-on that has been purchased, amended or cancelled.
Type: String
Valid values:

| Value                                   | Definition                                              |
|:----------------------------------------|:--------------------------------------------------------|
| Breakdown and Repair Cover – 1 Vehicle  | As above for 1 nominated vehicle |
| Breakdown and Repair Cover – 2 Vehicles | As above for 2 nominated vehicles |
| Breakdown and Repair Cover – 3 Vehicles | As above for 3 nominated vehicles |
| Breakdown and Repair Cover – 4 Vehicles | As above for 4 nominated vehicles |

---
[↑](#definitions-and-glossary-of-terms)

### Recurrence and Payment attributes

#### Contract Type Level 2
If Fixed, then the published length of the base contract, before any contract extensions are applied. This is not the same as the length of the policy cycle, since the contract can be either cancelled prematurely or suspended, or extended via. an offer.
If Continuous, then the period over which the policy rolls.
Type: String
Valid values:

| Value                      | Definition                                                              |
|:---------------------------|:------------------------------------------------------------------------|
| Fixed – 12 month           | A one year policy                                                       |
| Fixed – 15 month           | A “15-for-12” policy. The customer has cover for 15 months but only pays for 12 |
| Fixed – 18 month           | An “18-for-12” policy. The customer has cover for 18 months but only pays for 12 |
| Fixed – 24 month           | A two year policy. Note that these convert into Annual upon renewal     |
| Continuous – Monthly       | A continuous monthly policy that recurs automatically every month       |
| Continuous – Quarterly     | A continuous quarterly policy that recurs automatically every 3 months  |

#### Recurrence Pattern
Whether the contract will automatically renew upon expiry. Can change over time, if the policyholder cancels the recurrence (e.g., Direct Debit or Card), or if an automatic renewal payment fails, or if the member removes the recurrence via. telephone.
Type: String
Valid values:

| Value                      | Definition                                                         |
|:---------------------------|:-------------------------------------------------------------------|
| Recurring                  | Fixed term contract with permission to take a payment next year    |
| Single                     | Fixed term contract without permission to take a payment next year |

#### Payment Method Level 1
The summary payment method used at the point of a transaction.
Type: String
Valid values:

| Value                      | Definition                                                                |
|:---------------------------|:--------------------------------------------------------------------------|
| Card                       | Customer paid by credit or debit card                                     |
| Direct Debit               | Customer paid by direct debit                                             |
| Cash                       | Includes all payment types other than Card and Direct Debit, e.g., Cheque |

#### Contract and Recurrence
A merged attribute of the Contract Type and the Recurrence Pattern. Included as a common typology as used by Commercial.
Type: String
Valid values:

| Value                      | Definition                                                         |
|:---------------------------|:-------------------------------------------------------------------|
| Recurring Fixed            | Fixed term contract with permission to take a payment next year    |
| Single Fixed               | Fixed term contract without permission to take a payment next year |
| Monthly                    | Continuous policy, paid and contracted monthly                     |
| Quarterly                  | Continuous policy, paid and contracted quarterly                   |
| No payment                 | Customer has a free policy                                         |

---
[↑](#definitions-and-glossary-of-terms)

### Channel attributes


#### Sales Channel Level 1
The channel through which a sale, change or renewal is executed.
**Transaction Sales Channel**: Where the customer actually purchase, i.e., Sales Channel used to transact

Type: String
Valid values:

| Value                      | Definition                       |
|:---------------------------|:--------------------------------|
| Contact Centre | Transaction completed in the call centre    |
| Face to Face | Transaction completed by a field agent/patrol |
| Direct | Transaction completed online                        |


####  Sales Channel Level 2
More detailed view of the Sales Channel.
Type: String
Valid values:

| Value                      | Definition                                              |
|:---------------------------|:--------------------------------------------------------|
| Digital - Road Online | Transaction completed on AA.com |
| Digital – Breakdown App | Transaction completed on the app |
| Contact Centre – Inbound | Transaction completed off the back of an call coming into the call centre |
| Contact Centre – Outbound | Transaction completed off the back of an outbound dial |
| Face to Face – Patrol | Transaction completed by a patrol |
| Direct – Other | System generated transaction |


#### Contact Centre Department
The department that a call centre agent is working in when an interaction (e.g., call) or a transaction (e.g., sale, renewal) occurs.
Type: String
Valid values:

| Value                   | Acronym     |
|:------------------------|:------------|
| New Member Unit         | NMU         |
| Member Sales & Service  | MSAS        |
| Outbound Unit           | ACT         |
| Retention Unit          | Stay-AA     |
| Emergency Breakdown     | EB          |
| Other                   | N/A         |

#### Is Will Join
Is the customer in a break down situation? For TIARA this is defined by source group, for PEGA the customer has answered Yes to the question are you in a breakdown situation. For calls the customer has phoned in on an emergency breakdown line.
Type: Y/N

#### Source Code
The granular source of the business as defined at the point of sale
Type: String


#### Marketing Channel Level 1
Marketing Channel, i.e., source of the business, as defined by a Call Centre Agent or Digital (etc.) at the point of sale.
Restricted by originating Sales channel (e.g. Affiliate is only available for quotes generated on the DGTL channel).

If the membership is present in the Google Analytics data then the marketing channel provided by Google is used, else if the membership it matched to a call (the matching criteria is that the sale happens during the call), if we cannot find the membership in either of those two then we use the Source Code to define the marketing channel.

Type: String
Valid values:

| Value                      | Definition                                              |
|:---------------------------|:--------------------------------------------------------|
| Digital Marketing | Online Activity has driven the sale |
| Direct Marketing | Offline Activity has driven the sale |
| Partnerships | Affinity and Account Agents have driven the sale |
| Cross-Sell Propositions | Sales off the back of other activity with the AA |
| Face to Face and Outbound | Field agents, Patrols or Outbound activity have driven the sale |
| Other | All other activity |


#### Marketing Channel Level 2
More granular version of the Marketing Channel.
Type: String
Valid values:

| Mapping_ID | Source | Source Data Element | Marketing Channel L2 | Source Attribute(s) Used |
| :-------| :-------| :------- | :------- | :-------|
| TM_01 | TIARA | Source_Group | Digital Marketing – PPC | Source_Group = 'PPC' |
| CM_01a | CATHIE | Source_Group | Digital Marketing – PPC | Source_Group = 'PPC' |
| TM_02 | TIARA | Source_Group | Digital Marketing – Affiliates | Source_Group = ‘Affiliate - Cashback’ or ‘Affiliate - Noncashback’ or ‘Affiliate’ |
| CM_02a | CATHIE | Source_Group | Digital Marketing – Affiliates | Source_Group = 'Affiliate' |
| TM_03 | TIARA | Source_Group | Digital Marketing – SEO | Source_Group = 'SEO' |
| CM_03a | CATHIE | Source_Group | Digital Marketing – SEO | Source_Group = 'SEO' |
| TM_04 | TIARA | NOT AVAILABLE | Digital Marketing – My AA | NOT AVAILABLE |
| CM_04a | CATHIE | Source_Group | Digital Marketing – My AA | Source_Group = 'My AA' |
| TM_06 | TIARA | NOT AVAILABLE | Digital Marketing – Breakdown App | NOT AVAILABLE |
| CM_06a | CATHIE | Source_Group | Digital Marketing – Breakdown App | Source_Group = 'Breakdown App' |
| TM_07a | TIARA | Source_Group | Digital Marketing – AA.com | Source_Group = ‘AA.com’ and where Source_Code <> 'IAF01' or <> 'WT011' |
| TM_07b | TIARA | Source_Group | Digital Marketing – AA.com | Source_Group = ‘AA.com’ and where Source_Code <> 'IAF01' or <> 'WT011' |
| CM_07a | CATHIE | Source_Group | Digital Marketing – AA.com | Source_Group = 'AA.com‘  and where Source_Code <> 'IAF01' |
| CM_07b | CATHIE | Source_Group | Digital Marketing – AA.com| Source_Group = 'AA.com‘  and where Source_Code <> 'IAF01' |
| TM_10 | TIARA | Source_Group | Direct Marketing – Direct Mail | Source_Group = 'Marketing - DM' |
| CM_10a | CATHIE | Source_Group | Direct Marketing – Direct Mail | Source_Group = 'Marketing‘ and Source_Code = ‘MRK01’ or Source_Group = ‘Marketing – DM’ |
| CM_10b | CATHIE | Source_Code | Direct Marketing – Direct Mail | Source_Group = 'Marketing‘ and Source_Code = ‘MRK01’ or Source_Group = ‘Marketing – DM’ |
| TM_11 | TIARA | Source_Code | Digital Marketing – Email | Source_Code = ‘WE091’ or 'WT008' |
| CM_11a | CATHIE | Source_Group | Digital Marketing – Email | Source_Group = ‘Marketing’ and Source_Code = ‘MRK07’ |
| CM_11b | CATHIE | Source_Code | Digital Marketing – Email | Source_Group = ‘Marketing’ and Source_Code = ‘MRK07’ |
| TM_12a | TIARA | Source_Code | Direct Marketing – DRTV | Source_Group = 'Marketing – TV’ |
| TM_12b | TIARA | Source_Code_Description | Direct Marketing – DRTV | Source_Group = 'Marketing – TV’ |
| CM_12a | CATHIE | Source_Group | Direct Marketing – DRTV | Source_Group = 'Marketing‘ and Source_Code = ‘MRK05’ or Source_Group = ‘Marketing – TV’ |
| CM_12b | CATHIE | Source_Code | Direct Marketing – DRTV | Source_Group = 'Marketing‘ and Source_Code = ‘MRK05’ or Source_Group = ‘Marketing – TV’ |
| TM_13 | TIARA | Source_Code | Direct Marketing – DR Radio | Source_Code = ‘WT011’ |
| CM_13 | CATHIE | Source_Group | Direct Marketing – DR Radio | Source_Group = ‘Marketing’ and Source_Code = ‘MRK06’ |
| CM_13 | CATHIE | Source_Code | Direct Marketing – DR Radio | Source_Group = ‘Marketing’ and Source_Code = ‘MRK06’ |
| TM_14 | TIARA | Source_Group | Direct Marketing – Press | Source_Group = ‘Marketing - Press’ |
| CM_14a | CATHIE | Source_Group | Direct Marketing – Press | Source_Group = ‘Marketing’ and Source_Code = ‘MRK04’ or Source_Group = ‘Marketing - Press’ |
| CM_14b | CATHIE | Source_Code | Direct Marketing – Press | Source_Group = ‘Marketing’ and Source_Code = ‘MRK04’ or Source_Group = ‘Marketing - Press’ |
| TM_15a | TIARA | Source_Group | Direct Marketing – Inserts | Source_Group = ‘Marketing – Insets’ |
| CM_15a | CATHIE | Source_Group | Direct Marketing – Inserts | Source_Group = ‘Marketing’ and Source_Code = ‘MRK03’ or Source_Group = ‘Marketing - Inserts’ |
| CM_15b | CATHIE | Source_Code | Direct Marketing – Inserts | Source_Group = ‘Marketing’ and Source_Code = ‘MRK03’ or Source_Group = ‘Marketing - Inserts’ |
| TM_16 | TIARA | Source_Group | Direct Marketing – Directories | Source_Group = ‘Marketing – Directories’ |
| CM_16a | CATHIE | Source_Group | Direct Marketing – Directories | Source_Group = ‘Marketing’ and Source_Code = ‘MRK02’ or Source_Group = ‘Marketing - Directories’ |
| CM_16b | CATHIE | Source_Code | Direct Marketing – Directories | Source_Group = ‘Marketing’ and Source_Code = ‘MRK02’ or Source_Group = ‘Marketing - Directories’ |
| TM_17 | TIARA | Source_Group | Direct Marketing – Manufacturer Conversion | Source_Group = ‘Manufacturer Conversion’ |
| CM_17a | CATHIE | Source_Group | Direct Marketing – Manufacturer Conversion | Source_Group = ‘Marketing - Manufacturer Conversion’ |
| CM_17b | CATHIE | Source_Group | Direct Marketing – Manufacturer Conversion | Source_Group = ‘Marketing - Manufacturer Conversion’ |
| TM_18 | TIARA | NOT AVAILABLE | Direct Marketing – Other | NOT AVAILABLE |
| CM_18a | CATHIE | Source_Group | Direct Marketing – Other | Source_Group = ‘Marketing’ and Source_Code = ‘MRK08' |
| CM_18b | CATHIE | Source_Code | Direct Marketing – Other | Source_Group = ‘Marketing’ and Source_Code = ‘MRK08' |
| TM_19 | TIARA | Source_Group | Partnerships – Affinity Partners | Source_Group = 'Affinity Partner' |
| CM_19 | CATHIE | Source_Group | Partnerships – Affinity Partners | Source_Group = 'Affinity Partner' |
| TM_20 | TIARA | Source_Code | Partnerships – Account Agents | Source_Group = 'Account Agent' |
| CM_20 | CATHIE | Source_Group | Partnerships – Account Agents | Source_Group = 'Account Agent' |
| TM_22 | TIARA | Source_Code | Cross-Sell Propositions – Invite a Friend | Source_Code = 'IAF01' |
| CM_22 | CATHIE | Source_Code | Cross-Sell Propositions – Invite a Friend | Source_Code = 'IAF01' |
| TM_23 | TIARA | Reporting_Group | Cross-Sell Propositions – Insurance | Where the first character of Source_Code = ‘I’ and where the first two characters of Source_Code <> ‘INS’ |
| CM_23 | CATHIE | Reporting_Group | Cross-Sell Propositions – Insurance | Source_Group = ‘Cross Sale’ |
| TM_24 | TIARA | Source_Code | Cross-Sell Propositions – AA Cars | Source_Code = 'AAC01' |
| CM_24 | CATHIE | Source_Code | Cross-Sell Propositions – AA Cars | Source_Code = 'AAC01' |
| TM_25 | TIARA | Reporting_Group | Cross-Sell Propositions – Driving School | Source_Code =  ‘MSBSY’ or ‘MSDS1’ or ‘MSDSM’ or ‘MSDSY’ or ‘MSDSZ’ |
| CM_25 | CATHIE | Reporting_Group | Cross-Sell Propositions – Driving School | Source_Code =  ‘MSBSY’ or ‘MSDS1’ or ‘MSDSM’ or ‘MSDSY’ or ‘MSDSZ’ |
| TM_26 | TIARA | Source_Group | Face to Face and Outbound – Direct Sales Force | Source_Group = ‘Direct Sales Force’ |
| CM_26 | CATHIE | Source_Group | Face to Face and Outbound – Direct Sales Force | Source_Group = ‘Direct Sales Force’ |
| TM_27 | TIARA | Source_Group | Face to Face and Outbound – Patrol | Source_Group = ‘Patrols’ |
| CM_27 | CATHIE | Source_Group | Face to Face and Outbound – Patrol | Source_Group = ‘Patrols’ |
| TM_28 | TIARA | Source_Group | Face to Face and Outbound – Outbound | Source_Group = ‘Outbound’ |
| CM_28 | CATHIE | Source_Group | Face to Face and Outbound – Outbound | Source_Group = ‘Outbound’ |
| TM_29 | TIARA | Source_Group | Added Value Accounts – BOS | Source_Group = 'AVA - BOS' |
| CM_29 | CATHIE | Source_Group | Added Value Accounts – BOS | Source_Group = 'AVA - BOS‘ or Source_Group = ‘’AVA’ and Source_Code = ‘BOS’ |
| TM_30 | TIARA | Source_Group | Added Value Accounts – HBOS | Source_Group = ‘AVA - HBOS' |
| CM_30 | CATHIE | Source_Group | Added Value Accounts – HBOS | Source_Group = 'AVA - HBOS‘ or Source_Group = ‘’AVA’ and Source_Code = ‘HALFX’ |
| TM_31 | TIARA | Source_Group | Added Value Accounts – Lloyds | Source_Group = 'AVA – LLOYDS‘  |
| CM_31 | CATHIE | Source_Group | Added Value Accounts – Lloyds | Source_Group = 'AVA - LLOYDS‘ or Source_Group = ‘’AVA’ and Source_Code = ‘LLYDS’ |
| TM_32 | TIARA | Source_Group | Added Value Accounts – TSB | Source_Group = ‘AVA – TSB‘  |
| CM_32 | CATHIE | Source_Group | Added Value Accounts – TSB | Source_Group = 'AVA - TSB‘ or Source_Group = ‘’AVA’ and Source Code = ‘TSB’ |
| TM_33 | TIARA | Source_Code | Other | Any other Source_Code not captured  |
| CM_33 | CATHIE | Source_Code | Other | Any other Source_Code not captured |

---
[↑](#definitions-and-glossary-of-terms)

### Field Sales Team Sales Effectiveness attributes

#### Region
The region in a Field Sales Team (FST) sale is made
Type: String
Valid values:

| Value | Definition    |
|:------|:--------------|
| North | Regions N1-N7 |
| South | Regions S1-S8 |

---
[↑](#definitions-and-glossary-of-terms)

### Date and Time measures

#### Transaction Date
The date that the transaction is generated (normally via customer contact or via system process)

#### Annual Cover Start Date
The date cover commences for each policy year

#### Annual Cover Effective Date
The date cover is effective from for each policy year - i.e. the maximum of the annual cover start date & transaction date for the 1st transaction of each policy year.  The effective date is guaranteed to always be “append only”, i.e., will never be set to a past.

#### Annual Cover End Date
The date the current policy year expires.

#### Selected date (Day)
Date selected by User (will default to last Wednesday)

#### Last Year Selected date (Day LY)
Starting from the date selected by User, we take the date with same trading week and day of trading week but from the previous trading year

#### Calendar Year
The annual period used for calendar reporting, runs from 1 January – 31 December

#### Calendar Month
The calendar month

#### Calendar Month to selected date (MTD)
The period between the first of the month and the selected date

#### Last Year Calendar Month to selected date (MTD LY)
The period between the first of the month and the selected date equivalent for last year. So if selected date is 23 Feb 2018 then Last Year Calendar Month to selected date will be 1 – 23 Feb 2017.

#### Financial Year (FY)
The annual period defined for financial reporting, runs from 1 February – 31 January. If selected date is Fri February 3, 2017 then Financial Year will be 2018.

#### Financial Year Last Year (FY LY)
The annual period defined for financial reporting, runs from 1 February – 31 January of the previous Financial Year.

#### Financial Year to selected date (FYTD)
Will be period from 1st February of selected date year to the selected date.

#### Last Financial Year to date (FYTD LY)
The comparison between the Financial Year to date and Last Financial Year to date will be performed upon the selected day’s index in the Financial year, so that there is an equal number of days between the two years.
This approach will correctly account for leap years.
For example, for the Financial year of 2017, the financial year to 3 March 2016 would be compared to the last financial year to 4 March 2015.
This is a change in logic from the legacy MI, which performs a comparison upon date in month, e.g.., 3 March TY to 3 March LY.

#### Trading Year
The annual period defined from the last Thursday of January (unless the 1st of February is a Thursday) to the last Wednesday of January of the following year. If selected date is Fri February 3, 2017 then Trading Year will be 2018.

#### Trading Year Last Year
As for Trading Year, but regarding the previous year.

#### Trading week up to selected day (Trading WK)
Trading week is the period starting from the Thursday before the selected date until the selected date. If the selected date is a Thursday, Trading week represents one day.

#### Last Year Trading week up to selected day (Trading WK LY)
The comparison between a Trading Week in this year and last year will be performed by comparing a given day of this year’s Trading week against the same day of the equivalent week of last year.
This is as per the legacy MI, e.g., Week 10 FY 2018 is compared with Week 10 FY 2017.
There is a complication for week 53 which occurs every 7 years or so and is due to happen at the end of the current financial year.
Our proposal is that, since there is no equivalent week 53 for last year, the TW LY fields will report week 1 for current year when we are reporting on TW 53.

| Current Year | Last Year                          |
|:-------------|:-----------------------------------|
| 2018 WK 52   | compares to 2017 WK 52             |
| 2018 WK 53   | compares to 2018 WK 1 (see above)  |
| 2019 WK 1    | compares to 2018 WK 1              |

#### Trading Year to selected date (Trading YTD)
Will be period from the beginning of the Trading Year to the selected date.

#### Last Trading Year to selected date (Trading YTD LY)
The comparison between the Trading Year to date and Last Trading Year to date will be performed upon the selected day’s index in the Trading year, so that there is an equal number of days between the two years.
This approach will correctly account for leap years.

#### Specific date example
Let's assume to select the 25/Sept/2017; the attributes of that specific date are:
- Trading Year = 2018
- Trading Week = 35
- Day of Trading of Week = 5 (the 25/Sept/2017 is a Monday, we start counting the day in the Trading week from Thursday)
- Day of Trading Year = 243 (the Trading Year starts from 26/Jan/2017)
- Financial Year = 2018
- Day of Financial Year = 237 (the Financial Year starts from 01/Feb/2017)

The different time views will be calculated as below

| Time view name | Value                                             | Calculation Notes                                                                    |
|:---------------|:--------------------------------------------------|:-------------------------------------------------------------------------------------|
| Day            | 25/Sept/2017                                      |  |
| Day LY         | 26/Sept/2016                                      | Calculated using Trading Year = 2017, Trading Week = 35, Day of Trading of Week = 5  |
| Trading WK     | from Thursday 21/Sept/2017 to Monday 25/Sept/2017 | Calculated using Trading Year = 2018, Trading Week = 35, Day of Trading of Week <= 5 |
| Trading WK LY  | from Thursday 22/Sept/2016 to Monday 26/Sept/2016 | Calculated using Trading Year = 2017, Trading Week = 35, Day of Trading of Week <= 5 |
| MTD            | from 01/Sept/2017 to 25/Sept/2017                 |  |
| MTD LY         | from 01/Sept/2016 to 25/Sept/2016                 |  |
| FYTD           | from 01/Feb/2017 to 25/Sept/2017                  | Calculated using Financial Year = 2018, Day of Financial Year <= 237                 |
| FYTD LY        | from 01/Feb/2016 to 24/Sept/2016                  | Calculated using Financial Year = 2017, Day of Financial Year <= 237                 |
| Trading YTD    | from 26/Jan/2017 to 25/Sept/2017                  | Calculated using Trading Year = 2018, Day of Trading Year <= 243                     |
| Trading YTD LY | from 28/Jan/2016 to 26/Sept/2016                  | Calculated using Trading Year = 2017, Day of Trading Year <= 243                     |

---
[↑](#definitions-and-glossary-of-terms)

### Financial measures

#### Gross Customer Premium (GCP)
Price paid by the customer

#### Average Transaction Value (ATV)
The total transaction value divided by the transaction volume

#### Annualised Average Transaction Value (AATV)
The ATV, annualised typically by multiplying monthly transactions by 12, quarterly transactions by 4 and annual transactions by 1. This is the same as ATV in TIARA.

---
[↑](#definitions-and-glossary-of-terms)

### Contact Centre Sales Effectiveness measures

Inbound calls included:

| Call Type | Description                          |
|:-------------|:-----------------------------------|
| Actuals | New business calls are selected based on their vector directory number (VDN): A customer will call an external telephone number and then select an option from the IVR, once they have been through the IVR and have a VDN they will be counted as an offered call |
| Inbound | Include NMU calls, MSAS calls and Will Join calls |
| NMU | All calls on an ‘RM’ VDN, this includes Affinities, Brand, Directories, Email, Inserts, Press, Radio, Directories, Direct Mail, AA.com Offline, Other direct marketing calls and Cross Sales from Insurance and AA cars. As well as all Mancon which are calls on ‘MC1’ VDN |
| MSAS | All calls on ‘ME1, ME2, ME5 and MEA’ VDNs, this includes Membership Enquires, Membership SMS, MSAS transfers and Membership Enquires dotcom, MD1- Collingwood, MG1 - Ford, HC1 - HER, ML1 - Lloyds, MVZ – TSB, and MB1, MB2 and MB4 – HBOS |
| Will Join | All calls on ‘B3’ VDN |

#### Calls Offered
The volume of inbound calls received (i.e., have heard a ringtone), across the above call groups within the call centre. May be split by department or business process (e.g., New business).

#### Calls Answered
The volume of inbound calls answered by the call centre. Also known as Calls Handled.

#### Calls Answered in SLA
The volume of inbound calls answered in the first 30 seconds by the call centre.

#### Calls Answered Service Level
Calculated as Calls Answered in SLA / Calls Answered

#### Calls Abandoned
The volume of calls that were abandoned after 20 seconds.

#### Abandonment Rate
Abandoned calls / calls offered.

#### New Business Sales Volume
The volume of new business sales completed (i.e., in the call centre).

#### New Business Call: Sale Conversion Rate
The % new business calls converted to a new business sale.

#### Handling Time
The total duration in seconds spent working on a single call including callwork. Calculated as acdtime+holdtime+acwtime.

#### Average Handling Time (AHT)
The average total duration in seconds of a collection of telephone calls. Calculated as (acdtime+holdtime+acwtime)/acdcalls.

#### Was Service Level Met?
Was the call was answered within 30 seconds.

#### Service Level Rate (SL)
The % of calls that have been answered within 30 seconds.

---
[↑](#definitions-and-glossary-of-terms)
