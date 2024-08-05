*** Settings ***
Documentation    To store all the globally used keywords
Library    SeleniumLibrary
Library    Collections
Library    DateTime
Library    String

*** Variables ***
${user_name}          alnisa741@lopvede.com
${password}           test@123
${stage_Url}          https://skydeck-staging.asteria.co.in/ui/dashboard/e596c680-cefb-4ec5-bf55-920ac3a5e0ad
${sitenames}
${snapshotname}
${snapshotnames}
${snapshot_date}
${page contains}
${location}
${upload document path}
${documentname}
${Sday}
${Sdate}
${Syear}
${Eday}
${Edate}
${Eyear}

*** Keywords ***
open Skydeck application in Chrome browser

    Create Webdriver    Chrome    executable_path=D:/chromedriver-win64/chromedriver-win64/chromedriver.exe
    Go To    ${stage_Url}
    Maximize Browser Window
    Set Browser Implicit Wait    10

Provide login credentials

        Input Text    //input[@placeholder='yours@example.com']        ${user_name}
        Input Password    //input[@placeholder='your password']       ${password}
        Click Button    //button[@name='submit']
        Set Browser Implicit Wait    10
        
click on sites module
    Click Element    //img[@alt='Sites']

click on sites tab
    Click Element    //div[normalize-space()='sites']

click on +create button
    Click Element    //div[contains(text(),'create')]

click on new-site button
    Click Element    //span[normalize-space()='new site']

Enter sitename
    ${random_name}    Generate Random String  3  12345678
    Input Text    //input[@placeholder='Enter Site name']    Site_${random_name}

select site-type
    Click Element    //div[contains(text(),'Please select an option')]
    Click Element    //button[normalize-space()='Pipeline']

enter site-location
    [Arguments]    ${location}
    Click Element    //input[contains(@placeholder,'Search for location')]
    Input Text    //input[@placeholder='Search for location']    ${location}
    Set Selenium Implicit Wait    10
    Click Element    //button[@class='Button Button--active']//i[@alt='search']
    Click Element    //div[@class='Map']//div[1]//span[1]
    Set Selenium Implicit Wait    300


click on demarcation option
    #Click Element    //div[@class='DemarcationControl__action-text']
    Click Element    (//i[@alt='polygon'])[1]
    Click Element    //div[@class='ol-layer']//canvas
    Mouse Down        //div[@class='ol-layer']//canvas
    Mouse Out        //div[@class='ol-layer']//canvas
    Mouse Up        //div[@class='ol-layer']//canvas
    Mouse Down    //div[@class='ol-layer']//canvas
    Mouse Out    //div[@class='ol-layer']//canvas
    Mouse Up    //div[@class='ol-layer']//canvas
    Mouse Down    //div[@class='ol-layer']//canvas
    Mouse Out    //div[@class='ol-layer']//canvas
    Mouse Up    //div[@class='ol-layer']//canvas
    Double Click Element    //div[@class='ol-layer']//canvas

click on demarcation line
    Click Element    //i[@alt='line']

    Click Element    //div[@class='ol-layer']//canvas
    Mouse Down        //div[@class='ol-layer']//canvas
    Mouse Out        //div[@class='ol-layer']//canvas
    Mouse Up    //div[@class='ol-layer']//canvas
    Double Click Element       //div[@class='ol-layer']//canvas
    Scroll Element Into View    //button[@type='button']//div[@class='Button__text'][normalize-space()='Save']
    Click Element    //button[@type='button']//div[@class='Button__text'][normalize-space()='Save']

save site
    Click Element    //div[normalize-space()='Save']

enter sitegroup name
    ${random_name}    Generate Random String  3  12345678
    Input Text    //input[@placeholder='Enter Site group name']   Sitegroup_${random_name}

click on new site-group button
    Click Element    //span[normalize-space()='new site group']

save sitegroup
    Click Element    //div[normalize-space()='Save']

site to be deleted
    [Arguments]     ${sitenames}
    Click Element    //input[contains(@placeholder,'sites')]
    Input Text    //input[contains(@placeholder,'sites')]    ${sitenames}
    Click Element    //div[@class='ListOption ']
    Click Element    //div[normalize-space()='More details']
    Scroll Element Into View    //div[contains(text(),'DELETE')]
    Click Element    //div[contains(text(),'DELETE')]
    Input Text    //input[@type='text']     DELETE SITE
    Click Element    //div[normalize-space()='Delete Site']

sitegroup to be deleted
    [Arguments]    ${sitegroupnames}
    Click Element    //input[@placeholder='Search for site groups']
    Input Text    //input[@placeholder='Search for site groups']    ${sitegroupnames}
    Click Element    //div[@class='ListOption ']
    Click Element    //div[contains(text(),'More details')]
    Click Element    //div[contains(text(),'DELETE')]
    Input Text    //input[@class='TextInput__field TextInput__field--icon']     DELETE SITEGROUP
    Click Element    //div[normalize-space()='Delete Site Group']

select delete-sitegroup option
    Click Element    //span[normalize-space()='delete']
    Input Text    //input[@class='TextInput__field TextInput__field--icon']    DELETE SITEGROUP
    Click Element    //div[normalize-space()='Delete Sitegroup']

select existing site where snapshot need to be created
    [Arguments]    ${sitenames}
    Click Element    //input[contains(@placeholder,'sites')]
    Input Text    //input[contains(@placeholder,'sites')]    ${sitenames}
    Click Element    //div[@class='ListOption ']
    Click Element    //div[normalize-space()='Create Snapshot']

select new site where snapshot needs to be created
    [Arguments]    ${sitenames}
    Click Element    //input[contains(@placeholder,'sites')]
    Input Text    //input[contains(@placeholder,'sites')]    ${sitenames}
    Click Element    //div[@class='ListOption ']
    Click Element    //span[@class='HelperCard__text']


enter snapshot name
       ${random_name}    Generate Random String  3  12345678
       Input Text    //input[@placeholder='Enter name']  Snapshot_${random_name}

select snapshot dates
    Click Element    //input[@placeholder='Select date']
    Click Element    //td[@aria-label='Wednesday, August 7, 2024']
    #Click Element    //td[@aria-label='${Sday}, ${Sdate}, ${Syear}']


enter snapshot description
    Input Text    //textarea[@placeholder='Enter description']    Testing

select 2D option
    Click Element    (//i[@role='none'])[14]

click on create snapshot button
    Click Element    //div[normalize-space()='Create']

select the site of the snapshot
    [Arguments]    ${sitenames}
    Click Element    //input[contains(@placeholder,'sites')]
    Input Text    //input[contains(@placeholder,'sites')]    ${sitenames}
    Click Element    //div[@class='ListOption ']

click on archive tab
    Click Element    //div[normalize-space()='Archive']

search for site
    [Arguments]     ${sitenames}
    Click Element    //input[contains(@placeholder,'sites')]
    Input Text    //input[contains(@placeholder,'sites')]    ${sitenames}
    Click Element    //div[@class='ListOption ']
    
archive site
    Click Element    //div[normalize-space()='More details']
    Scroll Element Into View    //div[contains(text(),'ARCHIVE')]
    Click Element    //div[contains(text(),'ARCHIVE')]
    Input Text    //input[@type='text']    ARCHIVE
    Click Element    //div[normalize-space()='Archive']

unarchive site
    [Arguments]    ${sitenames}
    Click Element    //input[@placeholder='Search']
    Input Text    //input[@placeholder='Search']    ${sitenames}
    Click Element    //tbody/tr/td/i[1]
    Click Element    //div[normalize-space()='Recover Selected']

search for sitegroup
    [Arguments]    ${sitegroupnames}
    Click Element    //input[@placeholder='Search for site groups']
    Input Text    //input[@placeholder='Search for site groups']    ${sitegroupnames}
    Wait Until Element Is Visible    //div[contains(@class,'ListOption')]
    Click Element    //div[contains(@class,'ListOption')]

archive sitegroup
    Click Element    //tbody/tr[1]/td[4]/div[1]/button[1]/div[1]/i[1]
    Click Element    //span[normalize-space()='archive']
    Input Text    //input[@class='TextInput__field TextInput__field--icon']    ARCHIVE
    Click Element    //button[@class='Button Button--active']//div[@class='Button__text'][normalize-space()='Archive']

link sites
    [Arguments]    ${sitenames}
    Click Element    //i[@class='Icon Icon-link-site']
    Click Element    //span[normalize-space()='Select existing sites']
    Input Text    //input[@placeholder='Search']    ${sitenames}
    Set Selenium Implicit Wait    10
    Click Element    //tbody/tr/td/i[1]
    Click Element    //div[normalize-space()='Link selected sites (1)']

upload document
    [Arguments]    ${upload document path}
    Click Element    //div[normalize-space()='Site Documents']
    Click Element    //div[normalize-space()='Upload File']
    #Click Element    //div[normalize-space()='Browse Files']    C:/Users/Ganesh/Downloads/ITRFORM12BB.pdf
    Choose File     //input[@type='file']    ${upload document path}


archive snapshot
    [Arguments]    ${snapshot_date}
    Click Element    //div[normalize-space()='Datasets']
    Click Element    //div[@class='SelectionList__header-text']
    Click Element  //button[text()='${snapshot_date}']
    Click Element    //button[@class='Button']//i[@alt='expand']
    Click Element    //div[normalize-space()='Archive']
    Input Text    //input[@type='text']     ARCHIVE
    Click Element    //div[normalize-space()='Archive']

site to be deleted from archive
    [Arguments]    ${sitenames}
    Click Element    //input[@placeholder='Search']
    Input Text    //input[@placeholder='Search']    ${sitenames}
    Click Element    //div[@class='Options']//i[@alt='three-dots']
    Click Element    //span[normalize-space()='delete site']
    Input Text    //div[@class='SiteArchiveModal__body-actions']//input[@type='text']    DELETE
    Click Element    //div[normalize-space()='DELETE']

select file to delete permanently from site document
    [Arguments]    ${documentname}
    Scroll Element Into View    //div[@class='HoverTitle']
    ${documentnames}=    Get Webelements     //div[@class='HoverTitle']
    ${index}=   Set Variable    1
    FOR    ${title}    IN    @{documentnames}
        Exit For Loop If    '${documentname}'=='${title.text}'
        ${index}=  Evaluate   ${index} + 1
    END
    Scroll Element Into View    (//i[@alt='three-dots'])[${index}]
    Click Element    (//i[@alt='three-dots'])[${index}]

    Click Element    //span[normalize-space()='delete permanently']
    Click Element    //div[normalize-space()='DELETE']

select file to archive from site document
    [Arguments]    ${documentname}
    Scroll Element Into View    //span[@class='Title Title--card']
    ${documentnames}=    Get Webelements     //span[@class='Title Title--card']
    ${index}=   Set Variable    1
    FOR    ${title}    IN    @{documentnames}
        Exit For Loop If    '${documentname}'=='${title.text}'
        ${index}=  Evaluate   ${index} + 1
    END
    Scroll Element Into View    (//i[@alt='three-dots'])[${index}]
    Click Element    (//i[@alt='three-dots'])[${index}]

    Click Element    //div[@class='Dropdown Options__dropdown']//div[1]

select file to unarchive from site document
    [Arguments]    ${documentname}
    Scroll Element Into View    //span[@class='Title Title--card']
    ${documentnames}=    Get Webelements     //span[@class='Title Title--card']
    ${index}=   Set Variable    1
    FOR    ${title}    IN    @{documentnames}
        Exit For Loop If    '${documentname}'=='${title.text}'
        ${index}=  Evaluate   ${index} + 1
    END
    Scroll Element Into View    (//i[@alt='three-dots'])[${index}]
    Click Element    (//i[@alt='three-dots'])[${index}]

    Click Element    //div[@class='Dropdown Options__dropdown']//div[1]

select file to delete permanently from archive site document
    [Arguments]    ${documentname}
    Scroll Element Into View    //span[@class='Title Title--card']
    ${documentnames}=    Get Webelements     //span[@class='Title Title--card']
    ${index}=   Set Variable    1
    FOR    ${title}    IN    @{documentnames}
        Exit For Loop If    '${documentname}'=='${title.text}'
        ${index}=  Evaluate   ${index} + 1
    END
    Scroll Element Into View    (//i[@alt='three-dots'])[${index}]
    Click Element    (//i[@alt='three-dots'])[${index}]

    Click Element    //span[normalize-space()='delete permanently']
    Click Element    //div[normalize-space()='DELETE']
