.class public abstract Landroid/hardware/contextaware/aggregator/Aggregator;
.super Landroid/hardware/contextaware/manager/ContextProvider;
.source "Aggregator.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextObserver;


# instance fields
.field private mAggregatorFaultDetectionResult:Z

.field private final mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 0
    .parameter "context"
    .parameter "looper"
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/Looper;",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 58
    .local p3, collectionList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    invoke-direct {p0, p1, p2, p4}, Landroid/hardware/contextaware/manager/ContextProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    .line 59
    iput-object p3, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 60
    return-void
.end method

.method private registerListener()V
    .locals 3

    .prologue
    .line 165
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 167
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 168
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextProvider;->registerListener(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 169
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 170
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextProvider;->registerFaultDetectionListener(Landroid/hardware/contextaware/manager/IContextObserver;)V

    goto :goto_0

    .line 174
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method

.method private unregisterListener()V
    .locals 3

    .prologue
    .line 181
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 183
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterListener(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 185
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v2

    if-gtz v2, :cond_0

    .line 186
    invoke-virtual {v1, p0}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterFaultDetectionListener(Landroid/hardware/contextaware/manager/IContextObserver;)V

    goto :goto_0

    .line 190
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    .line 148
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 158
    :cond_0
    return-void

    .line 152
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 153
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 154
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_2

    .line 155
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->clear()V

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    .line 253
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 263
    :cond_0
    return-void

    .line 257
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 258
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 259
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_2

    .line 260
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->disable()V

    goto :goto_0
.end method

.method public enable()V
    .locals 3

    .prologue
    .line 232
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 243
    :cond_0
    return-void

    .line 236
    :cond_1
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 237
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 238
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_2

    .line 239
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 240
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->enable()V

    goto :goto_0
.end method

.method public getFaultDetectionResult()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 347
    const/4 v0, 0x0

    .line 349
    .local v0, bundle:Landroid/os/Bundle;
    iget-boolean v1, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    if-eqz v1, :cond_0

    .line 350
    const/4 v1, 0x0

    invoke-super {p0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    .line 357
    :goto_0
    return-object v0

    .line 353
    :cond_0
    const/4 v1, 0x1

    invoke-super {p0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method

.method protected getSubCollectionObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 4
    .parameter "collectionName"

    .prologue
    .line 302
    const/4 v2, 0x0

    .line 304
    .local v2, subCollectionObj:Landroid/hardware/contextaware/manager/ContextProvider;
    iget-object v3, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 305
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 306
    .local v1, obj:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 309
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 310
    move-object v2, v1

    .line 315
    .end local v1           #obj:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-object v2
.end method

.method protected initialize()V
    .locals 0

    .prologue
    .line 81
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->initializeAggregator()V

    .line 82
    return-void
.end method

.method protected initializeAggregator()V
    .locals 0

    .prologue
    .line 66
    return-void
.end method

.method protected notifyApStatus()V
    .locals 4

    .prologue
    .line 280
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 281
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 282
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 285
    instance-of v2, v1, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;

    if-eqz v2, :cond_1

    move-object v2, v1

    .line 286
    check-cast v2, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;

    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getAPStatus()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/hardware/contextaware/dataprovider/androidprovider/AndroidProvider;->updateAPStatus(I)V

    .line 288
    :cond_1
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->updateApPowerStatusForPreparedCollection()V

    goto :goto_0

    .line 290
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_2
    const/4 v2, 0x0

    invoke-super {p0, v2}, Landroid/hardware/contextaware/manager/ContextProvider;->setAPStatus(I)V

    .line 291
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 200
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 201
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 202
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 203
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->pause()V

    goto :goto_0

    .line 206
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 216
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 217
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 218
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/ContextProvider;->resume()V

    goto :goto_0

    .line 222
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    return-void
.end method

.method public start(Z)V
    .locals 3
    .parameter "restore"

    .prologue
    .line 103
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 104
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->registerListener()V

    .line 106
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 109
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Z)V

    goto :goto_0

    .line 115
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    invoke-super {p0, p1}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Z)V

    .line 116
    return-void
.end method

.method public stop(Z)V
    .locals 3
    .parameter "restore"

    .prologue
    .line 126
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 128
    invoke-super {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v2

    if-nez v2, :cond_1

    .line 129
    iget-object v2, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mSubCollectors:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 130
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/ContextProvider;

    .line 131
    .local v1, next:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v1, :cond_0

    .line 132
    invoke-virtual {v1, p1}, Landroid/hardware/contextaware/manager/ContextProvider;->stop(Z)V

    goto :goto_0

    .line 137
    .end local v0           #i:Ljava/util/Iterator;
    .end local v1           #next:Landroid/hardware/contextaware/manager/ContextProvider;
    :cond_1
    invoke-super {p0, p1}, Landroid/hardware/contextaware/manager/ContextProvider;->stop(Z)V

    .line 138
    return-void
.end method

.method protected terminate()V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->unregisterListener()V

    .line 92
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->terminateAggregator()V

    .line 93
    return-void
.end method

.method protected terminateAggregator()V
    .locals 0

    .prologue
    .line 72
    return-void
.end method

.method protected updateApSleep()V
    .locals 0

    .prologue
    .line 325
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 326
    return-void
.end method

.method protected updateApWakeup()V
    .locals 0

    .prologue
    .line 335
    invoke-virtual {p0}, Landroid/hardware/contextaware/aggregator/Aggregator;->notifyApStatus()V

    .line 336
    return-void
.end method

.method public abstract updateContext(Ljava/lang/String;Landroid/os/Bundle;)V
.end method

.method public updateFaultDetectionResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .parameter "operation"
    .parameter "type"
    .parameter "context"

    .prologue
    .line 370
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 381
    :goto_0
    return-void

    .line 374
    :cond_0
    const-string v0, "CheckResult"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const-string v0, "CheckResult"

    invoke-virtual {p3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    .line 376
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/hardware/contextaware/aggregator/Aggregator;->mAggregatorFaultDetectionResult:Z

    .line 377
    const-string v0, "Result of aggregator subCollection is failed."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0

    .line 379
    :cond_2
    const-string v0, "Result of aggregator subCollection is successed."

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->debug(Ljava/lang/String;)V

    goto :goto_0
.end method
