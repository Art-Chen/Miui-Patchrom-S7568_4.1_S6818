.class Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$3;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->enable()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 180
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$3;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 183
    iget-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$3;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    iget-object v0, v0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mGpsManager:Landroid/location/LocationManager;

    iget-object v1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$3;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v1}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getLocationProvider()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$3;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    iget-object v5, v5, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->mLocationListener:Landroid/location/LocationListener;

    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$3;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #getter for: Landroid/hardware/contextaware/manager/ContextProvider;->mLooper:Landroid/os/Looper;
    invoke-static {v6}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$200(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)Landroid/os/Looper;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;Landroid/os/Looper;)V

    .line 186
    return-void
.end method
