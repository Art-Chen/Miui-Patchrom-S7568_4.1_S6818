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
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Binder;

    invoke-direct {v0}, Landroid/os/Binder;-><init>()V

    iput-object v0, p0, Landroid/hardware/fm/FmManager;->mObserver:Landroid/os/IBinder;

    iput-object p1, p0, Landroid/hardware/fm/FmManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private static getService()Landroid/hardware/fm/IFmService;
    .locals 2

    .prologue
    sget-object v1, Landroid/hardware/fm/FmManager;->mService:Landroid/hardware/fm/IFmService;

    if-eqz v1, :cond_0

    sget-object v1, Landroid/hardware/fm/FmManager;->mService:Landroid/hardware/fm/IFmService;

    .local v0, binder:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .end local v0           #binder:Landroid/os/IBinder;
    :cond_0
    const-string v1, "fm"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .restart local v0       #binder:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/hardware/fm/IFmService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fm/IFmService;

    move-result-object v1

    sput-object v1, Landroid/hardware/fm/FmManager;->mService:Landroid/hardware/fm/IFmService;

    sget-object v1, Landroid/hardware/fm/FmManager;->mService:Landroid/hardware/fm/IFmService;

    goto :goto_0
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->cancelSearch()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in cancelSearch()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in cancelSearch()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAudioMode()Landroid/hardware/fm/FmConsts$FmAudioMode;
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    sget-object v1, Landroid/hardware/fm/FmConsts$FmAudioMode;->FM_AUDIO_MODE_UNKNOWN:Landroid/hardware/fm/FmConsts$FmAudioMode;

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

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getAudioMode()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getAudioMode()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getAudioPath()Landroid/hardware/fm/FmConsts$FmAudioPath;
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    sget-object v1, Landroid/hardware/fm/FmConsts$FmAudioPath;->FM_AUDIO_PATH_UNKNOWN:Landroid/hardware/fm/FmConsts$FmAudioPath;

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

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getAudioPath()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getAudioPath()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getBand()Landroid/hardware/fm/FmConsts$FmBand;
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    sget-object v1, Landroid/hardware/fm/FmConsts$FmBand;->FM_BAND_UNKNOWN:Landroid/hardware/fm/FmConsts$FmBand;

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

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getBand()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getBand()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getError()I
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/16 v1, -0x400

    .local v1, result:I
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getError()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getError()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getError()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getFreq()I
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, -0x1

    .local v1, result:I
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getFreq()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getFreq()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getFreq()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getRssi()I
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, -0x1

    .local v1, result:I
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getRssi()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getRssi()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getRssi()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getStepType()Landroid/hardware/fm/FmConsts$FmStepType;
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    sget-object v1, Landroid/hardware/fm/FmConsts$FmStepType;->FM_STEP_UNKNOWN:Landroid/hardware/fm/FmConsts$FmStepType;

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

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getStepType()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getStepType()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVolume()I
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, -0x1

    .local v1, result:I
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->getVolume()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in getVolume()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in getVolume()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->isFmOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in isFmOn()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in isFmOn()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isMuted()Z
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->isMuted()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in isMuted()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in isMuted()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public mute()Z
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->mute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in mute()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in mute()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public powerDown()Z
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->powerDown()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in powerDown()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in powerDown()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public powerUp()Z
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    iget-object v3, p0, Landroid/hardware/fm/FmManager;->mObserver:Landroid/os/IBinder;

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->powerUp(Landroid/os/IBinder;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in powerUp()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

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
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fm/FmConsts$FmAudioMode;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->setAudioMode(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setAudioMode()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

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
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fm/FmConsts$FmAudioPath;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->setAudioPath(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setAudioPath()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

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
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fm/FmConsts$FmBand;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->setBand(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setBand()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

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
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/fm/IFmService;->setFreq(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setFreq()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

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
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/fm/IFmService;->setRssi(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setRssi()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

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
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-virtual {p1}, Landroid/hardware/fm/FmConsts$FmStepType;->ordinal()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/fm/IFmService;->setStepType(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setStepType()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

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
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2, p1}, Landroid/hardware/fm/IFmService;->setVolume(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in setVolume()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

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
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-virtual {p2}, Landroid/hardware/fm/FmConsts$FmSearchDirection;->ordinal()I

    move-result v3

    invoke-interface {v2, p1, v3, p3}, Landroid/hardware/fm/IFmService;->startSearch(III)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in startSearch()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in startSearch()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public unmute()Z
    .locals 5

    .prologue
    invoke-static {}, Landroid/hardware/fm/FmManager;->getService()Landroid/hardware/fm/IFmService;

    move-result-object v2

    .local v2, service:Landroid/hardware/fm/IFmService;
    const/4 v1, 0x0

    .local v1, result:Z
    :try_start_0
    invoke-interface {v2}, Landroid/hardware/fm/IFmService;->unmute()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v3, "FmManager"

    const-string v4, "Dead object in unmute()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/NullPointerException;
    const-string v3, "FmManager"

    const-string v4, "No fm service in unmute()"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
