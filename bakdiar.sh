#!/system/bin/sh

onelist="/sdcard/bakup/com.lolo.io.onelist/shared_prefs"
paisa="/sdcard/bakup/dev.hemanths.paisa"
dialer="/sdcard/bakup/com.android.dialer" #call logs
messages="/sdcard/bakup/com.android.messaging"
contact="/sdcard/bakup/com.android.providers.contacts"
quillpad="/sdcard/bakup/io.github.quillpad"
unexpected_keyboard="/sdcard/bakup/juloo.keyboard2"
livio_dist="/sdcard/bakup/livio.pack.lang.en_US"
newpipe="/sdcard/bakup/org.polymorphicshade.newpipe"
stealth="/sdcard/bakup/com.cosmos.unreddit/"

if [ ! -d "$onelist" ]; then
    mkdir -p "$onelist"
fi

if [ ! -d "$paisa" ]; then
	mkdir -p "$paisa"
fi

if [ ! -d "$dialer" ]; then
	mkdir -p "$dialer"
fi

if [ ! -d "$messages" ]; then
	mkdir -p "$messages"
fi

if [ ! -d "$contact" ]; then
	mkdir -p "$contact"
fi

if [ ! -d "$quillpad" ]; then
	mkdir -p "$quillpad"
fi

if [ ! -d "$unexpected_keyboard" ]; then
	mkdir -p "$unexpected_keyboard"
fi

if [ ! -d "$livio_dist" ]; then
	mkdir -p "$livio_dist"
fi

if [ ! -d "$newpipe" ]; then
	mkdir -p "$newpipe"
fi

if [ ! -d "$stealth" ]; then
	mkdir -p "$stealth"
fi

cp -r /data/data/com.lolo.io.onelist/shared_prefs/MainActivity.xml $onelist

cp -r /sdcard/Diary /sdcard/bakup/Diary_$(date +'%Y-%m-%d')

cp -r /data/data/dev.hemanths.paisa/app_flutter /data/data/dev.hemanths.paisa/files $paisa

cp -r /data/data/com.android.dialer/databases $dialer

cp -r /data/data/com.android.messaging/databases /data/data/com.android.messaging/shared_prefs $messages

cp -r /data/data/com.android.providers.contacts/databases /data/data/com.android.providers.contacts/shared_prefs $contact

cp -r /data/data/io.github.quillpad/databases $quillpad

cp -r /data/data/juloo.keyboard2/shared_prefs $unexpected_keyboard

cp -r /data/data/livio.pack.lang.en_US/databases $livio_dist

cp -r /data/data/org.polymorphicshade.newpipe/databases /data/data/org.polymorphicshade.newpipe/shared_prefs $newpipe

cp -r /data/data/com.cosmos.unreddit/databases $stealth

7z a -mhe -mx9 -p /sdcard/bakup-$(date +'%Y-%m-%d').7z /sdcard/bakup