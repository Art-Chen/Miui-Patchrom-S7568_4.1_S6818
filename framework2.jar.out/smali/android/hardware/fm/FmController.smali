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

    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "FmController"

    iput-object v0, p0, Landroid/hardware/fm/FmController;->TAG:Ljava/lang/String;

    .line 13
    iput v1, p0, Landroid/hardware/fm/FmController;->FM_BAND_NA:I

    .line 15
    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fm/FmController;->FM_BAND_EU:I

    .line 17
    iput v2, p0, Landroid/hardware/fm/FmController;->FM_BAND_JP_STD:I

    .line 19
    iput v3, p0, Landroid/hardware/fm/FmController;->FM_BAND_JP_WIDE:I

    .line 21
    const/4 v0, 0x4

    iput v0, p0, Landroid/hardware/fm/FmController;->FM_BAND_UNKNOWN:I

    .line 23
    iput v3, p0, Landroid/hardware/fm/FmController;->FM_AUDIO_MODE_UNKNOWN:I

    .line 25
    iput v2, p0, Landroid/hardware/fm/FmController;->FM_STEP_UNKNOWN:I

    .line 27
    iput v3, p0, Landroid/hardware/fm/FmController;->FM_AUDIO_PATH_UNKNOWN:I

    .line 29
    iput v2, p0, Landroid/hardware/fm/FmController;->FM_MUTE_MODE_UNKNOWN:I

    .line 31
    iput v1, p0, Landroid/hardware/fm/FmController;->MIN_VOLUME:I

    .line 33
    const/16 v0, 0xf

    iput v0, p0, Landroid/hardware/fm/FmController;->MAX_VOLUME:I

    .line 42
    iput v1, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 43
    iput-boolean v1, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    .line 44
    iput v1, p0, Landroid/hardware/fm/FmController;->mBand:I

    .line 45
    return-void
.end method

.method private isFreqValid(I)Z
    .locals 3
    .parameter "freq"

    .prologue
    .line 70
    const/4 v1, -0x1

    .line 71
    .local v1, minFreq:I
    const/4 v0, -0x1

    .line 73
    .local v0, maxFreq:I
    iget v2, p0, Landroid/hardware/fm/FmController;->mBand:I

    packed-switch v2, :pswitch_data_0

    .line 99
    const v1, 0x155cc

    .line 100
    const v0, 0x1a5e0

    .line 104
    :goto_0
    if-lt p1, v1, :cond_0

    if-gt p1, v0, :cond_0

    const/4 v2, 0x1

    :goto_1
    return v2

    .line 75
    :pswitch_0
    const v1, 0x155cc

    .line 76
    const v0, 0x1a5e0

    .line 78
    goto :goto_0

    .line 81
    :pswitch_1
    const v1, 0x155cc

    .line 82
    const v0, 0x1a5e0

    .line 84
    goto :goto_0

    .line 87
    :pswitch_2
    const v1, 0x128e0

    .line 88
    const v0, 0x15f90

    .line 90
    goto :goto_0

    .line 93
    :pswitch_3
    const v1, 0x128e0

    .line 94
    const v0, 0x15f90

    .line 96
    goto :goto_0

    .line 104
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 73
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
    .line 278
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
    .line 120
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 122
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-static {}, Landroid/hardware/fm/FmJni;->cancelSearch()I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 126
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
    .line 171
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 172
    const/4 v1, 0x3

    .line 174
    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    .line 175
    invoke-static {}, Landroid/hardware/fm/FmJni;->getAudioMode()I

    move-result v0

    .line 176
    .local v0, result:I
    if-gez v0, :cond_1

    .line 177
    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 184
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .line 179
    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 180
    move v1, v0

    goto :goto_0
.end method

.method public getBand()I
    .locals 3

    .prologue
    .line 232
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 233
    const/4 v1, 0x4

    .line 235
    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    .line 236
    invoke-static {}, Landroid/hardware/fm/FmJni;->getBand()I

    move-result v0

    .line 237
    .local v0, result:I
    if-gez v0, :cond_1

    .line 238
    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 245
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .line 240
    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 241
    move v1, v0

    goto :goto_0
.end method

.method public getError()I
    .locals 1

    .prologue
    .line 344
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    return v0
.end method

.method public getFreq()I
    .locals 3

    .prologue
    .line 142
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 143
    const/4 v1, -0x1

    .line 145
    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    .line 146
    invoke-static {}, Landroid/hardware/fm/FmJni;->getFreq()I

    move-result v0

    .line 147
    .local v0, result:I
    if-gez v0, :cond_1

    .line 148
    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 155
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .line 150
    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 151
    move v1, v0

    goto :goto_0
.end method

.method public getMuteMode()I
    .locals 3

    .prologue
    .line 261
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 262
    const/4 v1, 0x2

    .line 264
    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    .line 265
    invoke-static {}, Landroid/hardware/fm/FmJni;->getMuteMode()I

    move-result v0

    .line 266
    .local v0, result:I
    if-gez v0, :cond_1

    .line 267
    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 274
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .line 269
    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 270
    move v1, v0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 3

    .prologue
    .line 323
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 324
    const/4 v1, -0x1

    .line 326
    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    .line 327
    invoke-static {}, Landroid/hardware/fm/FmJni;->getRssi()I

    move-result v0

    .line 328
    .local v0, result:I
    if-gez v0, :cond_1

    .line 329
    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 336
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .line 331
    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 332
    move v1, v0

    goto :goto_0
.end method

.method public getStepType()I
    .locals 3

    .prologue
    .line 200
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 201
    const/4 v1, 0x2

    .line 203
    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    .line 204
    invoke-static {}, Landroid/hardware/fm/FmJni;->getStepType()I

    move-result v0

    .line 205
    .local v0, result:I
    if-gez v0, :cond_1

    .line 206
    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 213
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .line 208
    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 209
    move v1, v0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 3

    .prologue
    .line 294
    const/16 v2, -0x400

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 295
    const/4 v1, -0x1

    .line 297
    .local v1, value:I
    iget-boolean v2, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v2, :cond_0

    .line 298
    invoke-static {}, Landroid/hardware/fm/FmJni;->getVolume()I

    move-result v0

    .line 299
    .local v0, result:I
    if-gez v0, :cond_1

    .line 300
    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 307
    .end local v0           #result:I
    :cond_0
    :goto_0
    return v1

    .line 302
    .restart local v0       #result:I
    :cond_1
    const/4 v2, 0x0

    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 303
    move v1, v0

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 340
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    return v0
.end method

.method public powerDown()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 59
    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 61
    iget-boolean v1, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v1, :cond_0

    .line 62
    invoke-static {}, Landroid/hardware/fm/FmJni;->powerDown()I

    move-result v1

    iput v1, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 63
    iput-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    .line 66
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

    .line 48
    iput v2, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 50
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-nez v0, :cond_0

    .line 51
    invoke-static {}, Landroid/hardware/fm/FmJni;->powerUp()I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 52
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    .line 55
    :cond_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 52
    goto :goto_0

    :cond_2
    move v1, v2

    .line 55
    goto :goto_1
.end method

.method public setAudioMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 159
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 161
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 162
    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 167
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 163
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 164
    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setAudioMode(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    .line 167
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setBand(I)Z
    .locals 1
    .parameter "band"

    .prologue
    .line 217
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 219
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 220
    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 228
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 221
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 222
    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setBand(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 223
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_0

    .line 224
    iput p1, p0, Landroid/hardware/fm/FmController;->mBand:I

    goto :goto_0

    .line 228
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setFreq(I)Z
    .locals 1
    .parameter "freq"

    .prologue
    .line 130
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 132
    invoke-direct {p0, p1}, Landroid/hardware/fm/FmController;->isFreqValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 133
    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 138
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 134
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 135
    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setFreq(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    .line 138
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMuteMode(I)Z
    .locals 1
    .parameter "mode"

    .prologue
    .line 249
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 251
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 252
    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 257
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 254
    :cond_0
    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setMuteMode(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    .line 257
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setRssi(I)Z
    .locals 1
    .parameter "rssi"

    .prologue
    .line 311
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 313
    if-gtz p1, :cond_1

    .line 314
    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 319
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 315
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 316
    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setRssi(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    .line 319
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setStepType(I)Z
    .locals 1
    .parameter "type"

    .prologue
    .line 188
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 190
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    .line 191
    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 196
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 192
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setStepType(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    .line 196
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setVolume(I)Z
    .locals 1
    .parameter "volume"

    .prologue
    .line 282
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 284
    invoke-direct {p0, p1}, Landroid/hardware/fm/FmController;->isVolumeValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 285
    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 290
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 286
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 287
    invoke-static {p1}, Landroid/hardware/fm/FmJni;->setVolume(I)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    .line 290
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
    .line 108
    const/16 v0, -0x400

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 110
    invoke-direct {p0, p1}, Landroid/hardware/fm/FmController;->isFreqValid(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 111
    const/high16 v0, -0x10

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    .line 116
    :cond_0
    :goto_0
    iget v0, p0, Landroid/hardware/fm/FmController;->mError:I

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 112
    :cond_1
    iget-boolean v0, p0, Landroid/hardware/fm/FmController;->mIsOn:Z

    if-eqz v0, :cond_0

    .line 113
    invoke-static {p1, p2, p3}, Landroid/hardware/fm/FmJni;->startSearch(III)I

    move-result v0

    iput v0, p0, Landroid/hardware/fm/FmController;->mError:I

    goto :goto_0

    .line 116
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method
