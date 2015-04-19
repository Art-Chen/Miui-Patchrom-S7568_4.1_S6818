.class public Landroid/hardware/contextaware/aggregator/builtin/TemperatureAggregator;
.super Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;
.source "TemperatureAggregator.java"


# instance fields
.field private mData:[D


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 1
    .parameter
    .parameter "observable"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Landroid/hardware/contextaware/manager/ContextProvider;",
            ">;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, collectionList:Ljava/util/concurrent/CopyOnWriteArrayList;,"Ljava/util/concurrent/CopyOnWriteArrayList<Landroid/hardware/contextaware/manager/ContextProvider;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p1, p2}, Landroid/hardware/contextaware/aggregator/EnvironmentSensorAggregator;-><init>(Landroid/content/Context;Landroid/os/Looper;Ljava/util/concurrent/CopyOnWriteArrayList;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    return-void
.end method


# virtual methods
.method public checkCompensationData([D)Z
    .locals 1
    .parameter "compensationData"

    .prologue
    const/4 v0, 0x1

    return v0
.end method

.method public compensateForRawData([D)[D
    .locals 0
    .parameter "rawSensorData"

    .prologue
    return-object p1
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->AGGREGATOR_TEMPERATURE:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Temperature"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method public getRawSensorData(Landroid/os/Bundle;)[D
    .locals 2
    .parameter "context"

    .prologue
    const-string v1, "Temperature"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    array-length v0, v1

    .local v0, num:I
    new-array v1, v0, [D

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureAggregator;->mData:[D

    const-string v1, "Temperature"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getDoubleArray(Ljava/lang/String;)[D

    move-result-object v1

    iput-object v1, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureAggregator;->mData:[D

    iget-object v1, p0, Landroid/hardware/contextaware/aggregator/builtin/TemperatureAggregator;->mData:[D

    return-object v1
.end method
