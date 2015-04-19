.class public Lcom/android/settings/SatelliteView$SatComp;
.super Ljava/lang/Object;
.source "SatelliteView.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SatComp"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/settings/SatelliteView$UserGpsSatellite;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 302
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/SatelliteView$UserGpsSatellite;Lcom/android/settings/SatelliteView$UserGpsSatellite;)I
    .locals 2
    .parameter "object1"
    .parameter "object2"

    .prologue
    .line 305
    invoke-virtual {p1}, Lcom/android/settings/SatelliteView$UserGpsSatellite;->getSat()Landroid/location/GpsSatellite;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v0

    invoke-virtual {p2}, Lcom/android/settings/SatelliteView$UserGpsSatellite;->getSat()Landroid/location/GpsSatellite;

    move-result-object v1

    invoke-virtual {v1}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 306
    const/4 v0, 0x1

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 302
    check-cast p1, Lcom/android/settings/SatelliteView$UserGpsSatellite;

    .end local p1
    check-cast p2, Lcom/android/settings/SatelliteView$UserGpsSatellite;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/SatelliteView$SatComp;->compare(Lcom/android/settings/SatelliteView$UserGpsSatellite;Lcom/android/settings/SatelliteView$UserGpsSatellite;)I

    move-result v0

    return v0
.end method
