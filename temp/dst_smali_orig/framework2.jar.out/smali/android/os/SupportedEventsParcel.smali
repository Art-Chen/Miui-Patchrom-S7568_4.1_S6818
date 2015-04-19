.class public Landroid/os/SupportedEventsParcel;
.super Ljava/lang/Object;
.source "SupportedEventsParcel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/os/SupportedEventsParcel;",
            ">;"
        }
    .end annotation
.end field

.field public static final EVENT_MAX_SUPPORTED:B = 0x3t

.field public static final EVENT_PLAYBACK_STATUS_CHANGED:B = 0x1t

.field public static final EVENT_PLAYER_APPLICATION_SETTING_CHANGED:B = 0x8t

.field public static final EVENT_TRACK_CHANGED:B = 0x2t


# instance fields
.field public mCount:B

.field public mEvents:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    new-instance v0, Landroid/os/SupportedEventsParcel$1;

    invoke-direct {v0}, Landroid/os/SupportedEventsParcel$1;-><init>()V

    sput-object v0, Landroid/os/SupportedEventsParcel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v1, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    iput-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    iget-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    const/4 v1, 0x0

    aput-byte v2, v0, v1

    iget-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    aput-byte v3, v0, v2

    iget-object v0, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    const/16 v1, 0x8

    aput-byte v1, v0, v3

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/os/SupportedEventsParcel$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/os/SupportedEventsParcel;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    const/4 v0, 0x0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    iput-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    new-array v1, v1, [B

    iput-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public readFromParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "in"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->readFromParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;)V
    .locals 2
    .parameter "out"

    .prologue
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-byte v1, p0, Landroid/os/SupportedEventsParcel;->mCount:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Landroid/os/SupportedEventsParcel;->mEvents:[B

    aget-byte v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeByte(B)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "count"

    .prologue
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, p2, :cond_0

    invoke-virtual {p0, p1}, Landroid/os/SupportedEventsParcel;->writeToParcel(Landroid/os/Parcel;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
