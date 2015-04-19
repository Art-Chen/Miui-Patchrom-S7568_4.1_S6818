.class abstract Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;
.source "InnerProcessStressTest.java"


# instance fields
.field private mPacket:[B


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "delayTime"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected abstract getPacket(I)[B
.end method

.method public run()V
    .locals 7

    .prologue
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;->getDelayTime()I

    move-result v5

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V

    new-instance v5, Ljava/util/Random;

    invoke-direct {v5}, Ljava/util/Random;-><init>()V

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Ljava/util/Random;->nextInt(I)I

    move-result v5

    invoke-virtual {p0, v5}, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;->getPacket(I)[B

    move-result-object v5

    iput-object v5, p0, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;->mPacket:[B

    iget-object v5, p0, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;->mPacket:[B

    if-eqz v5, :cond_0

    iget-object v0, p0, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;->mPacket:[B

    .local v0, arr$:[B
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-byte v2, v0, v3

    .local v2, i:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Packet = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->info(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .end local v2           #i:I
    :cond_1
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v5

    iget-object v6, p0, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;->mPacket:[B

    invoke-virtual {v5, v6}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)Z

    invoke-super {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaAutoTest;->isStopTest()Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    .end local v0           #arr$:[B
    .end local v3           #i$:I
    .end local v4           #len$:I
    :goto_1
    return-void

    :catch_0
    move-exception v1

    .local v1, e:Ljava/lang/InterruptedException;
    invoke-static {v1}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->exception(Ljava/lang/Throwable;)V

    goto :goto_1
.end method
