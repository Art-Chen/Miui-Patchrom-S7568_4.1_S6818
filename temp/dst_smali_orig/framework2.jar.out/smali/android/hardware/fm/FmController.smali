.class Landroid/hardware/fm/FmController;
.super Ljava/lang/Object;
.source "FmController.java"


# instance fields
.field private final FM_AUDIO_MODE_UNKNOWN:I

.field private final FM_AUDIO_PATH_UNKNOWN:I

.field private final FM_BAND_EU:I

.field private final FM_BAND_JP_STD:I

.field private final FM_BAND_JP_WIDE:I

.field private final FM_BAND_NA:I

.field private final FM_BAND_UNKNOWN:I

.field private final FM_MUTE_MODE_UNKNOWN:I

.field private final FM_STEP_UNKNOWN:I

.field private final MAX_VOLUME:I

.field private final MIN_VOLUME:I

.field private final TAG:Ljava/lang/String;

.field private volatile mBand:I

.field private mError:I

.field private volatile mIsOn:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FmController"

    iput-object v0, p0, Landroid/hardware/fm/FmController;->TAG:Ljava/lang/String;

    iput v1, p0, Landroid/hardware/fm/FmController;->FM_BAND_NA:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fm/FmController;->FM_BAND_EU:I

    iput v2, p0, Landroid/hardware/fm/FmController;->FM_BAND_JP_STD:I

    iput v3, p0, Landroid/hardware/fm/FmController;->FM_BAND_JP_WIDE:I

    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/fm/FmController;->FM_BAND_UNKNOWN:I

    iput v3, p0, Landroid/hardware/fm/FmController;->FM_AUDIO_MODE_UNKNOWN:I

    iput v2, p0, Landroid/hardware/fm/FmController;->FM_STEP_UNKNOWN:I

    iput v3, p0, Landroid/hardware/fm/FmController;->FM_AUDIO_PATH_UNKNOWN:I

    iput v2, p0, Landroid/hardware/fm/FmController;->FM_MUTE_MODE_UNKNOWN:I

    iput v1, p0, Landroid/hardware/fm/FmController;->MIN_VOLUME:I

    const/16 v0, 0xf

    iput v0, p0, Landroid/hardware/fm/FmController;->MAX_VOLUME:I

    iput v1, p0, Landroid/hardware/fm/FmController;->mError:I

    iput-boolean v1, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    iput v1, p0, Landroid/hardware/fm/FmController;->mBand:I

    return-void
.end method

.method private isFreqValid(I)Z
    .locals 3
    .parameter "freq"

    .prologue
    const/4 v1, -0x1

    .local v1, minFreq:I
    const/4 v0, -0x1

    .local v0, maxFreq:I
    iget v2, p0, Landroid/hardware/fm/FmController;->mBand:I

    packed-switch v2, :pswitch_data_0

    const v1, 0x155cc

    const v0, 0x1a5e0

    :goto_0
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    :pswitch_0
    const v1, 0x155cc

    const v0, 0x1a5e0

    goto :goto_0

    :pswitch_1
    const v1, 0x155cc

    const v0, 0x1a5e0

    goto :goto_0

    :pswitch_2
    const v1, 0x128e0

    const v0, 0x15f90

    goto :goto_0

    :pswitch_3
    const v1, 0x128e0

    const v0, 0x15f90

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private isVolumeValid(I)Z
    .locals 1
    .parameter "volume"

    .prologue
    if-ltz p1, :cond_0

    const/16 v0, 0xf

    if-gt p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 1

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->cancelSearch()I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :cond_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAudioMode()I
    .locals 3

    .prologue
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v1, 0x3

    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->getAudioMode()I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    move v1, v0

    goto :goto_0
.end method

.method public getBand()I
    .locals 3

    .prologue
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v1, 0x4

    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->getBand()I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    move v1, v0

    goto :goto_0
.end method

.method public getError()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    return v0
.end method

.method public getFreq()I
    .locals 3

    .prologue
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v1, -0x1

    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->getFreq()I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    move v1, v0

    goto :goto_0
.end method

.method public getMuteMode()I
    .locals 3

    .prologue
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v1, 0x2

    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->getMuteMode()I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    move v1, v0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 3

    .prologue
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v1, -0x1

    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->getRssi()I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    move v1, v0

    goto :goto_0
.end method

.method public getStepType()I
    .locals 3

    .prologue
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v1, 0x2

    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->getStepType()I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    move v1, v0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 3

    .prologue
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v1, -0x1

    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->getVolume()I

    move-result v0

    .local v0, result:I
    if-gez v0, :cond_1

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    move v1, v0

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    return v0
.end method

.method public powerDown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    iget-boolean v1, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->powerDown()I

    move-result v1

    iput v1, p0, Landroid/hardware/fm/FmController;->mError:I

    iput-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    :cond_0
    iget v1, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public powerUp()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/fm/FmJni;->powerUp()I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    :cond_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    move v1, v2

    goto :goto_1
.end method

.method public setAudioMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setAudioMode(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBand(I)Z
    .locals 1
    .parameter "band"

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setBand(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_0

    iput p1, p0, Landroid/hardware/fm/FmController;->mBand:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFreq(I)Z
    .locals 1
    .parameter "freq"

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    invoke-direct {p0, p1}, Landroid/hardware/fm/FmController;->isFreqValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setFreq(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMuteMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setMuteMode(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setRssi(I)Z
    .locals 1
    .parameter "rssi"

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-gtz p1, :cond_1

    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setRssi(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setStepType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setStepType(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVolume(I)Z
    .locals 1
    .parameter "volume"

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    invoke-direct {p0, p1}, Landroid/hardware/fm/FmController;->isVolumeValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setVolume(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public startSearch(III)Z
    .locals 1
    .parameter "freq"
    .parameter "direction"
    .parameter "timeout"

    .prologue
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    invoke-direct {p0, p1}, Landroid/hardware/fm/FmController;->isFreqValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    invoke-static {p1, p2, p3}, Landroid/hardware/fm/FmJni;->startSearch(III)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
