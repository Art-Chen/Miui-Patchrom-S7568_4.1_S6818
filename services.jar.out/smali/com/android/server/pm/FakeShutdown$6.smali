.class Lcom/android/server/pm/FakeShutdown$6;
.super Ljava/lang/Object;
.source "FakeShutdown.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/FakeShutdown;->prepareAutoPowerOffSound()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/FakeShutdown;


# direct methods
.method constructor <init>(Lcom/android/server/pm/FakeShutdown;)V
    .locals 0
    .parameter

    .prologue
    .line 845
    iput-object p1, p0, Lcom/android/server/pm/FakeShutdown$6;->this$0:Lcom/android/server/pm/FakeShutdown;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 847
    iget-object v1, p0, Lcom/android/server/pm/FakeShutdown$6;->this$0:Lcom/android/server/pm/FakeShutdown;

    #getter for: Lcom/android/server/pm/FakeShutdown;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/pm/FakeShutdown;->access$600(Lcom/android/server/pm/FakeShutdown;)Landroid/media/MediaPlayer;

    move-result-object v1

    if-nez v1, :cond_0

    .line 848
    const-string v1, "FakeShutdown"

    const-string v2, "MediaPlayer is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    :goto_0
    return-void

    .line 852
    :cond_0
    :try_start_0
    const-string v1, "FakeShutdown"

    const-string v2, "Playing sound file"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    iget-object v1, p0, Lcom/android/server/pm/FakeShutdown$6;->this$0:Lcom/android/server/pm/FakeShutdown;

    #getter for: Lcom/android/server/pm/FakeShutdown;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/pm/FakeShutdown;->access$600(Lcom/android/server/pm/FakeShutdown;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    .line 855
    iget-object v1, p0, Lcom/android/server/pm/FakeShutdown$6;->this$0:Lcom/android/server/pm/FakeShutdown;

    #getter for: Lcom/android/server/pm/FakeShutdown;->mp:Landroid/media/MediaPlayer;
    invoke-static {v1}, Lcom/android/server/pm/FakeShutdown;->access$600(Lcom/android/server/pm/FakeShutdown;)Landroid/media/MediaPlayer;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    goto :goto_0

    .line 856
    :catch_0
    move-exception v0

    .line 858
    .local v0, e:Ljava/lang/IllegalStateException;
    const-string v1, "FakeShutdown"

    const-string v2, "sound thread IllegalStateException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 859
    .end local v0           #e:Ljava/lang/IllegalStateException;
    :catch_1
    move-exception v0

    .line 861
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "FakeShutdown"

    const-string v2, "sound thread InterruptedException"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 862
    .end local v0           #e:Ljava/lang/InterruptedException;
    :catch_2
    move-exception v0

    .line 864
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "FakeShutdown"

    const-string v2, "sound thread exception"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
