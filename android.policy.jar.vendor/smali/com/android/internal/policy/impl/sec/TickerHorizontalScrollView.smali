.class public Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;
.super Landroid/widget/HorizontalScrollView;
.source "TickerHorizontalScrollView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$3;,
        Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;,
        Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;,
        Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalFacebookData;
    }
.end annotation


# instance fields
.field private final MSG_SCROLL_ANIMATION:I

.field private final SCROLL_DELAY_AFTER_CANCEL:I

.field private final SCROLL_DELAY_ON_REPEATING:I

.field private TAG:Ljava/lang/String;

.field private final VELOCITY_JUDGEMENT_VALUE:I

.field private final VELOCITY_UNITS:I

.field private mHandler:Landroid/os/Handler;

.field private mHorizontalView:Landroid/widget/LinearLayout;

.field private mHorizontalViewItemCnt:I

.field private mPage:I

.field private mScrollAnimation:Landroid/animation/ValueAnimator;

.field private mScrollSpeedValue:I

.field private mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private mVelocityUnits:I

.field private scroll:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x7d0

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    const-string v1, "Ticker"

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    .line 51
    iput v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->scroll:I

    .line 63
    const/16 v1, 0x12c1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->MSG_SCROLL_ANIMATION:I

    .line 65
    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->VELOCITY_UNITS:I

    .line 67
    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->VELOCITY_JUDGEMENT_VALUE:I

    .line 69
    const/16 v1, 0xa

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollSpeedValue:I

    .line 70
    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->SCROLL_DELAY_ON_REPEATING:I

    .line 71
    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->SCROLL_DELAY_AFTER_CANCEL:I

    .line 73
    new-instance v1, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$1;-><init>(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    .line 95
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 98
    .local v0, density:F
    const/high16 v1, 0x44fa

    div-float/2addr v1, v0

    const/high16 v2, 0x3f00

    add-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityUnits:I

    .line 100
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    .line 101
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 102
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    const/16 v2, 0x11

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 103
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->addView(Landroid/view/View;)V

    .line 104
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setSmoothScrollingEnabled(Z)V

    .line 105
    invoke-virtual {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->setOverScrollMode(I)V

    .line 107
    const-string v1, "scroll"

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    invoke-static {p0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    .line 108
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 110
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$2;

    invoke-direct {v2, p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$2;-><init>(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 136
    return-void

    .line 107
    :array_0
    .array-data 0x4
        0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->handleScrollAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getScrollXAmount()I

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollSpeedValue:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;)Landroid/animation/ValueAnimator;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method private createMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 6
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    const/high16 v4, 0x4160

    const/high16 v3, 0x3f80

    .line 139
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 140
    .local v0, mHelpText:Landroid/widget/TextView;
    const/high16 v2, -0x100

    invoke-virtual {v0, v3, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V

    .line 141
    const v2, -0x141415

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    const/4 v2, 0x1

    const/high16 v3, 0x4198

    invoke-virtual {v0, v2, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 143
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v1, v2, Landroid/util/DisplayMetrics;->density:F

    .line 144
    .local v1, scale:F
    mul-float v2, v4, v1

    float-to-int v2, v2

    mul-float v3, v4, v1

    float-to-int v3, v3

    invoke-virtual {v0, v2, v5, v3, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 145
    const/16 v2, 0x11

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 146
    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 147
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    return-object v0
.end method

.method private getScroll()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->scroll:I

    return v0
.end method

.method private getScrollXAmount()I
    .locals 3

    .prologue
    .line 306
    const/4 v1, 0x0

    .line 307
    .local v1, maxScroll:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 308
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    .line 307
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 310
    :cond_0
    return v1
.end method

.method private handleScrollAnimation()V
    .locals 7

    .prologue
    .line 278
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v5, "onAnimationStart"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getScrollXAmount()I

    move-result v2

    .line 280
    .local v2, scrollXAmount:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getScrollX()I

    move-result v1

    .line 281
    .local v1, currentScrollX:I
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getWidth()I

    move-result v4

    sub-int v3, v2, v4

    .line 282
    .local v3, targetScrollX:I
    const/16 v4, 0x7d0

    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollSpeedValue:I

    div-int/2addr v4, v5

    add-int/2addr v3, v4

    .line 283
    sub-int v4, v3, v1

    iget v5, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollSpeedValue:I

    mul-int v0, v4, v5

    .line 284
    .local v0, animationDuration:I
    if-lez v3, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    if-eqz v4, :cond_0

    .line 285
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    int-to-long v5, v0

    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 286
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v1, v5, v6

    const/4 v6, 0x1

    aput v3, v5, v6

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 287
    iget-object v4, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    .line 289
    :cond_0
    return-void
.end method

.method private moveToNextPage(I)V
    .locals 3
    .parameter "currentPage"

    .prologue
    .line 330
    invoke-direct {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getScrollXAmount()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getScrollX()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    .line 331
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->moveToPage(I)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->moveToPage(I)V

    goto :goto_0
.end method

.method private moveToPage(I)V
    .locals 3
    .parameter "page"

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, currentComputedScroolX:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 348
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr v0, v2

    .line 347
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 350
    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->smoothScrollTo(II)V

    .line 351
    return-void
.end method

.method private moveToPreviousPage(I)V
    .locals 1
    .parameter "currentPage"

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getScrollX()I

    move-result v0

    if-nez v0, :cond_0

    .line 339
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalViewItemCnt:I

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->moveToPage(I)V

    .line 343
    :goto_0
    return-void

    .line 342
    :cond_0
    add-int/lit8 v0, p1, -0x1

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->moveToPage(I)V

    goto :goto_0
.end method

.method private setScroll(I)V
    .locals 2
    .parameter "value"

    .prologue
    .line 212
    iput p1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->scroll:I

    .line 213
    iget v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->scroll:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->smoothScrollTo(II)V

    .line 214
    return-void
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 499
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 500
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    .line 501
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllUpdateListeners()V

    .line 503
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    .line 504
    return-void
.end method

.method public getCurrentPage()I
    .locals 4

    .prologue
    .line 293
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getScrollX()I

    move-result v1

    .line 294
    .local v1, currentScrollX:I
    const/4 v0, 0x0

    .line 295
    .local v0, currentComputedScroolX:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 296
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v0, v3

    .line 297
    if-le v0, v1, :cond_0

    .line 298
    iput v2, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mPage:I

    .line 299
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mPage:I

    .line 302
    :goto_1
    return v3

    .line 295
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 302
    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method initFacebookData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    .local p2, facebookArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalViewItemCnt:I

    .line 156
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 157
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 159
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 160
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;

    iget-object v5, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookCreatedTime:Ljava/lang/String;

    .line 161
    .local v5, createdtime:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;

    iget-object v3, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookContents:Ljava/lang/String;

    .line 162
    .local v3, contents:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;

    iget-object v4, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$FacebookData;->FacebookFromName:Ljava/lang/String;

    .line 164
    .local v4, fromname:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalFacebookData;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalFacebookData;-><init>(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .local v0, mFacebookDate:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalFacebookData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 159
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 169
    .end local v0           #mFacebookDate:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalFacebookData;
    .end local v3           #contents:Ljava/lang/String;
    .end local v4           #fromname:Ljava/lang/String;
    .end local v5           #createdtime:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method initNewsData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 173
    .local p2, newsArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalViewItemCnt:I

    .line 175
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 178
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 179
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;

    iget-object v3, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsTitle:Ljava/lang/String;

    .line 180
    .local v3, contents:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;

    iget-object v4, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsCredit:Ljava/lang/String;

    .line 181
    .local v4, credit:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;

    iget-object v5, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$NewsData;->NewsPublishTime:Ljava/lang/String;

    .line 182
    .local v5, publishTime:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;-><init>(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    .local v0, mNewsDate:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 178
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 186
    .end local v0           #mNewsDate:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalNewsData;
    .end local v3           #contents:Ljava/lang/String;
    .end local v4           #credit:Ljava/lang/String;
    .end local v5           #publishTime:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method initStockData(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 190
    .local p2, stockArrayList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;>;"
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    iput v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalViewItemCnt:I

    .line 192
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-eqz v1, :cond_0

    .line 193
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 195
    :cond_0
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v6, v1, :cond_1

    .line 196
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    iget-object v3, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->name:Ljava/lang/String;

    .line 197
    .local v3, name:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    iget-object v4, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->price:Ljava/lang/String;

    .line 198
    .local v4, originalPrice:Ljava/lang/String;
    invoke-virtual {p2, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;

    iget-object v5, v1, Lcom/android/internal/policy/impl/sec/TickerUtil$StockItem;->change:Ljava/lang/String;

    .line 200
    .local v5, changePrice:Ljava/lang/String;
    new-instance v0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;-><init>(Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    .local v0, mNewsDate:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 195
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 204
    .end local v0           #mNewsDate:Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$HorizontalStockData;
    .end local v3           #name:Ljava/lang/String;
    .end local v4           #originalPrice:Ljava/lang/String;
    .end local v5           #changePrice:Ljava/lang/String;
    :cond_1
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 222
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 223
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 224
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 494
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->stopAutoScroll()V

    .line 495
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 490
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->startAutoScroll()V

    .line 491
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .parameter "event"

    .prologue
    const/high16 v6, -0x3b06

    .line 229
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_0

    .line 230
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 232
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 273
    :cond_1
    :goto_0
    :pswitch_0
    const/4 v3, 0x1

    return v3

    .line 234
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->stopAutoScroll()V

    goto :goto_0

    .line 238
    :pswitch_2
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v3, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 240
    .local v0, velocityTracker:Landroid/view/VelocityTracker;
    iget v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityUnits:I

    invoke-virtual {v0, v3}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 241
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v2

    .line 242
    .local v2, yVelocity:F
    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v1

    .line 243
    .local v1, xVelocity:F
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "xVelocity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "yVelocity = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v3}, Landroid/view/VelocityTracker;->recycle()V

    .line 247
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 250
    cmpg-float v3, v1, v6

    if-gez v3, :cond_2

    .line 251
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getCurrentPage()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->moveToNextPage(I)V

    .line 252
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->startAutoScroll()V

    goto :goto_0

    .line 254
    :cond_2
    const/high16 v3, 0x44fa

    cmpl-float v3, v1, v3

    if-lez v3, :cond_3

    .line 255
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->getCurrentPage()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->moveToPreviousPage(I)V

    .line 256
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->startAutoScroll()V

    goto :goto_0

    .line 259
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->startAutoScroll()V

    .line 263
    cmpg-float v3, v2, v6

    if-gez v3, :cond_1

    .line 264
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    invoke-interface {v3}, Lcom/android/internal/policy/impl/sec/TickerCallback;->openTickerSlidingDrawer()V

    goto/16 :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method setErrorMessage(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2
    .parameter "context"
    .parameter "message"

    .prologue
    .line 207
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 208
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHorizontalView:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, p2}, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->createMessage(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 209
    return-void
.end method

.method public setSlidingSpeed(Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;)V
    .locals 2
    .parameter "mTickerSlidingSpeed"

    .prologue
    .line 507
    sget-object v0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView$3;->$SwitchMap$com$android$internal$policy$impl$sec$TickerUtil$TickerSlidingSpeed:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/sec/TickerUtil$TickerSlidingSpeed;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 522
    :goto_0
    return-void

    .line 509
    :pswitch_0
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollSpeedValue:I

    goto :goto_0

    .line 512
    :pswitch_1
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollSpeedValue:I

    goto :goto_0

    .line 515
    :pswitch_2
    const/16 v0, 0xf

    iput v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollSpeedValue:I

    goto :goto_0

    .line 507
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setTickerCallback(Lcom/android/internal/policy/impl/sec/TickerCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 525
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mTickerCallback:Lcom/android/internal/policy/impl/sec/TickerCallback;

    .line 526
    return-void
.end method

.method public startAutoScroll()V
    .locals 4

    .prologue
    const/16 v3, 0x12c1

    .line 322
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v2, "startAutoScroll"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 324
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 326
    .local v0, msg:Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 327
    return-void
.end method

.method public stopAutoScroll()V
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v1, "stopAutoScroll"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->TAG:Ljava/lang/String;

    const-string v1, "animation cancel!!"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/TickerHorizontalScrollView;->mScrollAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 319
    :cond_0
    return-void
.end method
