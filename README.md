#Setup

macOS: 12.1
Xcode: 13.3
tuist: 3.1.0

This is a demo app to illustrate my issue. 

I have an App and two frameworks, A and B, each with their own xcode project.
Whenever I define custom config for the app, I run into these issues: 

* Both framework A and B need to have the same config than the app. If not, compilation fails with "No such module Framework A"
* If I set the same config to all three xcode proj, but import an external framework (here Alamofire) via SPM, then compilation fails with "No such module Alamofire"

