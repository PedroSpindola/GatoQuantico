
if (hspd != 0) {
    image_xscale = sign(hspd);
}

if (place_meeting(x + hspd, y, obj_chao)) {
    while (!place_meeting(x + sign(hspd), y, obj_chao)) {
        x += sign(hspd);
    }
    hspd = 0;
}
x += hspd;


if (place_meeting(x, y + vspd, obj_chao)) {
    while (!place_meeting(x, y + sign(vspd), obj_chao)) {
        y += sign(vspd);
    }
   vspd = 0;
}
y += vspd;


