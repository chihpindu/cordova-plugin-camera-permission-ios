/**
 * A simple plugin for Cordova to check auth to the camera on iOS.
 */

var cameraPermission = function() {};

/*
*	success - success callback
*	fail - error callback
*/
cameraPermission.prototype.checkAuthorization = function(success, fail) {
  if (device.platform.toLowerCase() != 'ios') {
    success();
    return;
  }
  cordova.exec(success, fail, "CameraPermission", "checkAuthorization");
};

module.exports = new cameraPermission();
