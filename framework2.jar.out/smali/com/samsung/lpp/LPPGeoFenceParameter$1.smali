.class final Lcom/samsung/lpp/LPPGeoFenceParameter$1;
.super Ljava/lang/Object;
.source "LPPGeoFenceParameter.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/lpp/LPPGeoFenceParameter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/samsung/lpp/LPPGeoFenceParameter;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/lpp/LPPGeoFenceParameter;
    .locals 7
    .parameter "in"

    .prologue
    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, name:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    .line 45
    .local v2, lat:D
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v4

    .line 46
    .local v4, lon:D
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v6

    .line 47
    .local v6, direction:I
    new-instance v0, Lcom/samsung/lpp/LPPGeoFenceParameter;

    invoke-direct/range {v0 .. v6}, Lcom/samsung/lpp/LPPGeoFenceParameter;-><init>(Ljava/lang/String;DDI)V

    .line 48
    .local v0, param:Lcom/samsung/lpp/LPPGeoFenceParameter;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/lpp/LPPGeoFenceParameter$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/lpp/LPPGeoFenceParameter;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/samsung/lpp/LPPGeoFenceParameter;
    .locals 1
    .parameter "size"

    .prologue
    .line 52
    new-array v0, p1, [Lcom/samsung/lpp/LPPGeoFenceParameter;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/samsung/lpp/LPPGeoFenceParameter$1;->newArray(I)[Lcom/samsung/lpp/LPPGeoFenceParameter;

    move-result-object v0

    return-object v0
.end method
