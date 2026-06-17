# Donation Campaign demo - Eran Levy

* Donation campaign demo page - a Ruby on Rails application.

To run locally:
Install Ruby and Rails and then run from the root directory:
rails server
Once built, the app should be available on 
http://localhost:3000/donation_campaigns/4
<img width="1888" height="937" alt="image" src="https://github.com/user-attachments/assets/5e9b26da-6400-4276-a4ba-4734506393a2" />
Where "4" is the id of the campaign, which can be created as follows:
There are CRUD pages for the campaign, just for the purpose of populating the database. They have no styling. To access:
http://localhost:3000
From there, you can see a list of donation campaigns, and create/edit/delete campaigns.


* Model:
The app uses a donation campaign and payments models, saved in the db:
- DonationCampaign - A list of campaigns, with goal, rich text description and a cover image.
- Payments - A list of payments for each campaign.

* UI
The design follows the requirement by JGive. It uses Rails MVC for the implementation.

* Payments:
In order to track "nicely" the goal, for the purpose of UI flow and check, currently immediately adding a payment.
Of course, in the real application payments, which are set to Pending when created, will be processed using a back process:
- Event driven - Event will be sent when creating a payment. A processing service will pick and update.
- Polling - A worker will scan the payments table for new payments, lock one and process it

Enhacements for the app, with more time:
- Having a list of payment amount to choose from for each campaign - currently it's "hard coded" (180, 360...).
- Handle currency.
- A page to track payment processing.
- Authentication
- A page that shows all the user's payments
- Proper validation and error messages
- And many more...
