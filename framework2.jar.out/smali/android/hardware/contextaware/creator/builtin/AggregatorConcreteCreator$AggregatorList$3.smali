.class final enum Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;
.super Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
.source "AggregatorConcreteCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1
    .parameter
    .parameter
    .parameter "x0"

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$1;)V

    return-void
.end method


# virtual methods
.method public getObject()Landroid/hardware/contextaware/manager/ContextProvider;
    .locals 5

    .prologue
    .line 109
    #calls: Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->access$900()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    #calls: Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->access$1100()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;->name()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/hardware/contextaware/aggregator/builtin/TemperatureAggregator;

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;->makeListForContextCreation()Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    #calls: Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->getAPPowerObservable()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->access$1000()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/hardware/contextaware/aggregator/builtin/TemperatureAggregator;-><init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    #calls: Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->getContextProviderMap()Ljava/util/concurrent/ConcurrentHashMap;
    invoke-static {}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator;->access$1200()Ljava/util/concurrent/ConcurrentHashMap;

    move-result-object v0

    invoke-virtual {p0}, Landroid/hardware/contextaware/creator/builtin/AggregatorConcreteCreator$AggregatorList$3;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/manager/ContextProvider;

    return-object v0
.end method

.method public getSubCollectionList()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 102
    .local v0, list:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Ljava/lang/String;>;"
    sget-object v1, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_TEMPERATURE_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v1}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 104
    return-object v0
.end method
