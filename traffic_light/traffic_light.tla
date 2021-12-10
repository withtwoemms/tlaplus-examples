---- MODULE traffic_light ----

VARIABLE color

AcceptableColor == color \in {"red", "green", "yellow"}

Init == color = "red"

Next ==
    \/ TurnGreen
    \/ TurnYellow
    \/ TurnRed

====