.class Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;
.super Ljava/lang/Object;
.source "RawGpsProvider.java"

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final mmAz:[F

.field private final mmEl:[F

.field private final mmMask:[I

.field private final mmPrn:[I

.field private final mmSnr:[F

.field final synthetic this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;


# direct methods
.method constructor <init>(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)V
    .locals 2
    .parameter

    .prologue
    const/16 v1, 0x20

    .line 121
    iput-object p1, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-array v0, v1, [I

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    .line 123
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    .line 124
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    .line 125
    new-array v0, v1, [F

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    .line 126
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 10
    .parameter "event"

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    .line 129
    if-eq p1, v9, :cond_0

    .line 165
    :goto_0
    return-void

    .line 133
    :cond_0
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v6}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getGpsSatellites()Ljava/util/Iterator;

    move-result-object v0

    .line 135
    .local v0, gpsSatellites:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/location/GpsSatellite;>;"
    const/4 v2, 0x0

    .line 136
    .local v2, nNumSat:I
    const/4 v3, 0x0

    .line 138
    .local v3, nNumSatUsedInFix:I
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/GpsSatellite;

    .line 141
    .local v5, satellite:Landroid/location/GpsSatellite;
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getPrn()I

    move-result v7

    aput v7, v6, v2

    .line 142
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getSnr()F

    move-result v7

    aput v7, v6, v2

    .line 143
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getElevation()F

    move-result v7

    aput v7, v6, v2

    .line 144
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v5}, Landroid/location/GpsSatellite;->getAzimuth()F

    move-result v7

    aput v7, v6, v2

    .line 146
    invoke-virtual {v5}, Landroid/location/GpsSatellite;->usedInFix()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 147
    add-int/lit8 v3, v3, 0x1

    .line 150
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 151
    goto :goto_1

    .line 153
    .end local v5           #satellite:Landroid/location/GpsSatellite;
    :cond_2
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    aput v3, v6, v8

    .line 155
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    #calls: Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextValueNames()[Ljava/lang/String;
    invoke-static {v6}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->access$100(Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;)[Ljava/lang/String;

    move-result-object v4

    .line 156
    .local v4, names:[Ljava/lang/String;
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 157
    .local v1, gpsStatusData:Landroid/os/Bundle;
    const/4 v6, 0x0

    aget-object v6, v4, v6

    invoke-virtual {v1, v6, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const/4 v6, 0x1

    aget-object v6, v4, v6

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmPrn:[I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 159
    aget-object v6, v4, v8

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmSnr:[F

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 160
    const/4 v6, 0x3

    aget-object v6, v4, v6

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmEl:[F

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 161
    aget-object v6, v4, v9

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmAz:[F

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putFloatArray(Ljava/lang/String;[F)V

    .line 162
    const/4 v6, 0x5

    aget-object v6, v4, v6

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->mmMask:[I

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putIntArray(Ljava/lang/String;[I)V

    .line 164
    iget-object v6, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    iget-object v7, p0, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider$2;->this$0:Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;

    invoke-virtual {v7}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->getContextType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v1}, Landroid/hardware/contextaware/dataprovider/androidprovider/RawGpsProvider;->notifyListener(Ljava/lang/String;Landroid/os/Bundle;)V

    goto/16 :goto_0
.end method
