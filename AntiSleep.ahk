#SingleInstance, Force
#NoEnv
#Warn
SendMode Input
SetWorkingDir, %A_ScriptDir%

While (True) {
    UserIdle()
}

UserIdle() {
    If (A_Timeidle > 5000) {
        StartTimer()
    }
}

StartTimer() {
    start_time := A_TickCount
    time_to_run := 50000
    end_time := start_time + time_to_run
    MoveTheMouse(end_time)
}

MoveTheMouse(timer) {
    While (A_TickCount < timer) {
        Random, rmX , -10, 10
        Random, rmY , -10, 10
        MouseMove, %rmX%, %rmY%, 0, R
    }
    UserIdle()
}
