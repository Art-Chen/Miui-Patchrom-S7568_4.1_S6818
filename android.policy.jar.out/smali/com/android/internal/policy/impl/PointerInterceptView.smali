.class public abstract Lcom/android/internal/policy/impl/PointerInterceptView;
.super Landroid/view/View;
.source "PointerInterceptView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;
    }
.end annotation


# static fields
.field private static final ACTION_COLLAPSE:Ljava/lang/String; = "com.android.systemui.statusbar.COLLAPSED"

.field private static final ACTION_EXPAND:Ljava/lang/String; = "com.android.systemui.statusbar.EXPANDED"

.field private static final ANIMATING_DELAY:I = 0x1f4

.field private static final HIDE_DELAY:I = 0xbb8

.field private static final POINTER_INTERCEPT_MARGIN:I = 0xa

.field private static final SHOW_HOVERING_DELAY:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "PointerInterceptView"

.field private static final X_FLICK_VELOCITY:I = 0x5dc

.field private static final Y_FLICK_VELOCITY:I = 0x2ee


# instance fields
.field private final DEBUG:Z

.field mAnimatingHide:Ljava/lang/Runnable;

.field private mCollapseReceiveIntent:Landroid/content/Intent;

.field mCollapseReceiver:Landroid/content/BroadcastReceiver;

.field mDefaultHide:Ljava/lang/Runnable;

.field mDefaultShow:Ljava/lang/Runnable;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mHandler:Landroid/os/Handler;

.field private mHoveringInStatusBarArea:Z

.field private mIsFingerAirViewEnabled:Z

.field private mIsShowUpIndicatorEnabled:Z

.field private mIsStatusBarExpandEnabled:Z

.field private mIsStatusBarWindow:Z

.field private mPreviousOpen:Z

.field private mReadyControlStatusBar:Z

.field private mStatusBarExpanded:Z

.field private mStatusBarHeight:I

.field private mStatusBarShown:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 135
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 35
    invoke-static {}, Landroid/os/Debug;->isProductShip()I

    move-result v2

    if-ne v2, v4, :cond_0

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z

    .line 54
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyControlStatusBar:Z

    .line 55
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    .line 56
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z

    .line 57
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHoveringInStatusBarArea:Z

    .line 59
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mPreviousOpen:Z

    .line 60
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpandEnabled:Z

    .line 61
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarWindow:Z

    .line 63
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsFingerAirViewEnabled:Z

    .line 64
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsShowUpIndicatorEnabled:Z

    .line 308
    new-instance v2, Lcom/android/internal/policy/impl/PointerInterceptView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$2;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mCollapseReceiver:Landroid/content/BroadcastReceiver;

    .line 326
    new-instance v2, Lcom/android/internal/policy/impl/PointerInterceptView$3;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$3;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultShow:Ljava/lang/Runnable;

    .line 335
    new-instance v2, Lcom/android/internal/policy/impl/PointerInterceptView$4;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$4;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    .line 342
    new-instance v2, Lcom/android/internal/policy/impl/PointerInterceptView$5;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$5;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    .line 137
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x105000a

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarHeight:I

    .line 139
    iget v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarHeight:I

    int-to-double v4, v2

    const/high16 v2, 0x4120

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v6

    float-to-double v6, v2

    const-wide/high16 v8, 0x3fe0

    add-double/2addr v6, v8

    add-double/2addr v4, v6

    double-to-int v2, v4

    iput v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarHeight:I

    .line 141
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 142
    .local v0, mCollapseReceiveFilter:Landroid/content/IntentFilter;
    const-string v2, "com.android.systemui.statusbar.COLLAPSED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 143
    const-string v2, "com.android.systemui.statusbar.EXPANDED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mCollapseReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mCollapseReceiveIntent:Landroid/content/Intent;

    .line 146
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    .line 148
    new-instance v1, Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    .line 149
    .local v1, settingsObserver:Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;
    invoke-virtual {v1}, Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;->observe()V

    .line 151
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v4, Lcom/android/internal/policy/impl/PointerInterceptView$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PointerInterceptView$1;-><init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    invoke-direct {v2, p1, v4}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 219
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, v3}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 220
    return-void

    .end local v0           #mCollapseReceiveFilter:Landroid/content/IntentFilter;
    .end local v1           #settingsObserver:Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;
    :cond_0
    move v2, v4

    .line 35
    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/android/internal/policy/impl/PointerInterceptView;->updateSetting()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyControlStatusBar:Z

    return v0
.end method

.method static synthetic access$402(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyControlStatusBar:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/policy/impl/PointerInterceptView;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/policy/impl/PointerInterceptView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarHeight:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpandEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/internal/policy/impl/PointerInterceptView;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarWindow:Z

    return v0
.end method

.method private updateSetting()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 121
    iget-object v5, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 122
    .local v2, resolver:Landroid/content/ContentResolver;
    const-string v5, "finger_air_view"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v0, v3

    .line 124
    .local v0, isFingerAirViewEnabled:Z
    :goto_0
    const-string v5, "finger_air_view_show_up_indicator"

    invoke-static {v2, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_3

    move v1, v3

    .line 126
    .local v1, isShowUpIndicatorEnabled:Z
    :goto_1
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsFingerAirViewEnabled:Z

    if-eq v3, v0, :cond_0

    .line 127
    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsFingerAirViewEnabled:Z

    .line 129
    :cond_0
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsShowUpIndicatorEnabled:Z

    if-eq v3, v1, :cond_1

    .line 130
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsShowUpIndicatorEnabled:Z

    .line 132
    :cond_1
    return-void

    .end local v0           #isFingerAirViewEnabled:Z
    .end local v1           #isShowUpIndicatorEnabled:Z
    :cond_2
    move v0, v4

    .line 122
    goto :goto_0

    .restart local v0       #isFingerAirViewEnabled:Z
    :cond_3
    move v1, v4

    .line 124
    goto :goto_1
.end method


# virtual methods
.method public addPointerEvent(Landroid/view/MotionEvent;ZZ)V
    .locals 5
    .parameter "event"
    .parameter "isStatusBarWindow"
    .parameter "isStatusBarExpandEnabled"

    .prologue
    .line 68
    iput-boolean p2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarWindow:Z

    .line 69
    iput-boolean p3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsStatusBarExpandEnabled:Z

    .line 70
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 71
    const-string v2, "PointerInterceptView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPointerEvent : event = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mIsShowUpIndicatorEnabled = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsShowUpIndicatorEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 76
    .local v0, action:I
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 77
    .local v1, type:I
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    .line 88
    :goto_0
    :pswitch_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsFingerAirViewEnabled:Z

    if-eqz v2, :cond_1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mIsShowUpIndicatorEnabled:Z

    if-eqz v2, :cond_1

    .line 89
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_1

    .line 97
    :cond_1
    :goto_1
    :pswitch_1
    return-void

    .line 84
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_0

    .line 93
    :pswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PointerInterceptView;->postHoverEvent(Landroid/view/MotionEvent;)V

    goto :goto_1

    .line 77
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_2
    .end packed-switch

    .line 89
    :pswitch_data_1
    .packed-switch 0x7
        :pswitch_3
        :pswitch_1
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public abstract onStatusBarCbBehavior(Z)V
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "event"

    .prologue
    .line 279
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouchEvent(), event = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public postHoverEvent(Landroid/view/MotionEvent;)V
    .locals 11
    .parameter "event"

    .prologue
    const-wide/16 v9, 0xbb8

    const-wide/16 v7, 0x1f4

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 223
    invoke-virtual {p1, v5}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    .line 224
    .local v1, type:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 226
    .local v0, action:I
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 227
    if-eqz p1, :cond_0

    .line 228
    const-string v2, "PointerInterceptView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postHoverEvent() : x="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , y = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    const-string v2, "PointerInterceptView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "postHoverEvent() : action = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mStatusBarExpanded = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mStatusBarShown = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->secI(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_1
    if-ne v1, v6, :cond_2

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarExpanded:Z

    if-eqz v2, :cond_3

    .line 275
    :cond_2
    :goto_0
    return-void

    .line 238
    :cond_3
    and-int/lit16 v2, v0, 0xff

    packed-switch v2, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 259
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_5

    .line 260
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 261
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHoveringInStatusBarArea:Z

    .line 263
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    if-nez v2, :cond_2

    .line 264
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultShow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 241
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarHeight:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_4

    .line 242
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 243
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHoveringInStatusBarArea:Z

    .line 245
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    if-nez v2, :cond_2

    .line 246
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultShow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v7, v8}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 249
    :cond_4
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHoveringInStatusBarArea:Z

    goto :goto_0

    .line 253
    :pswitch_3
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultShow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 254
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    if-eqz v2, :cond_2

    .line 255
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 267
    :cond_5
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultShow:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 268
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHoveringInStatusBarArea:Z

    .line 269
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    if-eqz v2, :cond_2

    .line 270
    iget-object v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mDefaultHide:Ljava/lang/Runnable;

    invoke-virtual {v2, v3, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 238
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public sendCallbackFunc(Z)V
    .locals 1
    .parameter "isOpen"

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->sendCallbackFunc(ZZ)V

    .line 285
    return-void
.end method

.method public sendCallbackFunc(ZZ)V
    .locals 4
    .parameter "isOpen"
    .parameter "isForce"

    .prologue
    .line 288
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 289
    const-string v0, "PointerInterceptView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendCallbackFunc() : mPreviousOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mPreviousOpen:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isOpen = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " , isForce = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    :cond_0
    if-nez p2, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mPreviousOpen:Z

    if-eq p1, v0, :cond_2

    .line 294
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mReadyControlStatusBar:Z

    .line 295
    if-eqz p1, :cond_3

    .line 296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mStatusBarShown:Z

    .line 301
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/internal/policy/impl/PointerInterceptView;->onStatusBarCbBehavior(Z)V

    .line 303
    :cond_2
    iput-boolean p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mPreviousOpen:Z

    .line 304
    return-void

    .line 298
    :cond_3
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 299
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView;->mAnimatingHide:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
