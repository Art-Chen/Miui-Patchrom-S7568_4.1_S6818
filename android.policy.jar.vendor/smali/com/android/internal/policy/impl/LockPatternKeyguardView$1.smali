.class Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;
.super Ljava/lang/Object;
.source "LockPatternKeyguardView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/LockPatternKeyguardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V
    .locals 0
    .parameter

    .prologue
    .line 334
    iput-object p1, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 336
    monitor-enter p0

    .line 337
    :try_start_0
    const-string v2, "LockPatternKeyguardView"

    const-string v3, "Enter to recreate"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 340
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mMode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$100(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v1

    .line 342
    .local v1, mode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->shouldDelayBeforeRecreateWhenLcdTurnedOff()Z
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$200(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Z

    move-result v2

    if-ne v2, v4, :cond_0

    .line 343
    const-string v2, "LockPatternKeyguardView"

    const-string v3, "Delay before recreate"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v3, 0x0

    #setter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mIsLcdTurningOff:Z
    invoke-static {v2, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$302(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Z)Z

    .line 345
    const-wide/16 v2, 0xc8

    invoke-static {v2, v3}, Landroid/os/SystemClock;->sleep(J)V

    .line 351
    :cond_0
    const/4 v0, 0x0

    .line 352
    .local v0, dismissAfterCreation:Z
    sget-object v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->UnlockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getUnlockMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$400(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    move-result-object v2

    sget-object v3, Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;->Unknown:Lcom/android/internal/policy/impl/LockPatternKeyguardView$UnlockMode;

    if-ne v2, v3, :cond_3

    .line 353
    const-string v2, "LockPatternKeyguardView"

    const-string v3, "Switch to Mode.LockScreen because SIM unlocked"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    sget-object v1, Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;->LockScreen:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    .line 355
    const/4 v0, 0x1

    .line 359
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    const/4 v3, 0x1

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->updateScreen(Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V
    invoke-static {v2, v1, v3}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$600(Lcom/android/internal/policy/impl/LockPatternKeyguardView;Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;Z)V

    .line 362
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 363
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$700(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->setConfigurationChanged(Z)V

    .line 365
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->restoreWidgetState()V
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$800(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)V

    .line 366
    if-eqz v0, :cond_2

    .line 367
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    iget-object v2, v2, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mKeyguardScreenCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .line 369
    :cond_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #getter for: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->mResetWakeLock:Landroid/os/PowerManager$WakeLock;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$000(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 370
    monitor-exit p0

    .line 371
    return-void

    .line 357
    :cond_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/LockPatternKeyguardView$1;->this$0:Lcom/android/internal/policy/impl/LockPatternKeyguardView;

    #calls: Lcom/android/internal/policy/impl/LockPatternKeyguardView;->getInitialMode()Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    invoke-static {v2}, Lcom/android/internal/policy/impl/LockPatternKeyguardView;->access$500(Lcom/android/internal/policy/impl/LockPatternKeyguardView;)Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;

    move-result-object v1

    goto :goto_0

    .line 370
    .end local v0           #dismissAfterCreation:Z
    .end local v1           #mode:Lcom/android/internal/policy/impl/LockPatternKeyguardView$Mode;
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
