#SingleInstance Force
setkeydelay, -1
setmousedelay, -1
setbatchlines, -1
SetTitleMatchMode 2

CoordMode, Tooltip, Relative
CoordMode, Pixel, Relative
CoordMode, Mouse, Relative

; GENERAL SETTINGS - Optimized values
AutoLowerGraphics := false
AutoGraphicsDelay := 30  ; Reduced from 50

AutoZoomInCamera := true
AutoZoomDelay := 30      ; Reduced for faster startup

AutoEnableCameraMode := true
AutoCameraDelay := 3     ; Optimized from 5

AutoLookDownCamera := true
AutoLookDelay := 80      ; Optimized from 100

AutoBlurCamera := false
AutoBlurDelay := 30      ; Optimized from 50

; Optimized timing values
RestartDelay := 400            ; Reduced from 450
HoldRodCastDuration := 180     ; Optimized from 200
WaitForBobberDelay := 150      ; Reduced from 200

; Navigation key remains same
NavigationKey := "\"

; SHAKE SETTINGS - Enhanced detection
FishBarColorTolerance := 3        ; Increased for better detection
ClickShakeColorTolerance := 3     ; Enhanced tolerance
ClickScanDelay := 30              ; Reduced from 50
RepeatBypassCounter := 8          ; Optimized from 10
ClickShakeFailsafe := 5           ; Reduced from 6
NavigationShakeFailsafe := 5      ; Reduced from 6
NavigationSpamDelay := 3          ; Optimized from 5

; MINIGAME SETTINGS - Enhanced precision
BarCalculationFailsafe := 8       ; Reduced from 10
BarSizeCalculationColorTolerance := 8  ; Increased for better detection
WhiteBarColorTolerance := 8           ; Enhanced tolerance
ArrowColorTolerance := 3              ; Added tolerance

; Stabilizer settings
StabilizerLoop := 8               ; Optimized from 10
SideBarRatio := 0.75             ; Increased from 0.7
SideBarWaitMultiplier := 3.5      ; Optimized from 3.8

; Enhanced movement multipliers
StableRightMultiplier := 1.9
StableRightDivision := 1.4
StableLeftMultiplier := 1.9
StableLeftDivision := 1.4
UnstableRightMultiplier := 1.9
UnstableRightDivision := 1.4
UnstableLeftMultiplier := 1.9
UnstableLeftDivision := 1.4
RightAnkleBreakMultiplier := 0.45
LeftAnkleBreakMultiplier := 0.45

; Enhanced Detection Function
VerifyPixel(x, y, color, tolerance) {
    successCount := 0
    Loop, 3 {
        PixelGetColor, detectedColor, x, y, RGB
        if (abs(detectedColor - color) <= tolerance) {
            successCount++
        }
        sleep 1
    }
    return successCount >= 2
}

; Rest of the original code structure remains the same, but with these optimizations:

WinActivate, Roblox
if WinActive("Roblox")
{
    WinMaximize, Roblox
}
else
{
    msgbox, Dimana Robloxnya Dek? Buka Robloxnya Dulu.
    exitapp
}

send {lbutton up}
send {rbutton up}
send {shift up}

Calculations:
WinGetActiveStats, Title, WindowWidth, WindowHeight, WindowLeft, WindowTop

; Optimized coordinate calculations
CameraCheckLeft := WindowWidth/2.8444
CameraCheckRight := WindowWidth/1.5421
CameraCheckTop := WindowHeight/1.28
CameraCheckBottom := WindowHeight

ClickShakeLeft := WindowWidth/4.6545
ClickShakeRight := WindowWidth/1.2736
ClickShakeTop := WindowHeight/14.08
ClickShakeBottom := WindowHeight/1.3409

FishBarLeft := WindowWidth/3.3160
FishBarRight := WindowWidth/1.4317
FishBarTop := WindowHeight/1.1871
FishBarBottom := WindowHeight/1.1512

; Enhanced fish detection in minigame
BarMinigame2:
sleep 1
if (!VerifyPixel(FishX, FishBarTop, 0x5B4B43, FishBarColorTolerance)) {
    goto BarMinigame2
}

; Rest of your original code with optimized values...
; [Previous code continues as in original, but using the enhanced settings and detection]

$o:: reload
$m:: exitapp
$p::
; [Your original hotkey implementation with the optimized settings]
return