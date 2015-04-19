.class public Landroid/server/AvrcpStubService;
.super Landroid/bluetooth/IAvrcpProxy$Stub;
.source "AvrcpStubService.java"


# static fields
.field public static final BLUETOOTH_AVRCP_SERVICE:Ljava/lang/String; = "bluetooth_avrcp"

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "AvrcpStubService"


# instance fields
.field private mActualTrack:J

.field private mCb:Landroid/bluetooth/IAvrcpProxyCallback;

.field private final mContext:Landroid/content/Context;

.field private mNativeData:I

.field private mPlayStatus:B

.field private mRepeatVal:B

.field private mSelected:Z

.field private mShuffleVal:B


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/server/AvrcpStubService;->avrcpClassInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/bluetooth/IAvrcpProxy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    iput v2, p0, Landroid/server/AvrcpStubService;->mNativeData:I

    iput-byte v2, p0, Landroid/server/AvrcpStubService;->mPlayStatus:B

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/server/AvrcpStubService;->mActualTrack:J

    iput-boolean v2, p0, Landroid/server/AvrcpStubService;->mSelected:Z

    iput-byte v3, p0, Landroid/server/AvrcpStubService;->mRepeatVal:B

    iput-byte v3, p0, Landroid/server/AvrcpStubService;->mShuffleVal:B

    iput-object p1, p0, Landroid/server/AvrcpStubService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private native applicationSettingsChanged(BB)Z
.end method

.method private static native avrcpClassInit()V
.end method

.method private native avrcpStart()Z
.end method

.method private native avrcpStop()Z
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    const-string v0, "AvrcpStubService"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private native playbackStatusChanged(B)Z
.end method

.method private native trackChanged(J)Z
.end method


# virtual methods
.method public applicationSettingsChangeEvent(BB)V
    .locals 1
    .parameter "shuffleVal"
    .parameter "repeatVal"

    .prologue
    const-string v0, "applicationSettingsChangeEvent()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    iput-byte p1, p0, Landroid/server/AvrcpStubService;->mShuffleVal:B

    iput-byte p2, p0, Landroid/server/AvrcpStubService;->mRepeatVal:B

    invoke-direct {p0, p1, p2}, Landroid/server/AvrcpStubService;->applicationSettingsChanged(BB)Z

    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    invoke-super {p0}, Landroid/bluetooth/IAvrcpProxy$Stub;->finalize()V

    const-string v0, "BUG - Should not finalize"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    return-void
.end method

.method public getElementAttributes()[Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v0, 0x0

    .local v0, attrs:[Landroid/os/ElementAttributeParcel;
    const-string v2, "getElementAttributes callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->getElementAttributes()[Landroid/os/ElementAttributeParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :cond_0
    :goto_0
    check-cast v0, [Ljava/lang/Object;

    .end local v0           #attrs:[Landroid/os/ElementAttributeParcel;
    return-object v0

    .restart local v0       #attrs:[Landroid/os/ElementAttributeParcel;
    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public getPlayStatus()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, ps:Landroid/os/PlayStatusParcel;
    const-string v2, "getPlayStatus callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->getPlayStatus()Landroid/os/PlayStatusParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public getPlayerSettingVal()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, ps:Landroid/os/PlayerSettingsParcel;
    const-string v2, "getPlayerSettingVal callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->getPlayerSettingVal()Landroid/os/PlayerSettingsParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public getSupportedEvents()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, events:Landroid/os/SupportedEventsParcel;
    const-string v2, "getSupportedEvents callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->getSupportedEvents()Landroid/os/SupportedEventsParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public listPlayerSettingAttrs()Ljava/lang/Object;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, ps:Landroid/os/PlayerSettingsParcel;
    const-string v2, "listPlayerSettingAttrs callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->listPlayerSettingAttrs()Landroid/os/PlayerSettingsParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public listPlayerSettingVals(B)Ljava/lang/Object;
    .locals 4
    .parameter "attrId"

    .prologue
    const/4 v1, 0x0

    .local v1, ps:Landroid/os/PlayerSettingsParcel;
    const-string v2, "listPlayerSettingVals callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2, p1}, Landroid/bluetooth/IAvrcpProxyCallback;->listPlayerSettingVals(B)Landroid/os/PlayerSettingsParcel;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public playbackStatusChangeEvent(B)V
    .locals 2
    .parameter "status"

    .prologue
    const-string v0, "playbackStatusChangeEvent()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    iput-byte p1, p0, Landroid/server/AvrcpStubService;->mPlayStatus:B

    iget-byte v0, p0, Landroid/server/AvrcpStubService;->mPlayStatus:B

    if-eqz v0, :cond_0

    iget-byte v0, p0, Landroid/server/AvrcpStubService;->mPlayStatus:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    :cond_0
    const-string v0, "Playback statusChangeEvent setting mSelected to false"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/server/AvrcpStubService;->mSelected:Z

    :goto_0
    invoke-direct {p0, p1}, Landroid/server/AvrcpStubService;->playbackStatusChanged(B)Z

    return-void

    :cond_1
    const-string v0, "PlaybackStatusChangeEvent setting mSelected to true"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/server/AvrcpStubService;->mSelected:Z

    goto :goto_0
.end method

.method public setPlayerSettingVal(BB)V
    .locals 3
    .parameter "attr"
    .parameter "val"

    .prologue
    const-string v1, "setPlayerSettingVal callback()"

    invoke-static {v1}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v1, p1, p2}, Landroid/bluetooth/IAvrcpProxyCallback;->setPlayerSettingVal(BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v1, "AvrcpStubService"

    const-string v2, ""

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    iput-object v1, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method

.method public startAvrcp(Landroid/bluetooth/IAvrcpProxyCallback;)V
    .locals 1
    .parameter "cb"

    .prologue
    iput-object p1, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    const-string v0, "startAvrcp()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/server/AvrcpStubService;->avrcpStart()Z

    return-void
.end method

.method public stopAvrcp()V
    .locals 1

    .prologue
    const-string v0, "stopAvrcp()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Landroid/server/AvrcpStubService;->avrcpStop()Z

    return-void
.end method

.method public trackChangeEvent(J)V
    .locals 1
    .parameter "id"

    .prologue
    const-string v0, "trackChangeEvent()"

    invoke-static {v0}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    iput-wide p1, p0, Landroid/server/AvrcpStubService;->mActualTrack:J

    invoke-direct {p0, p1, p2}, Landroid/server/AvrcpStubService;->trackChanged(J)Z

    return-void
.end method

.method public updatePlayerSettingVals()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .local v1, status:Z
    const-string v2, "updatePlayerSettingVals callback()"

    invoke-static {v2}, Landroid/server/AvrcpStubService;->log(Ljava/lang/String;)V

    :try_start_0
    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    invoke-interface {v2}, Landroid/bluetooth/IAvrcpProxyCallback;->updatePlayerSettingVals()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :cond_0
    :goto_0
    return v1

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    const-string v2, "AvrcpStubService"

    const-string v3, ""

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    iput-object v2, p0, Landroid/server/AvrcpStubService;->mCb:Landroid/bluetooth/IAvrcpProxyCallback;

    goto :goto_0
.end method
