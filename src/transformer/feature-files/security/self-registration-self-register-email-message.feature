@NotAutomated
@JIRA-Key-MANUSCRIPT-32844
@Security
Feature: Security - Self-Registration - Self-Register email message

  Scenario: User receives self-registration message upon self-register
    Given The user is logged in as Administrator
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "Users" menu item in the sidebar menu
    And The "Manage Users" page is shown
    And The user enters the following details in the "Manage Users" page:
      | Allowed Domains |
      | @devfactory.com |
    And The user logs out
    When The user clicks the "Register" button in the sidebar
    And The user is redirected to the "Register" page
    And The user enters the following details in the "Register" page:
      | Your company email  |
      | test@devfactory.com |
    And The user clicks the "Send me the confirmation link" button in the "Register" page
    Then The user receives the "Confirm your email for {{instance-name}}" email message in the "test@devfactory.com" email address
    And The "Confirm your email for {{instance-name}}" email message has the following message body:
    """
    Welcome to FogBugz!
We're glad to have you here! Before you can get started pulverizing bugs and planning projects, we'll need you to confirm your email address.

To set up your FogBugz account on {{instance-name}}.fogbugz.com and start working, click on the following link:

Confirm email

If the link above does not work for you, copy and paste the following url into your browser address bar:

https://{{instance-name}}.fogbugz.com/f/confirm?email=test%40devfactory.com&key={{confirmation-key}}

Note: the above links will expire on {{expiration-date}}, so please confirm before then!

If you did not request to join a FogBugz team, and have received this message in error, you can ignore it with no ill effects.

----------------
The FogBugz Team
    """
    And The "{{expiration-date}}" is the "Current Date + 2 days" date
