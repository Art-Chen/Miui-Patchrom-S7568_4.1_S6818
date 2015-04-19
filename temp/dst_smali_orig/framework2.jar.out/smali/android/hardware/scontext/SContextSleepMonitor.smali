.class public Landroid/hardware/scontext/SContextSleepMonitor;
.super Ljava/lang/Object;
.source "SContextSleepMonitor.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextSleepMonitor;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mStageIndex:I

.field private mStages:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/scontext/SContextSleepMonitor$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextSleepMonitor$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextSleepMonitor;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStageIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStages:[B

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextSleepMonitor;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStageIndex:I

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStages:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getStageIndex()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStageIndex:I

    return v0
.end method

.method public getStages()[B
    .locals 1

    .prologue
    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStages:[B

    return-object v0
.end method

.method setStageIndex(I)V
    .locals 0
    .parameter "stageIndex"

    .prologue
    iput p1, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStageIndex:I

    return-void
.end method

.method setStages([B)V
    .locals 0
    .parameter "stages"

    .prologue
    iput-object p1, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStages:[B

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStageIndex:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/hardware/scontext/SContextSleepMonitor;->mStages:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
