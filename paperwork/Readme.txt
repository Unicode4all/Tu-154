This module enables dynamic decal placement in specific places defined as *regions*.
The intention is to make cockpit more alive by placing various papers on Flight Engineer's desk, that user can change to anything
they wish.

This module accomplishes this by rendering images, text and datarefs on already defined areas of panel.png, all those items, now being referred to as 'widgets' are defined in JSON configuration file known as 'set'.

Sets are placed in 'sets' directory, and all assets like fonts, images are placed in 'assets' directory. There can be unlimited amount of sets, and you can change them mid-flight by using sim's main menu: Tu-154->Paperworks->Next set or Previous set. You can also bind those commands to keys in X-Plane's controls screen. Those commands are in 'tu154ce/paperworks' section.

The sets folder should already contain some example sets. Let's take a look at one of them:

The base JSON object contains two fields:
name - this set's name, that is shown in Paperworks menu
regions - region definitions.

Each region is a specific area of panel.png and that area is defined in 'region' object with:
x,y - location of the first point
w - width
h - height

Keep in mind that all coordinates are in X-Plane-specific coordinate system, where x=0, y=0 point is at bottom left:

        |---------- w -----------|
        +------------------------+--
        |                        | |
        |---------*              | h
        |         |              | |
        |         |              | |
    0   +------------------------+--

        0


`widgets` field contains actual widgets. At the moment there are three types of widgets:

image - any image
text - static text
custom - user defined dynamically rendered paper

`drefs` field contains dynamically rendered dataref values.

For your convenience, there's panel texture in this folder with marked regions and coordinate grid. A GUI editor is planned in future for more user-friendly editing.