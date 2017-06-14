## CHANGE LOG

## 1.1.1 - 06/14/2017 - Levon Becker
* Added verbose to recursive ownership change call
* Added cookbook version badge to readme

## 1.1.0 - 04/26/2017 - Levon Becker
* Added shell out methods using open3 to dry up repeat code in cookbooks.
* Updated Gem versions in Gemfile
* Added supported OSs to metadata
* Added Chef version to metadata
* Added info output. Really need to test if Test Kitchen will output Info or still have to use warn

## 1.0.9 - 04/08/2017 - Levon Becker
* Removed container? discovery. Ohai virtualization plugin used instead.

## 1.0.8 - 04/08/2017 - Levon Becker
* Added ecs? and aws? discovery aws? needs more work for ECS Container

## 1.0.7 - 04/07/2017 - Levon Becker
* Improved Docker container discovery logic.
* Switched to CircleCI 2.0 Native Docker Support!
* Ditched TravisCi

## 1.0.6 - 12/12/2016 - Levon Becker
* Added the rest of the useful meta data calls to teh AWS meta data library

## 1.0.5 - 12/12/2016 - Levon Becker
* Added AWS Library for calling Meta Data to get instance information

## 1.0.4 - 11/01/2016 - Levon Becker
* Renamed docker? method to container? in discovery library that I missed.

## 1.0.3 - 10/31/2016 - Levon Becker
* Renamed docker method to container because checking for docker or lxc

## 1.0.2 - 08/30/2016 - Levon Becker
* Added Docker Discovery Resource and Library
* Added CircleCI Testing
* Updated Rakefile tasks and Chef Client Version

## 1.0.1 - 01/08/2016 - Levon Becker
* Added Filesystem library

## 1.0.0 - 09/30/2015 - Levon Becker
* Initial Release.

- - -