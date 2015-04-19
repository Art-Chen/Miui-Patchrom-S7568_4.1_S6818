.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "ActigraphRunner.java"


# static fields
.field public static final DEFAULT_EPOCH_LENGTH:D = 60.0

.field public static final DEFAULT_THRESHOLD:D = 142.0


# instance fields
.field private mEpochLength:D

.field private mThreshold_100:D


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 2
    .parameter "context"
    .parameter "observable"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    const-wide/high16 v0, 0x404e

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->mEpochLength:D

    const-wide v0, 0x4061c00000000000L

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->mThreshold_100:D

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .prologue
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->clear()V

    return-void
.end method

.method public disable()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->disable()V

    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->enable()V

    return-void
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_ACTIGRAPH:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "NumOfEpochs"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "Stages"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacket()[B
    .locals 4

    .prologue
    const/4 v1, 0x2

    new-array v0, v1, [B

    .local v0, packet:[B
    const/4 v1, 0x0

    iget-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->mEpochLength:D

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->mThreshold_100:D

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method protected getInitContextBundle()Landroid/os/Bundle;
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v2

    .local v2, names:[Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, contextBundle:Landroid/os/Bundle;
    new-array v0, v5, [B

    .local v0, arrByte:[B
    aget-object v3, v2, v4

    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    aget-object v3, v2, v5

    invoke-virtual {v1, v3, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    return-object v1
.end method

.method protected getInstLibType()B
    .locals 1

    .prologue
    const/4 v0, 0x2

    return v0
.end method

.method protected getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method public parse([BI)I
    .locals 13
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/4 v8, -0x1

    move v6, p2

    .local v6, tmpNext:I
    array-length v9, p1

    sub-int/2addr v9, v6

    add-int/lit8 v9, v9, -0x1

    if-gez v9, :cond_0

    move v7, v8

    :goto_0
    return v7

    :cond_0
    add-int/lit8 v7, v6, 0x1

    .end local v6           #tmpNext:I
    .local v7, tmpNext:I
    aget-byte v3, p1, v6

    .local v3, nNumOfData:I
    array-length v9, p1

    add-int v10, v7, v3

    sub-int/2addr v9, v10

    if-gez v9, :cond_1

    move v6, v7

    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    move v7, v8

    goto :goto_0

    .end local v6           #tmpNext:I
    .restart local v7       #tmpNext:I
    :cond_1
    const-string v5, ""

    .local v5, strDisp:Ljava/lang/String;
    new-array v0, v3, [B

    .local v0, arrStages:[B
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    if-ge v2, v3, :cond_2

    add-int/lit8 v6, v7, 0x1

    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    aget-byte v8, p1, v7

    aput-byte v8, v0, v2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-byte v9, v0, v2

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    add-int/lit8 v2, v2, 0x1

    move v7, v6

    .end local v6           #tmpNext:I
    .restart local v7       #tmpNext:I
    goto :goto_1

    :cond_2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .local v1, dispData:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v4

    .local v4, names:[Ljava/lang/String;
    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    aget-object v9, v4, v11

    invoke-virtual {v8, v9, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    aget-object v8, v4, v11

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v8, v9}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    aget-object v9, v4, v12

    invoke-virtual {v8, v9, v0}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    aget-object v8, v4, v12

    invoke-virtual {v1, v8, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->display(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->getContextType()Ljava/lang/String;

    move-result-object v8

    iget-object v9, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v8, v9}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    move v6, v7

    .end local v7           #tmpNext:I
    .restart local v6       #tmpNext:I
    goto :goto_0
.end method

.method protected setPropertyValue(ILjava/lang/Object;)V
    .locals 3
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
    const/16 v0, 0xe

    if-ne p1, v0, :cond_1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->mEpochLength:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (Epoch Length) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->mEpochLength:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_1
    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->mThreshold_100:D

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (Threshold) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ActigraphRunner;->mThreshold_100:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
