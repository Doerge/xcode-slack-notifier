# xcode-slack-notifier
Notifies you on Slack when your build is completed.

# Slack
* Setup an incoming webhook to a private channel here: https://dubsmash.slack.com/apps/A0F7XDUAZ-incoming-webhooks
* Find the webhook url.

# Local Setup
Generate `notify_build_succeeded.sh` and `notify_build_failed.sh` with your custom webhook url:
```
git clone git@github.com:Doerge/xcode-slack-notifier.git
cd xcode-slack-notifier
./replace_webhook_url.sh <slack-webhook-url>
```
Either put the generated scripts in some directory or keep the repo around.

Go to Xcode preferences (cmd+,) `Behaviors/Succeeds/Run/Choose Script` and point it to the `notify_build_succeeded.sh` script which was generated above. Repeat for `Behaviors/Failed/Run/Choose Script` and `notify_build_failed.sh`.

Enjoy Xcode notifications on the go!
