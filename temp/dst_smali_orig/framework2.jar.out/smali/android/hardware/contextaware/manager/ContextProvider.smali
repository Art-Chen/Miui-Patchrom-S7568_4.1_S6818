.class public abstract Landroid/hardware/contextaware/manager/ContextProvider;
.super Ljava/lang/Object;
.source "ContextProvider.java"

# interfaces
.implements Landroid/hardware/contextaware/manager/IContextObservable;
.implements Landroid/hardware/contextaware/manager/IApPowerObserver;
.implements Landroid/hardware/contextaware/manager/ICmdProcessFaultDetection;


# instance fields
.field private final mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

.field private mAPStatus:I

.field protected mContext:Landroid/content/Context;

.field private mFaultDetectionObserver:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IContextObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/IContextObserver;",
            ">;"
        }
    .end annotation
.end field

.field protected mLooper:Landroid/os/Looper;

.field private mPreparedCollection:I


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 1
    .parameter "context"
    .parameter "looper"
    .parameter "observable"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mLooper:Landroid/os/Looper;

    iput-object p3, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    return-void
.end method

.method public abstract disable()V
.end method

.method protected disableForRestore()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->disable()V

    return-void
.end method

.method public abstract enable()V
.end method

.method protected enableForRestore()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->enable()V

    return-void
.end method

.method public getAPStatus()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    return v0
.end method

.method public abstract getContextType()Ljava/lang/String;
.end method

.method public getContextTypeOfFaultDetection()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->CMD_PROCESS_FAULT_DETECTION:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getContextValueNames()[Ljava/lang/String;
.end method

.method public abstract getFaultDetectionResult()Landroid/os/Bundle;
.end method

.method protected getFaultDetectionResult(I)Landroid/os/Bundle;
    .locals 5
    .parameter "result"

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResultValueNames()[Ljava/lang/String;

    move-result-object v1

    .local v1, names:[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, bundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {}, Landroid/hardware/contextaware/ContextList;->getInstance()Landroid/hardware/contextaware/ContextList;

    move-result-object v3

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/hardware/contextaware/ContextList;->getServiceOrdinal(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getFaultDetectionResultValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Service"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CheckResult"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getInitContextBundle()Landroid/os/Bundle;
    .locals 1

    .prologue
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
.end method

.method protected getUsedServiceCount()I
    .locals 2

    .prologue
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedServiceCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getUsedSubCollectionCount()I
    .locals 2

    .prologue
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedSubCollectionCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected getUsedTotalCount()I
    .locals 2

    .prologue
    invoke-static {}, Landroid/hardware/contextaware/manager/ListenerListManager;->getInstance()Landroid/hardware/contextaware/manager/ListenerListManager;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/hardware/contextaware/manager/ListenerListManager;->getUsedTotalCount(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method protected abstract initialize()V
.end method

.method public initializePreparedSubCollection()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    return-void
.end method

.method protected isRunning()Z
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedTotalCount()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFaultDetectionListener(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "operation"
    .parameter "type"
    .parameter "context"

    .prologue
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IContextObserver;

    .local v1, observer:Landroid/hardware/contextaware/manager/IContextObserver;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2, p3}, Landroid/hardware/contextaware/manager/IContextObserver;->updateFaultDetectionResult(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v1           #observer:Landroid/hardware/contextaware/manager/IContextObserver;
    :cond_1
    return-void
.end method

.method protected notifyFaultDetectionResult(Ljava/lang/String;I)V
    .locals 2
    .parameter "operation"
    .parameter "firstCount"

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult()Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    if-nez v0, :cond_0

    const-string v1, "Fault Detection Result is null."

    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v1

    if-eq v1, p2, :cond_1

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->getFaultDetectionResult(I)Landroid/os/Bundle;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextTypeOfFaultDetection()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1, v0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyFaultDetectionListener(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected notifyInitContext()V
    .locals 2

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getInitContextBundle()Landroid/os/Bundle;

    move-result-object v0

    .local v0, contextBundle:Landroid/os/Bundle;
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getContextType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3
    .parameter "type"
    .parameter "context"

    .prologue
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/contextaware/manager/IContextObserver;

    .local v1, observer:Landroid/hardware/contextaware/manager/IContextObserver;
    if-eqz v1, :cond_0

    invoke-interface {v1, p1, p2}, Landroid/hardware/contextaware/manager/IContextObserver;->updateContext(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .end local v1           #observer:Landroid/hardware/contextaware/manager/IContextObserver;
    :cond_1
    return-void
.end method

.method public pause()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->disable()V

    return-void
.end method

.method protected processApPowerStatus()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    const/16 v1, -0x2e

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->updateApSleep()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    const/16 v1, -0x2f

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->updateApWakeup()V

    goto :goto_0

    :cond_2
    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    const/16 v1, -0x2d

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->updateApReset()V

    goto :goto_0
.end method

.method protected registerApPowerObserver()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;->registerListener(Landroid/hardware/contextaware/manager/IApPowerObserver;)V

    :cond_0
    return-void
.end method

.method public registerFaultDetectionListener(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public registerListener(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected reset()V
    .locals 0

    .prologue
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->enable()V

    return-void
.end method

.method public setAPStatus(I)V
    .locals 0
    .parameter "status"

    .prologue
    iput p1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    return-void
.end method

.method protected setProperty(ILjava/lang/Object;)Z
    .locals 1
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)Z"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/lang/Object;,"TE;"
    if-nez p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->setPropertyValue(ILjava/lang/Object;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected setPropertyValue(ILjava/lang/Object;)V
    .locals 0
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(ITE;)V"
        }
    .end annotation

    .prologue
    .local p2, value:Ljava/lang/Object;,"TE;"
    return-void
.end method

.method public start(Z)V
    .locals 2
    .parameter "restore"

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->initialize()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->clear()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->enableForRestore()V

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->registerApPowerObserver()V

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "START"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyFaultDetectionResult(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->enable()V

    goto :goto_0
.end method

.method public stop(Z)V
    .locals 2
    .parameter "restore"

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterApPowerObserver()V

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->disableForRestore()V

    :goto_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->clear()V

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->terminate()V

    :cond_0
    if-nez p1, :cond_1

    const-string v0, "STOP"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyFaultDetectionResult(Ljava/lang/String;I)V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->disable()V

    goto :goto_0
.end method

.method protected abstract terminate()V
.end method

.method protected unregisterApPowerObserver()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPPowerObservable:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;->unregisterListener(Landroid/hardware/contextaware/manager/IApPowerObserver;)V

    :cond_0
    return-void
.end method

.method public unregisterFaultDetectionListener(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mFaultDetectionObserver:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public unregisterListener(Landroid/hardware/contextaware/manager/IContextObserver;)V
    .locals 1
    .parameter "listener"

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public updateApPowerStatus(I)V
    .locals 2
    .parameter "status"

    .prologue
    iput p1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    if-lez v0, :cond_0

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->processApPowerStatus()V

    goto :goto_0
.end method

.method public updateApPowerStatusForPreparedCollection()V
    .locals 2

    .prologue
    iget v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedSubCollectionCount()I

    move-result v0

    iget v1, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mPreparedCollection:I

    if-le v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->processApPowerStatus()V

    goto :goto_0
.end method

.method protected updateApReset()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->reset()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    return-void
.end method

.method protected updateApSleep()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->pause()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    return-void
.end method

.method protected updateApWakeup()V
    .locals 1

    .prologue
    invoke-virtual {p0}, Landroid/hardware/contextaware/manager/ContextProvider;->resume()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/manager/ContextProvider;->mAPStatus:I

    return-void
.end method
