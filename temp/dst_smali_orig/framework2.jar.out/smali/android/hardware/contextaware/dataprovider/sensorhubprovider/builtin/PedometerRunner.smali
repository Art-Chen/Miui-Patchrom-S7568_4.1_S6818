.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "PedometerRunner.java"


# instance fields
.field private accumulativeCalorie:D

.field private accumulativeDistance:D

.field private accumulativeRunStepCount:J

.field private accumulativeTotalStepCount:J

.field private accumulativeUpDownStepCount:J

.field private accumulativeWalkStepCount:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 1
    .parameter "context"
    .parameter "observable"

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const-wide/16 v0, 0x0

    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->clear()V

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    iput-wide v0, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    iput-wide v2, p0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

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
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_PEDOMETER:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "WalkStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "RunStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "UpDownStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "TotalStepCount"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "SlopeAngle"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "Distance"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "StepStatus"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "Calorie"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacket()[B
    .locals 4

    .prologue
    const/4 v1, 0x3

    new-array v0, v1, [B

    .local v0, packet:[B
    const/4 v1, 0x0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v2

    double-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    return-object v0
.end method

.method protected getInitContextBundle()Landroid/os/Bundle;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const-wide/16 v4, 0x0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v1

    .local v1, names:[Ljava/lang/String;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .local v0, contextBundle:Landroid/os/Bundle;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x3

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v2, 0x4

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v2, 0x5

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v2, 0x6

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v2, 0x7

    aget-object v2, v1, v2

    const/4 v3, -0x1

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/16 v2, 0x8

    aget-object v2, v1, v2

    invoke-virtual {v0, v2, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    return-object v0
.end method

.method protected getInstLibType()B
    .locals 1

    .prologue
    const/4 v0, 0x3

    return v0
.end method

.method protected getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    return-object p0
.end method

.method public parse([BI)I
    .locals 17
    .parameter "packet"
    .parameter "next"

    .prologue
    move/from16 v9, p2

    .local v9, tmpNext:I
    move-object/from16 v0, p1

    array-length v11, v0

    sub-int/2addr v11, v9

    add-int/lit8 v11, v11, -0x1

    if-gez v11, :cond_0

    const/4 v11, -0x1

    :goto_0
    return v11

    :cond_0
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .local v2, dispData:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v3

    .local v3, names:[Ljava/lang/String;
    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .local v10, tmpNext:I
    aget-byte v1, p1, v9

    .local v1, data:I
    and-int/lit16 v11, v1, 0x80

    if-nez v11, :cond_3

    move-object/from16 v0, p1

    array-length v11, v0

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x9

    if-gez v11, :cond_1

    const-string v11, "packet is lost."

    invoke-static {v11}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v9, -0x1

    move v11, v9

    move v9, v10

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    goto :goto_0

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    :cond_1
    and-int/lit8 v1, v1, 0x7f

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    int-to-long v13, v1

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x0

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v11, 0x0

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v1, p1, v10

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    int-to-long v13, v1

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x1

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v11, 0x1

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v1, p1, v9

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    int-to-long v13, v1

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x2

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v11, 0x2

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x3

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v11, 0x3

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v11, p1, v10

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    add-int v1, v11, v12

    int-to-double v11, v1

    const-wide/high16 v13, 0x4059

    div-double v4, v11, v13

    .local v4, slopeAngle:D
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x4

    aget-object v12, v3, v12

    invoke-virtual {v11, v12, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v11, 0x4

    aget-object v11, v3, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v11, p1, v10

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    add-int v1, v11, v12

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    int-to-double v13, v1

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x5

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v11, 0x5

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v1, p1, v10

    if-gez v1, :cond_2

    add-int/lit16 v11, v1, 0xff

    add-int/lit8 v1, v11, 0x1

    :cond_2
    int-to-double v11, v1

    const-wide/high16 v13, 0x4024

    div-double v6, v11, v13

    .local v6, speed:D
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x6

    aget-object v12, v3, v12

    invoke-virtual {v11, v12, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v11, 0x6

    aget-object v11, v3, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v1, p1, v9

    move v8, v1

    .local v8, stepStatus:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x7

    aget-object v12, v3, v12

    invoke-virtual {v11, v12, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v11, 0x7

    aget-object v11, v3, v11

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v1, p1, v10

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    int-to-double v13, v1

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/16 v12, 0x8

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v11, 0x8

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->display(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->getContextType()Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11, v12}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    move v11, v9

    goto/16 :goto_0

    .end local v4           #slopeAngle:D
    .end local v6           #speed:D
    .end local v8           #stepStatus:I
    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    :cond_3
    move-object/from16 v0, p1

    array-length v11, v0

    sub-int/2addr v11, v10

    add-int/lit8 v11, v11, -0x12

    if-gez v11, :cond_4

    const/4 v9, -0x1

    move v11, v9

    move v9, v10

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    goto/16 :goto_0

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    :cond_4
    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v11, p1, v10

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v12, p1, v9

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v11, v12

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v12, p1, v10

    and-int/lit16 v12, v12, 0xff

    add-int v1, v11, v12

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    int-to-long v13, v1

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x0

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v11, 0x0

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v11, p1, v9

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v12, p1, v10

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v11, v12

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    add-int v1, v11, v12

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    int-to-long v13, v1

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x1

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v11, 0x1

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v11, p1, v10

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v12, p1, v9

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v11, v12

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v12, p1, v10

    and-int/lit16 v12, v12, 0xff

    add-int v1, v11, v12

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    int-to-long v13, v1

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x2

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v11, 0x2

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeWalkStepCount:J

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeRunStepCount:J

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeUpDownStepCount:J

    add-long/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x3

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const/4 v11, 0x3

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeTotalStepCount:J

    invoke-static {v12, v13}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v11, p1, v9

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v12, p1, v10

    and-int/lit16 v12, v12, 0xff

    add-int v1, v11, v12

    int-to-double v11, v1

    const-wide/high16 v13, 0x4059

    div-double v4, v11, v13

    .restart local v4       #slopeAngle:D
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x4

    aget-object v12, v3, v12

    invoke-virtual {v11, v12, v4, v5}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v11, 0x4

    aget-object v11, v3, v11

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v11, p1, v9

    shl-int/lit8 v11, v11, 0x10

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v12, p1, v10

    shl-int/lit8 v12, v12, 0x8

    add-int/2addr v11, v12

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    add-int v1, v11, v12

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    int-to-double v13, v1

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x5

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v11, 0x5

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeDistance:D

    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v1, p1, v10

    if-gez v1, :cond_5

    add-int/lit16 v11, v1, 0xff

    add-int/lit8 v1, v11, 0x1

    :cond_5
    int-to-double v11, v1

    const-wide/high16 v13, 0x4024

    div-double v6, v11, v13

    .restart local v6       #speed:D
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x6

    aget-object v12, v3, v12

    invoke-virtual {v11, v12, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v11, 0x6

    aget-object v11, v3, v11

    invoke-static {v6, v7}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v1, p1, v9

    move v8, v1

    .restart local v8       #stepStatus:I
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/4 v12, 0x7

    aget-object v12, v3, v12

    invoke-virtual {v11, v12, v8}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v11, 0x7

    aget-object v11, v3, v11

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v9, v10, 0x1

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    aget-byte v11, p1, v10

    shl-int/lit8 v11, v11, 0x8

    add-int/lit8 v10, v9, 0x1

    .end local v9           #tmpNext:I
    .restart local v10       #tmpNext:I
    aget-byte v12, p1, v9

    and-int/lit16 v12, v12, 0xff

    add-int v1, v11, v12

    move-object/from16 v0, p0

    iget-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    int-to-double v13, v1

    const-wide/high16 v15, 0x4059

    div-double/2addr v13, v15

    add-double/2addr v11, v13

    move-object/from16 v0, p0

    iput-wide v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/16 v12, 0x8

    aget-object v12, v3, v12

    move-object/from16 v0, p0

    iget-wide v13, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-virtual {v11, v12, v13, v14}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/16 v11, 0x8

    aget-object v11, v3, v11

    move-object/from16 v0, p0

    iget-wide v12, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/PedometerRunner;->accumulativeCalorie:D

    invoke-static {v12, v13}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v11, v12}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move v9, v10

    .end local v10           #tmpNext:I
    .restart local v9       #tmpNext:I
    goto/16 :goto_1
.end method

.method protected setPropertyValue(ILjava/lang/Object;)V
    .locals 4
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
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserHeight(D)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Height) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_1
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserWeight(D)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Weight) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0

    .restart local p2       #value:Ljava/lang/Object;,"TE;"
    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    check-cast p2, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;

    .end local p2           #value:Ljava/lang/Object;,"TE;"
    invoke-virtual {p2}, Landroid/hardware/contextaware/manager/ContextAwarePropertyBundle;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/hardware/contextaware/manager/CaUserInfo;->setUserGender(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setProperty (User Gender) = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    goto :goto_0
.end method
