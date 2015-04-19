.class public Landroid/hardware/fm/FmService;
.super Landroid/hardware/fm/IFmService$Stub;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/fm/FmService$ObserverHandler;
    }
.end annotation


# instance fields
.field private final FM_AUDIO_PATH_HEADSET:I

.field private final FM_AUDIO_PATH_NONE:I

.field private final FM_AUDIO_PATH_SPEAKER:I

.field private final TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mController:Landroid/hardware/fm/FmController;

.field private mFmAudioPath:I

.field private mFmAudioPathLock:Ljava/lang/Object;

.field private mObserverHandlers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/hardware/fm/FmService$ObserverHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x2

    invoke-direct {p0}, Landroid/hardware/fm/IFmService$Stub;-><init>()V

    const-string v0, "FmService"

    iput-object v0, p0, Landroid/hardware/fm/FmService;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/fm/FmService;->FM_AUDIO_PATH_SPEAKER:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/hardware/fm/FmService;->FM_AUDIO_PATH_HEADSET:I

    iput v1, p0, Landroid/hardware/fm/FmService;->FM_AUDIO_PATH_NONE:I

    iput-object v2, p0, Landroid/hardware/fm/FmService;->mContext:Landroid/content/Context;

    iput-object v2, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    iput v1, p0, Landroid/hardware/fm/FmService;->mFmAudioPath:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroid/hardware/fm/FmService;->mFmAudioPathLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/fm/FmService;->mObserverHandlers:Ljava/util/ArrayList;

    iput-object p1, p0, Landroid/hardware/fm/FmService;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/hardware/fm/FmController;

    invoke-direct {v0}, Landroid/hardware/fm/FmController;-><init>()V

    iput-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    return-void
.end method

.method static synthetic access$000(Landroid/hardware/fm/FmService;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mObserverHandlers:Ljava/util/ArrayList;

    return-object v0
.end method

.method private findObserver(I)Landroid/hardware/fm/FmService$ObserverHandler;
    .locals 4
    .parameter "pid"

    .prologue
    const/4 v2, 0x0

    .local v2, value:Landroid/hardware/fm/FmService$ObserverHandler;
    iget-object v3, p0, Landroid/hardware/fm/FmService;->mObserverHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, iter:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fm/FmService$ObserverHandler;

    .local v1, oh:Landroid/hardware/fm/FmService$ObserverHandler;
    invoke-virtual {v1}, Landroid/hardware/fm/FmService$ObserverHandler;->getPid()I

    move-result v3

    if-ne v3, p1, :cond_0

    move-object v2, v1

    .end local v1           #oh:Landroid/hardware/fm/FmService$ObserverHandler;
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "cancelSearch() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->cancelSearch()Z

    move-result v0

    goto :goto_0
.end method

.method public getAudioMode()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "getAudioMode() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x400

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->getAudioMode()I

    move-result v0

    goto :goto_0
.end method

.method public getAudioPath()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/fm/FmService;->mFmAudioPath:I

    return v0
.end method

.method public getBand()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "getBand() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x400

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->getBand()I

    move-result v0

    goto :goto_0
.end method

.method public getError()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "getError() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x400

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->getError()I

    move-result v0

    goto :goto_0
.end method

.method public getFreq()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "getFreq() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x400

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->getFreq()I

    move-result v0

    goto :goto_0
.end method

.method public getRssi()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "getRssi() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x400

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public getStepType()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "getStepType() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x400

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->getStepType()I

    move-result v0

    goto :goto_0
.end method

.method public getVolume()I
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "getVolume() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, -0x400

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->getVolume()I

    move-result v0

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "isFmOn() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0}, Landroid/hardware/fm/FmController;->isFmOn()Z

    move-result v0

    goto :goto_0
.end method

.method public isMuted()Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v2, :cond_0

    const-string v0, "FmService"

    const-string v2, "isMuted() mController is null"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v2}, Landroid/hardware/fm/FmController;->getMuteMode()I

    move-result v2

    if-ne v2, v0, :cond_1

    :goto_1
    move v1, v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public mute()Z
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "mute() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/hardware/fm/FmController;->setMuteMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public powerDown()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    iget-object v2, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v2, :cond_0

    const-string v2, "FmService"

    const-string v3, "powerDown() mController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v2, p0, Landroid/hardware/fm/FmService;->mObserverHandlers:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/hardware/fm/FmService;->findObserver(I)Landroid/hardware/fm/FmService$ObserverHandler;

    move-result-object v0

    .local v0, oh:Landroid/hardware/fm/FmService$ObserverHandler;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/hardware/fm/FmService$ObserverHandler;->getObserver()Landroid/os/IBinder;

    move-result-object v1

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v1, p0, Landroid/hardware/fm/FmService;->mObserverHandlers:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v1}, Landroid/hardware/fm/FmController;->powerDown()Z

    move-result v1

    goto :goto_0

    .end local v0           #oh:Landroid/hardware/fm/FmService$ObserverHandler;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public powerUp(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "observer"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v3, :cond_1

    const-string v3, "FmService"

    const-string v4, "powerUp() mController is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v2

    :cond_1
    if-nez p1, :cond_2

    const-string v3, "FmService"

    const-string v4, "powerUp() observer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v3, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v3}, Landroid/hardware/fm/FmController;->powerUp()Z

    move-result v2

    .local v2, value:Z
    if-eqz v2, :cond_0

    iget-object v4, p0, Landroid/hardware/fm/FmService;->mObserverHandlers:Ljava/util/ArrayList;

    monitor-enter v4

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {p0, v3}, Landroid/hardware/fm/FmService;->findObserver(I)Landroid/hardware/fm/FmService$ObserverHandler;

    move-result-object v1

    .local v1, oh:Landroid/hardware/fm/FmService$ObserverHandler;
    if-nez v1, :cond_3

    new-instance v1, Landroid/hardware/fm/FmService$ObserverHandler;

    .end local v1           #oh:Landroid/hardware/fm/FmService$ObserverHandler;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-direct {v1, p0, p1, v3}, Landroid/hardware/fm/FmService$ObserverHandler;-><init>(Landroid/hardware/fm/FmService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .restart local v1       #oh:Landroid/hardware/fm/FmService$ObserverHandler;
    const/4 v3, 0x0

    :try_start_1
    invoke-interface {p1, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    iget-object v3, p0, Landroid/hardware/fm/FmService;->mObserverHandlers:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_3
    :goto_1
    :try_start_2
    monitor-exit v4

    goto :goto_0

    .end local v1           #oh:Landroid/hardware/fm/FmService$ObserverHandler;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .restart local v1       #oh:Landroid/hardware/fm/FmService$ObserverHandler;
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    :try_start_3
    const-string v3, "FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "powerUp() could not link to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " binder death"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v3}, Landroid/hardware/fm/FmController;->powerDown()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAudioMode(I)Z
    .locals 2
    .parameter "mode"

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "setAudioMode() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0, p1}, Landroid/hardware/fm/FmController;->setAudioMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setAudioPath(I)Z
    .locals 6
    .parameter "path"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v3, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v3, :cond_0

    const-string v2, "FmService"

    const-string v3, "setAudioPath() mController is null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    iget-object v3, p0, Landroid/hardware/fm/FmService;->mFmAudioPathLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget v1, p0, Landroid/hardware/fm/FmService;->mFmAudioPath:I

    if-eq v1, p1, :cond_2

    iget-object v1, p0, Landroid/hardware/fm/FmService;->mContext:Landroid/content/Context;

    const-string v4, "audio"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .local v0, am:Landroid/media/AudioManager;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_3

    const/high16 v1, 0x200

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    const/high16 v1, 0x100

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    :cond_1
    :goto_1
    iput p1, p0, Landroid/hardware/fm/FmService;->mFmAudioPath:I

    .end local v0           #am:Landroid/media/AudioManager;
    :cond_2
    monitor-exit v3

    move v1, v2

    goto :goto_0

    .restart local v0       #am:Landroid/media/AudioManager;
    :cond_3
    if-nez p1, :cond_4

    const/high16 v1, 0x100

    const/4 v4, 0x0

    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    const/high16 v1, 0x200

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    goto :goto_1

    .end local v0           #am:Landroid/media/AudioManager;
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0       #am:Landroid/media/AudioManager;
    :cond_4
    if-ne p1, v2, :cond_1

    const/high16 v1, 0x200

    const/4 v4, 0x0

    :try_start_1
    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V

    const/high16 v1, 0x100

    const/4 v4, 0x1

    const-string v5, ""

    invoke-virtual {v0, v1, v4, v5}, Landroid/media/AudioManager;->setWiredDeviceConnectionState(IILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setBand(I)Z
    .locals 2
    .parameter "band"

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "setBand() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0, p1}, Landroid/hardware/fm/FmController;->setBand(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setFreq(I)Z
    .locals 2
    .parameter "freq"

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "setFreq() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0, p1}, Landroid/hardware/fm/FmController;->setFreq(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setRssi(I)Z
    .locals 2
    .parameter "rssi"

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "setRssi() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0, p1}, Landroid/hardware/fm/FmController;->setRssi(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setStepType(I)Z
    .locals 2
    .parameter "type"

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "setStepType() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0, p1}, Landroid/hardware/fm/FmController;->setStepType(I)Z

    move-result v0

    goto :goto_0
.end method

.method public setVolume(I)Z
    .locals 2
    .parameter "volume"

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "setVolume() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0, p1}, Landroid/hardware/fm/FmController;->setVolume(I)Z

    move-result v0

    goto :goto_0
.end method

.method public startSearch(III)Z
    .locals 2
    .parameter "freq"
    .parameter "direction"
    .parameter "timeout"

    .prologue
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v0, :cond_0

    const-string v0, "FmService"

    const-string v1, "startSearch() mController is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v0, p1, p2, p3}, Landroid/hardware/fm/FmController;->startSearch(III)Z

    move-result v0

    goto :goto_0
.end method

.method public unmute()Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    if-nez v1, :cond_0

    const-string v1, "FmService"

    const-string v2, "mute() mController is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/fm/FmService;->mController:Landroid/hardware/fm/FmController;

    invoke-virtual {v1, v0}, Landroid/hardware/fm/FmController;->setMuteMode(I)Z

    move-result v0

    goto :goto_0
.end method
