.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;
.source "BarometerSensorRunner.java"


# instance fields
.field private mBarometerData:[I

.field private mBarometerInitData:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 1
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    .line 47
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->clear()V

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    .line 88
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    .line 89
    return-void
.end method

.method public disable()V
    .locals 0

    .prologue
    .line 181
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 182
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->disable()V

    .line 183
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 169
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 170
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->enable()V

    .line 171
    return-void
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_RAW_BAROMETER_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Barometer"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacket()[B
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 68
    new-array v1, v6, [B

    .line 69
    .local v1, packet:[B
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->getInterval()I

    move-result v2

    invoke-static {v2, v5}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .line 71
    .local v0, data:[B
    aput-byte v6, v1, v3

    .line 72
    aget-byte v2, v0, v3

    aput-byte v2, v1, v4

    .line 73
    aget-byte v2, v0, v4

    aput-byte v2, v1, v5

    .line 75
    return-object v1
.end method

.method protected getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 158
    return-object p0
.end method

.method public parse([BI)I
    .locals 9
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v5, -0x1

    .line 111
    move v3, p2

    .line 113
    .local v3, tmpNext:I
    array-length v6, p1

    sub-int/2addr v6, v3

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    move v4, v5

    .line 148
    :goto_0
    return v4

    .line 117
    :cond_0
    add-int/lit8 v4, v3, 0x1

    .end local v3           #tmpNext:I
    .local v4, tmpNext:I
    aget-byte v2, p1, v3

    .line 118
    .local v2, sensorCount:I
    if-gtz v2, :cond_1

    .line 119
    mul-int/lit8 v2, v2, -0x1

    .line 121
    add-int/lit8 v3, v4, 0x1

    .end local v4           #tmpNext:I
    .restart local v3       #tmpNext:I
    aget-byte v6, p1, v4

    shl-int/lit8 v6, v6, 0x8

    add-int/lit8 v4, v3, 0x1

    .end local v3           #tmpNext:I
    .restart local v4       #tmpNext:I
    aget-byte v7, p1, v3

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    iput v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    :cond_1
    move v3, v4

    .line 124
    .end local v4           #tmpNext:I
    .restart local v3       #tmpNext:I
    new-array v6, v2, [I

    iput-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    .line 126
    const/4 v0, 0x0

    .local v0, i:I
    move v4, v3

    .end local v3           #tmpNext:I
    .restart local v4       #tmpNext:I
    :goto_1
    if-ge v0, v2, :cond_4

    .line 127
    array-length v6, p1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_2

    move v3, v4

    .end local v4           #tmpNext:I
    .restart local v3       #tmpNext:I
    move v4, v5

    .line 128
    goto :goto_0

    .line 131
    .end local v3           #tmpNext:I
    .restart local v4       #tmpNext:I
    :cond_2
    if-gtz v0, :cond_3

    .line 132
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    add-int/lit8 v3, v4, 0x1

    .end local v4           #tmpNext:I
    .restart local v3       #tmpNext:I
    aget-byte v8, p1, v4

    add-int/2addr v7, v8

    aput v7, v6, v0

    .line 139
    :goto_2
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    aget v6, v6, v0

    iput v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerInitData:I

    .line 126
    add-int/lit8 v0, v0, 0x1

    move v4, v3

    .end local v3           #tmpNext:I
    .restart local v4       #tmpNext:I
    goto :goto_1

    .line 135
    :cond_3
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    add-int/lit8 v8, v0, -0x1

    aget v7, v7, v8

    add-int/lit8 v3, v4, 0x1

    .end local v4           #tmpNext:I
    .restart local v3       #tmpNext:I
    aget-byte v8, p1, v4

    add-int/2addr v7, v8

    aput v7, v6, v0

    goto :goto_2

    .line 142
    .end local v3           #tmpNext:I
    .restart local v4       #tmpNext:I
    :cond_4
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .line 143
    .local v1, names:[Ljava/lang/String;
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->mBarometerData:[I

    invoke-virtual {v5, v6, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 145
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    invoke-super {p0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorProvider;->display(Landroid/os/Bundle;)V

    .line 146
    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->getContextType()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/builtin/BarometerSensorRunner;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    move v3, v4

    .line 148
    .end local v4           #tmpNext:I
    .restart local v3       #tmpNext:I
    goto :goto_0
.end method
