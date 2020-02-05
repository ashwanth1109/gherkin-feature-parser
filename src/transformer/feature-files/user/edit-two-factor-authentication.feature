@NotAutomated
@JIRA-Key-MANUSCRIPT-31671
@User
Feature: Edit - Two-Factor Authentication

  Scenario Outline: User can use two-factor authentication with <Two-Factor App>
    Given The user is logged in as Administrator
    And The user has a mobile device with the "<Two-Factor App>" app installed
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "Enable Two-Factor Authentication" button in the "User Options" page
    Then The "Two-Factor Authentication Setup" dialog is shown
    And The "Barcode" image is shown in the "Two-Factor Authentication Setup" dialog
    And The user scans the "Barcode" image with the mobile device
    And The "FogBugz" is added to the "<Two-Factor App>" app in the mobile device
    And The user enters the "Verification Code" value in the "Two-Factor Authentication Setup" dialog
    And The user clicks the "Next" button in the "Two-Factor Authentication Setup" dialog
    And The user clicks the "Next" button in the "Two-Factor Authentication Setup" dialog
    And The user clicks the "Close" button in the "Two-Factor Authentication Setup" dialog
    Examples:
      | Two-Factor App              |
      | Google Authenticator        |
      | Authy                       |
      | Windows Phone Authenticator |

  Scenario Outline: User can disable two-factor authentication
    Given The user is logged in as Administrator
    And The user has a mobile device with the "<Two-Factor App>" app installed
    And The following user options exist:
      | User          | Two-Factor Authentication |
      | Administrator | true                      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "here" link in the "User Options" page
    And The "Disable Two-Factor Authentication" confirmation dialog is opened
    And The user clicks the "OK" button in the "Disable Two-Factor Authentication" confirmation dialog
    Then The following user options details are listed in the "User Options" page:
      | Two-Factor Authentication |
      | true                      |
    Examples:
      | Two-Factor App              |
      | Google Authenticator        |
      | Authy                       |
      | Windows Phone Authenticator |

  Scenario Outline: User can regenerate backup codes for two-factor authentication
    Given The user is logged in as Administrator
    And The user has a mobile device with the "<Two-Factor App>" app installed
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "Enable Two-Factor Authentication" button in the "User Options" page
    And The "Two-Factor Authentication Setup" dialog is shown
    And The "Barcode" image is shown in the "Two-Factor Authentication Setup" dialog
    And The user scans the "Barcode" image with the mobile device
    And The "FogBugz" is added to the "<Two-Factor App>" app in the mobile device
    And The user enters the "Verification Code" value in the "Two-Factor Authentication Setup" dialog
    And The user clicks the "Next" button in the "Two-Factor Authentication Setup" dialog
    And The backup codes are shown in the "Two-Factor Authentication Setup" dialog
    And The user clicks the "regenerate" link in the "Two-Factor Authentication Setup" dialog
    Then The backup codes are shown in the "Two-Factor Authentication Setup" dialog
    Examples:
      | Two-Factor App              |
      | Google Authenticator        |
      | Authy                       |
      | Windows Phone Authenticator |

  Scenario Outline: User can print backup codes for two-factor authentication
    Given The user is logged in as Administrator
    And The user has a mobile device with the "<Two-Factor App>" app installed
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "Enable Two-Factor Authentication" button in the "User Options" page
    And The "Two-Factor Authentication Setup" dialog is shown
    And The "Barcode" image is shown in the "Two-Factor Authentication Setup" dialog
    And The user scans the "Barcode" image with the mobile device
    And The "FogBugz" is added to the "<Two-Factor App>" app in the mobile device
    And The user enters the "Verification Code" value in the "Two-Factor Authentication Setup" dialog
    And The user clicks the "Next" button in the "Two-Factor Authentication Setup" dialog
    And The backup codes are shown in the "Two-Factor Authentication Setup" dialog
    And The user clicks the "print" link in the "Two-Factor Authentication Setup" dialog
    Then The "Print" browser window is shown
    And The "Print" browser window contains a page with the backup codes
    Examples:
      | Two-Factor App              |
      | Google Authenticator        |
      | Authy                       |
      | Windows Phone Authenticator |

  Scenario Outline: User can view the backup codes for two-factor authentication
    Given The user is logged in as Administrator
    And The user has a mobile device with the "<Two-Factor App>" app installed
    And The following user options exist:
      | User          | Two-Factor Authentication |
      | Administrator | true                      |
    And The user hovers over the "Avatar" icon at the bottom-left part in the sidebar
    And The user clicks the "User Options" menu item in the sidebar menu
    When The user clicks the "View Two-Factor Authentication" button in the "User Options" page
    And The "Two-Factor Authentication Setup" dialog is shown
    And The user clicks the "Next" button in the "Two-Factor Authentication Setup" dialog
    Then The backup codes are shown in the "Two-Factor Authentication Setup" dialog
    Examples:
      | Two-Factor App              |
      | Google Authenticator        |
      | Authy                       |
      | Windows Phone Authenticator |

  Scenario Outline: User can login with two-factor authentication with <Two-Factor App>
    Given The user is logged in as Administrator
    And The user has a mobile device with the "<Two-Factor App>" app installed
    And The following user options exist:
      | User          | Two-Factor Authentication |
      | Administrator | true                      |
    When The user logs out
    And The user enters the login details in the "Login" form in the "Login" page:
      | Email                     | Password |
      | administrator@fogbugz.com | test1234 |
    And The user is redirected to the "Enter authentication code" page
    And The user enters the following details in the "Enter authentication code" page:
      | Code                |
      | "Verification Code" |
    And The user clicks the "Log In" button in the "Enter authentication code" page
    Then The user logs in
    Examples:
      | Two-Factor App              |
      | Google Authenticator        |
      | Authy                       |
      | Windows Phone Authenticator |
