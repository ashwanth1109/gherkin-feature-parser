@NotAutomated
@JIRA-Key-MANUSCRIPT-32846
@Security
Feature: Security - Self-Registration - Self-register same user

  Scenario: When attempting to self-register the same user - an error email is sent
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
    And The user receives the "Confirm your email for {{instance-name}}" email message in the "test@devfactory.com" email address
    And The user clicks the "Confirm email" link in the "Confirm your email for {{instance-name}}" email message
    And The user is redirected to the "Complete Registration" confirmation dialog
    And The user enters the following details in the "Complete Registration" confirmation dialog:
      | Full Name | Password |
      | T t       | 123123   |
    And The user clicks the "Save" button in the "Complete Registration" confirmation dialog
    And The user clicks the "Register" button in the sidebar
    And The user is redirected to the "Register" page
    And The user enters the following details in the "Register" page:
      | Your company email  |
      | test@devfactory.com |
    And The user clicks the "Send me the confirmation link" button in the "Register" page
    Then The user receives the "You already have a user active at {{instance-name}}" email message in the "test@devfactory.com" email address
    And The "You already have a user active at {{instance-name}}" email message has the following message body:
    """
    You recently requested to add a user for {{instance-name}} with this email address, but we already have a registered user associated with this address. If you're having trouble logging in because you don't remember your password, you can request a password reset clicking on the following link:

Request password reset

If the link above does not work for you, copy and paste the following url into your browser address bar:

https://{{instance-name}}/default.asp?pre=preForgotPassword&sPerson=test%40devfactory.com

If you did not request to join a FogBugz team, and have received this message in error, you can ignore it with no ill effects.

----------------
The FogBugz Team

    """
