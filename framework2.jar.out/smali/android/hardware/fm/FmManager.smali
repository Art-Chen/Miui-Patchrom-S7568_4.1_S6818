.class public Landroid/hardware/fm/FmManager;
.super Ljava/lang/Object;
.source "FmManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FmManager"

.field private static mService:Landroid/hardware/fm/IFmService;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mObserver:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 21
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fm/FmManager;->mObserver:Landroid/os/IBinder;

    .line 22
    iput-object p1, p0, Landroid/hardware/fm/FmManager;->mContext:Landroid/content/Context;

    .line 23
    return-void
.end method

.method private static getService()Landroid/hardware/fm/IFmService;
    .locals 2

    .prologue
    .line 26
    sget-object v1, Landroid/hardware/fm/FmManager;->mService:Landroid/hardware/fm/IFmService;

    if-eqz v1, :cond_0

    .line 27
    sget-object v1, Landroid/hardware/fm/FmManager;->mService:Landroid/hardware/fm/IFmService;

    .line 33
    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 30
    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    const-string v1, "fm"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 31
    .restart local v0       #binder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/fm/IFmService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fm/IFmService;

    move-result-object v1

    sput-object v1, Landroid/hardware/fm/FmManager;->mService:Landroid/hardware/fm/IFmService;

    .line 33
    sget-object v1, Landroid/hardware/fm/FmManager;->mService:Landroid/hardware/fm/IFmService;

    goto :goto_0
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 5

    .prologue
    .line 79
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 80
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 82
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->cancelSearch()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 89
    :goto_0
    return v1

    .line 83
    :catch_0
    move-exception v0

    .line 84
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in cancelSearch()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 85
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 86
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in cancelSearch()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAudioMode()Landroid/hardware/fm/FmConsts$FmAudioMode;
    .locals 5

    .prologue
    .line 135
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 136
    .local v2, service:Landroid/hardware/fm/IFmService;
    sget-object v1, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_UNKNOWN:Landroid/hardware/fm/FmConsts$FmAudioMode;

    .line 138
    .local v1, result:Landroid/hardware/fm/FmConsts$FmAudioMode;
    :try_start_0
    invoke-static {}, Landroid/hardware/fm/FmConsts$FmAudioMode;->values()[Landroid/hardware/fm/FmConsts$FmAudioMode;

    move-result-object v3

    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getAudioMode()I

    move-result v4

    aget-object v1, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 145
    :goto_0
    return-object v1

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getAudioMode()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 141
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 142
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getAudioMode()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAudioPath()Landroid/hardware/fm/FmConsts$FmAudioPath;
    .locals 5

    .prologue
    .line 317
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 318
    .local v2, service:Landroid/hardware/fm/IFmService;
    sget-object v1, Landroid/hardware/fm/FmConsts$FmAudioPath;->FM_AUDIO_PATH_UNKNOWN:Landroid/hardware/fm/FmConsts$FmAudioPath;

    .line 320
    .local v1, result:Landroid/hardware/fm/FmConsts$FmAudioPath;
    :try_start_0
    invoke-static {}, Landroid/hardware/fm/FmConsts$FmAudioPath;->values()[Landroid/hardware/fm/FmConsts$FmAudioPath;

    move-result-object v3

    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getAudioPath()I

    move-result v4

    aget-object v1, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 327
    :goto_0
    return-object v1

    .line 321
    :catch_0
    move-exception v0

    .line 322
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getAudioPath()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 323
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 324
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getAudioPath()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBand()Landroid/hardware/fm/FmConsts$FmBand;
    .locals 5

    .prologue
    .line 191
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 192
    .local v2, service:Landroid/hardware/fm/IFmService;
    sget-object v1, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_UNKNOWN:Landroid/hardware/fm/FmConsts$FmBand;

    .line 194
    .local v1, result:Landroid/hardware/fm/FmConsts$FmBand;
    :try_start_0
    invoke-static {}, Landroid/hardware/fm/FmConsts$FmBand;->values()[Landroid/hardware/fm/FmConsts$FmBand;

    move-result-object v3

    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getBand()I

    move-result v4

    aget-object v1, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    :goto_0
    return-object v1

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getBand()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 197
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 198
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getBand()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getError()I
    .locals 5

    .prologue
    .line 345
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 346
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/16 v1, -0x400

    .line 349
    .local v1, result:I
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 356
    :goto_0
    return v1

    .line 350
    :catch_0
    move-exception v0

    .line 351
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getError()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 352
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getError()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFreq()I
    .locals 5

    .prologue
    .line 107
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 108
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, -0x1

    .line 110
    .local v1, result:I
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getFreq()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 117
    :goto_0
    return v1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getFreq()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 113
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 114
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getFreq()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRssi()I
    .locals 5

    .prologue
    .line 289
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 290
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, -0x1

    .line 292
    .local v1, result:I
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getRssi()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 299
    :goto_0
    return v1

    .line 293
    :catch_0
    move-exception v0

    .line 294
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getRssi()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 295
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 296
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getRssi()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStepType()Landroid/hardware/fm/FmConsts$FmStepType;
    .locals 5

    .prologue
    .line 163
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 164
    .local v2, service:Landroid/hardware/fm/IFmService;
    sget-object v1, Landroid/hardware/fm/FmConsts$FmStepType;->FM_STEP_UNKNOWN:Landroid/hardware/fm/FmConsts$FmStepType;

    .line 166
    .local v1, result:Landroid/hardware/fm/FmConsts$FmStepType;
    :try_start_0
    invoke-static {}, Landroid/hardware/fm/FmConsts$FmStepType;->values()[Landroid/hardware/fm/FmConsts$FmStepType;

    move-result-object v3

    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getStepType()I

    move-result v4

    aget-object v1, v3, v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 173
    :goto_0
    return-object v1

    .line 167
    :catch_0
    move-exception v0

    .line 168
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getStepType()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 169
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 170
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getStepType()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVolume()I
    .locals 5

    .prologue
    .line 261
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 262
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, -0x1

    .line 264
    .local v1, result:I
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 271
    :goto_0
    return v1

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getVolume()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 267
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 268
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getVolume()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 5

    .prologue
    .line 331
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 332
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 334
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->isFmOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 341
    :goto_0
    return v1

    .line 335
    :catch_0
    move-exception v0

    .line 336
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in isFmOn()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 337
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 338
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in isFmOn()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isMuted()Z
    .locals 5

    .prologue
    .line 233
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 234
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 236
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->isMuted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 243
    :goto_0
    return v1

    .line 237
    :catch_0
    move-exception v0

    .line 238
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in isMuted()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 239
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 240
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in isMuted()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mute()Z
    .locals 5

    .prologue
    .line 205
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 206
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 208
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->mute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 215
    :goto_0
    return v1

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in mute()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 211
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 212
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in mute()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public powerDown()Z
    .locals 5

    .prologue
    .line 51
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 52
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 54
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->powerDown()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 61
    :goto_0
    return v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in powerDown()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 57
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in powerDown()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public powerUp()Z
    .locals 5

    .prologue
    .line 37
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 38
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 40
    .local v1, result:Z
    :try_start_0
    iget-object v3, p0, Landroid/hardware/fm/FmManager;->mObserver:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->powerUp(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 47
    :goto_0
    return v1

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in powerUp()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 43
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 44
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in powerUp()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAudioMode(Landroid/hardware/fm/FmConsts$FmAudioMode;)Z
    .locals 5
    .parameter "mode"

    .prologue
    .line 121
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 122
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 124
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fm/FmConsts$FmAudioMode;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->setAudioMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 125
    :catch_0
    move-exception v0

    .line 126
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setAudioMode()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 127
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 128
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in setAudioMode()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setAudioPath(Landroid/hardware/fm/FmConsts$FmAudioPath;)Z
    .locals 5
    .parameter "path"

    .prologue
    .line 303
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 304
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 306
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fm/FmConsts$FmAudioPath;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->setAudioPath(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 313
    :goto_0
    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 308
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setAudioPath()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 309
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 310
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in setAudioPath()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setBand(Landroid/hardware/fm/FmConsts$FmBand;)Z
    .locals 5
    .parameter "band"

    .prologue
    .line 177
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 178
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 180
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fm/FmConsts$FmBand;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->setBand(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 187
    :goto_0
    return v1

    .line 181
    :catch_0
    move-exception v0

    .line 182
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setBand()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 183
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 184
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in setBand()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setFreq(I)Z
    .locals 5
    .parameter "freq"

    .prologue
    .line 93
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 94
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 96
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/fm/IFmService;->setFreq(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 103
    :goto_0
    return v1

    .line 97
    :catch_0
    move-exception v0

    .line 98
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setFreq()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 99
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 100
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in setFreq()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setRssi(I)Z
    .locals 5
    .parameter "rssi"

    .prologue
    .line 275
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 276
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 278
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/fm/IFmService;->setRssi(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 285
    :goto_0
    return v1

    .line 279
    :catch_0
    move-exception v0

    .line 280
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setRssi()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 281
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 282
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in setRssi()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setStepType(Landroid/hardware/fm/FmConsts$FmStepType;)Z
    .locals 5
    .parameter "type"

    .prologue
    .line 149
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 150
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 152
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fm/FmConsts$FmStepType;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->setStepType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 159
    :goto_0
    return v1

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setStepType()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 155
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 156
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in setStepType()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVolume(I)Z
    .locals 5
    .parameter "volume"

    .prologue
    .line 247
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 248
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 250
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/fm/IFmService;->setVolume(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 257
    :goto_0
    return v1

    .line 251
    :catch_0
    move-exception v0

    .line 252
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setVolume()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 253
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 254
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in setVolume()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public startSearch(ILandroid/hardware/fm/FmConsts$FmSearchDirection;I)Z
    .locals 5
    .parameter "freq"
    .parameter "direction"
    .parameter "timeout"

    .prologue
    .line 65
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 66
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 68
    .local v1, result:Z
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/fm/FmConsts$FmSearchDirection;->ordinal()I

    move-result v3

    invoke-interface {v2, p1, v3, p3}, Landroid/hardware/fm/IFmService;->startSearch(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 75
    :goto_0
    return v1

    .line 69
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in startSearch()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 71
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 72
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in startSearch()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmute()Z
    .locals 5

    .prologue
    .line 219
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .line 220
    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .line 222
    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->unmute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    .line 229
    :goto_0
    return v1

    .line 223
    :catch_0
    move-exception v0

    .line 224
    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in unmute()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 225
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 226
    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in unmute()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
