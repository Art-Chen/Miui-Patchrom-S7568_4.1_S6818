.class Lcom/android/server/DrmEventService$1;
.super Landroid/content/BroadcastReceiver;
.source "DrmEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DrmEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/DrmEventService;


# direct methods
.method constructor <init>(Lcom/android/server/DrmEventService;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/server/DrmEventService$1;->this$0:Lcom/android/server/DrmEventService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v0, "DrmEventService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GPS Time for DRM] gpstimeforDRMReceiver intent is recieved "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/DrmEventService$1;->this$0:Lcom/android/server/DrmEventService;

    const/4 v1, 0x1

    #setter for: Lcom/android/server/DrmEventService;->bTimeReceivedFromGPS:Z
    invoke-static {v0, v1}, Lcom/android/server/DrmEventService;->access$302(Lcom/android/server/DrmEventService;Z)Z

    iget-object v0, p0, Lcom/android/server/DrmEventService$1;->this$0:Lcom/android/server/DrmEventService;

    invoke-virtual {v0, p2}, Lcom/android/server/DrmEventService;->handleGpstimeUpdation(Landroid/content/Intent;)V

    return-void
.end method
