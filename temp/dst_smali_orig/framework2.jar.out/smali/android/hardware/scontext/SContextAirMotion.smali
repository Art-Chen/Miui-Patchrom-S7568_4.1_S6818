.class public Landroid/hardware/scontext/SContextAirMotion;
.super Ljava/lang/Object;
.source "SContextAirMotion.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextAirMotion;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAngle:I

.field private mDirection:I

.field private mScale:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/scontext/SContextAirMotion$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextAirMotion$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextAirMotion;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mDirection:I

    iput v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mScale:I

    iput v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mAngle:I

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextAirMotion;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mDirection:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mScale:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mAngle:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getAngle()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mAngle:I

    return v0
.end method

.method public getDirection()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mDirection:I

    return v0
.end method

.method public getScale()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mScale:I

    return v0
.end method

.method setAngle(I)V
    .locals 0
    .parameter "angle"

    .prologue
    iput p1, p0, Landroid/hardware/scontext/SContextAirMotion;->mAngle:I

    return-void
.end method

.method setDirection(I)V
    .locals 0
    .parameter "direction"

    .prologue
    iput p1, p0, Landroid/hardware/scontext/SContextAirMotion;->mDirection:I

    return-void
.end method

.method setScale(I)V
    .locals 0
    .parameter "scale"

    .prologue
    iput p1, p0, Landroid/hardware/scontext/SContextAirMotion;->mScale:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mScale:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/hardware/scontext/SContextAirMotion;->mAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
