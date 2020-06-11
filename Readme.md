# Gracecamp

Patches for a more graceful Basecamp

## Setup

This currently patches the Basecamp Mac app only, Windows support is not included.

1. Clone or download this repository, and run `yarn install`
2. Download the Basecamp app from `https://bc3-desktop.s3.amazonaws.com/mac/basecamp3.dmg`
  - TODO: Automate this
3. Mount the downloaded DMG file, and copy `Basecamp 3.app` into the `source` directory within this repository
  - TODO: Automate this
4. Run `yarn extract && yarn patch` to apply the patches to a copy of the extracted resources

At this point, you have the original Basecamp app source in the "app.asar.unpacked" directory, and the patched version in the "app.asar" directory. You can make edits within the "app.asar" directory.

To regenerate the patch file, run `yarn diff`. The patch will be output to `gracecamp.patch` within this repository.

To build a modified version of the app, run `yarn build`. The app will be in the "output" directory. You will need to right-click it and select "Open" in order to run it, as macOS will treat it as an unsigned application.

## Builds

I will not be publishing builds of this modification, given that it is for a proprietary application.
