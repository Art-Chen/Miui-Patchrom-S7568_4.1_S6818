.class Lcom/android/server/ShutdownFullscreenActivity$2;
.super Landroid/content/BroadcastReceiver;
.source "ShutdownFullscreenActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ShutdownFullscreenActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ShutdownFullscreenActivity;


# direct methods
.method constructor <init>(Lcom/android/server/ShutdownFullscreenActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 68
    iput-object p1, p0, Lcom/android/server/ShutdownFullscreenActivity$2;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 71
    const-string v0, "android.intent.action.BATTERY_OKAY"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "android.intent.action.ACTION_POWER_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 73
    invoke-static {}, Lcom/android/server/ShutDownWakeLock;->releaseCpuLock()V

    .line 74
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$2;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/ShutdownFullscreenActivity;->access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$2;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$200(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$2;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$2;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mReceiver:Landroid/content/BroadcastReceiver;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$500(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/content/BroadcastReceiver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ShutdownFullscreenActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 76
    iget-object v0, p0, Lcom/android/server/ShutdownFullscreenActivity$2;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-virtual {v0}, Lcom/android/server/ShutdownFullscreenActivity;->finish()V

    .line 78
    :cond_0
    return-void
.end method
