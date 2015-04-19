.class final Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;
.super Ljava/lang/Object;
.source "GeofenceService.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/enterprise/geofencing/GeofenceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MyLocationListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;


# direct methods
.method private constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V
    .locals 0
    .parameter

    .prologue
    .line 231
    iput-object p1, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/enterprise/geofencing/GeofenceService;Lcom/android/server/enterprise/geofencing/GeofenceService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 231
    invoke-direct {p0, p1}, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;-><init>(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 2
    .parameter "location"

    .prologue
    const/4 v1, 0x1

    .line 238
    invoke-static {}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$300()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 239
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->checkDeviceInsideOrOutsideGeo(Landroid/location/Location;Z)Ljava/util/List;
    invoke-static {v0, p1, v1}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$500(Lcom/android/server/enterprise/geofencing/GeofenceService;Landroid/location/Location;Z)Ljava/util/List;

    .line 240
    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 244
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->deviceLocationUnavailableMessage()V
    invoke-static {v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$600(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    .line 247
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 2
    .parameter "provider"

    .prologue
    .line 252
    invoke-static {}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$300()I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$400()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/server/enterprise/geofencing/GeofenceService$MyLocationListener;->this$0:Lcom/android/server/enterprise/geofencing/GeofenceService;

    #calls: Lcom/android/server/enterprise/geofencing/GeofenceService;->startMonitoring()V
    invoke-static {v0}, Lcom/android/server/enterprise/geofencing/GeofenceService;->access$100(Lcom/android/server/enterprise/geofencing/GeofenceService;)V

    .line 256
    :cond_0
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 261
    return-void
.end method
