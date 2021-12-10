---- MODULE traffic_light ----

VARIABLE color

AcceptableColor == color \in {"red", "green", "yellow"}

AlwaysAcceptableColor == [] AcceptableColor
\* (for use as spec PROPERTY, in lieu of INVARIANT, meaning state "must always be an acceptable color")


Init == color = "red"

TurnGreen ==
    /\ color = "red"
    /\ color' = "green"

TurnYellow ==
    /\ color = "green"
    /\ color' = "yellow"

TurnRed ==
    /\ color = "yellow"
    /\ color' = "red"


Next ==
    \/ TurnGreen
    \/ TurnYellow
    \/ TurnRed

Spec == Init /\ [][Next]_color
\* (this formula can, as SPECIFICATION, replace INIT/NEXT declaration in the model config)
====