.class Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;
.super Ljava/lang/Object;
.source "TemperatureHumiditySensorHandler.java"


# instance fields
.field private mHumidityData:[D

.field private mHumidityInitData:D

.field private final mParserMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/ITemperatureHumiditySensorProvider;",
            ">;"
        }
    .end annotation
.end field

.field private mTemperatureData:[D

.field private mTemperatureInitData:D


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private notifySensorData()V
    .locals 2

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_1

    const-string v0, "mParserMap is null"

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_TEMPERATURE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_TEMPERATURE:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/ITemperatureHumiditySensorProvider;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/ITemperatureHumiditySensorProvider;->updataSensorData([D)V

    :cond_2
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_HUMIDITY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_HUMIDITY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/ITemperatureHumiditySensorProvider;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityData:[D

    invoke-interface {v0, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/ITemperatureHumiditySensorProvider;->updataSensorData([D)V

    goto :goto_0
.end method


# virtual methods
.method protected clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureInitData:D

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityInitData:D

    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    iput-object v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityData:[D

    return-void
.end method

.method protected parse([BI)I
    .locals 12
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v8, 0x0

    const/4 v4, -0x1

    const-wide/high16 v10, 0x4059

    move v2, p2

    .local v2, tmpNext:I
    array-length v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_0

    move v3, v4

    :goto_0
    return v3

    :cond_0
    add-int/lit8 v3, v2, 0x1

    .end local v2           #tmpNext:I
    .local v3, tmpNext:I
    aget-byte v5, p1, v2

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v3, 0x1

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    add-int v1, v5, v6

    .local v1, sensorCount:I
    if-gtz v1, :cond_2

    mul-int/lit8 v1, v1, -0x1

    array-length v5, p1

    sub-int/2addr v5, v2

    add-int/lit8 v5, v5, -0x4

    if-gez v5, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v3       #tmpNext:I
    aget-byte v5, p1, v2

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v3, 0x1

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-double v5, v5

    div-double/2addr v5, v10

    iput-wide v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureInitData:D

    add-int/lit8 v3, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v3       #tmpNext:I
    aget-byte v5, p1, v2

    shl-int/lit8 v5, v5, 0x8

    add-int/lit8 v2, v3, 0x1

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v6, p1, v3

    and-int/lit16 v6, v6, 0xff

    add-int/2addr v5, v6

    int-to-double v5, v5

    div-double/2addr v5, v10

    iput-wide v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityInitData:D

    :cond_2
    new-array v5, v1, [D

    iput-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    new-array v5, v1, [D

    iput-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityData:[D

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    iget-wide v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureInitData:D

    aput-wide v6, v5, v8

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityData:[D

    iget-wide v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityInitData:D

    aput-wide v6, v5, v8

    const/4 v0, 0x1

    .local v0, i:I
    move v3, v2

    .end local v2           #tmpNext:I
    .restart local v3       #tmpNext:I
    :goto_1
    if-ge v0, v1, :cond_5

    array-length v5, p1

    sub-int/2addr v5, v3

    add-int/lit8 v5, v5, -0x2

    if-gez v5, :cond_3

    move v2, v3

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    move v3, v4

    goto :goto_0

    .end local v2           #tmpNext:I
    .restart local v3       #tmpNext:I
    :cond_3
    const/4 v5, 0x1

    if-gt v0, v5, :cond_4

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    iget-wide v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureInitData:D

    add-int/lit8 v2, v3, 0x1

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v8, p1, v3

    int-to-double v8, v8

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v0

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityData:[D

    iget-wide v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityInitData:D

    add-int/lit8 v3, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v3       #tmpNext:I
    aget-byte v8, p1, v2

    int-to-double v8, v8

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v0

    move v2, v3

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    :goto_2
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    aget-wide v5, v5, v0

    iput-wide v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureInitData:D

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityData:[D

    aget-wide v5, v5, v0

    iput-wide v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityInitData:D

    add-int/lit8 v0, v0, 0x1

    move v3, v2

    .end local v2           #tmpNext:I
    .restart local v3       #tmpNext:I
    goto :goto_1

    :cond_4
    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    add-int/lit8 v7, v0, -0x1

    aget-wide v6, v6, v7

    add-int/lit8 v2, v3, 0x1

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    aget-byte v8, p1, v3

    int-to-double v8, v8

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v0

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mHumidityData:[D

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mTemperatureData:[D

    add-int/lit8 v7, v0, -0x1

    aget-wide v6, v6, v7

    add-int/lit8 v3, v2, 0x1

    .end local v2           #tmpNext:I
    .restart local v3       #tmpNext:I
    aget-byte v8, p1, v2

    int-to-double v8, v8

    div-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v5, v0

    move v2, v3

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    goto :goto_2

    .end local v2           #tmpNext:I
    .restart local v3       #tmpNext:I
    :cond_5
    invoke-direct {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->notifySensorData()V

    move v2, v3

    .end local v3           #tmpNext:I
    .restart local v2       #tmpNext:I
    goto/16 :goto_0
.end method

.method public registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/ITemperatureHumiditySensorProvider;)V
    .locals 1
    .parameter "key"
    .parameter "parser"

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterParser(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
