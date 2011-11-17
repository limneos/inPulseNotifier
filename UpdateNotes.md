#Update Notes #

1) Tweak.xm
---

a) %groups have been added to be initialized according to the iOS version (4 or 5)

b) In iOS5Hooks group, all 4 methods that actually post a notification have been hooked to create an INAlertData item and pass it to the manager

c) A check for iOS5 version takes place in the constructor to init the corresponding %groups.

d) A function called managerDataFromBulletin creates the required data for the manager on each notification arrival and is called on each hook.

2) INAlertManager.m
---

a) an NSNotification observer is added to the init method, registering for incoming call notifications.

b) a new method, incomingCall:, the notification's delegate is added to INAlertManager, that handles the incoming call and creates caller info data for the manager and then passes it to self.

3) Makefile
---

Updated makefile to link to AddressBook and CoreTelephony frameworks for the needs of incomingCall: method in INAlertManager.m