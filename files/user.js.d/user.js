// Place in ~/.mozilla/user.js

// Firefox often crashes without this setting
// https://askubuntu.com/questions/966332/firefox-56-0-64-bit-crashing-tabs-after-upgrade
user_pref("browser.tabs.remote.autostart", false);

// disable onboarding: you don't want to see the welcome message every time
user_pref("browser.onboarding.enabled", false);

// no tracking protection intro
user_pref("privacy.trackingprotection.introCount", 100);
