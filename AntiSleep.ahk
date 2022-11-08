#SingleInstance, Force
#NoEnv
#Warn
SendMode Input
SetWorkingDir, %A_ScriptDir%

UserIdle()

UserIdle() {
    If (A_Timeidle > 50000) {
        StartTimer()
    } Else {
        Sleep, 50000
        UserIdle()
    }
}

StartTimer() {
    start_time := A_TickCount
    time_to_run := 1000
    end_time := start_time + time_to_run
    MoveTheMouse(end_time)
}

MoveTheMouse(timer) {
    While (A_TickCount < timer) {
        Random, rmX , -1, 1
        Random, rmY , -1, 1
        MouseMove, %rmX%, %rmY%, 0, R
    }
    UserIdle()
}
