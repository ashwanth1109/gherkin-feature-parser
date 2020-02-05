@NotAutomated
@JIRA-Key-MANUSCRIPT-31677
@Email
Feature: Email - Send - Rich Text Mode - Undo

  Background:
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar

  Scenario: User can undo in rich text mode when sending emails
    And The user enters the following details in the "New Email" page:
      | Description     |
      | Terrible mistak |
    And The user clicks the "Undo" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description |
      |             |

  Scenario: User can undo format text as bold when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Bold" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |

  Scenario Outline: User can undo format text as a paragraph when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user selects the "<Paragraph Format Option>" option from the "Paragraph Format" dropdown in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description |
      | Lorem ipsum |
    Examples:
      | Paragraph Format Option |
      | Normal                  |
      | Heading 1               |
      | Heading 2               |
      | Heading 3               |
      | Formatted               |

  Scenario: User can undo format text as italic when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Italic" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |

  Scenario: User can undo format text as strikethrough when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Strikethrough" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |

  Scenario: User can undo format text as underline when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Underline" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |

  Scenario: User can undo clear text formatting when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Bold" button in the "New Email" page
    And The user clicks the "Remove Format" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description               |
      | <p><b>Lorem ipsum</b></p> |

  Scenario: User can undo format text as code when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Code" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |

  Scenario: User can undo turn a text into a web link when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user clicks the "Link" button in the "New Email" page
    And The "Link" dialog is shown
    Then The following details are shown in the "Link" dialog:
      | Target      | Text        |
      | Lorem ipsum | Lorem ipsum |
    And The user enters the following details in the "Link" dialog:
      | Target                  | Text        |
      | https://www.google.com/ | Lorem ipsum |
    And The user clicks the "OK" button in the "Link" dialog
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    And The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |

  Scenario: When sending emails user can redo inserting an image into description
    And The "test.png" file exists
    And The user clicks the "Image" button in the "New Email" page
    And The user uploads the "test.png" file in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description |
      |             |

  Scenario: User can undo inserting a numbered list when sending emails
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description |
      |             |

  Scenario: User can undo inserting a bulleted list when sending emails
    And The user clicks the "Insert/Remove Bulleted List" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description |
      |             |

  Scenario: User can undo decrease an indent of a numbered list when sending emails
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Increase Indent" button in the "New Email" page
    And The user clicks the "Increase Indent" button in the "New Email" page
    And The user clicks the "Decrease Indent" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ol>
	<li>&nbsp;</li>
</ol>
    """

  Scenario: User can undo increase an indent of a numbered list when sending emails
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Increase Indent" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ol>
	<li>&nbsp;</li>
</ol>
    """
