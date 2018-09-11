/**
 * A simple plugin for Cordova to check auth to the camera on iOS.
 */

var CameraPermission = function() {};

/*
*	success - success callback
*	fail - error callback
*/
CameraPermission.prototype.checkAuthorization = function(success, fail) {
  if (device.platform.toLowerCase() != 'ios') {
    success();
    return;
  }
  cordova.exec(success, fail, "CameraPermission", "checkAuthorization");
};

module.exports = new CameraPermission();
