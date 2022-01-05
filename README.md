# magic-trackpad-switcher
Makes it more convenient to use one Apple Magic Trackpad 2 via Bluetooth on multiple devices (Mac/Linux). 
Connect or disconnect with one click.

![preview](preview.png?raw=true "Preview")

## Get Started
### Mac (Shell Script)
1. Install dependencies: `brew install blueutil`
2. Add the Bluetooth address of your trackpad (e.g. 18-7e-b9-69-ff-cd) to the script. The path variable may also need to be adjusted. If the workflow is used, document.wflow inside switch-trackpad.workflow must also be modified.
3. Start the script on the device that you want to disconnect the trackpad from. Then start the script on the device that you want the trackpad to connect to.

### Mac (Quick Action / Touch Bar Workflow)
1. Install dependencies: `brew install blueutil`
2. Edit document.wflow inside switch-trackpad.workflow: Add the Bluetooth address of your trackpad (e.g. 18-7e-b9-69-ff-cd) to the script. The path variable may also need to be adjusted.
3. Add the workflow to the Touch Bar: https://support.apple.com/guide/automator/use-quick-action-workflows-aut73234890a/mac
4. Start the script on the device that you want to disconnect the trackpad from. Then start the script on the device that you want the trackpad to connect to.

### Linux (Bash Script)
1. Ensure that all dependencies (bluetoothctl, expect) are installed.
2. Add the Bluetooth address of your trackpad (e.g. 18:7E:B9:69:FF:CD) to the script.
3. You may want to use a keyboard shortcut or other facility of your desktop environment to start the script quickly. I use the following Gnome Shell extension for this purpose: https://github.com/lucaskenda/handyscripts2
4. Start the script on the device that you want to disconnect the trackpad from. Then start the script on the device that you want the trackpad to connect to.


## Alternatives
* Simply use cables
* Use KVM software like Synergy or Barrier
