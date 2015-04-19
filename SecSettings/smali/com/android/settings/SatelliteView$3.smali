.class Lcom/android/settings/SatelliteView$3;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Landroid/location/GpsStatus$NmeaListener;


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
    .line 443
    iput-object p1, p0, Lcom/android/settings/SatelliteView$3;->this$0:Lcom/android/settings/SatelliteView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNmeaReceived(JLjava/lang/String;)V
    .locals 1
    .parameter "timestamp"
    .parameter "nmea"

    .prologue
    .line 446
    iget-object v0, p0, Lcom/android/settings/SatelliteView$3;->this$0:Lcom/android/settings/SatelliteView;

    invoke-virtual {v0}, Lcom/android/settings/SatelliteView;->showSVStatus()V

    .line 447
    return-void
.end method
