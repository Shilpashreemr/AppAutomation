*** Settings ***
Library     AppiumLibrary

*** Test Cases ***
Open_App
    Open Application    http://localhost:4723/wd/hub   platformVersion=12   platformName=Android       appPackage=com.practo.fabric     appActivity=com.practo.fabric.LauncherAlias    automationName=Appium
    wait until element is visible    com.practo.fabric:id/login_help     20
    Click Element    com.practo.fabric:id/login_help

    wait until element is visible    com.practo.fabric:id/card_button    10
    CLick Element    com.practo.fabric:id/card_button

Login_test
    wait until element is visible    com.practo.fabric:id/email_edit_text    10
    Input text    com.practo.fabric:id/email_edit_text    mobile.practo+consult1@gmail.com
    Input text    com.practo.fabric:id/password_edit_text    practo@321
    click element    com.practo.fabric:id/continue_button
#test_deny_notifications
   # wait until element is visible  com.android.permissioncontroller:id/permission_deny_button  10
   # click element   com.android.permissioncontroller:id/permission_deny_button
Close_popup
    wait until element is visible    com.practo.fabric:id/close    15
    click element    com.practo.fabric:id/close

Search_for_dentist
    wait until element is visible    com.practo.fabric:id/home_search_bar_text_view  10
    click element    com.practo.fabric:id/home_search_bar_text_view
    wait until element is visible    //android.widget.EditText[@resource-id="com.practo.fabric:id/search_bar"]    10
    input text    //android.widget.EditText[@resource-id="com.practo.fabric:id/search_bar"]    dentist

Select_from_suggestions
    wait until element is visible    //androidx.recyclerview.widget.RecyclerView[@resource-id="com.practo.fabric:id/recycler_view_list"]/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.LinearLayout   10
    click element    //androidx.recyclerview.widget.RecyclerView[@resource-id="com.practo.fabric:id/recycler_view_list"]/android.view.ViewGroup[1]/android.widget.LinearLayout/android.widget.LinearLayout

    wait until element is visible    //android.view.View[@content-desc="Book In-clinic Appointment. Book an appointment with a top dentist"]
    click element    //android.view.View[@content-desc="Book In-clinic Appointment. Book an appointment with a top dentist"]

Scelect_doctor_card
    wait until element is visible    com.practo.fabric:id/layout_item_listing_doctor_card_info   10
    click element    com.practo.fabric:id/layout_item_listing_doctor_card_info

Select_slot
    wait until element is visible    com.practo.fabric:id/text_view_all_slots    10
    click element    com.practo.fabric:id/text_view_all_slots
    wait until element is visible    com.practo.fabric:id/slot_info  10
    click element    com.practo.fabric:id/slot_info



