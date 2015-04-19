.class Landroid/hardware/contextaware/utilbundle/autotest/ApPowerStressTest;
.super Landroid/hardware/contextaware/utilbundle/autotest/InnerProcessStressTest;
.source "ApPowerStressTest.java"


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

.method private getNotiAPSleep()[B
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 74
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 76
    .local v0, packet:[B
    const/4 v1, 0x0

    aput-byte v3, v0, v1

    .line 77
    aput-byte v2, v0, v2

    .line 78
    const/16 v1, -0x2e

    aput-byte v1, v0, v3

    .line 80
    return-object v0
.end method

.method private getNotiAPWakeup()[B
    .locals 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 59
    const/4 v1, 0x3

    new-array v0, v1, [B

    .line 61
    .local v0, packet:[B
    const/4 v1, 0x0

    aput-byte v3, v0, v1

    .line 62
    aput-byte v2, v0, v2

    .line 63
    const/16 v1, -0x2f

    aput-byte v1, v0, v3

    .line 65
    return-object v0
.end method


# virtual methods
.method protected getPacket(I)[B
    .locals 1
    .parameter "service"

    .prologue
    .line 41
    packed-switch p1, :pswitch_data_0

    .line 50
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 43
    :pswitch_0
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/ApPowerStressTest;->getNotiAPWakeup()[B

    move-result-object v0

    goto :goto_0

    .line 45
    :pswitch_1
    invoke-direct {p0}, Landroid/hardware/contextaware/utilbundle/autotest/ApPowerStressTest;->getNotiAPSleep()[B

    move-result-object v0

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
