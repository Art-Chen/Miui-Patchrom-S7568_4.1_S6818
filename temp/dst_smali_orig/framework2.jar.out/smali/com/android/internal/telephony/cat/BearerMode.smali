.class Lcom/android/internal/telephony/cat/BearerMode;
.super Ljava/lang/Object;
.source "BearerDescription.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/cat/BearerMode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isAutoReconnect:Z

.field public isBackgroundMode:Z

.field public isOnDemand:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Lcom/android/internal/telephony/cat/BearerMode$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/cat/BearerMode$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/cat/BearerMode;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    iput-boolean v2, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    const/4 v1, 0x1

    new-array v0, v1, [Z

    .local v0, tempBooleanArray:[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    aget-boolean v1, v0, v2

    iput-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/cat/BearerMode$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/cat/BearerMode;-><init>(Landroid/os/Parcel;)V

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
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    new-array v0, v1, [Z

    .local v0, tempBooleanArray:[Z
    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isOnDemand:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isAutoReconnect:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    iget-boolean v1, p0, Lcom/android/internal/telephony/cat/BearerMode;->isBackgroundMode:Z

    aput-boolean v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    return-void
.end method
