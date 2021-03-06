# xcode-slack-notifier
![screen shot 2016-10-20 at 15 31 57](https://cloud.githubusercontent.com/assets/3216279/19591370/010f8f82-9777-11e6-8c45-0f63c0dd986f.png)

Hit the coffee machine while Xcode builds, and get a notification on Slack when it completes!

# Slack Setup
* Setup an _incoming webhook_ to a private channel with yourself [here](https://dubsmash.slack.com/apps/A0F7XDUAZ-incoming-webhooks). If you do not have the rights yourself you have to request it. Someone on your team with Slack admin rights will then have to grant you access.
* Copy the webhook url.
![screen shot 2016-10-21 at 11 12 45](https://cloud.githubusercontent.com/assets/3216279/19593285/20d5303e-9780-11e6-93ac-eb672c1adf67.png)


# Local Setup
## Scripts
We will generate two scripts: `notify_build_succeeded.sh` and `notify_build_failed.sh` which Xcode can use to notify us. With the custom webhook url from above execute:
```
git clone git@github.com:Doerge/xcode-slack-notifier.git
cd xcode-slack-notifier
./replace_webhook_url.sh <custom-webhook-url>
```
Either put the generated scripts in your favorite scripts directory or keep the repo around.

## Xcode
![screen shot 2016-10-20 at 14 05 48](https://cloud.githubusercontent.com/assets/3216279/19591371/0110b7cc-9777-11e6-97d0-555d929fdaba.png)

Go to Xcode preferences (`Cmd` + `,`) `Behaviors/Succeeds/Run/Choose Script` and point it to the `notify_build_succeeded.sh` script which was generated above. Repeat for `Behaviors/Failed/Run/Choose Script` and `notify_build_failed.sh`.

Enjoy Xcode notifications on the go!
