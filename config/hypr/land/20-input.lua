-----------
-- INPUT --
-----------

-- https://wiki.hypr.land/Configuring/Variables/#input

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace",
})

-- See https://wiki.hypr.land/Configuring/Gestures
-- See https://wiki.hypr.land/Configuring/Keywords/#per-device-input-configs

hl.config({
    input = {
        kb_layout = "de",
        kb_variant = "nodeadkeys",
        kb_options = "compose:caps, kpdl:dot",
        numlock_by_default = true,
        follow_mouse = 1,
        sensitivity = 0.3,
        -- [-1.0; 1.0] 0 means no modification.
        touchpad = {
            natural_scroll = false
        },
    },
})

