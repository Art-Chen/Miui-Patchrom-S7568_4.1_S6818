.class Lcom/android/server/ShutdownFullscreenActivity$1;
.super Ljava/lang/Object;
.source "ShutdownFullscreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 49
    iput-object p1, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 52
    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$010(Lcom/android/server/ShutdownFullscreenActivity;)I

    .line 53
    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mDialog:Landroid/app/AlertDialog;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$100(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/app/AlertDialog;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    const v3, 0x10407e7

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I
    invoke-static {v6}, Lcom/android/server/ShutdownFullscreenActivity;->access$000(Lcom/android/server/ShutdownFullscreenActivity;)I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Lcom/android/server/ShutdownFullscreenActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->mSeconds:I
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$000(Lcom/android/server/ShutdownFullscreenActivity;)I

    move-result v1

    if-gt v1, v7, :cond_0

    .line 55
    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$200(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 57
    .local v0, h:Landroid/os/Handler;
    new-instance v1, Lcom/android/server/ShutdownFullscreenActivity$1$1;

    invoke-direct {v1, p0}, Lcom/android/server/ShutdownFullscreenActivity$1$1;-><init>(Lcom/android/server/ShutdownFullscreenActivity$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 64
    .end local v0           #h:Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/ShutdownFullscreenActivity;->access$300(Lcom/android/server/ShutdownFullscreenActivity;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/ShutdownFullscreenActivity$1;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    #getter for: Lcom/android/server/ShutdownFullscreenActivity;->myRunnable:Ljava/lang/Runnable;
    invoke-static {v2}, Lcom/android/server/ShutdownFullscreenActivity;->access$200(Lcom/android/server/ShutdownFullscreenActivity;)Ljava/lang/Runnable;

    move-result-object v2

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 65
    return-void
.end method
