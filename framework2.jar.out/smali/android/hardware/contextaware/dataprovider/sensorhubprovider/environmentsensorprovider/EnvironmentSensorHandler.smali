.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
.super Ljava/lang/Object;
.source "EnvironmentSensorHandler.java"


# static fields
.field private static final DEFAULT_INTERVAL:I = 0x3c

.field private static volatile instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;


# instance fields
.field private mInterval:I

.field private final mParserMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;",
            ">;"
        }
    .end annotation
.end field

.field private final mTemperatureHumiditySensorHandler:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const/16 v0, 0x3c

    iput v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    .line 36
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;-><init>()V

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mTemperatureHumiditySensorHandler:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;

    return-void
.end method

.method public static getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;
    .locals 2

    .prologue
    .line 50
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_1

    .line 51
    const-class v1, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    monitor-enter v1

    .line 52
    :try_start_0
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    if-nez v0, :cond_0

    .line 53
    new-instance v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    invoke-direct {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;-><init>()V

    sput-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    .line 55
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    :cond_1
    sget-object v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->instance:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private getParserKey(I)Ljava/lang/String;
    .locals 8
    .parameter "type"

    .prologue
    .line 187
    const/4 v5, 0x0

    .line 189
    .local v5, parserKey:Ljava/lang/String;
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->values()[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    move-result-object v0

    .local v0, arr$:[Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    array-length v3, v0

    .local v3, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v3, :cond_2

    aget-object v2, v0, v1

    .line 190
    .local v2, j:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    iget-byte v6, v2, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->value:B

    if-eq p1, v6, :cond_1

    .line 189
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 193
    :cond_1
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    .line 194
    .local v4, parser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    if-eqz v4, :cond_0

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 195
    invoke-virtual {v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    .line 200
    .end local v2           #j:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;
    .end local v4           #parser:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;
    :cond_2
    return-object v5
.end method


# virtual methods
.method protected clear()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mTemperatureHumiditySensorHandler:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;

    invoke-virtual {v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->clear()V

    .line 131
    return-void
.end method

.method public getInterval()I
    .locals 1

    .prologue
    .line 228
    iget v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    return v0
.end method

.method protected getTemperatureHumiditySensorHandler()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mTemperatureHumiditySensorHandler:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;

    return-object v0
.end method

.method public parse([BI)I
    .locals 8
    .parameter "packet"
    .parameter "next"

    .prologue
    const/4 v7, -0x1

    .line 143
    move v4, p2

    .line 145
    .local v4, tmpNext:I
    array-length v6, p1

    sub-int/2addr v6, v4

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_0

    move v5, v7

    .line 176
    :goto_0
    return v5

    .line 149
    :cond_0
    add-int/lit8 v5, v4, 0x1

    .end local v4           #tmpNext:I
    .local v5, tmpNext:I
    aget-byte v2, p1, v4

    .line 150
    .local v2, packageCount:I
    if-gtz v2, :cond_1

    .line 151
    const-string v6, "packageCount is zero."

    invoke-static {v6}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    move v4, v5

    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    move v5, v7

    .line 152
    goto :goto_0

    .line 155
    .end local v4           #tmpNext:I
    .restart local v5       #tmpNext:I
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 156
    array-length v6, p1

    sub-int/2addr v6, v5

    add-int/lit8 v6, v6, -0x1

    if-gez v6, :cond_2

    move v4, v5

    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    move v5, v7

    .line 157
    goto :goto_0

    .line 160
    .end local v4           #tmpNext:I
    .restart local v5       #tmpNext:I
    :cond_2
    add-int/lit8 v4, v5, 0x1

    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    aget-byte v3, p1, v5

    .line 162
    .local v3, sensorType:I
    invoke-direct {p0, v3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->getParserKey(I)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, key:Ljava/lang/String;
    if-nez v1, :cond_3

    move v5, v7

    .line 164
    goto :goto_0

    .line 167
    :cond_3
    sget-object v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->ENVIRONMENT_SENSORTYPE_TEMPERATURE_HUMIDITY:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProtocol$SUB_DATA_TYPE;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 169
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mTemperatureHumiditySensorHandler:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;

    invoke-virtual {v6, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->parse([BI)I

    move-result v4

    .line 155
    :goto_2
    add-int/lit8 v0, v0, 0x1

    move v5, v4

    .end local v4           #tmpNext:I
    .restart local v5       #tmpNext:I
    goto :goto_1

    .line 172
    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    :cond_4
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    invoke-interface {v6, p1, v4}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;->parse([BI)I

    move-result v4

    goto :goto_2

    .end local v1           #key:Ljava/lang/String;
    .end local v3           #sensorType:I
    .end local v4           #tmpNext:I
    .restart local v5       #tmpNext:I
    :cond_5
    move v4, v5

    .line 176
    .end local v5           #tmpNext:I
    .restart local v4       #tmpNext:I
    goto :goto_0
.end method

.method public registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V
    .locals 1
    .parameter "key"
    .parameter "parser"

    .prologue
    .line 69
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 73
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public registerParser(Ljava/lang/String;Ljava/lang/String;Landroid/hardware/contextaware/manager/ContextProvider;)V
    .locals 1
    .parameter "key"
    .parameter "additionalKey"
    .parameter "parser"

    .prologue
    .line 88
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_0

    .line 95
    .end local p3
    :goto_0
    return-void

    .restart local p3
    :cond_0
    move-object v0, p3

    .line 92
    check-cast v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;

    invoke-virtual {p0, p1, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/ISensorHubParser;)V

    .line 93
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mTemperatureHumiditySensorHandler:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;

    check-cast p3, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/ITemperatureHumiditySensorProvider;

    .end local p3
    invoke-virtual {v0, p2, p3}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->registerParser(Ljava/lang/String;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/ITemperatureHumiditySensorProvider;)V

    goto :goto_0
.end method

.method public setInterval(I)V
    .locals 0
    .parameter "interval"

    .prologue
    .line 219
    iput p1, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mInterval:I

    .line 220
    return-void
.end method

.method public unregisterParser(Ljava/lang/String;)V
    .locals 1
    .parameter "key"

    .prologue
    .line 104
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return-void

    .line 107
    :cond_1
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public unregisterParser(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "key"
    .parameter "additionalKey"

    .prologue
    .line 119
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mParserMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 122
    :cond_1
    invoke-virtual {p0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->unregisterParser(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/EnvironmentSensorHandler;->mTemperatureHumiditySensorHandler:Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;

    invoke-virtual {v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/environmentsensorprovider/TemperatureHumiditySensorHandler;->unregisterParser(Ljava/lang/String;)V

    goto :goto_0
.end method
