.class final Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/WindowOrientationListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ScreenOrientationEventListenerImpl"
.end annotation


# static fields
.field private static mfaceDetectionm:Lcom/sec/android/facedetection/FaceDetectionManager;


# instance fields
.field private final mOrientationListener:Landroid/view/WindowOrientationListener;

.field private mPm:Landroid/os/PowerManager;

.field private mProposedRotation:I


# direct methods
.method public constructor <init>(Landroid/view/WindowOrientationListener;)V
    .locals 0
    .parameter "orientationListener"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    return-void
.end method

.method static synthetic access$100(Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->reset()V

    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    iput v0, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    return-void
.end method


# virtual methods
.method public getProposedRotation()I
    .locals 3

    .prologue
    const/4 v0, -0x1

    iget v1, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-lt v1, v0, :cond_0

    iget v1, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v0, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    goto :goto_0
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 6
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v3, v2

    .local v1, x:F
    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Rotation Sensor : x="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    float-to-int v3, v1

    iput v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    iget v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v3, :cond_0

    iget v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    const/4 v4, 0x3

    if-le v3, v4, :cond_1

    :cond_0
    const/4 v3, -0x1

    iput v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    :cond_1
    iget v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    if-ltz v3, :cond_2

    iget v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    iget-object v4, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v4, v4, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    if-eq v3, v4, :cond_2

    const-string v3, "WindowOrientationListener"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Proposed rotation changed!  proposedRotation="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "currentRotation = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v5, v5, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    #getter for: Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;
    invoke-static {v3}, Landroid/view/WindowOrientationListener;->access$200(Landroid/view/WindowOrientationListener;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "intelligent_rotation_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_3

    const/4 v0, 0x1

    .local v0, intelligent_rotation_enabled:Z
    :goto_0
    iget-object v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    invoke-virtual {v3, v2}, Landroid/view/WindowOrientationListener;->setFaceDetectionResult(Z)V

    iget-object v2, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mOrientationListener:Landroid/view/WindowOrientationListener;

    iget v3, p0, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->mProposedRotation:I

    invoke-virtual {v2, v3}, Landroid/view/WindowOrientationListener;->onProposedRotationChanged(I)V

    .end local v0           #intelligent_rotation_enabled:Z
    :cond_2
    return-void

    :cond_3
    move v0, v2

    goto :goto_0
.end method
