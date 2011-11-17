#Update Notes #

a) Tweak.xm
---

1) %groups have been added to be initialized according to the iOS version (4 or 5)

2) In iOS5Hooks group, all 4 methods that actually post a notification have been hooked to create an INAlertData item and pass it to the manager

3)A check for iOS5 version takes place in the constructor to init the corresponding %groups.

4)A function called managerDataFromBulletin creates the required data for the manager on each notification arrival and is call on each hook.

b) INAlertManager.m
---

1) an NSNotification observer is added to the init method, registering for incoming call notifications.

2) a new method, the notification's delegate is added to INAlertManager, that handles the incoming call and creates caller info data for the manager and then passes it to self.
