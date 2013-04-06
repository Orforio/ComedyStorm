ComedyStorm
===========

A simple WoW addon that plays Yakety Sax during the Storm Unleashed phase of the Ta'yak encounter in Heart of Fear.
Yes, it's very silly. It was requested by most of the LFR group I was in on 30/3/2013.

Based on "BennyImagesShow" by Belloli Riccardo (Ballanzone of Crushridge EU).

v 0.2
=====
- Yakety Sax volume increased as original MP3 was a little low. Music will play on the "Music" channel, so that's the one you need to make sure is audible.
- Song will now correctly start at the beginning of the Storm Unleashed phase.
- TODO: Audio currently does not end when combat is dropped. Investigating cause. Use /comedystorm to stop in this case.

v 0.1
=====
- If user has DBM installed, will only load upon entering Heart of Fear. Will load at startup otherwise.
- Use /comedystorm to toggle between playing and stopping the audio.
- (UNTESTED) Yakety Sax will begin playing once Ta'yak casts Storm Unleashed. Audio will stop when encounter ends (either wipe or boss kill).