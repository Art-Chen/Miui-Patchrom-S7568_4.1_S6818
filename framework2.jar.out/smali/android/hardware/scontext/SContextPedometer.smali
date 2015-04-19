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
    .line 282
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

    .line 55
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 57
    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 58
    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 59
    const/4 v0, -0x1

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 60
    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    .line 61
    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    .line 62
    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    .line 63
    iput-wide v3, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    .line 64
    iput-wide v1, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 70
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContextPedometer;->readFromParcel(Landroid/os/Parcel;)V

    .line 72
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 270
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 271
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 272
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 273
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 274
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    .line 275
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    .line 276
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    .line 277
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    .line 278
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    .line 279
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 243
    const/4 v0, 0x0

    return v0
.end method

.method public getCalorie()D
    .locals 2

    .prologue
    .line 80
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    return-wide v0
.end method

.method public getDistance()D
    .locals 2

    .prologue
    .line 89
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    return-wide v0
.end method

.method public getRunStepCount()J
    .locals 2

    .prologue
    .line 134
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    return-wide v0
.end method

.method public getSlopeAngle()D
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    return-wide v0
.end method

.method public getSpeed()D
    .locals 2

    .prologue
    .line 98
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    return-wide v0
.end method

.method public getStepStatus()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    return v0
.end method

.method public getTotalStepCount()J
    .locals 2

    .prologue
    .line 116
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    return-wide v0
.end method

.method public getUpDownStepCount()J
    .locals 2

    .prologue
    .line 143
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    return-wide v0
.end method

.method public getWalkStepCount()J
    .locals 2

    .prologue
    .line 125
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    return-wide v0
.end method

.method setCalorie(D)V
    .locals 0
    .parameter "calorie"

    .prologue
    .line 161
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    .line 162
    return-void
.end method

.method setDistance(D)V
    .locals 0
    .parameter "distance"

    .prologue
    .line 170
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    .line 171
    return-void
.end method

.method setRunStepCount(J)V
    .locals 0
    .parameter "runStepCount"

    .prologue
    .line 215
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    .line 216
    return-void
.end method

.method setSlopeAngle(D)V
    .locals 0
    .parameter "slopeAngle"

    .prologue
    .line 233
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    .line 234
    return-void
.end method

.method setSpeed(D)V
    .locals 0
    .parameter "speed"

    .prologue
    .line 179
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    .line 180
    return-void
.end method

.method setStepStatus(I)V
    .locals 0
    .parameter "stepStatus"

    .prologue
    .line 188
    iput p1, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    .line 189
    return-void
.end method

.method setTotalStepCount(J)V
    .locals 0
    .parameter "totalStepCount"

    .prologue
    .line 197
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    .line 198
    return-void
.end method

.method setUpDownStepCount(J)V
    .locals 0
    .parameter "upDownStepCount"

    .prologue
    .line 224
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    .line 225
    return-void
.end method

.method setWalkStepCount(J)V
    .locals 0
    .parameter "walkStepCount"

    .prologue
    .line 206
    iput-wide p1, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    .line 207
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 253
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mCalorie:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 254
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mDistance:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 255
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSpeed:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 256
    iget v0, p0, Landroid/hardware/scontext/SContextPedometer;->mStepStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 257
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mTotalStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 258
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mWalkStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 259
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mRunStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 260
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mUpDownStepCount:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 261
    iget-wide v0, p0, Landroid/hardware/scontext/SContextPedometer;->mSlopeAngle:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 262
    return-void
.end method
