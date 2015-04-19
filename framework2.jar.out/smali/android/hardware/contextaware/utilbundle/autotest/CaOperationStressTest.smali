.class Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;
.source "CaOperationStressTest.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "delayTime"

    .prologue
    .line 29
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;-><init>(I)V

    .line 30
    return-void
.end method

.method private getGesture()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 82
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 84
    .local v0, packet:[B
    const/4 v1, 0x0

    aput-byte v3, v0, v1

    .line 85
    aput-byte v3, v0, v3

    .line 86
    const/4 v1, 0x2

    const/4 v2, 0x5

    aput-byte v2, v0, v1

    .line 87
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 89
    return-object v0
.end method

.method private getPedometer()[B
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 61
    const/16 v1, 0x9

    new-array v0, v1, [B

    .line 63
    .local v0, packet:[B
    aput-byte v2, v0, v3

    .line 64
    aput-byte v2, v0, v2

    .line 65
    const/4 v1, 0x2

    aput-byte v3, v0, v1

    .line 66
    aput-byte v2, v0, v4

    .line 67
    const/4 v1, 0x4

    aput-byte v3, v0, v1

    .line 68
    const/4 v1, 0x5

    const/16 v2, 0x4b

    aput-byte v2, v0, v1

    .line 69
    const/4 v1, 0x6

    const/16 v2, 0x2b

    aput-byte v2, v0, v1

    .line 70
    const/4 v1, 0x7

    aput-byte v3, v0, v1

    .line 71
    const/16 v1, 0x8

    aput-byte v4, v0, v1

    .line 73
    return-object v0
.end method

.method private getStepCountAlert()[B
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 98
    const/4 v1, 0x4

    new-array v0, v1, [B

    .line 100
    .local v0, packet:[B
    const/4 v1, 0x0

    aput-byte v3, v0, v1

    .line 101
    aput-byte v3, v0, v3

    .line 102
    const/4 v1, 0x2

    const/4 v2, 0x6

    aput-byte v2, v0, v1

    .line 103
    const/4 v1, 0x3

    aput-byte v3, v0, v1

    .line 105
    return-object v0
.end method


# virtual methods
.method protected getPacket(I)[B
    .locals 1
    .parameter "service"

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 52
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getPedometer()[B

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getGesture()[B

    move-result-object v0

    goto :goto_0

    .line 47
    :pswitch_2
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/CaOperationStressTest;->getStepCountAlert()[B

    move-result-object v0

    goto :goto_0

    .line 41
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
