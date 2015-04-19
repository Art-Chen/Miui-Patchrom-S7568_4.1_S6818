.class public Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;
.super Landroid/view/ViewGroup;
.source "TickerSlidingDrawer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$1;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;,
        Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;
    }
.end annotation


# static fields
.field private static final ANIMATION_FRAME_DURATION:I = 0x10

.field private static final COLLAPSED_FULL_CLOSED:I = -0x2712

.field private static final EXPANDED_FULL_OPEN:I = -0x2711

.field private static final MAXIMUM_ACCELERATION:F = 2000.0f

.field private static final MAXIMUM_MAJOR_VELOCITY:F = 200.0f

.field private static final MAXIMUM_MINOR_VELOCITY:F = 150.0f

.field private static final MAXIMUM_TAP_VELOCITY:F = 100.0f

.field private static final MSG_ANIMATE:I = 0x3e8

.field public static final ORIENTATION_HORIZONTAL:I = 0x0

.field public static final ORIENTATION_VERTICAL:I = 0x1

.field private static final TAP_THRESHOLD:I = 0x6

.field private static final VELOCITY_UNITS:I = 0x3e8


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAllowSingleTap:Z

.field private mAnimateOnClick:Z

.field private mAnimatedAcceleration:F

.field private mAnimatedVelocity:F

.field private mAnimating:Z

.field private mAnimationLastTime:J

.field private mAnimationPosition:F

.field private mBottomOffset:I

.field private mClosing:Z

.field private mContent:Landroid/view/View;

.field private final mContentFrame:Landroid/graphics/Rect;

.field private final mContentId:I

.field private mCurrentAnimationTime:J

.field private mDefaultBottomOffset:I

.field private mExpanded:Z

.field private final mFrame:Landroid/graphics/Rect;

.field private mHandle:Landroid/view/View;

.field private mHandleHeight:I

.field private final mHandleId:I

.field private mHandleWidth:I

.field private final mHandler:Landroid/os/Handler;

.field private final mInvalidate:Landroid/graphics/Rect;

.field private mLocked:Z

.field private mLogoButton:Landroid/widget/ImageView;

.field private final mMaximumAcceleration:I

.field private final mMaximumMajorVelocity:I

.field private final mMaximumMinorVelocity:I

.field private final mMaximumTapVelocity:I

.field private mOnDrawerCloseListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;

.field private mOnDrawerOpenListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;

.field private mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

.field private mRefreshButton:Landroid/widget/ImageView;

.field private final mTapThreshold:I

.field private mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

.field private mTopOffset:I

.field private mTouchDelta:I

.field private mTracking:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVelocityUnits:I

.field private mVertical:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 199
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v10, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/high16 v9, 0x3f00

    .line 210
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 107
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 108
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContentFrame:Landroid/graphics/Rect;

    .line 109
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 128
    new-instance v5, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;

    const/4 v8, 0x0

    invoke-direct {v5, p0, v8}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$SlidingHandler;-><init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$1;)V

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    .line 149
    const-string v5, "Ticker"

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->TAG:Ljava/lang/String;

    .line 211
    sget-object v5, Lcom/android/internal/R$styleable;->SlidingDrawer:[I

    invoke-virtual {p1, p2, v5, p3, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 213
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v7, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 214
    .local v4, orientation:I
    if-ne v4, v6, :cond_0

    move v5, v6

    :goto_0
    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    .line 215
    invoke-virtual {v0, v6, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    .line 216
    const/4 v5, 0x2

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    .line 217
    const/4 v5, 0x3

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAllowSingleTap:Z

    .line 218
    const/4 v5, 0x6

    invoke-virtual {v0, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimateOnClick:Z

    .line 220
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mDefaultBottomOffset:I

    .line 222
    const/4 v5, 0x4

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    .line 223
    .local v3, handleId:I
    if-nez v3, :cond_1

    .line 224
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The handle attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .end local v3           #handleId:I
    :cond_0
    move v5, v7

    .line 214
    goto :goto_0

    .line 228
    .restart local v3       #handleId:I
    :cond_1
    const/4 v5, 0x5

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 229
    .local v1, contentId:I
    if-nez v1, :cond_2

    .line 230
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content attribute is required and must refer to a valid child."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 234
    :cond_2
    if-ne v3, v1, :cond_3

    .line 235
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "The content and handle attributes must refer to different children."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 239
    :cond_3
    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleId:I

    .line 240
    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContentId:I

    .line 242
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    iget v2, v5, Landroid/util/DisplayMetrics;->density:F

    .line 243
    .local v2, density:F
    const/high16 v5, 0x40c0

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    .line 244
    const/high16 v5, 0x42c8

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumTapVelocity:I

    .line 245
    const/high16 v5, 0x4316

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    .line 246
    const/high16 v5, 0x4348

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    .line 247
    const/high16 v5, 0x44fa

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    .line 248
    const/high16 v5, 0x447a

    mul-float/2addr v5, v2

    add-float/2addr v5, v9

    float-to-int v5, v5

    iput v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityUnits:I

    .line 250
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 252
    invoke-virtual {p0, v7}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 253
    return-void
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 85
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimateOnClick:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 85
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->doAnimation()V

    return-void
.end method

.method private animateClose(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 531
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareTracking(I)V

    .line 532
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    .line 533
    return-void
.end method

.method private animateOpen(I)V
    .locals 2
    .parameter "position"

    .prologue
    .line 536
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareTracking(I)V

    .line 537
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v0, v0

    int-to-float v0, v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    .line 538
    return-void
.end method

.method private closeDrawer()V
    .locals 2

    .prologue
    .line 868
    const/16 v0, -0x2712

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    .line 869
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onAnimationFinished()V

    .line 872
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 873
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    .line 875
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_2

    .line 883
    :cond_1
    :goto_0
    return-void

    .line 879
    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    .line 880
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;

    if-eqz v0, :cond_1

    .line 881
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;->onDrawerClosed()V

    goto :goto_0
.end method

.method private doAnimation()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 729
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_0

    .line 730
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->incrementAnimation()V

    .line 731
    iget v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getHeight()I

    move-result v0

    :goto_0
    add-int/2addr v0, v2

    add-int/lit8 v0, v0, -0x1

    int-to-float v0, v0

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_2

    .line 732
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 733
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->closeDrawer()V

    .line 744
    :cond_0
    :goto_1
    return-void

    .line 731
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getWidth()I

    move-result v0

    goto :goto_0

    .line 734
    :cond_2
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    iget v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 735
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 736
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->openDrawer()V

    goto :goto_1

    .line 738
    :cond_3
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    float-to-int v0, v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    .line 739
    iget-wide v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    const-wide/16 v2, 0x10

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 740
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-wide v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    goto :goto_1
.end method

.method private incrementAnimation()V
    .locals 8

    .prologue
    .line 747
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 748
    .local v1, now:J
    iget-wide v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationLastTime:J

    sub-long v6, v1, v6

    long-to-float v6, v6

    const/high16 v7, 0x447a

    div-float v4, v6, v7

    .line 749
    .local v4, t:F
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    .line 750
    .local v3, position:F
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 751
    .local v5, v:F
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 752
    .local v0, a:F
    mul-float v6, v5, v4

    add-float/2addr v6, v3

    const/high16 v7, 0x3f00

    mul-float/2addr v7, v0

    mul-float/2addr v7, v4

    mul-float/2addr v7, v4

    add-float/2addr v6, v7

    iput v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    .line 753
    mul-float v6, v0, v4

    add-float/2addr v6, v5

    iput v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 754
    iput-wide v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 755
    return-void
.end method

.method private moveHandle(I)V
    .locals 12
    .parameter "position"

    .prologue
    const/4 v11, 0x0

    const/16 v9, -0x2711

    const/16 v8, -0x2712

    .line 615
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 617
    .local v3, handle:Landroid/view/View;
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_4

    .line 618
    if-ne p1, v9, :cond_0

    .line 619
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 620
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 678
    :goto_0
    return-void

    .line 621
    :cond_0
    if-ne p1, v8, :cond_1

    .line 622
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 624
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    goto :goto_0

    .line 626
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v6

    .line 627
    .local v6, top:I
    sub-int v1, p1, v6

    .line 628
    .local v1, deltaY:I
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_3

    .line 629
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v6

    .line 633
    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 635
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 636
    .local v2, frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 638
    .local v5, region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 639
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 641
    iget v7, v2, Landroid/graphics/Rect;->left:I

    iget v8, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v1

    iget v9, v2, Landroid/graphics/Rect;->right:I

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v10, v1

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 642
    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getWidth()I

    move-result v8

    iget v9, v2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v9, v1

    iget-object v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v5, v11, v7, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 645
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto :goto_0

    .line 630
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_3
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    if-le v1, v7, :cond_2

    .line 631
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v7, v8

    sub-int v1, v7, v6

    goto :goto_1

    .line 648
    .end local v1           #deltaY:I
    .end local v6           #top:I
    :cond_4
    if-ne p1, v9, :cond_5

    .line 649
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 650
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 651
    :cond_5
    if-ne p1, v8, :cond_6

    .line 652
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    invoke-virtual {v3, v7}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 654
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    goto/16 :goto_0

    .line 656
    :cond_6
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    .line 657
    .local v4, left:I
    sub-int v0, p1, v4

    .line 658
    .local v0, deltaX:I
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    if-ge p1, v7, :cond_8

    .line 659
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v0, v7, v4

    .line 663
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    .line 665
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 666
    .restart local v2       #frame:Landroid/graphics/Rect;
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mInvalidate:Landroid/graphics/Rect;

    .line 668
    .restart local v5       #region:Landroid/graphics/Rect;
    invoke-virtual {v3, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 669
    invoke-virtual {v5, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 671
    iget v7, v2, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->top:I

    iget v9, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v9, v0

    iget v10, v2, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;->union(IIII)V

    .line 672
    iget v7, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v0

    iget v8, v2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v8, v0

    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getHeight()I

    move-result v9

    invoke-virtual {v5, v7, v11, v8, v9}, Landroid/graphics/Rect;->union(IIII)V

    .line 675
    invoke-virtual {p0, v5}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 660
    .end local v2           #frame:Landroid/graphics/Rect;
    .end local v5           #region:Landroid/graphics/Rect;
    :cond_8
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int/2addr v7, v4

    if-le v0, v7, :cond_7

    .line 661
    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v8

    sub-int/2addr v7, v8

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v7, v8

    sub-int v0, v7, v4

    goto :goto_2
.end method

.method private openDrawer()V
    .locals 2

    .prologue
    .line 886
    const/16 v0, -0x2711

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    .line 887
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 888
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onAnimationFinished()V

    .line 890
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 892
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v0, :cond_2

    .line 901
    :cond_1
    :goto_0
    return-void

    .line 896
    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    .line 898
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;

    if-eqz v0, :cond_1

    .line 899
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;->onDrawerOpened()V

    goto :goto_0
.end method

.method private performFling(IFZ)V
    .locals 6
    .parameter "position"
    .parameter "velocity"
    .parameter "always"

    .prologue
    const/16 v5, 0x3e8

    const/4 v4, 0x0

    .line 541
    int-to-float v2, p1

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    .line 542
    iput p2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 544
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v2, :cond_4

    .line 545
    if-nez p3, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_0

    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    :goto_0
    add-int/2addr v2, v3

    if-le p1, v2, :cond_3

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_3

    .line 550
    :cond_0
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 551
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 552
    iput v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 580
    :cond_1
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 581
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 582
    const-wide/16 v2, 0x10

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 583
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 584
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 586
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->stopTracking()V

    .line 587
    return-void

    .line 545
    .end local v0           #now:J
    :cond_2
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 556
    :cond_3
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 557
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 558
    iput v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 562
    :cond_4
    if-nez p3, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-gtz v2, :cond_5

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v2, :cond_6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getHeight()I

    move-result v2

    :goto_2
    div-int/lit8 v2, v2, 0x2

    if-le p1, v2, :cond_7

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    neg-int v2, v2

    int-to-float v2, v2

    cmpl-float v2, p2, v2

    if-lez v2, :cond_7

    .line 566
    :cond_5
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 567
    cmpg-float v2, p2, v4

    if-gez v2, :cond_1

    .line 568
    iput v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1

    .line 562
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getWidth()I

    move-result v2

    goto :goto_2

    .line 573
    :cond_7
    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    neg-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 574
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    .line 575
    iput v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    goto :goto_1
.end method

.method private prepareContent()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    const/high16 v8, 0x4000

    .line 681
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v5, :cond_0

    .line 712
    :goto_0
    return-void

    .line 687
    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 688
    .local v2, content:Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->isLayoutRequested()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 689
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v5, :cond_2

    .line 690
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    .line 691
    .local v0, childHeight:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v0

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v3, v5, v6

    .line 692
    .local v3, height:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    invoke-static {v5, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 694
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v7, v0

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v2, v9, v5, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 708
    .end local v0           #childHeight:I
    .end local v3           #height:I
    :cond_1
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/ViewTreeObserver;->dispatchOnPreDraw()Z

    .line 709
    invoke-virtual {v2}, Landroid/view/View;->buildDrawingCache()V

    .line 711
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 697
    :cond_2
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 698
    .local v1, childWidth:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v4, v5, v6

    .line 699
    .local v4, width:I
    invoke-static {v4, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v6

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v7

    sub-int/2addr v6, v7

    invoke-static {v6, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    invoke-virtual {v2, v5, v6}, Landroid/view/View;->measure(II)V

    .line 701
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v6, v1

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    invoke-virtual {v2, v5, v9, v6, v7}, Landroid/view/View;->layout(IIII)V

    goto :goto_1
.end method

.method private prepareTracking(I)V
    .locals 8
    .parameter "position"

    .prologue
    const/16 v7, 0x3e8

    const/4 v3, 0x0

    const/4 v4, 0x1

    .line 590
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    .line 591
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v5

    iput-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 592
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v5, :cond_0

    move v2, v4

    .line 593
    .local v2, opening:Z
    :goto_0
    if-eqz v2, :cond_2

    .line 594
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumAcceleration:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedAcceleration:F

    .line 595
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMajorVelocity:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimatedVelocity:F

    .line 596
    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    iget-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v3, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getHeight()I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v3, v6

    :goto_1
    add-int/2addr v3, v5

    int-to-float v3, v3

    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    .line 598
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationPosition:F

    float-to-int v3, v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    .line 599
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 600
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 601
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 602
    .local v0, now:J
    iput-wide v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimationLastTime:J

    .line 603
    const-wide/16 v5, 0x10

    add-long/2addr v5, v0

    iput-wide v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mCurrentAnimationTime:J

    .line 604
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 612
    .end local v0           #now:J
    :goto_2
    return-void

    .end local v2           #opening:Z
    :cond_0
    move v2, v3

    .line 592
    goto :goto_0

    .line 596
    .restart local v2       #opening:Z
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getWidth()I

    move-result v3

    iget v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v3, v6

    goto :goto_1

    .line 606
    :cond_2
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v4, :cond_3

    .line 607
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    .line 608
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 610
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    goto :goto_2
.end method

.method private stopTracking()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 715
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 716
    iput-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    .line 718
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v0, :cond_0

    .line 719
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 722
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 724
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 726
    :cond_1
    return-void
.end method


# virtual methods
.method public animateClose()V
    .locals 2

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareContent()V

    .line 832
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 833
    .local v0, scrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 834
    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 836
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose(I)V

    .line 838
    if-eqz v0, :cond_1

    .line 839
    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 841
    :cond_1
    return-void

    .line 836
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateOpen()V
    .locals 2

    .prologue
    .line 853
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareContent()V

    .line 854
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 855
    .local v0, scrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;
    if-eqz v0, :cond_0

    .line 856
    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 858
    :cond_0
    iget-boolean v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    :goto_0
    invoke-direct {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateOpen(I)V

    .line 860
    const/16 v1, 0x20

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 862
    if-eqz v0, :cond_1

    .line 863
    invoke-interface {v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollEnded()V

    .line 865
    :cond_1
    return-void

    .line 858
    :cond_2
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    goto :goto_0
.end method

.method public animateToggle()V
    .locals 1

    .prologue
    .line 786
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 787
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateOpen()V

    .line 791
    :goto_0
    return-void

    .line 789
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose()V

    goto :goto_0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 816
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->closeDrawer()V

    .line 817
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 818
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->requestLayout()V

    .line 819
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .parameter "canvas"

    .prologue
    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 307
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getDrawingTime()J

    move-result-wide v1

    .line 308
    .local v1, drawingTime:J
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 309
    .local v3, handle:Landroid/view/View;
    iget-boolean v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    .line 311
    .local v4, isVertical:Z
    invoke-virtual {p0, p1, v3, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 313
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-nez v6, :cond_0

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v6, :cond_6

    .line 314
    :cond_0
    iget-object v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 315
    .local v0, cache:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 316
    if-eqz v4, :cond_2

    .line 317
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v5, v6, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 331
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_1
    :goto_0
    return-void

    .line 319
    .restart local v0       #cache:Landroid/graphics/Bitmap;
    :cond_2
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {p1, v0, v6, v5, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 323
    if-eqz v4, :cond_5

    move v6, v5

    :goto_1
    if-eqz v4, :cond_4

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v5

    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int/2addr v5, v7

    int-to-float v5, v5

    :cond_4
    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 325
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    .line 326
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0

    .line 323
    :cond_5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v6

    iget v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    goto :goto_1

    .line 328
    .end local v0           #cache:Landroid/graphics/Bitmap;
    :cond_6
    iget-boolean v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v5, :cond_1

    .line 329
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-virtual {p0, p1, v5, v1, v2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    goto :goto_0
.end method

.method public getContent()Landroid/view/View;
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    return-object v0
.end method

.method public getDefaultBottomOffset()I
    .locals 1

    .prologue
    .line 1025
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mDefaultBottomOffset:I

    return v0
.end method

.method public getHandle()Landroid/view/View;
    .locals 1

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    return-object v0
.end method

.method public getMinTickerHeights()I
    .locals 3

    .prologue
    .line 1029
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Math.abs(mBottomOffset)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    return v0
.end method

.method public isMoving()Z
    .locals 1

    .prologue
    .line 986
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 977
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    return v0
.end method

.method public lock()V
    .locals 1

    .prologue
    .line 968
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    .line 969
    return-void
.end method

.method protected onFinishInflate()V
    .locals 3

    .prologue
    .line 257
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 258
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    if-nez v0, :cond_0

    .line 259
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The handle attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 262
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$DrawerToggler;-><init>(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$1;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContentId:I

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 265
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    if-nez v0, :cond_1

    .line 266
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The content attribute is must refer to an existing child."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 269
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 272
    const v0, 0x102032a

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mRefreshButton:Landroid/widget/ImageView;

    .line 274
    const v0, 0x1020325

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLogoButton:Landroid/widget/ImageView;

    .line 275
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    .line 374
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    if-eqz v12, :cond_0

    .line 375
    const/4 v12, 0x0

    .line 444
    :goto_0
    return v12

    .line 378
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 380
    .local v0, action:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v10

    .line 381
    .local v10, x:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v11

    .line 383
    .local v11, y:F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v7

    .line 385
    .local v7, rawX:F
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mFrame:Landroid/graphics/Rect;

    .line 386
    .local v4, handleFrame:Landroid/graphics/Rect;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContentFrame:Landroid/graphics/Rect;

    .line 388
    .local v2, contentFrame:Landroid/graphics/Rect;
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 389
    .local v3, handle:Landroid/view/View;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 391
    .local v1, content:Landroid/view/View;
    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 392
    invoke-virtual {v1, v2}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 394
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_1

    float-to-int v12, v10

    float-to-int v13, v11

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_1

    float-to-int v12, v10

    float-to-int v13, v11

    invoke-virtual {v2, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_1

    .line 395
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mClosing:Z

    .line 396
    const/4 v12, 0x1

    goto :goto_0

    .line 398
    :cond_1
    const/4 v12, 0x0

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mClosing:Z

    .line 401
    invoke-virtual {v3, v4}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 402
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-nez v12, :cond_2

    float-to-int v12, v10

    float-to-int v13, v11

    invoke-virtual {v4, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-nez v12, :cond_2

    .line 403
    const/4 v12, 0x0

    goto :goto_0

    .line 407
    :cond_2
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 408
    .local v8, refreshFrame:Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mRefreshButton:Landroid/widget/ImageView;

    invoke-virtual {v12, v8}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 409
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_3

    float-to-int v12, v7

    float-to-int v13, v11

    invoke-virtual {v8, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_3

    .line 410
    const/4 v12, 0x0

    goto :goto_0

    .line 414
    :cond_3
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 415
    .local v6, logoFrame:Landroid/graphics/Rect;
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLogoButton:Landroid/widget/ImageView;

    invoke-virtual {v12, v6}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 416
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->isOpened()Z

    move-result v12

    if-eqz v12, :cond_4

    float-to-int v12, v7

    float-to-int v13, v11

    invoke-virtual {v6, v12, v13}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_4

    .line 417
    const/4 v12, 0x0

    goto/16 :goto_0

    .line 420
    :cond_4
    if-nez v0, :cond_6

    .line 421
    const/4 v12, 0x1

    iput-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    .line 423
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Landroid/view/View;->setPressed(Z)V

    .line 425
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareContent()V

    .line 428
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    if-eqz v12, :cond_5

    .line 429
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    invoke-interface {v12}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;->onScrollStarted()V

    .line 432
    :cond_5
    iget-boolean v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v12, :cond_7

    .line 433
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getTop()I

    move-result v9

    .line 434
    .local v9, top:I
    float-to-int v12, v11

    sub-int/2addr v12, v9

    iput v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTouchDelta:I

    .line 435
    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareTracking(I)V

    .line 441
    .end local v9           #top:I
    :goto_1
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v12, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 444
    :cond_6
    const/4 v12, 0x1

    goto/16 :goto_0

    .line 437
    :cond_7
    iget-object v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v12}, Landroid/view/View;->getLeft()I

    move-result v5

    .line 438
    .local v5, left:I
    float-to-int v12, v10

    sub-int/2addr v12, v5

    iput v12, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTouchDelta:I

    .line 439
    invoke-direct {p0, v5}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->prepareTracking(I)V

    goto :goto_1
.end method

.method protected onLayout(ZIIII)V
    .locals 13
    .parameter "changed"
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 335
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-eqz v8, :cond_0

    .line 370
    :goto_0
    return-void

    .line 339
    :cond_0
    sub-int v7, p4, p2

    .line 340
    .local v7, width:I
    sub-int v6, p5, p3

    .line 342
    .local v6, height:I
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 344
    .local v5, handle:Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 345
    .local v3, childWidth:I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 350
    .local v0, childHeight:I
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    .line 352
    .local v4, content:Landroid/view/View;
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v8, :cond_2

    .line 353
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 354
    .local v1, childLeft:I
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_1

    iget v2, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    .line 356
    .local v2, childTop:I
    :goto_1
    const/4 v8, 0x0

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    iget v11, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v11, v0

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v12

    add-int/2addr v11, v12

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    .line 367
    :goto_2
    add-int v8, v1, v3

    add-int v9, v2, v0

    invoke-virtual {v5, v1, v2, v8, v9}, Landroid/view/View;->layout(IIII)V

    .line 368
    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    .line 369
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v8

    iput v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    goto :goto_0

    .line 354
    .end local v2           #childTop:I
    :cond_1
    sub-int v8, v6, v0

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    add-int v2, v8, v9

    goto :goto_1

    .line 359
    .end local v1           #childLeft:I
    :cond_2
    iget-boolean v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v8, :cond_3

    iget v1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    .line 360
    .restart local v1       #childLeft:I
    :goto_3
    sub-int v8, v6, v0

    div-int/lit8 v2, v8, 0x2

    .line 362
    .restart local v2       #childTop:I
    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v8, v3

    const/4 v9, 0x0

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v10, v3

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    add-int/2addr v10, v11

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v11

    invoke-virtual {v4, v8, v9, v10, v11}, Landroid/view/View;->layout(IIII)V

    goto :goto_2

    .line 359
    .end local v1           #childLeft:I
    .end local v2           #childTop:I
    :cond_3
    sub-int v8, v7, v3

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    add-int v1, v8, v9

    goto :goto_3
.end method

.method protected onMeasure(II)V
    .locals 10
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v9, 0x4000

    .line 279
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 280
    .local v5, widthSpecMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 282
    .local v6, widthSpecSize:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 283
    .local v2, heightSpecMode:I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v3

    .line 285
    .local v3, heightSpecSize:I
    if-eqz v5, :cond_0

    if-nez v2, :cond_1

    .line 286
    :cond_0
    new-instance v7, Ljava/lang/RuntimeException;

    const-string v8, "SlidingDrawer cannot have UNSPECIFIED dimensions"

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 289
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    .line 290
    .local v0, handle:Landroid/view/View;
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->measureChild(Landroid/view/View;II)V

    .line 292
    iget-boolean v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v7, :cond_2

    .line 293
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    sub-int v7, v3, v7

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v1, v7, v8

    .line 294
    .local v1, height:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v6, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v1, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    .line 302
    .end local v1           #height:I
    :goto_0
    invoke-virtual {p0, v6, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->setMeasuredDimension(II)V

    .line 303
    return-void

    .line 297
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    sub-int v7, v6, v7

    iget v8, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    sub-int v4, v7, v8

    .line 298
    .local v4, width:I
    iget-object v7, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mContent:Landroid/view/View;

    invoke-static {v4, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v3, v9}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 13
    .parameter "event"

    .prologue
    .line 449
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    if-eqz v9, :cond_0

    .line 450
    const/4 v9, 0x1

    .line 527
    :goto_0
    return v9

    .line 453
    :cond_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-eqz v9, :cond_1

    .line 454
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v9, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 455
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 456
    .local v0, action:I
    packed-switch v0, :pswitch_data_0

    .line 527
    .end local v0           #action:I
    :cond_1
    :goto_1
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTracking:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAnimating:Z

    if-nez v9, :cond_2

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v9

    if-eqz v9, :cond_18

    :cond_2
    const/4 v9, 0x1

    goto :goto_0

    .line 458
    .restart local v0       #action:I
    :pswitch_0
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    if-eqz v9, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    :goto_2
    float-to-int v9, v9

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTouchDelta:I

    sub-int/2addr v9, v10

    invoke-direct {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->moveHandle(I)V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v9

    goto :goto_2

    .line 462
    :pswitch_1
    iget-object v5, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 463
    .local v5, velocityTracker:Landroid/view/VelocityTracker;
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVelocityUnits:I

    invoke-virtual {v5, v9}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 465
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v8

    .line 466
    .local v8, yVelocity:F
    invoke-virtual {v5}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v7

    .line 469
    .local v7, xVelocity:F
    iget-boolean v6, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mVertical:Z

    .line 470
    .local v6, vertical:Z
    if-eqz v6, :cond_a

    .line 471
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_9

    const/4 v2, 0x1

    .line 472
    .local v2, negative:Z
    :goto_3
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_4

    .line 473
    neg-float v7, v7

    .line 475
    :cond_4
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v7, v9

    if-lez v9, :cond_5

    .line 476
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v7, v9

    .line 488
    :cond_5
    :goto_4
    float-to-double v9, v7

    float-to-double v11, v8

    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v9

    double-to-float v4, v9

    .line 489
    .local v4, velocity:F
    if-eqz v2, :cond_6

    .line 490
    neg-float v4, v4

    .line 493
    :cond_6
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getTop()I

    move-result v3

    .line 494
    .local v3, top:I
    iget-object v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandle:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 496
    .local v1, left:I
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v9

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumTapVelocity:I

    int-to-float v10, v10

    cmpg-float v9, v9, v10

    if-gez v9, :cond_16

    .line 497
    if-eqz v6, :cond_d

    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_7

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v3, v9, :cond_8

    :cond_7
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getBottom()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getTop()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleHeight:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-le v3, v9, :cond_f

    .line 504
    :cond_8
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mAllowSingleTap:Z

    if-eqz v9, :cond_13

    .line 505
    const/4 v9, 0x0

    invoke-virtual {p0, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->playSoundEffect(I)V

    .line 507
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_11

    .line 508
    if-eqz v6, :cond_10

    .end local v3           #top:I
    :goto_5
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateClose(I)V

    goto/16 :goto_1

    .line 471
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v4           #velocity:F
    :cond_9
    const/4 v2, 0x0

    goto :goto_3

    .line 479
    :cond_a
    const/4 v9, 0x0

    cmpg-float v9, v7, v9

    if-gez v9, :cond_c

    const/4 v2, 0x1

    .line 480
    .restart local v2       #negative:Z
    :goto_6
    const/4 v9, 0x0

    cmpg-float v9, v8, v9

    if-gez v9, :cond_b

    .line 481
    neg-float v8, v8

    .line 483
    :cond_b
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v9, v9

    cmpl-float v9, v8, v9

    if-lez v9, :cond_5

    .line 484
    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mMaximumMinorVelocity:I

    int-to-float v8, v9

    goto :goto_4

    .line 479
    .end local v2           #negative:Z
    :cond_c
    const/4 v2, 0x0

    goto :goto_6

    .line 497
    .restart local v1       #left:I
    .restart local v2       #negative:Z
    .restart local v3       #top:I
    .restart local v4       #velocity:F
    :cond_d
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-eqz v9, :cond_e

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTopOffset:I

    add-int/2addr v9, v10

    if-lt v1, v9, :cond_8

    :cond_e
    iget-boolean v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v9, :cond_f

    iget v9, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getRight()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->getLeft()I

    move-result v10

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mHandleWidth:I

    sub-int/2addr v9, v10

    iget v10, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTapThreshold:I

    sub-int/2addr v9, v10

    if-gt v1, v9, :cond_8

    .line 517
    :cond_f
    if-eqz v6, :cond_15

    .end local v3           #top:I
    :goto_7
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_10
    move v3, v1

    .line 508
    goto :goto_5

    .line 510
    :cond_11
    if-eqz v6, :cond_12

    .end local v3           #top:I
    :goto_8
    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->animateOpen(I)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_12
    move v3, v1

    goto :goto_8

    .line 513
    :cond_13
    if-eqz v6, :cond_14

    .end local v3           #top:I
    :goto_9
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_14
    move v3, v1

    goto :goto_9

    :cond_15
    move v3, v1

    .line 517
    goto :goto_7

    .line 520
    :cond_16
    if-eqz v6, :cond_17

    .end local v3           #top:I
    :goto_a
    const/4 v9, 0x0

    invoke-direct {p0, v3, v4, v9}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->performFling(IFZ)V

    goto/16 :goto_1

    .restart local v3       #top:I
    :cond_17
    move v3, v1

    goto :goto_a

    .line 527
    .end local v0           #action:I
    .end local v1           #left:I
    .end local v2           #negative:Z
    .end local v3           #top:I
    .end local v4           #velocity:F
    .end local v5           #velocityTracker:Landroid/view/VelocityTracker;
    .end local v6           #vertical:Z
    .end local v7           #xVelocity:F
    .end local v8           #yVelocity:F
    :cond_18
    const/4 v9, 0x0

    goto/16 :goto_0

    .line 456
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public open()V
    .locals 1

    .prologue
    .line 801
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->openDrawer()V

    .line 802
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 803
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->requestLayout()V

    .line 805
    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->sendAccessibilityEvent(I)V

    .line 806
    return-void
.end method

.method public setBottomOffset(I)V
    .locals 0
    .parameter "offset"

    .prologue
    .line 1021
    iput p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mBottomOffset:I

    .line 1022
    return-void
.end method

.method public setOnDrawerCloseListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;)V
    .locals 0
    .parameter "onDrawerCloseListener"

    .prologue
    .line 918
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerCloseListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerCloseListener;

    .line 919
    return-void
.end method

.method public setOnDrawerOpenListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;)V
    .locals 0
    .parameter "onDrawerOpenListener"

    .prologue
    .line 909
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerOpenListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerOpenListener;

    .line 910
    return-void
.end method

.method public setOnDrawerScrollListener(Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;)V
    .locals 0
    .parameter "onDrawerScrollListener"

    .prologue
    .line 930
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mOnDrawerScrollListener:Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer$OnDrawerScrollListener;

    .line 931
    return-void
.end method

.method public setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    .line 1018
    return-void
.end method

.method public toggle()V
    .locals 1

    .prologue
    .line 767
    iget-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mExpanded:Z

    if-nez v0, :cond_0

    .line 768
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->openDrawer()V

    .line 772
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->invalidate()V

    .line 773
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->requestLayout()V

    .line 774
    return-void

    .line 770
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->closeDrawer()V

    goto :goto_0
.end method

.method public unlock()V
    .locals 1

    .prologue
    .line 959
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/sec/TickerSlidingDrawer;->mLocked:Z

    .line 960
    return-void
.end method
