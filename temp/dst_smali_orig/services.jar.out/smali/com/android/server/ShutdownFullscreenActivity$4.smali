.class Lcom/android/server/ShutdownFullscreenActivity$4;
.super Ljava/lang/Object;
.source "ShutdownFullscreenActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ShutdownFullscreenActivity;->onCreate(Landroid/os/Bundle;)V
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
    iput-object p1, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    iget-object v3, p0, Lcom/android/server/ShutdownFullscreenActivity$4;->this$0:Lcom/android/server/ShutdownFullscreenActivity;

    invoke-virtual {v3}, Lcom/android/server/ShutdownFullscreenActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "notification_sound"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .local v2, path:Ljava/lang/String;
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V

    .local v1, mplayer:Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->start()V

    :goto_1
    return-void

    :cond_0
    const-string v3, "/system/media/audio/notifications/Heaven.ogg"

    invoke-virtual {v1, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1
.end method
