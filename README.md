# docker-tautulli-ghost
Config wrapper around linuxserver/docker-tautulli


# Steps for setting up scripts to kill transcoding

## Click add new notification.
![step1](https://forums.serverbuilds.net/uploads/default/original/2X/1/18c5178b8bd8a828d1446c72d478f20d25741e0c.png)

## In the script settings, under `Script Folder` specify the path to your `killstream.py`. The `Script File` is a dropdown that will populate with all valid files Tautulli can run for you from that directory.
![step2](https://forums.serverbuilds.net/uploads/default/original/2X/a/a9aa001dd410a7770d0290cd2dc48a7cc4266710.png)

## Select your triggers. I went with `Playback Start` and `Playback Resume`. You should probably also choose `Transcode Decision Change`. The Script will be run on these events.
![step3](https://forums.serverbuilds.net/uploads/default/original/2X/d/dd035c42b51e190b05ba05e2eb1c52010753283c.png)

## Here is where we set our conditions. If you’ve not clicked Save, do so now. It will not close the popup. I save on each tab to prevent having to retype things…
I created two conditions. No need to fill out your `Condition Logic` if you’re doing something where you want all of the conditiones to be `and`ed together; that’s the default behavior.
![step4](https://forums.serverbuilds.net/uploads/default/original/2X/0/05f57520e2d95538c004772d5ec252714195571f.png)

## For each of the Trigger events you had selected earlier, pass in the `killstream.py` arguments you want. I’m going to kill the stream with the same message – see below:
```
--jbop stream --username {username} --sessionId {session_id} --killMessage 'Transcoding is not allowed.'
```
![step5](https://forums.serverbuilds.net/uploads/default/original/2X/d/db473d74a2d73d85720eefade6548e75c242c370.png)
