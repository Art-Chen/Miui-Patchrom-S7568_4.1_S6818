.class public Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;
.super Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;
.source "ApdrRunner.java"


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

.method private checkPacket([BI)Z
    .locals 2
    .parameter "packet"
    .parameter "next"

    .prologue
    add-int/lit8 v0, p2, 0x7

    add-int/lit8 v0, v0, 0x1

    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
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
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->SENSORHUB_RUNNER_APDR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "Alert"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "DeltaTime"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Speed"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "Heading"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "Doe"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getDataPacket()[B
    .locals 11

    .prologue
    const/4 v6, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAkmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAkmManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/utilbundle/CaAkmManager;->loadOrientationInfo()Landroid/os/Bundle;

    move-result-object v5

    .local v5, oriInfo:Landroid/os/Bundle;
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Landroid/os/Bundle;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    const-string v7, "can\'t load the orientation information."

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-object v6

    :cond_2
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/CaAkmManager;->getInstance()Landroid/hardware/contextaware/utilbundle/CaAkmManager;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/utilbundle/CaAkmManager;->getOrientationValueNames()[Ljava/lang/String;

    move-result-object v2

    .local v2, names:[Ljava/lang/String;
    if-eqz v2, :cond_3

    array-length v7, v2

    const/4 v8, 0x6

    if-ge v7, v8, :cond_4

    :cond_3
    const-string v7, "can\'t get the orientation value names."

    invoke-static {v7}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    array-length v7, v2

    add-int/lit8 v7, v7, -0x1

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x5

    new-array v6, v7, [B

    .local v6, packet:[B
    const/4 v3, 0x0

    .local v3, next:I
    add-int/lit8 v4, v3, 0x1

    .end local v3           #next:I
    .local v4, next:I
    aput-byte v9, v6, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #next:I
    .restart local v3       #next:I
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserHeight()D

    move-result-wide v7

    double-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #next:I
    .restart local v4       #next:I
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserWeight()D

    move-result-wide v7

    double-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, v6, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #next:I
    .restart local v3       #next:I
    invoke-static {}, Landroid/hardware/contextaware/manager/CaUserInfo;->getInstance()Landroid/hardware/contextaware/manager/CaUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/hardware/contextaware/manager/CaUserInfo;->getUserGender()I

    move-result v7

    int-to-byte v7, v7

    aput-byte v7, v6, v4

    add-int/lit8 v4, v3, 0x1

    .end local v3           #next:I
    .restart local v4       #next:I
    aget-object v7, v2, v9

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7, v10}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v7

    aget-byte v7, v7, v9

    aput-byte v7, v6, v3

    const/4 v1, 0x1

    .local v1, i:I
    move v3, v4

    .end local v4           #next:I
    .restart local v3       #next:I
    :goto_1
    array-length v7, v2

    if-ge v1, v7, :cond_1

    aget-object v7, v2, v1

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/hardware/contextaware/utilbundle/CaConvertUtil;->intToByteArr(II)[B

    move-result-object v0

    .local v0, data:[B
    add-int/lit8 v4, v3, 0x1

    .end local v3           #next:I
    .restart local v4       #next:I
    aget-byte v7, v0, v9

    aput-byte v7, v6, v3

    add-int/lit8 v3, v4, 0x1

    .end local v4           #next:I
    .restart local v3       #next:I
    aget-byte v7, v0, v10

    aput-byte v7, v6, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method protected getInstLibType()B
    .locals 1

    .prologue
    const/4 v0, 0x1

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
    move/from16 v13, p2

    .local v13, tmpNext:I
    move-object/from16 v0, p1

    array-length v15, v0

    sub-int/2addr v15, v13

    add-int/lit8 v15, v15, -0x1

    if-gez v15, :cond_0

    const/4 v14, -0x1

    :goto_0
    return v14

    :cond_0
    add-int/lit8 v14, v13, 0x1

    .end local v13           #tmpNext:I
    .local v14, tmpNext:I
    aget-byte v2, p1, v13

    .local v2, apdrCount:I
    if-gtz v2, :cond_2

    move-object/from16 v0, p1

    array-length v15, v0

    sub-int/2addr v15, v14

    add-int/lit8 v15, v15, -0x1

    if-gez v15, :cond_1

    const-string v15, "packet is lost."

    invoke-static {v15}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->error(Ljava/lang/String;)V

    const/4 v15, -0x1

    move v13, v14

    .end local v14           #tmpNext:I
    .restart local v13       #tmpNext:I
    move v14, v15

    goto :goto_0

    .end local v13           #tmpNext:I
    .restart local v14       #tmpNext:I
    :cond_1
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super {v0, v1, v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->parse([BI)I

    move-result v15

    move v13, v14

    .end local v14           #tmpNext:I
    .restart local v13       #tmpNext:I
    move v14, v15

    goto :goto_0

    .end local v13           #tmpNext:I
    .restart local v14       #tmpNext:I
    :cond_2
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .local v5, dispData:Landroid/os/Bundle;
    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextValueNames()[Ljava/lang/String;

    move-result-object v10

    .local v10, names:[Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, i:I
    :goto_1
    if-ge v9, v2, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v14}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->checkPacket([BI)Z

    move-result v15

    if-nez v15, :cond_3

    add-int/lit8 v15, v2, -0x1

    if-lt v9, v15, :cond_3

    const/4 v15, -0x1

    move v13, v14

    .end local v14           #tmpNext:I
    .restart local v13       #tmpNext:I
    move v14, v15

    goto :goto_0

    .end local v13           #tmpNext:I
    .restart local v14       #tmpNext:I
    :cond_3
    add-int/lit8 v13, v14, 0x1

    .end local v14           #tmpNext:I
    .restart local v13       #tmpNext:I
    aget-byte v15, p1, v14

    shl-int/lit8 v15, v15, 0x8

    add-int/lit8 v14, v13, 0x1

    .end local v13           #tmpNext:I
    .restart local v14       #tmpNext:I
    aget-byte v16, p1, v13

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit16 v15, v15, 0x3e8

    int-to-double v3, v15

    .local v3, deltaTime:D
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/16 v16, 0x1

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v15, 0x1

    aget-object v15, v10, v15

    invoke-static {v3, v4}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v14, 0x1

    .end local v14           #tmpNext:I
    .restart local v13       #tmpNext:I
    aget-byte v15, p1, v14

    shl-int/lit8 v15, v15, 0x8

    add-int/lit8 v14, v13, 0x1

    .end local v13           #tmpNext:I
    .restart local v14       #tmpNext:I
    aget-byte v16, p1, v13

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v15, v15, 0x64

    int-to-double v11, v15

    .local v11, speed:D
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/16 v16, 0x2

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v11, v12}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v15, 0x2

    aget-object v15, v10, v15

    invoke-static {v11, v12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v14, 0x1

    .end local v14           #tmpNext:I
    .restart local v13       #tmpNext:I
    aget-byte v15, p1, v14

    shl-int/lit8 v15, v15, 0x8

    add-int/lit8 v14, v13, 0x1

    .end local v13           #tmpNext:I
    .restart local v14       #tmpNext:I
    aget-byte v16, p1, v13

    move/from16 v0, v16

    and-int/lit16 v0, v0, 0xff

    move/from16 v16, v0

    add-int v15, v15, v16

    div-int/lit8 v15, v15, 0x64

    int-to-double v7, v15

    .local v7, heading:D
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/16 v16, 0x3

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v7, v8}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const/4 v15, 0x3

    aget-object v15, v10, v15

    invoke-static {v7, v8}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v13, v14, 0x1

    .end local v14           #tmpNext:I
    .restart local v13       #tmpNext:I
    aget-byte v6, p1, v14

    .local v6, doe:I
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    const/16 v16, 0x4

    aget-object v16, v10, v16

    move-object/from16 v0, v16

    invoke-virtual {v15, v0, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const/4 v15, 0x4

    aget-object v15, v10, v15

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v15, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->display(Landroid/os/Bundle;)V

    invoke-virtual/range {p0 .. p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getContextType()Ljava/lang/String;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->mContextBundle:Landroid/os/Bundle;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v15, v1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    add-int/lit8 v9, v9, 0x1

    move v14, v13

    .end local v13           #tmpNext:I
    .restart local v14       #tmpNext:I
    goto/16 :goto_1

    .end local v3           #deltaTime:D
    .end local v6           #doe:I
    .end local v7           #heading:D
    .end local v11           #speed:D
    :cond_4
    move v13, v14

    .end local v14           #tmpNext:I
    .restart local v13       #tmpNext:I
    goto/16 :goto_0
.end method

.method public sendSleepModeCmdToSensorHub([B)V
    .locals 5
    .parameter "packet"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v2

    if-ltz v2, :cond_0

    if-eqz p1, :cond_0

    array-length v2, p1

    if-gtz v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, 0x1

    new-array v0, v2, [B

    .local v0, dataPacket:[B
    new-array v1, v3, [B

    aput-byte v3, v1, v4

    .local v1, mode:[B
    array-length v2, v1

    invoke-static {v1, v4, v0, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    array-length v3, p1

    invoke-static {p1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 v2, -0x4f

    invoke-virtual {p0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/builtin/ApdrRunner;->getInstLibType()B

    move-result v3

    invoke-super {p0, v2, v3, v0}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubProvider;->sendCmdToSensorHub(BB[B)V

    goto :goto_0
.end method
