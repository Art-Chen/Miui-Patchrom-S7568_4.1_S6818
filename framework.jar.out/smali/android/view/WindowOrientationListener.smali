.class public abstract Landroid/view/WindowOrientationListener;
.super Ljava/lang/Object;
.source "WindowOrientationListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/WindowOrientationListener$SensorEventListenerImpl;,
        Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "WindowOrientationListener"

.field private static final localLOGV:Z

.field private static sCurrentAppOrientation:I

.field private static sCurrentRotation:I


# instance fields
.field private mContext:Landroid/content/Context;

.field mCurrentRotation:I

.field private mEnabled:Z

.field mLogEnabled:Z

.field private mRate:I

.field private mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

.field private mSensor:Landroid/hardware/Sensor;

.field private mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mUsedautorotioansensor:Z

.field private mbResultFaceDectection:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 81
    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/view/WindowOrientationListener;-><init>(Landroid/content/Context;I)V

    .line 83
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "rate"

    .prologue
    const/4 v4, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x1

    .line 96
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput v2, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 97
    const-string/jumbo v1, "sensor"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    .line 98
    iput p2, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 100
    iput-object p1, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    .line 101
    iput-boolean v4, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 102
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1}, Landroid/hardware/SensorManager;->getSupportedFunction()I

    move-result v0

    .line 103
    .local v0, nfeature:I
    and-int/lit8 v1, v0, 0x6

    if-eqz v1, :cond_5

    .line 105
    if-ne p2, v2, :cond_0

    .line 106
    const/4 v1, 0x2

    iput v1, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 107
    :cond_0
    iput-boolean v3, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 115
    :goto_0
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v1, v3, :cond_1

    .line 116
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v2, 0xf

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 118
    :cond_1
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-nez v1, :cond_3

    .line 120
    :cond_2
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    .line 121
    iput-boolean v4, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    .line 123
    :cond_3
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_4

    .line 126
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-ne v1, v3, :cond_7

    .line 127
    new-instance v1, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-direct {v1, p0}, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;)V

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    .line 135
    :cond_4
    :goto_1
    return-void

    .line 111
    :cond_5
    if-ne p2, v2, :cond_6

    .line 112
    const/4 v1, 0x3

    iput v1, p0, Landroid/view/WindowOrientationListener;->mRate:I

    .line 113
    :cond_6
    iput-boolean v3, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    goto :goto_0

    .line 130
    :cond_7
    const-string v1, "WindowOrientationListener"

    const-string v2, "++++SensorEventListenerImpl"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    new-instance v1, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-direct {v1, p0, v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;-><init>(Landroid/view/WindowOrientationListener;I)V

    iput-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_1
.end method

.method static synthetic access$200(Landroid/view/WindowOrientationListener;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getCurrentRotation()I
    .locals 1

    .prologue
    .line 1096
    sget v0, Landroid/view/WindowOrientationListener;->sCurrentRotation:I

    return v0
.end method

.method public static setCurrentAppOrientation(I)V
    .locals 0
    .parameter "appOrientation"

    .prologue
    .line 1091
    sput p0, Landroid/view/WindowOrientationListener;->sCurrentAppOrientation:I

    .line 1092
    return-void
.end method


# virtual methods
.method public canDetectOrientation()Z
    .locals 1

    .prologue
    .line 217
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disable()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 159
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 160
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Invalid disable"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_0
    :goto_0
    return-void

    .line 163
    :cond_1
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-ne v0, v2, :cond_0

    .line 164
    const-string v0, "WindowOrientationListener"

    const-string v1, "WindowOrientationListener disabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_1
    invoke-virtual {v1, v0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 168
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eq v0, v2, :cond_3

    .line 169
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    #calls: Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->clearProposal()V
    invoke-static {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->access$000(Landroid/view/WindowOrientationListener$SensorEventListenerImpl;)V

    .line 173
    :goto_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0

    .line 165
    :cond_2
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_1

    .line 171
    :cond_3
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    #calls: Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->reset()V
    invoke-static {v0}, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->access$100(Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;)V

    goto :goto_2
.end method

.method public enable()V
    .locals 4

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 143
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    if-nez v0, :cond_1

    .line 144
    const-string v0, "WindowOrientationListener"

    const-string v1, "Cannot detect sensors. Not enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_0
    :goto_0
    return-void

    .line 147
    :cond_1
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-nez v0, :cond_0

    .line 148
    const-string v0, "WindowOrientationListener"

    const-string v1, "WindowOrientationListener enabled"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v1, p0, Landroid/view/WindowOrientationListener;->mSensorManager:Landroid/hardware/SensorManager;

    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    :goto_1
    iget-object v2, p0, Landroid/view/WindowOrientationListener;->mSensor:Landroid/hardware/Sensor;

    iget v3, p0, Landroid/view/WindowOrientationListener;->mRate:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 151
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    goto :goto_0

    .line 149
    :cond_2
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    goto :goto_1
.end method

.method public getProposedRotation()I
    .locals 4

    .prologue
    const/4 v0, -0x1

    .line 196
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mEnabled:Z

    if-eqz v1, :cond_0

    .line 197
    iget-boolean v1, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 199
    const-string v1, "WindowOrientationListener"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getProposedRotation facedetection :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :cond_0
    :goto_0
    return v0

    .line 202
    :cond_1
    iget-boolean v0, p0, Landroid/view/WindowOrientationListener;->mUsedautorotioansensor:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSOSensorEventListener:Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$ScreenOrientationEventListenerImpl;->getProposedRotation()I

    move-result v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroid/view/WindowOrientationListener;->mSensorEventListener:Landroid/view/WindowOrientationListener$SensorEventListenerImpl;

    invoke-virtual {v0}, Landroid/view/WindowOrientationListener$SensorEventListenerImpl;->getProposedRotation()I

    move-result v0

    goto :goto_0
.end method

.method public abstract onProposedRotationChanged(I)V
.end method

.method public setCurrentRotation(I)V
    .locals 0
    .parameter "rotation"

    .prologue
    .line 183
    iput p1, p0, Landroid/view/WindowOrientationListener;->mCurrentRotation:I

    .line 184
    sput p1, Landroid/view/WindowOrientationListener;->sCurrentRotation:I

    .line 185
    return-void
.end method

.method public setFaceDetectionResult(Z)V
    .locals 0
    .parameter "ResultFaceDectection"

    .prologue
    .line 210
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener;->mbResultFaceDectection:Z

    .line 211
    return-void
.end method

.method public setLogEnabled(Z)V
    .locals 0
    .parameter "enable"

    .prologue
    .line 239
    iput-boolean p1, p0, Landroid/view/WindowOrientationListener;->mLogEnabled:Z

    .line 240
    return-void
.end method
