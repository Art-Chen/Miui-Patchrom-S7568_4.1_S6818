.class Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;
.source "CaOperationStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "delayTime"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;-><init>(I)V

    return-void
.end method

.method private getGesture()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, packet:[B
    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    return-object v0
.end method

.method private getPedometer()[B
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v1, 0x9

    new-array v0, v1, [B

    .local v0, packet:[B
    aput-byte v2, v0, v3

    aput-byte v2, v0, v2

    const/4 v1, 0x2

    aput-byte v3, v0, v1

    aput-byte v2, v0, v4

    const/4 v1, 0x4

    aput-byte v3, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    const/4 v1, 0x6

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    const/4 v1, 0x7

    aput-byte v3, v0, v1

    const/16 v1, 0x8

    aput-byte v4, v0, v1

    return-object v0
.end method

.method private getStepCountAlert()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x4

    new-array v0, v1, [B

    .local v0, packet:[B
    const/4 v1, 0x0

    aput-byte v3, v0, v1

    aput-byte v3, v0, v3

    const/4 v1, 0x2

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    const/4 v1, 0x3

    aput-byte v3, v0, v1

    return-object v0
.end method


# virtual methods
.method protected getPacket(I)[B
    .locals 1
    .parameter "service"

    .prologue
    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :pswitch_0
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getPedometer()[B

    move-result-object v0

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getGesture()[B

    move-result-object v0

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getStepCountAlert()[B

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
