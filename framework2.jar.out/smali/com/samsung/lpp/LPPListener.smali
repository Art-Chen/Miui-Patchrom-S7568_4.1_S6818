.class public interface abstract Lcom/samsung/lpp/LPPListener;
.super Ljava/lang/Object;
.source "LPPListener.java"


# virtual methods
.method public abstract onCurrentLocationGeoFenceResult(I)V
.end method

.method public abstract onGeoFenceDetected(I)V
.end method

.method public abstract onGeoFenceEntered(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onGeoFenceExited(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onLocationReported(Landroid/location/Location;)V
.end method

.method public abstract onStatusDisabled(I)V
.end method

.method public abstract onStatusEnabled(I)V
.end method
