.class public Landroid/hardware/scontext/SContext;
.super Ljava/lang/Object;
.source "SContext.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/hardware/scontext/SContext;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEFAULT_AIRMOTION_MODE:I = 0x0

.field private static final DEFAULT_DEVICE_TYPE:I = 0x0

.field private static final DEFAULT_ENVIRONMENT_COMPONENT:I = 0x0

.field private static final DEFAULT_EPOCH_LENGTH:D = 60.0

.field private static final DEFAULT_GENDER:I = 0x1

.field private static final DEFAULT_HEIGHT:D = 170.0

.field private static final DEFAULT_SERVICE_TYPE:I = 0x1

.field private static final DEFAULT_SLEEP_THRESHOLD:D = 142.0

.field private static final DEFAULT_STEP_COUNT:I = 0xa

.field private static final DEFAULT_UPDATE_INTERVAL:D = 0.0

.field private static final DEFAULT_WEIGHT:D = 60.0

.field public static final FLAG_ENVCOMP_HUMIDITY:I = 0x2

.field public static final FLAG_ENVCOMP_TEMPERATURE:I = 0x1

.field public static final TYPE_AIRMOTION:I = 0x7

.field public static final TYPE_APPROACH:I = 0x1

.field public static final TYPE_AUTO_ROTATION:I = 0x6

.field public static final TYPE_ENVIRONMENT:I = 0x9

.field public static final TYPE_MOTION:I = 0x4

.field public static final TYPE_MOVEMENT:I = 0x5

.field public static final TYPE_PEDOMETER:I = 0x2

.field public static final TYPE_SLEEP_MONITOR:I = 0x8

.field public static final TYPE_STEP_COUNT_ALERT:I = 0x3


# instance fields
.field private mAirMotioMode:I

.field private mDeviceType:I

.field private mEnvCompFlags:I

.field private mEpochLength:D

.field private mGender:I

.field private mHeight:D

.field private mSleepThreshold:D

.field private mStepCount:I

.field private mType:I

.field private mUpdateInterval:D

.field private mWeight:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 370
    new-instance v0, Landroid/hardware/scontext/SContext$1;

    invoke-direct {v0}, Landroid/hardware/scontext/SContext$1;-><init>()V

    sput-object v0, Landroid/hardware/scontext/SContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const-wide/high16 v3, 0x404e

    const/4 v2, 0x0

    .line 128
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput v1, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 130
    const/16 v0, 0xa

    iput v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    .line 131
    iput v1, p0, Landroid/hardware/scontext/SContext;->mGender:I

    .line 132
    const-wide v0, 0x4065400000000000L

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    .line 133
    iput-wide v3, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    .line 134
    iput v2, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    .line 135
    iput v2, p0, Landroid/hardware/scontext/SContext;->mAirMotioMode:I

    .line 136
    iput-wide v3, p0, Landroid/hardware/scontext/SContext;->mEpochLength:D

    .line 137
    const-wide v0, 0x4061c00000000000L

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mSleepThreshold:D

    .line 138
    iput v2, p0, Landroid/hardware/scontext/SContext;->mEnvCompFlags:I

    .line 139
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:D

    .line 140
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 145
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    invoke-direct {p0, p1}, Landroid/hardware/scontext/SContext;->readFromParcel(Landroid/os/Parcel;)V

    .line 147
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    .line 358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mGender:I

    .line 359
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    .line 360
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    .line 361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    .line 362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mAirMotioMode:I

    .line 363
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mEpochLength:D

    .line 364
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mSleepThreshold:D

    .line 365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/hardware/scontext/SContext;->mEnvCompFlags:I

    .line 366
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:D

    .line 367
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 327
    const/4 v0, 0x0

    return v0
.end method

.method getAirMotionMode()I
    .locals 1

    .prologue
    .line 209
    iget v0, p0, Landroid/hardware/scontext/SContext;->mAirMotioMode:I

    return v0
.end method

.method getDeviceType()I
    .locals 1

    .prologue
    .line 200
    iget v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    return v0
.end method

.method getEnvComponentFlags()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Landroid/hardware/scontext/SContext;->mEnvCompFlags:I

    return v0
.end method

.method getEpochLength()D
    .locals 2

    .prologue
    .line 218
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mEpochLength:D

    return-wide v0
.end method

.method getGender()I
    .locals 1

    .prologue
    .line 173
    iget v0, p0, Landroid/hardware/scontext/SContext;->mGender:I

    return v0
.end method

.method getHeight()D
    .locals 2

    .prologue
    .line 182
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    return-wide v0
.end method

.method getSleepThreshold()D
    .locals 2

    .prologue
    .line 227
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mSleepThreshold:D

    return-wide v0
.end method

.method getStepCount()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    return v0
.end method

.method getUpdateInterval()D
    .locals 2

    .prologue
    .line 245
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:D

    return-wide v0
.end method

.method getWeight()D
    .locals 2

    .prologue
    .line 191
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    return-wide v0
.end method

.method setAirMotionMode(I)V
    .locals 0
    .parameter "airmotionMode"

    .prologue
    .line 294
    iput p1, p0, Landroid/hardware/scontext/SContext;->mAirMotioMode:I

    .line 295
    return-void
.end method

.method setDeviceType(I)V
    .locals 0
    .parameter "devicetype"

    .prologue
    .line 285
    iput p1, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    .line 286
    return-void
.end method

.method setEnvironmentInfo(ID)V
    .locals 0
    .parameter "envCompFlags"
    .parameter "updateInterval"

    .prologue
    .line 315
    iput p1, p0, Landroid/hardware/scontext/SContext;->mEnvCompFlags:I

    .line 316
    iput-wide p2, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:D

    .line 317
    return-void
.end method

.method setParametersForSleepMonitor(DD)V
    .locals 0
    .parameter "epochLength"
    .parameter "sleepThreshold"

    .prologue
    .line 304
    iput-wide p1, p0, Landroid/hardware/scontext/SContext;->mEpochLength:D

    .line 305
    iput-wide p3, p0, Landroid/hardware/scontext/SContext;->mSleepThreshold:D

    .line 306
    return-void
.end method

.method setStepCount(I)V
    .locals 0
    .parameter "stepCount"

    .prologue
    .line 263
    iput p1, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    .line 264
    return-void
.end method

.method setType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 254
    iput p1, p0, Landroid/hardware/scontext/SContext;->mType:I

    .line 255
    return-void
.end method

.method setUserInfo(IDD)V
    .locals 0
    .parameter "gender"
    .parameter "height"
    .parameter "weight"

    .prologue
    .line 274
    iput p1, p0, Landroid/hardware/scontext/SContext;->mGender:I

    .line 275
    iput-wide p2, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    .line 276
    iput-wide p4, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    .line 277
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 337
    iget v0, p0, Landroid/hardware/scontext/SContext;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 338
    iget v0, p0, Landroid/hardware/scontext/SContext;->mStepCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 339
    iget v0, p0, Landroid/hardware/scontext/SContext;->mGender:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mHeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 341
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 342
    iget v0, p0, Landroid/hardware/scontext/SContext;->mDeviceType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 343
    iget v0, p0, Landroid/hardware/scontext/SContext;->mAirMotioMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 344
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mEpochLength:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 345
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mSleepThreshold:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 346
    iget v0, p0, Landroid/hardware/scontext/SContext;->mEnvCompFlags:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 347
    iget-wide v0, p0, Landroid/hardware/scontext/SContext;->mUpdateInterval:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 348
    return-void
.end method
