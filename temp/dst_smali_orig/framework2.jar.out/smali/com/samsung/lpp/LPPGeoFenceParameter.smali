.class public Lcom/samsung/lpp/LPPGeoFenceParameter;
.super Ljava/lang/Object;
.source "LPPGeoFenceParameter.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/lpp/LPPGeoFenceParameter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mDirection:I

.field public mLat:D

.field public mLon:D

.field public mName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/samsung/lpp/LPPGeoFenceParameter$1;

    invoke-direct {v0}, Lcom/samsung/lpp/LPPGeoFenceParameter$1;-><init>()V

    sput-object v0, Lcom/samsung/lpp/LPPGeoFenceParameter;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;DDI)V
    .locals 0
    .parameter "name"
    .parameter "lat"
    .parameter "lon"
    .parameter "direction"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/lpp/LPPGeoFenceParameter;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/samsung/lpp/LPPGeoFenceParameter;->mLat:D

    iput-wide p4, p0, Lcom/samsung/lpp/LPPGeoFenceParameter;->mLon:D

    iput p6, p0, Lcom/samsung/lpp/LPPGeoFenceParameter;->mDirection:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "parcel"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Lcom/samsung/lpp/LPPGeoFenceParameter;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/samsung/lpp/LPPGeoFenceParameter;->mLat:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Lcom/samsung/lpp/LPPGeoFenceParameter;->mLon:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Lcom/samsung/lpp/LPPGeoFenceParameter;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
