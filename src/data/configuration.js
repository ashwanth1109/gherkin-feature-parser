const scenarios = [{"name":"Administrator can set authentication mode to user and password","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","outcome":"Action is executed","table":null},{"description":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","outcome":"Action is executed","table":null},{"description":"The \"Site Configuration\" page is shown","outcome":"Action is executed","table":null},{"description":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","outcome":"Action is executed","table":null},{"description":"The user selects the \"Google OAuth Authentication\" option from the \"Authentication Mode\" dropdown","outcome":"Action is executed","table":null},{"description":"The user clicks the \"OK\" button in the \"Site Configuration\" page","outcome":"Action is executed","table":null},{"description":"The user logs out","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The \"Sign in with Google\" button is shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Email\" field is not shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Password\" field is not shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Remember me\" checkbox is not shown in the \"Login\" page","table":null}],"preconditions":[]},{"name":"Administrator can set authentication mode to user and password","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","table":null},{"description":"The user selects the \"Username and Password Authentication\" option from the \"Authentication Mode\" dropdown","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The \"Log In\" button is shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Email\" field is shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Password\" field is shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Remember me\" checkbox is shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Sign in with Google\" button is not shown in the \"Login\" page","table":null}],"preconditions":[]},{"name":"Administrator can set authentication mode to user and password","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","table":null},{"description":"The user selects the \"Username and Password or Google OAuth Authentication\" option from the \"Authentication Mode\" dropdown","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The \"Log In\" button is shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Email\" field is not shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Password\" field is not shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Remember me\" checkbox is not shown in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Sign in with Google\" button is shown in the \"Login\" page","table":null}],"preconditions":[]},{"name":"User can view all authentication modes available in Site Configuration","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The following values are available for the \"Authentication Mode\" dropdown in the \"Site Configuration\" page in the following order:","table":{"th":["Username and Password Authentication"],"td":[["Username and Password or Google OAuth Authentication"],["Google OAuth Authentication"],[],["@NotAutomated"],["@JIRA-Key-MANUSCRIPT-29825"],["@Configuration"],["Feature: Site Configuration - Community Users Control"],[],["Scenario: Administrator can prohibit creation of community users to administrators only"]]}}],"preconditions":[]},{"name":"Administrator can prohibit creation of community users to administrators only","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the site configuration details in the \"Site Configuration\" page:","table":{"th":["Community Users Control"],"td":[["Only admins can create community users"]]}},{"description":"The user clicks the \"OK\" button in the \"Site Configuration\" page","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The \"Register\" button is not shown in the sidebar","table":null}],"preconditions":[]},{"name":"Administrator can allow creation of community users to administrators only","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the site configuration details in the \"Site Configuration\" page:","table":{"th":["Community Users Control"],"td":[["Anybody can create their community user"]]}},{"description":"The user clicks the \"OK\" button in the \"Site Configuration\" page","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Register\" button in the sidebar","table":null},{"description":"Check the outcome","outcome":"The \"Sign up for a new Community user\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user enters the community user details in the \"Sign up for a new Community user\" page:","table":{"th":["Full Name","Email Address","Homepage"],"td":[["F f","f@f.com","http://www.nowhere.com"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Sign up for a new Community user\" page:","table":null},{"description":"Check the outcome","outcome":"The user is redirected to the \"Confirm Account\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Log In\" button in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user is logged in as Administrator","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Users\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"community management page\" link in the \"Manage Users\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Edit\" button for the \"F f\" community user in the \"Management Community Users\" page","table":null},{"description":"Check the outcome","outcome":"The \"User Options\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Change Password\" button in the \"User Options\" page","table":null},{"description":"Check the outcome","outcome":"The \"Change Password\" dialog is opened","table":null},{"description":"Check the outcome","outcome":"The user enters the change password details in the \"Change Password\" dialog:","table":{"th":["New Password","Retype New Password"],"td":[["123123","123123"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Save\" button in the \"Change Password\" dialog","table":null},{"description":"Check the outcome","outcome":"The \"Change Password\" dialog is closed","table":null},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The user is redirected to the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the login details in the \"Login\" form in the \"Login\" page:","table":{"th":["Email","Password"],"td":[["f@f.com","123123"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Log In\" button","table":null},{"description":"Check the outcome","outcome":"The user logs in","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"User Preferences\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The user is redirected to the \"User Options\" page","table":null},{"description":"Check the outcome","outcome":"The following user options details are listed in the \"User Options\" page:","table":{"th":["Full Name","Email Address","Homepage"],"td":[["F f","f@f.com","http://www.nowhere.com"],[],[],["@NotAutomated"],["@JIRA-Key-MANUSCRIPT-29824"],["@Configuration"],["Feature: Site Configuration - Community Users - Toggle"],[],["Scenario: Administrator can enable community users"]]}}],"preconditions":[]},{"name":"Administrator can enable community users","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The following community users exist:","table":{"th":["Full Name","Email","Password"],"td":[["Alesha Muromec","alesha@nowhere.com","123123"]]}},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the site configuration details in the \"Site Configuration\" page:","table":{"th":["Community Users"],"td":[["true"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The user is redirected to the \"Login\" page","table":null},{"description":"The user enters the login details in the \"Login\" form in the \"Login\" page:","outcome":"Action is executed","table":{"th":["Email","Password"],"td":[["alesha@nowhere.com","123123"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Log In\" button in the \"Login\" form in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The user logs in","table":null}],"preconditions":[]},{"name":"Administrator can disable community users","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The following community users exist:","table":{"th":["Full Name","Email","Password"],"td":[["Alesha Muromec","alesha@nowhere.com","123123"]]}},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the site configuration details in the \"Site Configuration\" page:","table":{"th":["Community Users"],"td":[["false"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The user is redirected to the \"Login\" page","table":null},{"description":"The user enters the login details in the \"Login\" form in the \"Login\" page:","outcome":"Action is executed","table":{"th":["Email","Password"],"td":[["alesha@nowhere.com","123123"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Log In\" button in the \"Login\" form in the \"Login\" page","table":null},{"description":"Check the outcome","outcome":"The \"Incorrect password or username\" error message is shown in the \"Login\" page","table":null}],"preconditions":[]},{"name":"User can enable the \"Remember Me\" option in site configuration","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","table":null},{"description":"The user enters the following details in the \"Authentication\" tab in the \"Site Configuration\" page:","outcome":"Action is executed","table":{"th":["Log in"],"td":[["\"Remember Me\" Allowed"]]}},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The \"Remember me\" checkbox is shown in the \"Login\" page","table":null}],"preconditions":[]},{"name":"User can disable the \"Remember Me\" option in site configuration","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Authentication\" tab in the \"Site Configuration\" page","table":null},{"description":"The user enters the following details in the \"Authentication\" tab in the \"Site Configuration\" page:","outcome":"Action is executed","table":{"th":["Log in"],"td":[["\"Remember Me\" Not Allowed"]]}},{"description":"Check the outcome","outcome":"The user logs out","table":null},{"description":"Check the outcome","outcome":"The \"Remember me\" checkbox is not shown in the \"Login\" page","table":null}],"preconditions":[]},{"name":"Administrator can change FogBugz Logo: Reset to default","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Advanced\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The \"Advanced\" tab is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"Advanced\" tab in the \"Site Configuration\" page:","table":{"th":["New Logo"],"td":[["file:///logo-320x240.png"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Advanced\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The \"Advanced\" tab is shown in the \"Site Configuration\" page","table":null},{"description":"The user clicks the \"Reset to use the FogBugz default logo.\" link in the \"Advanced\" tab in the \"Site Configuration\" page","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is reloaded","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The following FogBugz logo is shown in the sidebar:","table":{"th":["Logo","Width","Height"],"td":[["Kiwi.svg","32","32"]]}},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Advanced\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The \"Advanced\" tab is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The following details are shown in the \"Advanced\" tab in the \"Site Configuration\" page:","table":{"th":["New Logo","Width","Height","Max Width","Max Height","Margin Right"],"td":[["Kiwi.svg","50","50","130","50","25"],[],["@NotAutomated"],["@JIRA-Key-MANUSCRIPT-30046"],["@Configuration"],["Feature: Configuration - FogBugz Logo - Upload"],[],["Scenario Outline: Administrator can change FogBugz Logo: Upload image"]]}}],"preconditions":[]},{"steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Advanced\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The \"Advanced\" tab is shown in the \"Site Configuration\" page","table":null},{"description":"The user enters the following details in the \"Advanced\" tab in the \"Site Configuration\" page:","outcome":"Action is executed","table":{"th":["New Logo"],"td":[["<New Logo>"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The following FogBugz logo is shown in the sidebar:","table":{"th":["Logo","Width","Height"],"td":[["<New Logo>","32","32"]]}},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Advanced\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The \"Advanced\" tab is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The following details are shown in the \"Advanced\" tab in the \"Site Configuration\" page:","table":{"th":["New Logo","Width","Height","Max Width","Max Height","Margin Right"],"td":[["<New Logo>","66.66","50","130","50","25"],["Examples:"],["New Logo"],["file:///logo-320x240.jpg"],["file:///logo-320x240.jpeg"],["file:///logo-320x240.bmp"],["file:///logo-320x240.gif"],["file:///logo-320x240.png"],[],["@NotAutomated"],["@JIRA-Key-MANUSCRIPT-29988"],["@Configuration"],["Feature: Configuration - Pending Emails (sent)"],[],["Scenario: User can see the amount of pending outbound emails in site configuration"],["New Logo"],["file:///logo-320x240.jpg"],["file:///logo-320x240.jpeg"],["file:///logo-320x240.bmp"],["file:///logo-320x240.gif"],["file:///logo-320x240.png"],[],["@NotAutomated"],["@JIRA-Key-MANUSCRIPT-29988"],["@Configuration"],["Feature: Configuration - Pending Emails (sent)"],[],["Scenario: User can see the amount of pending outbound emails in site configuration"]]}}],"preconditions":[]},{"name":"User can see the amount of pending outbound emails in site configuration","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"New Email\" button in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"New Email\" page:","table":{"th":["To","Subject"],"td":[["nobody@nowhere.com","111"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Send\" button in the \"New Email\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"New Email\" button in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"New Email\" page:","table":{"th":["To","Subject"],"td":[["nobody@nowhere.com","112"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Send\" button in the \"New Email\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"New Email\" button in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"New Email\" page:","table":{"th":["To","Subject"],"td":[["nobody@nowhere.com","113"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Send\" button in the \"New Email\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"New Email\" button in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"New Email\" page:","table":{"th":["To","Subject"],"td":[["nobody@nowhere.com","114"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Send\" button in the \"New Email\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"New Email\" button in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"New Email\" page:","table":{"th":["To","Subject"],"td":[["nobody@nowhere.com","115"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Send\" button in the \"New Email\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"New Email\" button in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"New Email\" page:","table":{"th":["To","Subject"],"td":[["nobody@nowhere.com","116"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"Send\" button in the \"New Email\" page","table":null},{"description":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Mail Queue Information\" field shows at least 1 pending message in the \"Site Configuration\" page","table":null}],"preconditions":[]},{"name":"User can define new trusted attachment file types and they apply on multiple attachments","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Advanced\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The \"Advanced\" tab is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"Advanced\" tab in the \"Site Configuration\" page:","table":{"th":["Trusted File Types"],"td":[["tar,gzip,gz,zip,bzip,doc,xls,ppt,docx,xlsx,xml,cty,pdf,csv,rar,txt,jpg,jpeg,bmp,gif,png,text,texxt"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"New Email\" button in the sidebar","table":null},{"description":"The user enters the following details in the \"New Email\" page:","outcome":"Action is executed","table":{"th":["To","Subject","Attachments"],"td":[["nobody@nowhere.com","116","foobar.text, another.texxt"]]}},{"description":"Check the outcome","outcome":"The following mail details are shown in the \"New Email\" page:","table":{"th":["Attachments"],"td":[["foobar.text, another.texxt"],[],["@NotAutomated"],["@JIRA-Key-MANUSCRIPT-29990"],["@Configuration"],["Feature: Configuration - Trusted Attachments - New Email - Single Attachment"],[],["Scenario: User can define new trusted attachment file types"]]}}],"preconditions":[]},{"name":"User can define new trusted attachment file types","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Advanced\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The \"Advanced\" tab is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"Advanced\" tab in the \"Site Configuration\" page:","table":{"th":["Trusted File Types"],"td":[["tar,gzip,gz,zip,bzip,doc,xls,ppt,docx,xlsx,xml,cty,pdf,csv,rar,txt,jpg,jpeg,bmp,gif,png,text"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"New Email\" button in the sidebar","table":null},{"description":"The user enters the following details in the \"New Email\" page:","outcome":"Action is executed","table":{"th":["To","Subject","Attachments"],"td":[["nobody@nowhere.com","116","foobar.text"]]}},{"description":"Check the outcome","outcome":"The following mail details are shown in the \"New Email\" page:","table":{"th":["Attachments"],"td":[["foobar.text"],[],["@NotAutomated"],["@JIRA-Key-MANUSCRIPT-29989"],["@Configuration"],["Feature: Configuration - Trusted Attachments - Wiki Article Attachments"],[],["Scenario: User can define new trusted attachment file types and use them in wiki articles"]]}}],"preconditions":[]},{"name":"User can define new trusted attachment file types and use them in wiki articles","steps":[{"description":"The user is logged in as Administrator","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The user hovers over the \"Avatar\" icon at the bottom-left part in the sidebar","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Site Configuration\" menu item in the sidebar menu","table":null},{"description":"Check the outcome","outcome":"The \"Site Configuration\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user clicks the \"Advanced\" tab in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The \"Advanced\" tab is shown in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"Advanced\" tab in the \"Site Configuration\" page:","table":{"th":["Trusted File Types"],"td":[["tar,gzip,gz,zip,bzip,doc,xls,ppt,docx,xlsx,xml,cty,pdf,csv,rar,txt,jpg,jpeg,bmp,gif,png,text"]]}},{"description":"Check the outcome","outcome":"The user clicks the \"OK\" button in the \"Site Configuration\" page","table":null},{"description":"Check the outcome","outcome":"The following wiki articles exist:","table":{"th":["Wiki","Page Title"],"td":[["Wiki-A","Article-1"]]}},{"description":"Check the outcome","outcome":"The user searches for the \"Article-1\" search string by using the search box","table":null},{"description":"Check the outcome","outcome":"The following wiki articles are listed in the \"Wiki Pages\" table in the \"Search\" page:","table":{"th":["Wiki-A Article-1"],"td":[]}},{"description":"Check the outcome","outcome":"The user clicks the \"View Article-1\" link in the \"Search\" page","table":null},{"description":"Check the outcome","outcome":"The \"View Wiki Article\" page is shown","table":null},{"description":"The user clicks the \"Edit\" link in the \"View Wiki Article\" page","outcome":"Action is executed","table":null},{"description":"Check the outcome","outcome":"The \"Edit Wiki Article\" page is shown","table":null},{"description":"Check the outcome","outcome":"The user enters the following details in the \"Edit Wiki Article\" page:","table":{"th":["Attachments"],"td":[["foobar.text"]]}},{"description":"Check the outcome","outcome":"The following details are shown in the \"Edit Wiki Article\" page:","table":{"th":["Wiki Article Content"],"td":[["foobar.text"],[]]}}],"preconditions":[]}]; export default scenarios;