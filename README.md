# cordova-plugin-camera-permission-ios
Simple cordova plugin for access check to the camera authorization

# Usage

```javascript
window.cordova.plugins.CameraPermission.checkAuthorization(
  function() {
    // Authorized
  },
  function() {
    // Unauthorization
  }
);
```

## License

The MIT License
