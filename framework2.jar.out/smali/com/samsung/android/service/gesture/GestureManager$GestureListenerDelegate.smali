.class Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
.super Lcom/samsung/android/service/gesture/IGestureCallback$Stub;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/service/gesture/GestureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GestureListenerDelegate"
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private final mListener:Lcom/samsung/android/service/gesture/GestureListener;

.field final synthetic this$0:Lcom/samsung/android/service/gesture/GestureManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/service/gesture/GestureManager;Lcom/samsung/android/service/gesture/GestureListener;Landroid/os/Handler;)V
    .locals 2
    .parameter
    .parameter "listener"
    .parameter "handler"

    .prologue
    .line 312
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->this$0:Lcom/samsung/android/service/gesture/GestureManager;

    .line 313
    invoke-direct {p0}, Lcom/samsung/android/service/gesture/IGestureCallback$Stub;-><init>()V

    .line 314
    iput-object p2, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->mListener:Lcom/samsung/android/service/gesture/GestureListener;

    .line 316
    if-nez p3, :cond_0

    #getter for: Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;
    invoke-static {p1}, Lcom/samsung/android/service/gesture/GestureManager;->access$300(Lcom/samsung/android/service/gesture/GestureManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 318
    .local v0, looper:Landroid/os/Looper;
    :goto_0
    new-instance v1, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate$1;

    invoke-direct {v1, p0, v0, p1}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate$1;-><init>(Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/service/gesture/GestureManager;)V

    iput-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->mHandler:Landroid/os/Handler;

    .line 327
    return-void

    .line 316
    .end local v0           #looper:Landroid/os/Looper;
    :cond_0
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic access$400(Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;)Lcom/samsung/android/service/gesture/GestureListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 296
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->mListener:Lcom/samsung/android/service/gesture/GestureListener;

    return-object v0
.end method


# virtual methods
.method public gestureCallback(Lcom/samsung/android/service/gesture/GestureEvent;)V
    .locals 2
    .parameter "event"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 351
    .local v0, msg:Landroid/os/Message;
    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    .line 352
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 353
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 354
    return-void
.end method

.method public getListener()Lcom/samsung/android/service/gesture/GestureListener;
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->mListener:Lcom/samsung/android/service/gesture/GestureListener;

    return-object v0
.end method

.method public getListenerInfo()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->mListener:Lcom/samsung/android/service/gesture/GestureListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
