# TODOs

1. Add code formatting to code block
2. Remove Label examples
3. Add `DELETE_ME_LATER` to HomePageExamples file because there might be no examples on HomePage
4. Create Portal / Dashboard (parent) app and add navigation to it
    - Create a parent portal (`Browser.application`) with navigation support.
    - Take flags and current url in the parent app instead of child app
      - Change the initial file from `src/Main.elm` to something like
      - src-portal/Main.elm
    - Take the `Pages` file from `src/Pages.elm` to `src-portal/Pages.elm` and it will be used there for redirection purposes
    - Convert child app (current app) to `Browser.sandbox` or `Browser.element` because it should not support navigation. It is just for showing the pages

