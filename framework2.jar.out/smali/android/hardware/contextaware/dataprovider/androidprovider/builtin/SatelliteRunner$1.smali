.class Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner$1;
.super Ljava/lang/Object;
.source "SatelliteRunner.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;)V
    .locals 0
    .parameter

    .prologue
    .line 81
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;
    invoke-static {v0}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;->access$100(Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;)Landroid/location/LocationManager;

    move-result-object v0

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner$1;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;

    #getter for: Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGPSStatusListener:Landroid/location/GpsStatus$Listener;
    invoke-static {v1}, Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;->access$000(Landroid/hardware/contextaware/dataprovider/androidprovider/builtin/SatelliteRunner;)Landroid/location/GpsStatus$Listener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z

    .line 85
    return-void
.end method
