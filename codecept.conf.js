const custom = require('./helpers/custom.js');
const { setHeadlessWhen, setCommonPlugins } = require('@codeceptjs/configure');
// turn on headless mode when running with HEADLESS=true environment variable
// export HEADLESS=true && npx codeceptjs run
setHeadlessWhen(process.env.HEADLESS);

// enable all common plugins https://github.com/codeceptjs/configure#setcommonplugins
setCommonPlugins();

/** @type {CodeceptJS.MainConfig} */
exports.config = {
  output: './output',
  helpers: {
    Playwright: {
      url: 'http://automationpractice.pl/index.php',
      show: true,
      browser: 'chromium',
      restart: true,
      video: true,
      keepVideoForPassedTests: true,
      trace: true,
      colorScheme: 'dark',
      waitForAction: 1000,
      waitForTimeout: 1000,
      manualStart: false,
      pressKeyDelay: 1
    },
    Hooks: {
      require: './helpers/hooks.js'
    }
  },
  include: {
    I: './steps_file.js',
    homePage: "./tests/pages/honePage.js",
    accountPage: "./tests/pages/accountPage.js"
  },
  bootstrap: custom.init(),
  timeout: null,
  teardown: null,
  gherkin: {
    features: './tests/features/*.feature',
    steps: [
      './tests/step_definitions/login_step.js',
      './tests/step_definitions/account_step.js'
    ]
  },
  plugins: {
    screenshotOnFail: {
      enabled: true
    },
    allure: {
      require: '@codeceptjs/allure-legacy',
      outputDir: './output/allure-report',
      enabled: true,
      enableVideo: true
    },
    subtitles: {
      enabled: true
    },
    stepByStepReport: {
      enabled: true,
      deleteSuccessful: false,
      screenshotsForAllureReport: true
    },
    tryTo: {
      enabled: true
    },
    retryFailedStep: {
      enabled: false
    },
    retryTo: {
      enabled: true
    },
    eachElement: {
      enabled: true
    },
    pauseOnFail: {}
  },
  stepTimeout: 0,
  stepTimeoutOverride: [{
      pattern: 'wait.*',
      timeout: 0
    },
    {
      pattern: 'amOnPage',
      timeout: 0
    }
  ],
  name: 'tests-web-codeceptjs-bdd'
}