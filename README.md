# README

* Eran Levy
* Donation campaign demo page - a Ruby on Rails application.

* Model:
- DonationCampaign - A list of campaigns, with goal, rich text description and a cover image
- Payments - A list of payments for each campaign.

* UI
The main page is at
/donation_campaigns/4
It loads the campaign and payments, and allows to add donations.

Payments: In order to track "nicely" the goal, for the purpose of UI flow and check, currently immediately adding a payment.
Of course, in the real application payments, which are set to Pending when created, will be processed using a back process:
- Event driven - Event will be sent when creating a payment. A processing service will pick and update.
- Polling - A worker will scan the payments table for new payments, lock one and process it