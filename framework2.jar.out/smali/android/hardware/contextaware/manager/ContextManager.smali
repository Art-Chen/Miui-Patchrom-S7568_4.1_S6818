.class Landroid/hardware/contextaware/manager/ContextManager;
.super Ljava/lang/Object;
.source "ContextManager.java"


# instance fields
.field private final mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 5
    .parameter "context"
    .parameter "looper"

    .prologue
    .line 46
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v1, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;

    invoke-direct {v1, p1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;-><init>(Landroid/content/Context;)V

    .line 49
    .local v1, sensorHubParserConcreteCreator:Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 50
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Landroid/hardware/contextaware/creator/builtin/AndroidRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    move-result-object v4

    invoke-direct {v3, p1, p2, v4}, Landroid/hardware/contextaware/creator/builtin/SensorHubRunnerConcreteCreator;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 56
    .local v0, creator:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/creator/ContextProviderCreator;>;"
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v2, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v3, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;

    invoke-virtual {v1}, Landroid/hardware/contextaware/creator/builtin/SensorHubParserConcreteCreator;->getPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    move-result-object v4

    invoke-direct {v3, v0, p1, p2, v4}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    invoke-virtual {v2, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->initializeUtil(Landroid/content/Context;)V

    .line 62
    return-void
.end method

.method private initializeUtil(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 184
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaPowerManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/utilbundle/CaPowerManager;->initializePowerManager(Landroid/content/Context;)V

    .line 185
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAlarmManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/utilbundle/CaAlarmManager;->initializeAlarmManager(Landroid/content/Context;)V

    .line 186
    return-void
.end method


# virtual methods
.method protected getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 4
    .parameter "service"

    .prologue
    .line 163
    const/4 v2, 0x0

    .line 165
    .local v2, obj:Landroid/hardware/contextaware/manager/ContextProvider;
    iget-object v3, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 166
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/creator/ContextProviderCreator;

    .line 168
    .local v0, creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->existContextProvider(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 169
    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/creator/ContextProviderCreator;->create(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v2

    .line 174
    .end local v0           #creator:Landroid/hardware/contextaware/creator/ContextProviderCreator;
    :cond_1
    return-object v2
.end method

.method protected getCreator()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/creator/ContextProviderCreator;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    iget-object v0, p0, Landroid/hardware/contextaware/manager/ContextManager;->mCreator:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public notifyInitContext(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 149
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->notifyInitContext()V

    .line 152
    :cond_0
    return-void
.end method

.method protected reset(Ljava/lang/String;)V
    .locals 1
    .parameter "service"

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 136
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_0

    .line 137
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->clear()V

    .line 139
    :cond_0
    return-void
.end method

.method protected setProperty(Ljava/lang/String;ILjava/lang/Object;)V
    .locals 1
    .parameter "service"
    .parameter "property"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "ITE;)V"
        }
    .end annotation

    .prologue
    .line 122
    .local p3, value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 123
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {v0, p2, p3}, Landroid/hardware/contextaware/manager/ContextProvider;->setProperty(ILjava/lang/Object;)Z

    .line 126
    :cond_0
    return-void
.end method

.method protected start(Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V
    .locals 2
    .parameter "service"
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 76
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 77
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_1

    .line 78
    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->registerListener(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 79
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 80
    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->registerFaultDetectionListener(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 82
    :cond_0
    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/manager/ContextProvider;->start(Z)V

    .line 84
    :cond_1
    return-void
.end method

.method protected stop(Ljava/lang/String;Landroid/hardware/contextaware/manager/IContextObserver;Z)V
    .locals 2
    .parameter "service"
    .parameter "listener"
    .parameter "restore"

    .prologue
    .line 98
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/manager/ContextManager;->getContextProviderObj(Ljava/lang/String;)Landroid/hardware/contextaware/manager/ContextProvider;

    move-result-object v0

    .line 99
    .local v0, provider:Landroid/hardware/contextaware/manager/ContextProvider;
    if-eqz v0, :cond_0

    .line 100
    invoke-virtual {v0, p3}, Landroid/hardware/contextaware/manager/ContextProvider;->stop(Z)V

    .line 101
    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterListener(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 102
    invoke-virtual {v0}, Landroid/hardware/contextaware/manager/ContextProvider;->getUsedServiceCount()I

    move-result v1

    if-gtz v1, :cond_0

    .line 103
    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/manager/ContextProvider;->unregisterFaultDetectionListener(Landroid/hardware/contextaware/manager/IContextObserver;)V

    .line 106
    :cond_0
    return-void
.end method
