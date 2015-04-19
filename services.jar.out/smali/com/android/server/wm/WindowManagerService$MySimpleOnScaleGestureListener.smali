.class public Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;
.super Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;
.source "WindowManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MySimpleOnScaleGestureListener"
.end annotation


# instance fields
.field mOnScaleEndCalled:Z

.field mPinchCloseIntent:Landroid/content/Intent;

.field mPinchOpenIntent:Landroid/content/Intent;

.field final synthetic this$0:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;)V
    .locals 2
    .parameter

    .prologue
    .line 975
    iput-object p1, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->this$0:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0}, Landroid/view/ScaleGestureDetector$SimpleOnScaleGestureListener;-><init>()V

    .line 976
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mOnScaleEndCalled:Z

    .line 977
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.GESTURE_PINCH_OPEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mPinchOpenIntent:Landroid/content/Intent;

    .line 978
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.sec.android.multiwindow.GESTURE_PINCH_CLOSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mPinchCloseIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3
    .parameter "detector"

    .prologue
    const/4 v2, 0x0

    .line 982
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v1, 0x3f83d70a

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 983
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mOnScaleEndCalled:Z

    if-eqz v0, :cond_0

    .line 984
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mOnScaleEndCalled:Z

    .line 985
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mPinchOpenIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 993
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 987
    :cond_1
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getScaleFactor()F

    move-result v0

    const v1, 0x3f7851ec

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 988
    iget-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mOnScaleEndCalled:Z

    if-eqz v0, :cond_0

    .line 989
    iput-boolean v2, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mOnScaleEndCalled:Z

    .line 990
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->this$0:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mPinchCloseIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 1
    .parameter "detector"

    .prologue
    .line 998
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 1
    .parameter "detector"

    .prologue
    .line 1003
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerService$MySimpleOnScaleGestureListener;->mOnScaleEndCalled:Z

    .line 1004
    return-void
.end method
