.class public Landroid/hardware/contextaware/utilbundle/CaPowerManager;
.super Ljava/util/Observable;
.source "CaPowerManager.java"


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;


# instance fields
.field private mAPWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mApSleepIntent:Landroid/content/IntentFilter;

.field private mApWakeupIntent:Landroid/content/IntentFilter;

.field private mContext:Landroid/content/Context;

.field private mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;

    invoke-direct {v0, p0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager$1;-><init>(Landroid/hardware/contextaware/utilbundle/CaPowerManager;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;
    .locals 2

    .prologue
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_1

    const-class v1, Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->instance:Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public acquireAPWakeLock()V
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "mContext is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .local v0, pm:Landroid/os/PowerManager;
    if-nez v0, :cond_1

    const-string v1, "pm is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "WakeLock is already held."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    const/4 v1, 0x1

    const-string v2, "CA_WAKELOCK"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method public initializePowerManager(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    iput-object p1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mApSleepIntent:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mApWakeupIntent:Landroid/content/IntentFilter;

    return-void
.end method

.method public isScreenOn()Z
    .locals 3

    .prologue
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_0

    const-string v1, "mContext is null"

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v1, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    .local v0, result:Z
    if-eqz v0, :cond_1

    const-string v1, "Screen On."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v1, "Screen Off."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public releaseAPWakeLock()V
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "WakeLock is not held."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->warning(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->mAPWakeLock:Landroid/os/PowerManager$WakeLock;

    goto :goto_0
.end method