.class public Lcom/samsung/android/service/gesture/GestureManager;
.super Ljava/lang/Object;
.source "GestureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;,
        Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;
    }
.end annotation


# static fields
.field public static final CAMERA_PROVIDER:Ljava/lang/String; = "camera_provider"

.field public static final IR_PROVIDER:Ljava/lang/String; = "ir_provider"

.field private static final TAG:Ljava/lang/String; = "GestureManager"

.field public static final TSP_PROVIDER:Ljava/lang/String; = "tsp_provider"


# instance fields
.field private mBound:Z

.field private mConnection:Landroid/content/ServiceConnection;

.field private mConnectionListener:Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

.field private mContext:Landroid/content/Context;

.field private final mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/android/service/gesture/IGestureService;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;)V
    .locals 4
    .parameter "context"
    .parameter "connectionListener"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Lcom/samsung/android/service/gesture/GestureManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/service/gesture/GestureManager$1;-><init>(Lcom/samsung/android/service/gesture/GestureManager;)V

    iput-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnection:Landroid/content/ServiceConnection;

    iput-object p2, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnectionListener:Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.samsung.android.app.gestureservice"

    const-string v2, "com.samsung.android.app.gestureservice.GestureService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/service/gesture/GestureManager;Lcom/samsung/android/service/gesture/IGestureService;)Lcom/samsung/android/service/gesture/IGestureService;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/service/gesture/GestureManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-boolean p1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mBound:Z

    return p1
.end method

.method static synthetic access$200(Lcom/samsung/android/service/gesture/GestureManager;)Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mConnectionListener:Lcom/samsung/android/service/gesture/GestureManager$ServiceConnectionListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/service/gesture/GestureManager;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private createProvider(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/service/gesture/GestureProviderInfo;
    .locals 2
    .parameter "name"
    .parameter "info"

    .prologue
    new-instance v0, Lcom/samsung/android/service/gesture/GestureProviderInfo;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureProviderInfo;-><init>()V

    .local v0, provider:Lcom/samsung/android/service/gesture/GestureProviderInfo;
    const-string v1, "name"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/gesture/GestureProviderInfo;->setName(Ljava/lang/String;)V

    const-string v1, "supported_gesture"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/service/gesture/GestureProviderInfo;->setSupportedGestures(Ljava/util/List;)V

    return-object v0
.end method


# virtual methods
.method public getProvider(Ljava/lang/String;)Lcom/samsung/android/service/gesture/GestureProviderInfo;
    .locals 5
    .parameter "name"

    .prologue
    const/4 v2, 0x0

    if-nez p1, :cond_0

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "name==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    :try_start_0
    iget-object v3, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v3, p1}, Lcom/samsung/android/service/gesture/IGestureService;->getProviderInfo(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    .local v1, info:Landroid/os/Bundle;
    if-nez v1, :cond_1

    .end local v1           #info:Landroid/os/Bundle;
    :goto_0
    return-object v2

    .restart local v1       #info:Landroid/os/Bundle;
    :cond_1
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/service/gesture/GestureManager;->createProvider(Ljava/lang/String;Landroid/os/Bundle;)Lcom/samsung/android/service/gesture/GestureProviderInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .end local v1           #info:Landroid/os/Bundle;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v3, "GestureManager"

    const-string v4, "getProvider: RemoteException"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getProviders()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v1}, Lcom/samsung/android/service/gesture/IGestureService;->getProviders()Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v1, "GestureManager"

    const-string v2, "getProviders: RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public registerListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V
    .locals 6
    .parameter "listener"
    .parameter "provider"

    .prologue
    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v2, 0x0

    .local v2, gestureListener:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;>;"
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    .local v0, delegate:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->getListener()Lcom/samsung/android/service/gesture/GestureListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v2, v0

    .end local v0           #delegate:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    :cond_2
    if-nez v2, :cond_3

    new-instance v2, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    .end local v2           #gestureListener:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    const/4 v4, 0x0

    invoke-direct {v2, p0, p1, v4}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;-><init>(Lcom/samsung/android/service/gesture/GestureManager;Lcom/samsung/android/service/gesture/GestureListener;Landroid/os/Handler;)V

    .restart local v2       #gestureListener:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v4, v2, p2}, Lcom/samsung/android/service/gesture/IGestureService;->registerCallback(Landroid/os/IBinder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "GestureManager"

    const-string v5, "RemoteException in registerListener: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public resetGestureService(Ljava/lang/String;)V
    .locals 2
    .parameter "service"

    .prologue
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v1, p1}, Lcom/samsung/android/service/gesture/IGestureService;->resetGestureService(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;)V
    .locals 1
    .parameter "listener"

    .prologue
    const-string v0, "camera_provider"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    const-string v0, "ir_provider"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    const-string v0, "tsp_provider"

    invoke-virtual {p0, p1, v0}, Lcom/samsung/android/service/gesture/GestureManager;->unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V

    return-void
.end method

.method public unregisterListener(Lcom/samsung/android/service/gesture/GestureListener;Ljava/lang/String;)V
    .locals 6
    .parameter "listener"
    .parameter "provider"

    .prologue
    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v2, 0x0

    .local v2, gestureListener:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;>;"
    :cond_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;

    .local v0, delegate:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    invoke-virtual {v0}, Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;->getListener()Lcom/samsung/android/service/gesture/GestureListener;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v2, v0

    .end local v0           #delegate:Lcom/samsung/android/service/gesture/GestureManager$GestureListenerDelegate;
    :cond_3
    if-eqz v2, :cond_0

    :try_start_0
    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mService:Lcom/samsung/android/service/gesture/IGestureService;

    invoke-interface {v4, v2, p2}, Lcom/samsung/android/service/gesture/IGestureService;->unregisterCallback(Landroid/os/IBinder;Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/service/gesture/GestureManager;->mListenerDelegates:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, e:Landroid/os/RemoteException;
    const-string v4, "GestureManager"

    const-string v5, "RemoteException in unregisterListener: "

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
