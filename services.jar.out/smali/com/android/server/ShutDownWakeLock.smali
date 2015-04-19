.class public Lcom/android/server/ShutDownWakeLock;
.super Ljava/lang/Object;
.source "ShutDownWakeLock.java"


# static fields
.field private static sCpuWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static acquireCpuWakeLock(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 12
    const-string v1, "ShutDownWakelock"

    const-string v2, "Acquiring cpu wake lock"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    sget-object v1, Lcom/android/server/ShutDownWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v1, :cond_0

    .line 25
    :goto_0
    return-void

    .line 17
    :cond_0
    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 20
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x30000001

    const-string v2, "ShutDown"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    sput-object v1, Lcom/android/server/ShutDownWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 24
    sget-object v1, Lcom/android/server/ShutDownWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_0
.end method

.method static releaseCpuLock()V
    .locals 2

    .prologue
    .line 28
    const-string v0, "ShutDownWakelock"

    const-string v1, "Releasing cpu wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    sget-object v0, Lcom/android/server/ShutDownWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    .line 30
    sget-object v0, Lcom/android/server/ShutDownWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ShutDownWakeLock;->sCpuWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 33
    :cond_0
    return-void
.end method
