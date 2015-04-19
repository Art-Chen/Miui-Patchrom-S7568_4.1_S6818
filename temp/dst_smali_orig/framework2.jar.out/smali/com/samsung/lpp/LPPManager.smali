.class public Lcom/samsung/lpp/LPPManager;
.super Ljava/lang/Object;
.source "LPPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/lpp/LPPManager$ListenerTransport;
    }
.end annotation


# static fields
.field public static final ACTION_ADD:I = 0x1

.field public static final ACTION_CHANGE:I = 0x3

.field public static final ACTION_REMOVE:I = 0x2

.field public static final ALL_SERVICE_AVAILABLE:I = 0x0

.field public static final DIRECTION_BOTH:I = 0x3

.field public static final DIRECTION_ENTER:I = 0x1

.field public static final DIRECTION_EXIT:I = 0x2

.field public static final ONDEMAND_LOCATION:Ljava/lang/String; = "OnDemandLocation"

.field public static final SERVICE_BATTERY:I = 0x10

.field public static final SERVICE_GPS:I = 0x2

.field public static final SERVICE_LPP:I = 0x1

.field public static final SERVICE_NLP:I = 0x4

.field public static final SERVICE_WIFI:I = 0x8

.field private static final TAG:Ljava/lang/String; = "LPPManager"

.field public static final WIFI_FAILED:I = 0x20


# instance fields
.field private mListeners:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/lpp/LPPListener;",
            "Lcom/samsung/lpp/LPPManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersByCL:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/lpp/LPPListener;",
            "Lcom/samsung/lpp/LPPManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mListenersOnDemand:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/samsung/lpp/LPPListener;",
            "Lcom/samsung/lpp/LPPManager$ListenerTransport;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/samsung/lpp/ILPPManager;


# direct methods
.method public constructor <init>(Lcom/samsung/lpp/ILPPManager;)V
    .locals 1
    .parameter "service"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/lpp/LPPManager;->mListenersOnDemand:Ljava/util/HashMap;

    iput-object p1, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    return-void
.end method

.method private _modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/LPPListener;)V
    .locals 5
    .parameter "parameter"
    .parameter "action"
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-nez v1, :cond_0

    const-string v2, "LPPManager"

    const-string v4, "no available listener to modify"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v3

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :goto_0
    return-void

    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, p1, p2, v1}, Lcom/samsung/lpp/ILPPManager;->modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/ILPPListener;)V

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LPPManager"

    const-string v3, "modifyGeoFence: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _requestGeoFence(Ljava/util/ArrayList;Lcom/samsung/lpp/LPPListener;)V
    .locals 4
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/lpp/LPPGeoFenceParameter;",
            ">;",
            "Lcom/samsung/lpp/LPPListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/lpp/LPPGeoFenceParameter;>;"
    :try_start_0
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/lpp/LPPManager$ListenerTransport;-><init>(Lcom/samsung/lpp/LPPManager;Lcom/samsung/lpp/LPPListener;)V

    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/lpp/ILPPManager;->requestGeoFence(Ljava/util/List;Lcom/samsung/lpp/ILPPListener;)V

    monitor-exit v3

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LPPManager"

    const-string v3, "requestGeoFence: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private _requestGeoFenceByCL(Lcom/samsung/lpp/LPPListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    :try_start_0
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport;-><init>(Lcom/samsung/lpp/LPPManager;Lcom/samsung/lpp/LPPListener;)V

    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/ILPPManager;->requestGeoFenceByCL(Lcom/samsung/lpp/ILPPListener;)V

    monitor-exit v3

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :goto_0
    return-void

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LPPManager"

    const-string v3, "registerCurrentPlace: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getServiceStatus()I
    .locals 4

    .prologue
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v2, :cond_0

    const-string v2, "LPPManager"

    const-string v3, "LPP service is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1

    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2}, Lcom/samsung/lpp/ILPPManager;->getServiceStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LPPManager"

    const-string v3, "RemoteException in getServiceStatus"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/LPPListener;)V
    .locals 2
    .parameter "parameter"
    .parameter "action"
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v0, :cond_0

    const-string v0, "LPPManager"

    const-string v1, "LPP service is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/lpp/LPPManager;->_modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/LPPListener;)V

    goto :goto_0
.end method

.method public removeGeoFence(Lcom/samsung/lpp/LPPListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v2, :cond_1

    const-string v2, "LPPManager"

    const-string v3, "LPP service is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_2

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/ILPPManager;->removeGeoFence(Lcom/samsung/lpp/ILPPListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LPPManager"

    const-string v3, "removeGeoFence: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/ILPPManager;->removeGeoFenceByCL(Lcom/samsung/lpp/ILPPListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public requestGeoFence(Lcom/samsung/lpp/LPPListener;)V
    .locals 2
    .parameter "listener"

    .prologue
    iget-object v0, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v0, :cond_0

    const-string v0, "LPPManager"

    const-string v1, "LPP service is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/samsung/lpp/LPPManager;->_requestGeoFenceByCL(Lcom/samsung/lpp/LPPListener;)V

    goto :goto_0
.end method

.method public requestGeoFence(Ljava/util/ArrayList;Lcom/samsung/lpp/LPPListener;)V
    .locals 2
    .parameter
    .parameter "listener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/lpp/LPPGeoFenceParameter;",
            ">;",
            "Lcom/samsung/lpp/LPPListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/lpp/LPPGeoFenceParameter;>;"
    iget-object v0, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v0, :cond_0

    const-string v0, "LPPManager"

    const-string v1, "LPP service is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/lpp/LPPManager;->_requestGeoFence(Ljava/util/ArrayList;Lcom/samsung/lpp/LPPListener;)V

    goto :goto_0
.end method

.method public requestOnDemandLocation(Lcom/samsung/lpp/LPPListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v2, :cond_0

    const-string v2, "LPPManager"

    const-string v3, "LPP service is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    if-nez p1, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager;->mListenersOnDemand:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersOnDemand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-nez v1, :cond_2

    new-instance v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport;-><init>(Lcom/samsung/lpp/LPPManager;Lcom/samsung/lpp/LPPListener;)V

    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersOnDemand:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/ILPPManager;->requestOnDemandLocation(Lcom/samsung/lpp/ILPPListener;)V

    monitor-exit v3

    goto :goto_0

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LPPManager"

    const-string v3, "requestGeoFence: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
