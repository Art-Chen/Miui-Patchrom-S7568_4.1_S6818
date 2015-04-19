.class public Landroid/hardware/scontext/SContextPedometer;
.super Ljava/lang/Object;
.source "SContextPedometer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContextPedometer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCalorie:D

.field private mDistance:D

.field private mRunStepCount:J

.field private mSlopeAngle:D

.field private mSpeed:D

.field private mStepStatus:I

.field private mTotalStepCount:J

.field private mUpDownStepCount:J

.field private mWalkStepCount:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/hardware/scontext/SContextPedometer$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContextPedometer$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContextPedometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .prologue
    const-wide/16 v3, 0x0

    const-wide/16 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    return-wide v0
.end method

.method public getRunStepCount()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    return-wide v0
.end method

.method public getSlopeAngle()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    return-wide v0
.end method

.method public getStepStatus()I
    .locals 1

    .prologue
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    return v0
.end method

.method public getTotalStepCount()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    return-wide v0
.end method

.method public getUpDownStepCount()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    return-wide v0
.end method

.method public getWalkStepCount()J
    .locals 2

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    return-wide v0
.end method

.method setCalorie(D)V
    .locals 0
    .parameter "calorie"

    .prologue
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    return-void
.end method

.method setDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    return-void
.end method

.method setRunStepCount(J)V
    .locals 0
    .parameter "runStepCount"

    .prologue
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    return-void
.end method

.method setSlopeAngle(D)V
    .locals 0
    .parameter "slopeAngle"

    .prologue
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    return-void
.end method

.method setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    return-void
.end method

.method setStepStatus(I)V
    .locals 0
    .parameter "stepStatus"

    .prologue
    iput p1, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    return-void
.end method

.method setTotalStepCount(J)V
    .locals 0
    .parameter "totalStepCount"

    .prologue
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    return-void
.end method

.method setUpDownStepCount(J)V
    .locals 0
    .parameter "upDownStepCount"

    .prologue
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    return-void
.end method

.method setWalkStepCount(J)V
    .locals 0
    .parameter "walkStepCount"

    .prologue
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    return-void
.end method
