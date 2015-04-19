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
    .line 187
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    .line 70
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    .line 74
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/lpp/LPPManager;->mListenersOnDemand:Ljava/util/HashMap;

    .line 188
    iput-object p1, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    .line 189
    return-void
.end method

.method private _modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/LPPListener;)V
    .locals 5
    .parameter "parameter"
    .parameter "action"
    .parameter "listener"

    .prologue
    .line 294
    :try_start_0
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 295
    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .line 296
    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-nez v1, :cond_0

    .line 297
    const-string v2, "LPPManager"

    const-string v4, "no available listener to modify"

    invoke-static {v2, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    monitor-exit v3

    .line 305
    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :goto_0
    return-void

    .line 300
    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, p1, p2, v1}, Lcom/samsung/lpp/ILPPManager;->modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/ILPPListener;)V

    .line 301
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

    .line 302
    :catch_0
    move-exception v0

    .line 303
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
    .line 219
    .local p1, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/lpp/LPPGeoFenceParameter;>;"
    :try_start_0
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .line 221
    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-nez v1, :cond_0

    .line 222
    new-instance v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    invoke-direct {v1, p0, p2}, Lcom/samsung/lpp/LPPManager$ListenerTransport;-><init>(Lcom/samsung/lpp/LPPManager;Lcom/samsung/lpp/LPPListener;)V

    .line 224
    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, p1, v1}, Lcom/samsung/lpp/ILPPManager;->requestGeoFence(Ljava/util/List;Lcom/samsung/lpp/ILPPListener;)V

    .line 226
    monitor-exit v3

    .line 230
    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :goto_0
    return-void

    .line 226
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 227
    :catch_0
    move-exception v0

    .line 228
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
    .line 259
    :try_start_0
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .line 261
    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-nez v1, :cond_0

    .line 262
    new-instance v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport;-><init>(Lcom/samsung/lpp/LPPManager;Lcom/samsung/lpp/LPPListener;)V

    .line 264
    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/ILPPManager;->requestGeoFenceByCL(Lcom/samsung/lpp/ILPPListener;)V

    .line 266
    monitor-exit v3

    .line 270
    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :goto_0
    return-void

    .line 266
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    :catch_0
    move-exception v0

    .line 268
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

    .line 370
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v2, :cond_0

    .line 371
    const-string v2, "LPPManager"

    const-string v3, "LPP service is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    :goto_0
    return v1

    .line 375
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2}, Lcom/samsung/lpp/ILPPManager;->getServiceStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 376
    :catch_0
    move-exception v0

    .line 377
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
    .line 282
    iget-object v0, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v0, :cond_0

    .line 283
    const-string v0, "LPPManager"

    const-string v1, "LPP service is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_0
    return-void

    .line 286
    :cond_0
    if-nez p3, :cond_1

    .line 287
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 289
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/lpp/LPPManager;->_modifyGeoFence(Lcom/samsung/lpp/LPPGeoFenceParameter;ILcom/samsung/lpp/LPPListener;)V

    goto :goto_0
.end method

.method public removeGeoFence(Lcom/samsung/lpp/LPPListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 315
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v2, :cond_1

    .line 316
    const-string v2, "LPPManager"

    const-string v3, "LPP service is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    if-nez p1, :cond_2

    .line 320
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 323
    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListeners:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .line 324
    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-eqz v1, :cond_3

    .line 325
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/ILPPManager;->removeGeoFence(Lcom/samsung/lpp/ILPPListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 332
    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :catch_0
    move-exception v0

    .line 333
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LPPManager"

    const-string v3, "removeGeoFence: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 327
    .end local v0           #ex:Landroid/os/RemoteException;
    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_3
    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersByCL:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .line 328
    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-eqz v1, :cond_0

    .line 329
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
    .line 247
    iget-object v0, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v0, :cond_0

    .line 248
    const-string v0, "LPPManager"

    const-string v1, "LPP service is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :goto_0
    return-void

    .line 251
    :cond_0
    if-nez p1, :cond_1

    .line 252
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
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
    .line 207
    .local p1, parameters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/samsung/lpp/LPPGeoFenceParameter;>;"
    iget-object v0, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v0, :cond_0

    .line 208
    const-string v0, "LPPManager"

    const-string v1, "LPP service is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :goto_0
    return-void

    .line 211
    :cond_0
    if-nez p2, :cond_1

    .line 212
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "listener==null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 214
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/samsung/lpp/LPPManager;->_requestGeoFence(Ljava/util/ArrayList;Lcom/samsung/lpp/LPPListener;)V

    goto :goto_0
.end method

.method public requestOnDemandLocation(Lcom/samsung/lpp/LPPListener;)V
    .locals 4
    .parameter "listener"

    .prologue
    .line 345
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    if-nez v2, :cond_0

    .line 346
    const-string v2, "LPPManager"

    const-string v3, "LPP service is not supported"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    :goto_0
    return-void

    .line 349
    :cond_0
    if-nez p1, :cond_1

    .line 350
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "listener==null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 353
    :cond_1
    :try_start_0
    iget-object v3, p0, Lcom/samsung/lpp/LPPManager;->mListenersOnDemand:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :try_start_1
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersOnDemand:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .line 355
    .local v1, transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    if-nez v1, :cond_2

    .line 356
    new-instance v1, Lcom/samsung/lpp/LPPManager$ListenerTransport;

    .end local v1           #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    invoke-direct {v1, p0, p1}, Lcom/samsung/lpp/LPPManager$ListenerTransport;-><init>(Lcom/samsung/lpp/LPPManager;Lcom/samsung/lpp/LPPListener;)V

    .line 358
    .restart local v1       #transport:Lcom/samsung/lpp/LPPManager$ListenerTransport;
    :cond_2
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mListenersOnDemand:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    iget-object v2, p0, Lcom/samsung/lpp/LPPManager;->mService:Lcom/samsung/lpp/ILPPManager;

    invoke-interface {v2, v1}, Lcom/samsung/lpp/ILPPManager;->requestOnDemandLocation(Lcom/samsung/lpp/ILPPListener;)V

    .line 360
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

    .line 361
    :catch_0
    move-exception v0

    .line 362
    .local v0, ex:Landroid/os/RemoteException;
    const-string v2, "LPPManager"

    const-string v3, "requestGeoFence: DeadObjectException"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
