@NotAutomated
@JIRA-Key-MANUSCRIPT-29451
@Case
Feature: Case - Default Cases


  Scenario: System provides the default case 1
    Given The user is logged in as Administrator
    When The user searches for the "1" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                              | Status | Priority     | Category | Project            | Area       |
      | 1  | Welcome to the Planner in FogBugz! | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
This interface provides a high level view of your work by letting you sort your various tasks into milestones.

The sample cases in this Planner will walk you through how to create projects and organize work with your own Planners and Filters.

You can get back to the Planner at any time by selecting  in the left sidebar and following the link to the Onboarding Planner.
    """

  Scenario: System provides the default case 2
    Given The user is logged in as Administrator
    When The user searches for the "2" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                        | Status | Priority     | Category | Project            | Area       |
      | 2  | Create your first project(s) | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
To create your first project, go to the Avatar Menu and click “Projects.” Once you have created a project, you can set up Areas to subdivide the work in each project. For example, a software project might have separate Areas for front-end code, back-end code, and documentation, or your Inbox project might have separate Areas for your Sales and Support teams.

For best practices on defining your Projects and Areas, you can read more here.

For a video tutorial on setting up Projects, Planners and Kanban boards, click here.
    """

  Scenario: System provides the default case 3
    Given The user is logged in as Administrator
    When The user searches for the "3" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                   | Status | Priority     | Category | Project            | Area       |
      | 3  | Create your own Planner | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
The Planner helps you easily organize agile sprints or any other milestones into a single board. A milestone is represented by a column in the Planner, and it represents a period of time designated for a certain amount of work. You can check out this video tutorial for more detail, or read on for a few tips to get started.

You can use a single Planner for one Project, or manage work across multiple Projects in the same board.



To create a new Planner, click on the menu in the top left corner:



Create a milestone called “Backlog” - this will be a placeholder for to-do items that haven't yet been sorted into your milestones. The backlog milestone allows you to order your cases relative to one another. You can quickly add cases to the backlog by clicking  and either typing a new case title or searching for an existing case by number or title.

Click  to add additional sprints or other milestones to your board. You can drag cases from your backlog into your milestones in order to designate when you'd like the work to get done.



For more detail on configuring your Planner, read here.
    """

  Scenario: System provides the default case 4
    Given The user is logged in as Administrator
    When The user searches for the "4" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                                       | Status | Priority     | Category | Project            | Area       |
      | 4  | Use Kanban to create a lightweight workflow | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
Kanban lets you zoom into a specific milestone to create a lightweight workflow.

To access the Kanban board, click the button in the top right corner of your milestone:



From there, you can easily create new columns to represent different stages of your process. Like the Planner, any change made in the Kanban is reflected back in the case and is easily searchable.

For a video tutorial on setting up Projects, Planners and Kanban boards, click here.
    """

  Scenario: System provides the default case 5
    Given The user is logged in as Administrator
    When The user searches for the "5" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                                     | Status | Priority     | Category | Project            | Area       |
      | 5  | Find your data through search and filters | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
FogBugz offers powerful search to help you keep track of the smallest details in your projects. The auto-completing search function lets you get started without having any syntax memorized.

Simply start typing into the search bar, and possible related search terms will automatically appear in a dropdown:





To eliminate even more guesswork, click  on the right side of the search bar for a full menu of search terms and their syntax.

You can use this search to build out complex filters that help you manage all of the detail across your projects. You can save a search by clicking in the upper right corner of the filter page:





For more information on filters, read here.
    """

  Scenario: System provides the default case 6
    Given The user is logged in as Administrator
    When The user searches for the "6" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                                     | Status | Priority     | Category | Project            | Area       |
      | 6  | This is a case (click me for more detail) | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
A case is the basic unit of work, whether you categorize that as a task, a bug, a feature or an email.

You can use cases to assign, prioritize, tag, or set due dates for your work items. Cases provide you with a log of every detail necessary to get your job done. You can review all the fields in a case here.

Cases will be organized into projects, and can be viewed in the Planner (Case 3), Filters (Case 5) or Kanban (Case 4)

For a video tutorial on getting started with cases, click here.
    """

  Scenario: System provides the default case 7
    Given The user is logged in as Administrator
    When The user searches for the "7" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                           | Status | Priority     | Category | Project            | Area       |
      | 7  | Update the status of your cases | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
You can resolve and close this case to indicate that it’s done by clicking on the upper right hand corner:





Then click

Resolving a case marks it as done, but leaves room for someone else on your team to double check it or take it to the next stage.
Closing a case means that it's fully completed and removes it from sight. Closed cases remain searchable, so you always have a way to search for the work you’ve done.


*Planner Pro-Tip: You can resolve a case directly from the Planner view. Hover over the right hand corner of a case to open a shortcut menu:


    """

  Scenario: System provides the default case 8
    Given The user is logged in as Administrator
    When The user searches for the "8" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                 | Status | Priority     | Category | Project            | Area       |
      | 8  | Set up your help desk | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
FogBugz comes with built-in email integration to help you communicate with customers and route inquiries to the appropriate members of your team.

Your trial comes with a default help address (cases@<"instance name".fogbugz.com), but you can easily configure your own mailbox to route emails to your account.

The instructions in the link above will also help you set up your autoresponder and create custom text snippets for quick responses to common customer questions.
    """

  Scenario: System provides the default case 9
    Given The user is logged in as Administrator
    When The user searches for the "9" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                                      | Status | Priority     | Category | Project            | Area       |
      | 9  | Integrate FogBugz with your favorite tools | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
Out of the box, we've built integrations that let FogBugz intelligently update cases with information from GitHub, Slack, Twitter and other services you're probably already using. All of these integrations are also free and open source, and they're hosted on our fun, easy coding community Glitch, so that you can edit them and customize them to work perfectly for your team.

Here are the details to get started with FogBugz integrations.

And if you need to connect FogBugz to a proprietary app, you can use the FogBugz API.
    """

  Scenario: System provides the default case 10
    Given The user is logged in as Administrator
    When The user searches for the "10" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                                      | Status | Priority     | Category | Project            | Area       |
      | 10 | Group cases by clicking the dropdown above | Active | 3 - Must Fix | Bug      | Onboarding Project | Guidelines |
    And The "Description" field in the "View Active Case" page is:
    """
The “Group By” option at the top of each milestone allows you to sort your cases:





You can also make changes directly on the case by clicking on the summary card. For example, to change the priority from 2 to 3, click on the orange dot and a dropdown will appear containing your different priority options:


    """

  Scenario: System provides the default case 11
    Given The user is logged in as Administrator
    When The user searches for the "11" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                   | Status | Priority     | Category | Project            | Area      |
      | 11 | Add users to your trial | Active | 3 - Must Fix | Bug      | Onboarding Project | Resources |
    And The "Description" field in the "View Active Case" page is:
    """
Now that you've created your first project(s) (Case 2), you can invite other users to join your trial and begin assigning cases.

To add users, go to the Avatar Menu in the bottom left corner of your screen and click “Users.” Note: You must be an Administrator to add users.

You can read more about FogBugz user types here.
    """

  Scenario: System provides the default case 12
    Given The user is logged in as Administrator
    When The user searches for the "12" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                             | Status | Priority     | Category | Project            | Area      |
      | 12 | Let us know if you have questions | Active | 3 - Must Fix | Bug      | Onboarding Project | Resources |
    And The "Description" field in the "View Active Case" page is:
    """
We’re here if you have any questions. You can contact us emailing success@fogbugz.com.

Or, because this case has a correspondent listed, you can click  at the top of this case to email us directly from your trial. (See Case 8 for more on the email integration in FogBugz.)
    """

  Scenario: System provides the default case 13
    Given The user is logged in as Administrator
    When The user searches for the "13" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                               | Status | Priority     | Category | Project            | Area      |
      | 13 | Additional resources for Developers | Active | 3 - Must Fix | Bug      | Onboarding Project | Resources |
    And The "Description" field in the "View Active Case" page is:
    """
You've seen how the Planner can help you block out your milestones (Case 3), so here are a few other resources to manage your work:

1. Version Control integration - link your code commits to cases using our Hg/Git hosting tool Kiln, or GitHub.

2. "My Cases" filter - focus exclusively on the tasks assigned to you. Hover over the  menu in the left sidebar to pull up this built-in filter.

3. Customizable workflows - FogBugz comes with default workflows to help your team get started quickly. You can also customize workflows on a per-project basis.

4. Case hierarchies - Easily create subcases directly from the case page. Simply start typing into the Subcases field in the left sidebar of the case. These new cases will automatically be assigned case numbers when you click Save.



5. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.

Want to share this case with someone on your team? Add them as a subscriber in the left sidebar of this case:


    """

  Scenario: System provides the default case 14
    Given The user is logged in as Administrator
    When The user searches for the "14" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                                     | Status | Priority     | Category | Project            | Area      |
      | 14 | Additional resources for Project Managers | Active | 3 - Must Fix | Bug      | Onboarding Project | Resources |
    And The "Description" field in the "View Active Case" page is:
    """
You've seen how the Planner interface (Case 3) can help you plan your roadmap, and the Kanban (Case 4) can help you organize the work in your milestones. Here are a few more things you can do in FogBugz:

1. Plan your release dates - Log time on your cases to see how your team is tracking towards release dates. Our Evidence Based Scheduling tool aggregates data on the accuracy of your estimates to give you a realistic picture of when you’ll be ready to ship.

2. Report on progress - Case 5 provides more detail on how to create filters. View this data in graphical form by clicking  at the top left of your filter view. You can export this data by clicking on More at the top right corner of your filter view:



3. Customize workflows - FogBugz comes with default workflows to help your team get started quickly. You can also customize workflows on a per-project basis.

4. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.

Want to share this case with someone on your team? Add them as a subscriber in the left sidebar of this case:


    """

  Scenario: System provides the default case 15
    Given The user is logged in as Administrator
    When The user searches for the "15" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                                  | Status | Priority     | Category | Project            | Area      |
      | 15 | Additional resources for Support Teams | Active | 3 - Must Fix | Bug      | Onboarding Project | Resources |
    And The "Description" field in the "View Active Case" page is:
    """
Case 8 gives you the first few steps for setting up your help desk, but there are several other tools in FogBugz to help you manage your Support Team:

1. Notifications - Know when your customers are responding through in-app notifications. Hover over the  at the top of the left sidebar to see a full list of cases you're subscribed to that have been updated since you last viewed them. To notify someone on a case (like this one, for example), click edit and type their name in the Notify More Users field at the top of the case page.

2. Case postponement - Sometimes a customer request needs to be revisited at a later point - maybe you want to set a reminder to follow up with them if they haven't responded, or you need to have a developer fix a bug before you can tell the customer it's resolved. Case postponements allow you to resolve a case so that it automatically reopens when the timing is right, either once a related case has been closed, or when you've indicated you need a reminder. This clears the clutter while helping you make sure you answer every customer question on time.

3. Community Users - Offer your customers transparency by providing them with a login to review the status of issues they've raised. Community Users are free, since they won't have access to your internal conversations about their cases.

4. Auto-sort capability - Automatically route cases to specific projects and clear spam from your inbox. For best practices on using Auto-sort, read here.

5. More info - For more information on FogBugz features and setup, you can search our knowledge base at https://support.fogbugz.com/hc/articles/360011350773-Quick-Introduction-to-FogBugz, or contact our team at success@fogbugz.com.
    """

  Scenario: System provides the default case 16
    Given The user is logged in as Administrator
    When The user searches for the "16" search string by using the search box
    And The user is redirected to the "View Active Case" page
    Then The following case details are shown in the "View Active Case" page:
      | ID | Title                        | Status | Priority     | Category | Project            | Area      |
      | 16 | Intro Case for Administrator | Active | 3 - Must Fix | Bug      | Onboarding Project | Resources |


