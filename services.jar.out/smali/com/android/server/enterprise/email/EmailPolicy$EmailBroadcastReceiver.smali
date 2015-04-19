.class Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "EmailPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/email/EmailPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EmailBroadcastReceiver"
.end annotation


# instance fields
.field public mHaveResult:Z

.field final synthetic this$0:Lcom/android/server/enterprise/email/EmailPolicy;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/email/EmailPolicy;)V
    .locals 1
    .parameter

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 106
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;->mHaveResult:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/email/EmailPolicy;Lcom/android/server/enterprise/email/EmailPolicy$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 105
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/EmailPolicy;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 110
    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    monitor-enter v1

    .line 111
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;->mHaveResult:Z

    .line 112
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;->this$0:Lcom/android/server/enterprise/email/EmailPolicy;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 113
    monitor-exit v1

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
