@NotAutomated
@JIRA-Key-MANUSCRIPT-31678
@Email
Feature: Email - Send - Rich Text Mode - Redo

  Background:
    Given The user is logged in as Administrator
    When The user clicks the "New Email" button in the sidebar

  Scenario: User can redo in rich text mode when sending emails
    And The user enters the following details in the "New Email" page:
      | Description     |
      | Terrible mistak |
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description     |
      | Terrible mistak |

  Scenario: User can redo format text as bold when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Bold" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description                         |
      | <p><strong>Lorem ipsum</strong></p> |

  Scenario Outline: User can redo format text as a paragraph when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user selects the "<Paragraph Format Option>" option from the "Paragraph Format" dropdown in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description                |
      | <Paragraph Format Content> |
    Examples:
      | Paragraph Format Option | Paragraph Format Content |
      | Normal                  | <p>Lorem ipsum</p>       |
      | Heading 1               | <h1>Lorem ipsum</h1>     |
      | Heading 2               | <h2>Lorem ipsum</h2>     |
      | Heading 3               | <h3>Lorem ipsum</h3>     |
      | Formatted               | <pre>Lorem ipsum</pre>   |

  Scenario: User can redo format text as italic when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Italic" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description                 |
      | <p><em>Lorem ipsum</em></p> |

  Scenario: User can redo format text as strikethrough when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Strikethrough" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description               |
      | <p><s>Lorem ipsum</s></p> |

  Scenario: User can redo format text as underline when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Underline" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description               |
      | <p><u>Lorem ipsum</u></p> |

  Scenario: User can redo clear text formatting when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Bold" button in the "New Email" page
    And The user clicks the "Remove Format" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description        |
      | <p>Lorem ipsum</p> |

  Scenario: User can redo format text as code when sending emails
    And The user enters the following details in the "New Email" page:
      | Description |
      | Lorem ipsum |
    And The user selects the text in the "Description" field in the "New Email" page
    And The user clicks the "Code" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description                     |
      | <p><code>Lorem ipsum</code></p> |

  Scenario: User can redo turn a text into a web link when sending emails
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
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    And The following details are shown in the "New Email" page:
      | Description                                                             |
      | <p><a href="https://www.google.com" target="_blank">Lorem ipsum</a></p> |

  Scenario: When sending emails user can redo inserting an image into description
    And The "test.png" file exists
    And The user clicks the "Image" button in the "New Email" page
    And The user uploads the "test.png" file in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The following details are shown in the "New Email" page:
      | Description                                                                                                         |
      | <p><img src="/default.asp?pg=pgDownload&amp;pgType=pgDBAttachment&amp;ixAttachment=1&amp;sFileName=test.png" /></p> |

  Scenario: User can redo inserting a numbered list when sending emails
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ol>
	<li>&nbsp;</li>
</ol>
    """

  Scenario: User can redo inserting a bulleted list when sending emails
    And The user clicks the "Insert/Remove Bulleted List" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    And The user clicks the "Source" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ul>
	<li>&nbsp;</li>
</ul>
    """

  Scenario: User can redo decrease an indent of a numbered list when sending emails
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Increase Indent" button in the "New Email" page
    And The user clicks the "Increase Indent" button in the "New Email" page
    And The user clicks the "Decrease Indent" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ol style="margin-left: 40px;">
	<li>&nbsp;</li>
</ol>
    """

  Scenario: User can redo increase an indent of a numbered list when sending emails
    And The user clicks the "Insert/Remove Numbered List" button in the "New Email" page
    And The user clicks the "Increase Indent" button in the "New Email" page
    And The user clicks the "Undo" button in the "New Email" page
    And The user clicks the "Redo" button in the "New Email" page
    Then The "Description" field in the "New Email" page is:
    """
<ol style="margin-left: 40px;">
	<li>&nbsp;</li>
</ol>
    """
