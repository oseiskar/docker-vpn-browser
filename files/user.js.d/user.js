// Place in ~/.mozilla/user.js

// Firefox often crashes without this setting
// https://askubuntu.com/questions/966332/firefox-56-0-64-bit-crashing-tabs-after-upgrade
user_pref("browser.tabs.remote.autostart", false);

// disable onboarding: you don't want to see the welcome message every time
user_pref("browser.onboarding.enabled", false);

// no tracking protection intro
user_pref("privacy.trackingprotection.introCount", 100);

// use FF's fingeprinting blocker (spoofs various attributes and restricts canvas usage)
user_pref("privacy.resistFingerprinting", true);

// FF's tracking protection
user_pref("privacy.trackingprotection.enabled", true);

// Disable PDF's
user_pref("pdfjs.disabled", true);

// Disable various suspicious telemetry things (from pyllyukko's user.js)
user_pref("browser.safebrowsing.downloads.remote.enabled", false);
user_pref("browser.selfsupport.url", "");
user_pref("dom.flyweb.enabled",	false);
user_pref("toolkit.telemetry.enabled", false);
user_pref("toolkit.telemetry.unified", false);
user_pref("experiments.supported", false);
user_pref("experiments.enabled", false);
user_pref("experiments.manifest.uri", "");
user_pref("network.allow-experiments", false);
user_pref("breakpad.reportURL",	"");
user_pref("browser.tabs.crashReporting.sendReport", false);
user_pref("browser.crashReports.unsubmittedCheck.enabled", false);
user_pref("devtools.webide.enabled", false);
user_pref("devtools.webide.autoinstallADBHelper", false);
user_pref("devtools.webide.autoinstallFxdtAdapters", false);
user_pref("devtools.debugger.remote-enabled", false);
user_pref("devtools.chrome.enabled", false);
user_pref("devtools.debugger.force-local", true);
user_pref("loop.logDomains", false);
user_pref("browser.pocket.enabled", false);
user_pref("extensions.pocket.enabled", false);
user_pref("extensions.shield-recipe-client.enabled", false);
user_pref("app.shield.optoutstudies.enabled", false);
user_pref("browser.newtabpage.activity-stream.feeds.section.topstories", false);
