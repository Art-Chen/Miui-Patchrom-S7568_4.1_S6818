.class public Landroid/hardware/contextaware/utilbundle/CaAlarmManager;
.super Ljava/lang/Object;
.source "CaAlarmManager.java"


# static fields
.field private static volatile instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;


# instance fields
.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/utilbundle/CaAlarmManager;
    .locals 2

    .prologue
    .line 38
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_1

    .line 39
    const-class v1, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    monitor-enter v1

    .line 40
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    invoke-direct {v0}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    .line 43
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->instance:Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    return-object v0

    .line 43
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public initializeAlarmManager(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 56
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    .line 58
    return-void
.end method

.method public vibrateAlarm(Z)V
    .locals 3
    .parameter "enable"

    .prologue
    .line 67
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    if-nez v0, :cond_0

    .line 68
    const-string v0, "mVibrator is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    .line 71
    :cond_0
    if-eqz p1, :cond_1

    .line 72
    const-string v0, "vibrate alarm"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 78
    :goto_0
    return-void

    .line 75
    :cond_1
    const-string v0, "vibrate Cancel"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    .line 76
    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    goto :goto_0
.end method
