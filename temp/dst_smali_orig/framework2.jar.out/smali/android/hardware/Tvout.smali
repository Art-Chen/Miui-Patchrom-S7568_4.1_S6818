.class public Landroid/hardware/Tvout;
.super Ljava/lang/Object;
.source "Tvout.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "Tvout_Java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "tvout_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Tvout_Java"

    const-string v1, "Tvout +"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/hardware/Tvout;->_native_setup()V

    const-string v0, "Tvout_Java"

    const-string v1, "Tvout -"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native _TvoutCreateSmartDockSurface()Z
.end method

.method private native _TvoutDestroySmartDockSurface()Z
.end method

.method private native _TvoutGetAudioChannel()I
.end method

.method private native _TvoutGetCableStatus()Z
.end method

.method private native _TvoutGetResolution()I
.end method

.method private native _TvoutGetSmartDockSurfaceStatus()I
.end method

.method private native _TvoutGetStatus()Z
.end method

.method private native _TvoutGetSubtitleStatus()Z
.end method

.method private native _TvoutGetSuspendStatus()Z
.end method

.method private native _TvoutGetVideoMode()I
.end method

.method private native _TvoutGetVideoRotation()I
.end method

.method private native _TvoutPostSubtitle(Ljava/lang/String;I)Z
.end method

.method private native _TvoutPostSuspend(Ljava/lang/String;)Z
.end method

.method private native _TvoutSetCableStatus(Z)Z
.end method

.method private native _TvoutSetDefaultString(Ljava/lang/String;)Z
.end method

.method private native _TvoutSetForceMirrorMode(Z)Z
.end method

.method private native _TvoutSetFrontCameraRotation(I)Z
.end method

.method private native _TvoutSetGpuLock(Ljava/lang/String;I)Z
.end method

.method private native _TvoutSetOrientation(I)Z
.end method

.method private native _TvoutSetOutputMode(I)Z
.end method

.method private native _TvoutSetRearCameraRotation(I)Z
.end method

.method private native _TvoutSetResolution(I)Z
.end method

.method private native _TvoutSetStatus(Z)Z
.end method

.method private native _TvoutSetSubtitleStatus(Z)Z
.end method

.method private native _TvoutSetSuspendStatus(Z)Z
.end method

.method private native _TvoutSetVideoMode(I)Z
.end method

.method private native _TvoutSetVideoRotation(I)Z
.end method

.method private native _TvoutSetWFDStatus(Z)Z
.end method

.method private native _TvoutVideoPlayingStatus(Z)Z
.end method

.method private final native _native_setup()V
.end method

.method private final native _release()V
.end method


# virtual methods
.method public TvoutCreateSmartDockSurface()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutCreateSmartDockSurface()Z

    move-result v0

    return v0
.end method

.method public TvoutDestroySmartDockSurface()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutDestroySmartDockSurface()Z

    move-result v0

    return v0
.end method

.method public TvoutGetAudioChannel()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetAudioChannel()I

    move-result v0

    return v0
.end method

.method public TvoutGetCableStatus()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetCableStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetResolution()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetResolution()I

    move-result v0

    return v0
.end method

.method public TvoutGetSmartDockSurfaceStatus()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetSmartDockSurfaceStatus()I

    move-result v0

    return v0
.end method

.method public TvoutGetStatus()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetSubtitleStatus()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetSubtitleStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetSuspendStatus()Z
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetSuspendStatus()Z

    move-result v0

    return v0
.end method

.method public TvoutGetVideoMode()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetVideoMode()I

    move-result v0

    return v0
.end method

.method public TvoutGetVideoRotation()I
    .locals 1

    .prologue
    invoke-direct {p0}, Landroid/hardware/Tvout;->_TvoutGetVideoRotation()I

    move-result v0

    return v0
.end method

.method public TvoutPostSubtitle(Ljava/lang/String;I)Z
    .locals 1
    .parameter "strSubtitle"
    .parameter "nFontSize"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/Tvout;->_TvoutPostSubtitle(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public TvoutPostSuspend(Ljava/lang/String;)Z
    .locals 1
    .parameter "strSuspend"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutPostSuspend(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public TvoutSetCableStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetCableStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetDefaultString(Ljava/lang/String;)Z
    .locals 1
    .parameter "strDefault"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetDefaultString(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public TvoutSetForceMirrorMode(Z)Z
    .locals 1
    .parameter "bEnable"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetForceMirrorMode(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetFrontCameraRotation(I)Z
    .locals 1
    .parameter "nVideoRotation"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetFrontCameraRotation(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetGpuLock(Ljava/lang/String;I)Z
    .locals 1
    .parameter "filename"
    .parameter "value"

    .prologue
    invoke-direct {p0, p1, p2}, Landroid/hardware/Tvout;->_TvoutSetGpuLock(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetOrientation(I)Z
    .locals 1
    .parameter "nOrientation"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetOrientation(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetOutputMode(I)Z
    .locals 1
    .parameter "nOutputMode"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetOutputMode(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetRearCameraRotation(I)Z
    .locals 1
    .parameter "nVideoRotation"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetRearCameraRotation(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetResolution(I)Z
    .locals 1
    .parameter "nResolution"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetResolution(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetSubtitleStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetSubtitleStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetSuspendStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetSuspendStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutSetVideoMode(I)Z
    .locals 1
    .parameter "videomode"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetVideoMode(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetVideoRotation(I)Z
    .locals 1
    .parameter "nVideoRotation"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetVideoRotation(I)Z

    move-result v0

    return v0
.end method

.method public TvoutSetWFDStatus(Z)Z
    .locals 1
    .parameter "bStatus"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutSetWFDStatus(Z)Z

    move-result v0

    return v0
.end method

.method public TvoutVideoPlayingStatus(Z)Z
    .locals 1
    .parameter "status"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/Tvout;->_TvoutVideoPlayingStatus(Z)Z

    move-result v0

    return v0
.end method
