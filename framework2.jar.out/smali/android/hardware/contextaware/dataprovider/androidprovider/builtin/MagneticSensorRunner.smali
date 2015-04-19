.class public Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;
.super Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;
.source "MagneticSensorRunner.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;)V
    .locals 1
    .parameter "context"
    .parameter "observable"

    .prologue
    .line 40
    const v0, 0xea60

    invoke-direct {p0, p1, p2, v0}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/MagneticSensorRunner;-><init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;I)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;I)V
    .locals 1
    .parameter "context"
    .parameter "observable"
    .parameter "rate"

    .prologue
    .line 55
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;-><init>(Landroid/content/Context;Landroid/os/Looper;Landroid/hardware/contextaware/dataprovider/sensorhubprovider/IApPowerObservable;I)V

    .line 56
    return-void
.end method


# virtual methods
.method public disable()V
    .locals 0

    .prologue
    .line 123
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 124
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->disable()V

    .line 125
    return-void
.end method

.method public enable()V
    .locals 0

    .prologue
    .line 110
    invoke-static {}, Landroid/hardware/contextaware/utilbundle/logger/CaLogger;->trace()V

    .line 111
    invoke-super {p0}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawSensorProvider;->enable()V

    .line 112
    return-void
.end method

.method public getContextType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    sget-object v0, Landroid/hardware/contextaware/ContextList$ContextType;->ANDROID_RUNNER_MAGNETIC_SENSOR:Landroid/hardware/contextaware/ContextList$ContextType;

    invoke-virtual {v0}, Landroid/hardware/contextaware/ContextList$ContextType;->getCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getContextValueNames()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 78
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "MagX"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "MagY"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "MagZ"

    aput-object v2, v0, v1

    return-object v0
.end method

.method protected getObserver()Landroid/hardware/contextaware/manager/IApPowerObserver;
    .locals 0

    .prologue
    .line 98
    return-object p0
.end method

.method protected getSensorType()I
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x2

    return v0
.end method
