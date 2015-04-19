.class public Landroid/hardware/scontext/SContextEnvironment;
.super Ljava/lang/Object;
.source "SContextEnvironment.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextEnvironment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mHumidity:[D

.field private mTemperature:[D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/scontext/SContextEnvironment$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextEnvironment$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextEnvironment;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/16 v1, 0x64

    .local v1, nMaxSize:I
    new-array v2, v1, [D

    iput-object v2, p0, Landroid/hardware/scontext/SContextEnvironment;->mTemperature:[D

    new-array v2, v1, [D

    iput-object v2, p0, Landroid/hardware/scontext/SContextEnvironment;->mHumidity:[D

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Landroid/hardware/scontext/SContextEnvironment;->mTemperature:[D

    aput-wide v3, v2, v0

    iget-object v2, p0, Landroid/hardware/scontext/SContextEnvironment;->mHumidity:[D

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextEnvironment;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mTemperature:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mHumidity:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readDoubleArray([D)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getHumidity()[D
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mHumidity:[D

    return-object v0
.end method

.method public getTemperature()[D
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mTemperature:[D

    return-object v0
.end method

.method setHumidity([D)V
    .locals 0
    .parameter "humidity"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mHumidity:[D

    return-void
.end method

.method setTemperature([D)V
    .locals 0
    .parameter "temperature"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextEnvironment;->mTemperature:[D

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mTemperature:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextEnvironment;->mHumidity:[D

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeDoubleArray([D)V

    return-void
.end method
