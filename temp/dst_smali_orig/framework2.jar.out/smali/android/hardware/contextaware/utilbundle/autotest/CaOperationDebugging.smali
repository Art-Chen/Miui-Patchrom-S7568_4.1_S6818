.class Landroid/hardware/contextaware/utilbundle/autotest/CaOperationDebugging;
.super Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;
.source "CaOperationDebugging.java"


# direct methods
.method protected constructor <init>(I)V
    .locals 0
    .parameter "delayTime"

    .prologue
    invoke-direct {p0, p1}, Landroid/hardware/contextaware/utilbundle/autotest/OperationDebugging;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected doDebugging([B)V
    .locals 1
    .parameter "packet"

    .prologue
    invoke-static {}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->getInstance()Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/hardware/contextaware/dataprovider/sensorhubprovider/SensorHubParserProvider;->parseForScenarioTesting([B)Z

    return-void
.end method
