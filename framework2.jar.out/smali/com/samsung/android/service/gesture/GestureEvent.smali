.class public Lcom/samsung/android/service/gesture/GestureEvent;
.super Ljava/lang/Object;
.source "GestureEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/samsung/android/service/gesture/GestureEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final GESTURE_EVENT_APPROACH:I = 0x2

.field public static final GESTURE_EVENT_HANDSHAPE:I = 0x6

.field public static final GESTURE_EVENT_HOVER:I = 0x5

.field public static final GESTURE_EVENT_SWEEP_DOWN:I = 0x4

.field public static final GESTURE_EVENT_SWEEP_LEFT:I = 0x1

.field public static final GESTURE_EVENT_SWEEP_RIGHT:I = 0x0

.field public static final GESTURE_EVENT_SWEEP_UP:I = 0x3


# instance fields
.field private mEvent:I

.field private mProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 176
    new-instance v0, Lcom/samsung/android/service/gesture/GestureEvent$1;

    invoke-direct {v0}, Lcom/samsung/android/service/gesture/GestureEvent$1;-><init>()V

    sput-object v0, Lcom/samsung/android/service/gesture/GestureEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 84
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "src"

    .prologue
    .line 94
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 95
    invoke-direct {p0, p1}, Lcom/samsung/android/service/gesture/GestureEvent;->readFromParcel(Landroid/os/Parcel;)V

    .line 96
    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "src"

    .prologue
    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    .line 173
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 149
    const/4 v0, 0x0

    return v0
.end method

.method public getEvent()I
    .locals 1

    .prologue
    .line 106
    iget v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    return v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    return-object v0
.end method

.method public setEvent(I)V
    .locals 0
    .parameter "event"

    .prologue
    .line 117
    iput p1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    .line 118
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .parameter "provider"

    .prologue
    .line 138
    iput-object p1, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    iget v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mEvent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/samsung/android/service/gesture/GestureEvent;->mProvider:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    return-void
.end method
