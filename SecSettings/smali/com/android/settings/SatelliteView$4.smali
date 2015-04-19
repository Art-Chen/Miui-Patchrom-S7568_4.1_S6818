.class Lcom/android/settings/SatelliteView$4;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/LocationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SatelliteView;


# direct methods
.method constructor <init>(Lcom/android/settings/SatelliteView;)V
    .locals 0
    .parameter

    .prologue
    .line 450
    iput-object p1, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .locals 15
    .parameter "location"

    .prologue
    .line 452
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v6

    .line 453
    .local v6, latitute:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v8

    .line 454
    .local v8, longitude:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v1

    .line 455
    .local v1, Altitute:D
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getBearing()F

    move-result v3

    .line 456
    .local v3, Bearing:F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getSpeed()F

    move-result v4

    .line 457
    .local v4, Speed:F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    .line 458
    .local v0, Accuracy:F
    invoke-virtual/range {p1 .. p1}, Landroid/location/Location;->getTime()J

    move-result-wide v10

    .line 460
    .local v10, time:J
    invoke-static {v8, v9}, Lcom/android/settings/SatelliteView;->access$302(D)D

    .line 461
    invoke-static {v6, v7}, Lcom/android/settings/SatelliteView;->access$402(D)D

    .line 462
    invoke-static {v1, v2}, Lcom/android/settings/SatelliteView;->access$502(D)D

    .line 463
    invoke-static {v3}, Lcom/android/settings/SatelliteView;->access$602(F)F

    .line 464
    iget-object v12, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    float-to-double v13, v4

    #setter for: Lcom/android/settings/SatelliteView;->mSpeed:D
    invoke-static {v12, v13, v14}, Lcom/android/settings/SatelliteView;->access$702(Lcom/android/settings/SatelliteView;D)D

    .line 465
    iget-object v12, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    #setter for: Lcom/android/settings/SatelliteView;->mAccuracy:F
    invoke-static {v12, v0}, Lcom/android/settings/SatelliteView;->access$802(Lcom/android/settings/SatelliteView;F)F

    .line 466
    iget-object v12, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    #setter for: Lcom/android/settings/SatelliteView;->mTime:J
    invoke-static {v12, v10, v11}, Lcom/android/settings/SatelliteView;->access$902(Lcom/android/settings/SatelliteView;J)J

    .line 468
    new-instance v5, Ljava/util/Date;

    iget-object v12, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    #getter for: Lcom/android/settings/SatelliteView;->mTime:J
    invoke-static {v12}, Lcom/android/settings/SatelliteView;->access$900(Lcom/android/settings/SatelliteView;)J

    move-result-wide v12

    invoke-direct {v5, v12, v13}, Ljava/util/Date;-><init>(J)V

    .line 469
    .local v5, date:Ljava/util/Date;
    iget-object v12, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    invoke-static {}, Ljava/text/DateFormat;->getDateInstance()Ljava/text/DateFormat;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/settings/SatelliteView;->calendarDate:Ljava/lang/String;

    .line 471
    iget-object v12, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v12}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 472
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 475
    iget-object v0, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v0}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 476
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 1
    .parameter "provider"

    .prologue
    .line 479
    iget-object v0, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v0}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 480
    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 1
    .parameter "provider"
    .parameter "status"
    .parameter "extras"

    .prologue
    .line 483
    iget-object v0, p0, Lcom/android/settings/SatelliteView$4;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v0}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 484
    return-void
.end method
