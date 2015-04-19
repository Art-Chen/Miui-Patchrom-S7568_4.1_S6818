.class public Landroid/media/MediaPhone;
.super Landroid/os/Handler;
.source "MediaPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaPhone$2;,
        Landroid/media/MediaPhone$OnCallEventListener;,
        Landroid/media/MediaPhone$OnMediaInfoListener;,
        Landroid/media/MediaPhone$OnErrorListener;,
        Landroid/media/MediaPhone$OnVideoSizeChangedListener;,
        Landroid/media/MediaPhone$EventHandler;,
        Landroid/media/MediaPhone$CodecState;
    }
.end annotation


# static fields
.field private static ARG_SKIP_MSGTRACKER:I = 0x0

.field private static final AT_BOTH_IFRAME:I = 0x3

.field private static final AT_NONE:I = 0x0

.field private static final AT_REPORT_IFRAME:I = 0x1

.field private static final AT_REQUEST_IFRAME:I = 0x2

.field private static final AT_SELECT_ERR:I = -0x2

.field private static final AT_TIMEOUT:I = -0x1

.field private static final CAMERA_CLOSE_STR:Ljava/lang/String; = "close_:camera_"

.field private static final CAMERA_OPEN_STR:Ljava/lang/String; = "open_:camera_"

.field public static final CODEC_CLOSE:I = 0x2

.field public static final CODEC_OPEN:I = 0x1

.field public static final CODEC_SET_PARAM:I = 0x3

.field private static final DEBUG_WITHOUT_MODEM:Z = false

.field private static final IMEDIA_PHONE:Ljava/lang/String; = "android.media.IMediaPhone"

.field public static final MEDIA_CALLEVENT_CAMERACLOSE:I = 0x64

.field public static final MEDIA_CALLEVENT_CAMERAOPEN:I = 0x65

.field public static final MEDIA_CALLEVENT_CODEC_CLOSE:I = 0x6b

.field public static final MEDIA_CALLEVENT_CODEC_OPEN:I = 0x67

.field public static final MEDIA_CALLEVENT_CODEC_SET_PARAM_DECODER:I = 0x68

.field public static final MEDIA_CALLEVENT_CODEC_SET_PARAM_ENCODER:I = 0x69

.field public static final MEDIA_CALLEVENT_CODEC_START:I = 0x6a

.field public static final MEDIA_CALLEVENT_MEDIA_START:I = 0x6c

.field public static final MEDIA_CALLEVENT_STRING:I = 0x66

.field private static final MEDIA_ERROR:I = 0x64

.field public static final MEDIA_ERROR_NOT_VALID_FOR_PROGRESSIVE_PLAYBACK:I = 0xc8

.field public static final MEDIA_ERROR_SERVER_DIED:I = 0x64

.field public static final MEDIA_ERROR_UNKNOWN:I = 0x1

.field private static final MEDIA_INFO:I = 0xc8

.field public static final MEDIA_INFO_BAD_INTERLEAVING:I = 0x320

.field public static final MEDIA_INFO_METADATA_UPDATE:I = 0x322

.field public static final MEDIA_INFO_NOT_SEEKABLE:I = 0x321

.field public static final MEDIA_INFO_UNKNOWN:I = 0x1

.field public static final MEDIA_INFO_VIDEO_TRACK_LAGGING:I = 0x2bc

.field private static final MEDIA_PREPARED:I = 0x1

.field private static final MEDIA_SET_VIDEO_SIZE:I = 0x2

.field private static final MEDIA_SOL_CODEC:I = 0xb

.field private static final MEDIA_SOL_CONTROL_LOCALAUDIO:I = 0xe

.field private static final MEDIA_SOL_CONTROL_LOCALVIDEO:I = 0xd

.field private static final MEDIA_SOL_NOP:I = 0xa

.field private static final MEDIA_SOL_RECORD_AUDIO:I = 0x10

.field private static final MEDIA_SOL_RECORD_VIDEO:I = 0xf

.field private static final MEDIA_SOL_SENDSTRING:I = 0xc

.field private static final MEDIA_UNSOL_CODEC:I = 0x15

.field private static final MEDIA_UNSOL_DATA:I = 0x14

.field private static final MEDIA_UNSOL_MEDIA_START:I = 0x1a

.field private static final MEDIA_UNSOL_MM_RING:I = 0x18

.field private static final MEDIA_UNSOL_RECORD_VIDEO:I = 0x19

.field private static final MEDIA_UNSOL_REMOTE_VIDEO:I = 0x17

.field private static final MEDIA_UNSOL_STR:I = 0x16

.field private static final MSG_TAG:Ljava/lang/String; = "resend"

.field private static final TAG:Ljava/lang/String; = "MediaPhone"


# instance fields
.field private final mCameraLock:Ljava/lang/Object;

.field private mCm:Lcom/android/internal/telephony/CommandsInterface;

.field private mCodecCount:I

.field private mCodecState:Landroid/media/MediaPhone$CodecState;

.field private mEventHandler:Landroid/media/MediaPhone$EventHandler;

.field private mListenerContext:I

.field private mLocalSurface:Landroid/view/Surface;

.field private mNativeContext:I

.field private mNativeSurfaceTexture:I

.field private mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

.field private mOnErrorListener:Landroid/media/MediaPhone$OnErrorListener;

.field private mOnMediaInfoListener:Landroid/media/MediaPhone$OnMediaInfoListener;

.field private mOnVideoSizeChangedListener:Landroid/media/MediaPhone$OnVideoSizeChangedListener;

.field private mRemoteSurface:Landroid/view/Surface;

.field private mScreenOnWhilePlaying:Z

.field private mStayAwake:Z

.field private mStopWaitRequestForAT:Z

.field private mThread:Ljava/lang/Thread;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mbCameraLock:Z

.field private msgTracker:Landroid/os/Message;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    invoke-static {}, Landroid/media/MediaPhone;->native_init()V

    const/4 v0, -0x1

    sput v0, Landroid/media/MediaPhone;->ARG_SKIP_MSGTRACKER:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .parameter "ril"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Landroid/media/MediaPhone;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iput-boolean v2, p0, Landroid/media/MediaPhone;->mbCameraLock:Z

    new-instance v1, Ljava/lang/Object;

    invoke-direct/range {v1 .. v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/MediaPhone;->mCameraLock:Ljava/lang/Object;

    iput-object v3, p0, Landroid/media/MediaPhone;->msgTracker:Landroid/os/Message;

    iput v2, p0, Landroid/media/MediaPhone;->mCodecCount:I

    sget-object v1, Landroid/media/MediaPhone$CodecState;->CODEC_IDLE:Landroid/media/MediaPhone$CodecState;

    iput-object v1, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    iput-boolean v2, p0, Landroid/media/MediaPhone;->mStopWaitRequestForAT:Z

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, looper:Landroid/os/Looper;
    if-eqz v0, :cond_0

    new-instance v1, Landroid/media/MediaPhone$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPhone$EventHandler;-><init>(Landroid/media/MediaPhone;Landroid/media/MediaPhone;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    :goto_0
    iput-object p1, p0, Landroid/media/MediaPhone;->mCm:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v1}, Landroid/media/MediaPhone;->native_setup(Ljava/lang/Object;)V

    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Landroid/media/MediaPhone$1;

    invoke-direct {v2, p0}, Landroid/media/MediaPhone$1;-><init>(Landroid/media/MediaPhone;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v1, p0, Landroid/media/MediaPhone;->mThread:Ljava/lang/Thread;

    iget-object v1, p0, Landroid/media/MediaPhone;->mThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/media/MediaPhone$EventHandler;

    invoke-direct {v1, p0, p0, v0}, Landroid/media/MediaPhone$EventHandler;-><init>(Landroid/media/MediaPhone;Landroid/media/MediaPhone;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    goto :goto_0

    :cond_1
    iput-object v3, p0, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    goto :goto_0
.end method

.method private native _enableRecord(ZILjava/io/FileDescriptor;)V
.end method

.method private native _release()V
.end method

.method private native _setLocalSurface()V
.end method

.method private native _setRemoteSurface()V
.end method

.method private native _startPlayer()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _startRecorder()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method private native _stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method static synthetic access$000(Landroid/media/MediaPhone;)I
    .locals 1
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/media/MediaPhone;->native_waitRequestForAT()I

    move-result v0

    return v0
.end method

.method static synthetic access$100(Landroid/media/MediaPhone;)Z
    .locals 1
    .parameter "x0"

    .prologue
    iget-boolean v0, p0, Landroid/media/MediaPhone;->mStopWaitRequestForAT:Z

    return v0
.end method

.method static synthetic access$200(Landroid/media/MediaPhone;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/MediaPhone;->mNativeContext:I

    return v0
.end method

.method static synthetic access$300(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnVideoSizeChangedListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/MediaPhone;->mOnVideoSizeChangedListener:Landroid/media/MediaPhone$OnVideoSizeChangedListener;

    return-object v0
.end method

.method static synthetic access$400(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnErrorListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/MediaPhone;->mOnErrorListener:Landroid/media/MediaPhone$OnErrorListener;

    return-object v0
.end method

.method static synthetic access$500(Landroid/media/MediaPhone;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    invoke-direct {p0, p1}, Landroid/media/MediaPhone;->stayAwake(Z)V

    return-void
.end method

.method static synthetic access$600(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnMediaInfoListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/MediaPhone;->mOnMediaInfoListener:Landroid/media/MediaPhone$OnMediaInfoListener;

    return-object v0
.end method

.method static synthetic access$700(Landroid/media/MediaPhone;)I
    .locals 1
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/MediaPhone;->mCodecCount:I

    return v0
.end method

.method static synthetic access$708(Landroid/media/MediaPhone;)I
    .locals 2
    .parameter "x0"

    .prologue
    iget v0, p0, Landroid/media/MediaPhone;->mCodecCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Landroid/media/MediaPhone;->mCodecCount:I

    return v0
.end method

.method static synthetic access$800(Landroid/media/MediaPhone;)Landroid/media/MediaPhone$OnCallEventListener;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    return-object v0
.end method

.method public static create(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;)Landroid/media/MediaPhone;
    .locals 4
    .parameter "ril"
    .parameter "url"

    .prologue
    const/4 v3, 0x0

    const-string v0, "MediaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0, p1, v3, v3}, Landroid/media/MediaPhone;->create(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Landroid/view/Surface;Landroid/view/Surface;)Landroid/media/MediaPhone;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/android/internal/telephony/CommandsInterface;Ljava/lang/String;Landroid/view/Surface;Landroid/view/Surface;)Landroid/media/MediaPhone;
    .locals 4
    .parameter "ril"
    .parameter "url"
    .parameter "remoteSurface"
    .parameter "localSurface"

    .prologue
    :try_start_0
    new-instance v1, Landroid/media/MediaPhone;

    invoke-direct {v1, p0}, Landroid/media/MediaPhone;-><init>(Lcom/android/internal/telephony/CommandsInterface;)V

    .local v1, mp:Landroid/media/MediaPhone;
    invoke-virtual {v1, p1, p1}, Landroid/media/MediaPhone;->setComm(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual {v1, p2}, Landroid/media/MediaPhone;->setRemoteDisplay(Landroid/view/Surface;)V

    :cond_0
    if-eqz p3, :cond_1

    invoke-virtual {v1, p3}, Landroid/media/MediaPhone;->setLocalDisplay(Landroid/view/Surface;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2

    .end local v1           #mp:Landroid/media/MediaPhone;
    :cond_1
    :goto_0
    return-object v1

    :catch_0
    move-exception v0

    .local v0, ex:Ljava/io/IOException;
    const-string v2, "MediaPhone"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .end local v0           #ex:Ljava/io/IOException;
    :goto_1
    const/4 v1, 0x0

    goto :goto_0

    :catch_1
    move-exception v0

    .local v0, ex:Ljava/lang/IllegalArgumentException;
    const-string v2, "MediaPhone"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .end local v0           #ex:Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .local v0, ex:Ljava/lang/SecurityException;
    const-string v2, "MediaPhone"

    const-string v3, "create failed:"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private internalGetMessage(Landroid/os/Message;I)Landroid/os/Message;
    .locals 3
    .parameter "result"
    .parameter "what"

    .prologue
    if-nez p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v2, p0, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    invoke-static {v2, p2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    .local v0, bundle:Landroid/os/Bundle;
    const-string v2, "resend"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup(Ljava/lang/Object;)V
.end method

.method private final native native_waitRequestForAT()I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .parameter "mediaphone_ref"
    .parameter "what"
    .parameter "arg1"
    .parameter "arg2"
    .parameter "obj"

    .prologue
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPhone;

    .local v1, mp:Landroid/media/MediaPhone;
    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v2, v1, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    if-eqz v2, :cond_0

    iget-object v2, v1, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/MediaPhone$EventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .local v0, m:Landroid/os/Message;
    iget-object v2, v1, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    invoke-virtual {v2, v0}, Landroid/media/MediaPhone$EventHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method private native setParameters(Ljava/lang/String;)V
.end method

.method private stayAwake(Z)V
    .locals 0
    .parameter "awake"

    .prologue
    return-void
.end method


# virtual methods
.method public codec(ILandroid/os/Bundle;Landroid/os/Message;)V
    .locals 3
    .parameter "type"
    .parameter "param"
    .parameter "result"

    .prologue
    const-string v0, "MediaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codec "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public controlLocalAudio(ZLandroid/os/Message;)V
    .locals 2
    .parameter "bEnable"
    .parameter "result"

    .prologue
    const-string v0, "MediaPhone"

    const-string v1, "controlLocalAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    return-void
.end method

.method public controlLocalVideo(ZZLandroid/os/Message;)V
    .locals 3
    .parameter "bEnable"
    .parameter "bReplaceImg"
    .parameter "result"

    .prologue
    const/16 v2, 0xc

    const-string v0, "MediaPhone"

    const-string v1, "controlLocalVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    if-eqz p2, :cond_0

    if-eqz p1, :cond_1

    const-string v0, "open_:camera_"

    iget-object v1, p0, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPhone;->sendString(Ljava/lang/String;Landroid/os/Message;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "close_:camera_"

    iget-object v1, p0, Landroid/media/MediaPhone;->mEventHandler:Landroid/media/MediaPhone$EventHandler;

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/media/MediaPhone;->sendString(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public enableRecord(ZILjava/lang/String;)V
    .locals 4
    .parameter "isEnable"
    .parameter "type"
    .parameter "fn"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v1, "MediaPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableRecord("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    if-eqz p3, :cond_0

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPhone;->_enableRecord(ZILjava/io/FileDescriptor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .end local v0           #fos:Ljava/io/FileOutputStream;
    :cond_0
    :goto_0
    return-void

    .restart local v0       #fos:Ljava/io/FileOutputStream;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    throw v1

    .end local v0           #fos:Ljava/io/FileOutputStream;
    :cond_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/media/MediaPhone;->_enableRecord(ZILjava/io/FileDescriptor;)V

    goto :goto_0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/media/MediaPhone;->native_finalize()V

    return-void
.end method

.method public native getCameraParam(Ljava/lang/String;)I
.end method

.method public getCodecState()Landroid/media/MediaPhone$CodecState;
    .locals 3

    .prologue
    const-string v0, "MediaPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCodecState(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    return-object v0
.end method

.method public native getFrameAt(I)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native getVideoHeight()I
.end method

.method public native getVideoWidth()I
.end method

.method public lockCamera()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const-string v2, "MediaPhone"

    const-string v3, "lockCamera() E"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Landroid/media/MediaPhone;->mCameraLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-boolean v3, p0, Landroid/media/MediaPhone;->mbCameraLock:Z

    if-eqz v3, :cond_0

    const-string v1, "MediaPhone"

    const-string v3, "lockCamera() fail, already locked"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    :goto_0
    return v0

    :cond_0
    iget-object v3, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    sget-object v4, Landroid/media/MediaPhone$CodecState;->CODEC_START:Landroid/media/MediaPhone$CodecState;

    if-eq v3, v4, :cond_1

    const-string v1, "MediaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lockCamera() fail, mCodecState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    const/4 v0, 0x1

    :try_start_1
    iput-boolean v0, p0, Landroid/media/MediaPhone;->mbCameraLock:Z

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v0, "MediaPhone"

    const-string v2, "lockCamera() X"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    goto :goto_0
.end method

.method public onCodecRequest(II)V
    .locals 6
    .parameter "type"
    .parameter "param"

    .prologue
    const/4 v5, 0x0

    const-string v2, "MediaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCodecRequest:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mCodecState: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    const/16 v3, 0x67

    invoke-interface {v2, p0, v3, v5}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/media/MediaPhone;->prepareAsync()V

    sget-object v2, Landroid/media/MediaPhone$CodecState;->CODEC_OPEN:Landroid/media/MediaPhone$CodecState;

    iput-object v2, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .local v1, ex:Ljava/lang/IllegalStateException;
    const-string v2, "MediaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "prepareAsync fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :pswitch_1
    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    const/16 v3, 0x68

    invoke-interface {v2, p0, v3, v5}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    invoke-virtual {p0}, Landroid/media/MediaPhone;->startPlayer()V

    :cond_1
    :goto_1
    iget-object v2, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    sget-object v3, Landroid/media/MediaPhone$CodecState;->CODEC_START:Landroid/media/MediaPhone$CodecState;

    if-eq v2, v3, :cond_2

    :try_start_1
    sget-object v2, Landroid/media/MediaPhone$CodecState;->CODEC_START:Landroid/media/MediaPhone$CodecState;

    iput-object v2, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    const/16 v3, 0x6a

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    :goto_2
    const/4 v2, 0x3

    invoke-virtual {p0, v2, v5, v5}, Landroid/media/MediaPhone;->codec(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    const/16 v3, 0x69

    invoke-interface {v2, p0, v3, v5}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Landroid/media/MediaPhone;->startRecorder()V

    goto :goto_1

    :catch_1
    move-exception v1

    .restart local v1       #ex:Ljava/lang/IllegalStateException;
    const-string v2, "MediaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .end local v1           #ex:Ljava/lang/IllegalStateException;
    :pswitch_2
    iget-object v3, p0, Landroid/media/MediaPhone;->mCameraLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_2
    iget-boolean v2, p0, Landroid/media/MediaPhone;->mbCameraLock:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_4

    :try_start_3
    iget-object v2, p0, Landroid/media/MediaPhone;->mCameraLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_4
    :goto_3
    :try_start_4
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    sget-object v2, Landroid/media/MediaPhone$CodecState;->CODEC_CLOSE:Landroid/media/MediaPhone$CodecState;

    iput-object v2, p0, Landroid/media/MediaPhone;->mCodecState:Landroid/media/MediaPhone$CodecState;

    invoke-virtual {p0}, Landroid/media/MediaPhone;->stop()V

    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    if-eqz v2, :cond_5

    iget-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    const/16 v3, 0x6b

    const/4 v4, 0x0

    invoke-interface {v2, p0, v3, v4}, Landroid/media/MediaPhone$OnCallEventListener;->onCallEvent(Landroid/media/MediaPhone;ILjava/lang/Object;)Z
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_5
    :goto_4
    const/4 v2, 0x2

    invoke-virtual {p0, v2, v5, v5}, Landroid/media/MediaPhone;->codec(ILandroid/os/Bundle;Landroid/os/Message;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    .local v0, e:Ljava/lang/InterruptedException;
    :try_start_6
    const-string v2, "MediaPhone"

    const-string v4, "interrupted while trying to get mCameraLock"

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .end local v0           #e:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v2

    :catch_3
    move-exception v1

    .restart local v1       #ex:Ljava/lang/IllegalStateException;
    const-string v2, "MediaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stop fail "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public native prepare()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native prepareAsync()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public recordAudio(ZILandroid/os/Message;)V
    .locals 2
    .parameter "bStart"
    .parameter "mode"
    .parameter "result"

    .prologue
    const-string v0, "MediaPhone"

    const-string v1, "recordAudio"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    return-void
.end method

.method public recordVideo(ZLandroid/os/Message;)V
    .locals 2
    .parameter "bStart"
    .parameter "result"

    .prologue
    const-string v0, "MediaPhone"

    const-string v1, "recordVideo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    return-void
.end method

.method public release()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const-string v0, "MediaPhone"

    const-string v1, "release"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/media/MediaPhone;->mStopWaitRequestForAT:Z

    iput-object v2, p0, Landroid/media/MediaPhone;->mOnErrorListener:Landroid/media/MediaPhone$OnErrorListener;

    iput-object v2, p0, Landroid/media/MediaPhone;->mOnMediaInfoListener:Landroid/media/MediaPhone$OnMediaInfoListener;

    iput-object v2, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    iput-object v2, p0, Landroid/media/MediaPhone;->mOnVideoSizeChangedListener:Landroid/media/MediaPhone$OnVideoSizeChangedListener;

    invoke-direct {p0}, Landroid/media/MediaPhone;->_release()V

    return-void
.end method

.method public sendString(Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "str"
    .parameter "result"

    .prologue
    const-string v0, "MediaPhone"

    const-string v1, "sendString"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    return-void
.end method

.method public native setAudioStreamType(I)V
.end method

.method public native setCamera(Landroid/hardware/Camera;)V
.end method

.method public native setCameraParam(Ljava/lang/String;I)V
.end method

.method public native setComm(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation
.end method

.method public native setDecodeType(I)V
.end method

.method public native setEncodeType(I)V
.end method

.method public setLocalDisplay(Landroid/view/Surface;)V
    .locals 0
    .parameter "sv"

    .prologue
    iput-object p1, p0, Landroid/media/MediaPhone;->mLocalSurface:Landroid/view/Surface;

    invoke-direct {p0}, Landroid/media/MediaPhone;->_setLocalSurface()V

    return-void
.end method

.method public setOnCallEventListener(Landroid/media/MediaPhone$OnCallEventListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/media/MediaPhone;->mOnCallEventListener:Landroid/media/MediaPhone$OnCallEventListener;

    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPhone$OnErrorListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/media/MediaPhone;->mOnErrorListener:Landroid/media/MediaPhone$OnErrorListener;

    return-void
.end method

.method public setOnMediaInfoListener(Landroid/media/MediaPhone$OnMediaInfoListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/media/MediaPhone;->mOnMediaInfoListener:Landroid/media/MediaPhone$OnMediaInfoListener;

    return-void
.end method

.method public setOnVideoSizeChangedListener(Landroid/media/MediaPhone$OnVideoSizeChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    iput-object p1, p0, Landroid/media/MediaPhone;->mOnVideoSizeChangedListener:Landroid/media/MediaPhone$OnVideoSizeChangedListener;

    return-void
.end method

.method public setRemoteDisplay(Landroid/view/Surface;)V
    .locals 0
    .parameter "sv"

    .prologue
    iput-object p1, p0, Landroid/media/MediaPhone;->mRemoteSurface:Landroid/view/Surface;

    invoke-direct {p0}, Landroid/media/MediaPhone;->_setRemoteSurface()V

    return-void
.end method

.method public setSubtitutePic(Ljava/lang/String;)V
    .locals 5
    .parameter "fn"

    .prologue
    const-string v2, "gsm.camera.picture"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .local v1, oldValue:Ljava/lang/String;
    const-string v2, "gsm.camera.picture"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "gsm.camera.picture"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, newValue:Ljava/lang/String;
    const-string v2, "MediaPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oldValue: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newValue"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public native setVolume(FF)V
.end method

.method public setWakeMode(Landroid/content/Context;I)V
    .locals 0
    .parameter "context"
    .parameter "mode"

    .prologue
    return-void
.end method

.method public native startDownLink()V
.end method

.method public startPlayer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPhone;->_startPlayer()V

    return-void
.end method

.method public startRecorder()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPhone;->_startRecorder()V

    return-void
.end method

.method public native startUpLink()V
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    invoke-direct {p0}, Landroid/media/MediaPhone;->_stop()V

    return-void
.end method

.method public native stopDownLink()V
.end method

.method public native stopUpLink()V
.end method

.method public test(IILandroid/os/Message;)V
    .locals 2
    .parameter "flag"
    .parameter "value"
    .parameter "result"

    .prologue
    const-string v0, "MediaPhone"

    const-string v1, "test"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/media/MediaPhone;->stayAwake(Z)V

    return-void
.end method

.method public unlockCamera()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    const-string v1, "MediaPhone"

    const-string v2, "unlockCamera() E"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Landroid/media/MediaPhone;->mCameraLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Landroid/media/MediaPhone;->mbCameraLock:Z

    if-nez v2, :cond_0

    const-string v2, "MediaPhone"

    const-string v3, "lockCamera() fail, already unlocked"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/MediaPhone;->mbCameraLock:Z

    iget-object v0, p0, Landroid/media/MediaPhone;->mCameraLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "MediaPhone"

    const-string v1, "unlockCamera() X"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
