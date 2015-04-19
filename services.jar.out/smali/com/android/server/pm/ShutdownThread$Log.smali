.class Lcom/android/server/pm/ShutdownThread$Log;
.super Landroid/os/Handler;
.source "ShutdownThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShutdownThread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Log"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ShutdownDelay"

.field private static handler:Lcom/android/server/pm/ShutdownThread$Log;

.field private static handlerLock:Ljava/lang/Object;

.field private static state:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 793
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    .line 794
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    .line 795
    const-string v0, ""

    sput-object v0, Lcom/android/server/pm/ShutdownThread$Log;->state:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 797
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method static d(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 879
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 880
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 859
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 860
    invoke-static {p0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method

.method static i(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 864
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 865
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static setMessage(Ljava/lang/String;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 809
    sput-object p0, Lcom/android/server/pm/ShutdownThread$Log;->state:Ljava/lang/String;

    .line 810
    sget-object v1, Lcom/android/server/pm/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 811
    :try_start_0
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    if-nez v0, :cond_0

    .line 812
    monitor-exit v1

    .line 817
    :goto_0
    return-void

    .line 814
    :cond_0
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->removeMessages(I)V

    .line 815
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const/4 v2, 0x1

    const-wide/32 v3, 0xea60

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/pm/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    .line 816
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static startState()V
    .locals 4

    .prologue
    .line 831
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    if-nez v0, :cond_0

    .line 832
    const-string v0, "ShutdownDelay"

    const-string v1, "start state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 833
    new-instance v0, Lcom/android/server/pm/ShutdownThread$Log;

    invoke-direct {v0}, Lcom/android/server/pm/ShutdownThread$Log;-><init>()V

    sput-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    .line 837
    :goto_0
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShutdownThread$Log;->sendEmptyMessage(I)Z

    .line 838
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    new-instance v1, Lcom/android/server/pm/ShutdownThread$Log$1;

    invoke-direct {v1}, Lcom/android/server/pm/ShutdownThread$Log$1;-><init>()V

    const-wide/32 v2, 0x1d4c0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/ShutdownThread$Log;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 851
    return-void

    .line 835
    :cond_0
    const-string v0, "ShutdownDelay"

    const-string v1, "startstate again"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static stopState()V
    .locals 3

    .prologue
    .line 820
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    if-nez v0, :cond_0

    .line 828
    :goto_0
    return-void

    .line 822
    :cond_0
    const-string v0, "ShutdownDelay"

    const-string v1, "stop state"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    sget-object v1, Lcom/android/server/pm/ShutdownThread$Log;->handlerLock:Ljava/lang/Object;

    monitor-enter v1

    .line 824
    :try_start_0
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->removeMessages(I)V

    .line 825
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/pm/ShutdownThread$Log;->removeMessages(I)V

    .line 826
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    .line 827
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static v(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 854
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 855
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"

    .prologue
    .line 869
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 870
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)I
    .locals 1
    .parameter "tag"
    .parameter "msg"
    .parameter "e"

    .prologue
    .line 874
    invoke-static {p1}, Lcom/android/server/pm/ShutdownThread$Log;->setMessage(Ljava/lang/String;)V

    .line 875
    invoke-static {p0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v0

    return v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 801
    const-string v0, "ShutdownDelay"

    sget-object v1, Lcom/android/server/pm/ShutdownThread$Log;->state:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 802
    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->state:Ljava/lang/String;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/pm/ShutdownThread$Log;->handler:Lcom/android/server/pm/ShutdownThread$Log;

    if-eqz v0, :cond_0

    .line 803
    const/4 v0, 0x1

    const-wide/32 v1, 0xea60

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/pm/ShutdownThread$Log;->sendEmptyMessageDelayed(IJ)Z

    .line 805
    :cond_0
    return-void
.end method
