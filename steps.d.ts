/// <reference types='codeceptjs' />
type steps_file = typeof import('./steps_file.js');
type homePage = typeof import('./tests/pages/honePage.js');
type Hooks = import('./helpers/hooks.js');

declare namespace CodeceptJS {
  interface SupportObject { I: I, current: any, homePage: homePage }
  interface Methods extends Playwright, Hooks {}
  interface I extends ReturnType<steps_file>, WithTranslation<Hooks> {}
  namespace Translation {
    interface Actions {}
  }
}
