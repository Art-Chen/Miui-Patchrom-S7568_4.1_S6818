.class public final Landroid/sec/multiwindow/impl/MultiWindowManager;
.super Ljava/lang/Object;
.source "MultiWindowManager.java"


# static fields
.field private static A:Landroid/graphics/Rect; = null

.field private static B:Landroid/graphics/Rect; = null

.field private static C:Landroid/graphics/Rect; = null

.field private static D:Landroid/graphics/Rect; = null

.field private static E:Landroid/graphics/Rect; = null

.field private static F:Landroid/graphics/Rect; = null

.field public static final MW_TOUCH_DETECTED_ACTION:Ljava/lang/String; = "mw_action"

.field public static final MW_TOUCH_DETECTED_INTENT:Ljava/lang/String; = "com.sec.multiwindow.MW_TOUCH_DETECTED"

.field public static final MW_TOUCH_DETECTED_X:Ljava/lang/String; = "mw_x"

.field public static final MW_TOUCH_DETECTED_Y:Ljava/lang/String; = "mw_y"

.field private static sCenterBarDockingMargin:I

.field private static sCenterBarFlingSize:I

.field private static sCenterBarInnerPadding:I

.field private static sHasSystemNavBar:Z

.field private static sIsEnabled:Z

.field private static sIsPhone:Z

.field private static sQueried:Z

.field private static sQueriedType:Z

.field private static sSplitDirection:I

.field private static sSplitRect:Landroid/graphics/Rect;

.field private static sSplitRectLock:Ljava/lang/Object;

.field private static sStatusBarHeight:I

.field private static sStatusBarVisibility:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 19
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 20
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 21
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 22
    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 23
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    .line 25
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    .line 26
    const/4 v0, 0x0

    sput-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    .line 27
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 28
    sput-boolean v2, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 29
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    .line 30
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    .line 31
    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarDockingMargin:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static applyCenterBarDocking(IIIII)I
    .locals 3
    .parameter "displayWidth"
    .parameter "displayHeight"
    .parameter "orientation"
    .parameter "centerBarSize"
    .parameter "centerBarPos"

    .prologue
    .line 234
    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarDockingMargin:I

    div-int/lit8 v2, p3, 0x2

    add-int v0, v1, v2

    .line 236
    .local v0, dockingRange:I
    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    .line 237
    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    add-int/2addr v1, v0

    if-gt p4, v1, :cond_1

    .line 238
    sget p4, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    .line 255
    :cond_0
    :goto_0
    return p4

    .line 239
    :cond_1
    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    add-int/2addr v1, v0

    sub-int v1, p0, v1

    if-lt p4, v1, :cond_2

    .line 240
    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    sub-int p4, p0, v1

    goto :goto_0

    .line 241
    :cond_2
    div-int/lit8 v1, p0, 0x2

    sub-int/2addr v1, v0

    if-lt p4, v1, :cond_0

    div-int/lit8 v1, p0, 0x2

    add-int/2addr v1, v0

    if-gt p4, v1, :cond_0

    .line 243
    div-int/lit8 p4, p0, 0x2

    goto :goto_0

    .line 246
    :cond_3
    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    add-int/2addr v1, v0

    if-gt p4, v1, :cond_4

    .line 247
    sget p4, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    goto :goto_0

    .line 248
    :cond_4
    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    add-int/2addr v1, v0

    sub-int v1, p1, v1

    if-lt p4, v1, :cond_5

    .line 249
    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    sub-int p4, p1, v1

    goto :goto_0

    .line 250
    :cond_5
    div-int/lit8 v1, p1, 0x2

    sub-int/2addr v1, v0

    if-lt p4, v1, :cond_0

    div-int/lit8 v1, p1, 0x2

    add-int/2addr v1, v0

    if-gt p4, v1, :cond_0

    .line 252
    div-int/lit8 p4, p1, 0x2

    goto :goto_0
.end method

.method public static calcStatusBarHeight(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 81
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 82
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 84
    iget v3, v0, Landroid/graphics/Point;->x:I

    iget v4, v0, Landroid/graphics/Point;->y:I

    if-le v3, v4, :cond_2

    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 85
    .local v1, shortSize:I
    :goto_0
    mul-int/lit16 v3, v1, 0xa0

    sget v4, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    div-int v2, v3, v4

    .line 87
    .local v2, shortSizeDp:I
    const/16 v3, 0x258

    if-lt v2, v3, :cond_0

    sget v3, Landroid/util/DisplayMetrics;->DENSITY_DEVICE:I

    const/16 v4, 0xd5

    if-ne v3, v4, :cond_1

    .line 88
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x105000a

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sput v3, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 90
    :cond_1
    return-void

    .line 84
    .end local v1           #shortSize:I
    .end local v2           #shortSizeDp:I
    :cond_2
    iget v1, v0, Landroid/graphics/Point;->x:I

    goto :goto_0
.end method

.method public static calculateSplitWindowSize(I)Landroid/graphics/Rect;
    .locals 3
    .parameter "splitZone"

    .prologue
    .line 209
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 211
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 212
    .local v0, result:Landroid/graphics/Rect;
    and-int/lit8 v1, p0, 0x1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 214
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 216
    :cond_0
    and-int/lit8 v1, p0, 0x2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 218
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 220
    :cond_1
    and-int/lit8 v1, p0, 0x4

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    .line 222
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 224
    :cond_2
    and-int/lit8 v1, p0, 0x8

    const/16 v2, 0x8

    if-ne v1, v2, :cond_3

    .line 226
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 229
    :cond_3
    return-object v0
.end method

.method public static findCurrentWindowZone(III)I
    .locals 16
    .parameter "currentLaunchMode"
    .parameter "x"
    .parameter "y"

    .prologue
    .line 259
    invoke-static {}, Landroid/sec/multiwindow/impl/MultiWindowManager;->updateWindowRects()V

    .line 260
    sget-boolean v12, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v12, :cond_0

    sget v4, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 263
    .local v4, realStatusBarHeight:I
    :goto_0
    const/4 v12, 0x2

    new-array v6, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0xc

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v6, v12

    .line 268
    .local v6, split:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v7, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    const/4 v15, 0x3

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v7, v12

    .line 274
    .local v7, split3L:[Landroid/util/Pair;
    const/4 v12, 0x3

    new-array v8, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    const/16 v15, 0xc

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v8, v12

    .line 280
    .local v8, split3R:[Landroid/util/Pair;
    const/4 v12, 0x4

    new-array v9, v12, [Landroid/util/Pair;

    const/4 v12, 0x0

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x1

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    const/4 v15, 0x2

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x2

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    const/4 v15, 0x4

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    const/4 v12, 0x3

    new-instance v13, Landroid/util/Pair;

    sget-object v14, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    const/16 v15, 0x8

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-direct {v13, v14, v15}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v13, v9, v12

    .line 287
    .local v9, split4:[Landroid/util/Pair;
    const/4 v11, 0x0

    .line 289
    .local v11, zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    sparse-switch p0, :sswitch_data_0

    .line 308
    :goto_1
    :sswitch_0
    move-object v1, v11

    .local v1, arr$:[Landroid/util/Pair;
    array-length v3, v1

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_2
    if-ge v2, v3, :cond_2

    aget-object v10, v1, v2

    .line 309
    .local v10, zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    iget-object v5, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/graphics/Rect;

    .line 310
    .local v5, rect:Landroid/graphics/Rect;
    add-int v12, p2, v4

    move/from16 v0, p1

    invoke-virtual {v5, v0, v12}, Landroid/graphics/Rect;->contains(II)Z

    move-result v12

    if-eqz v12, :cond_1

    .line 311
    iget-object v12, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    .line 315
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :goto_3
    return v12

    .line 260
    .end local v1           #arr$:[Landroid/util/Pair;
    .end local v2           #i$:I
    .end local v3           #len$:I
    .end local v4           #realStatusBarHeight:I
    .end local v6           #split:[Landroid/util/Pair;
    .end local v7           #split3L:[Landroid/util/Pair;
    .end local v8           #split3R:[Landroid/util/Pair;
    .end local v9           #split4:[Landroid/util/Pair;
    .end local v11           #zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_0
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 295
    .restart local v4       #realStatusBarHeight:I
    .restart local v6       #split:[Landroid/util/Pair;
    .restart local v7       #split3L:[Landroid/util/Pair;
    .restart local v8       #split3R:[Landroid/util/Pair;
    .restart local v9       #split4:[Landroid/util/Pair;
    .restart local v11       #zoneInfos:[Landroid/util/Pair;,"[Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :sswitch_1
    move-object v11, v6

    .line 296
    goto :goto_1

    .line 298
    :sswitch_2
    move-object v11, v7

    .line 299
    goto :goto_1

    .line 301
    :sswitch_3
    move-object v11, v8

    .line 302
    goto :goto_1

    .line 304
    :sswitch_4
    move-object v11, v9

    goto :goto_1

    .line 308
    .restart local v1       #arr$:[Landroid/util/Pair;
    .restart local v2       #i$:I
    .restart local v3       #len$:I
    .restart local v5       #rect:Landroid/graphics/Rect;
    .restart local v10       #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 315
    .end local v5           #rect:Landroid/graphics/Rect;
    .end local v10           #zone:Landroid/util/Pair;,"Landroid/util/Pair<Landroid/graphics/Rect;Ljava/lang/Integer;>;"
    :cond_2
    const/4 v12, 0x0

    goto :goto_3

    .line 289
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
        0x10 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public static getAppDisplaySize(Landroid/graphics/Point;)V
    .locals 3
    .parameter "size"

    .prologue
    .line 56
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 57
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {}, Landroid/view/WindowManagerImpl;->getDefault()Landroid/view/WindowManagerImpl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowManagerImpl;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 59
    iget v1, v0, Landroid/graphics/Point;->x:I

    iput v1, p0, Landroid/graphics/Point;->x:I

    .line 60
    iget v2, v0, Landroid/graphics/Point;->y:I

    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v1, :cond_0

    sget v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :goto_0
    sub-int v1, v2, v1

    iput v1, p0, Landroid/graphics/Point;->y:I

    .line 61
    return-void

    .line 60
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getCurrentStatusBarVisibility()Z
    .locals 1

    .prologue
    .line 77
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    return v0
.end method

.method public static getSplitDirection()I
    .locals 2

    .prologue
    .line 122
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 123
    :try_start_0
    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    monitor-exit v1

    return v0

    .line 124
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getSplitRect()Landroid/graphics/Rect;
    .locals 2

    .prologue
    .line 128
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 129
    :try_start_0
    sget-object v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    monitor-exit v1

    return-object v0

    .line 130
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getStatusBarHeight()I
    .locals 1

    .prologue
    .line 93
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v0, :cond_0

    sget v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasSystemNavBar()Z
    .locals 1

    .prologue
    .line 69
    sget-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    return v0
.end method

.method public static initHasSystemNavBar(Z)V
    .locals 1
    .parameter "hasBar"

    .prologue
    .line 64
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sHasSystemNavBar:Z

    .line 65
    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 66
    return-void

    .line 65
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isArrangeMode(IZZ)Z
    .locals 4
    .parameter "windowMode"
    .parameter "bResumed"
    .parameter "bIncludePinup"

    .prologue
    const/4 v2, 0x0

    .line 134
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    .line 135
    .local v0, mode:I
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v1

    .line 137
    .local v1, options:I
    const/high16 v3, 0x200

    if-eq v0, v3, :cond_1

    .line 149
    :cond_0
    :goto_0
    return v2

    .line 141
    :cond_1
    const/high16 v3, 0x10

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    .line 145
    if-eqz p1, :cond_0

    if-eqz p2, :cond_2

    .line 146
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 145
    :cond_2
    const/high16 v3, 0x80

    and-int/2addr v3, v1

    if-nez v3, :cond_0

    goto :goto_1
.end method

.method public static isEnabled(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 34
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    if-nez v1, :cond_1

    .line 35
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueried:Z

    .line 36
    const/4 v0, 0x0

    .line 37
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 38
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 39
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->calcStatusBarHeight(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050062

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050063

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarFlingSize:I

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1050064

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    sput v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarDockingMargin:I

    .line 45
    :cond_0
    if-eqz v0, :cond_2

    .line 46
    const-string v1, "com.sec.feature.multiwindow"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    .line 52
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    return v1

    .line 49
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsEnabled:Z

    goto :goto_0
.end method

.method public static isMinimized(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 355
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x20

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isMultiWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 342
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x200

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isNormalWindow(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 338
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->mode(I)I

    move-result v0

    const/high16 v1, 0x100

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPhone(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    .line 97
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    if-nez v1, :cond_1

    .line 98
    const/4 v1, 0x1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sQueriedType:Z

    .line 99
    const/4 v0, 0x0

    .line 100
    .local v0, pm:Landroid/content/pm/PackageManager;
    if-eqz p0, :cond_0

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 104
    :cond_0
    if-eqz v0, :cond_2

    .line 105
    const-string v1, "com.sec.feature.multiwindow.phone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    .line 111
    .end local v0           #pm:Landroid/content/pm/PackageManager;
    :cond_1
    :goto_0
    sget-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    return v1

    .line 108
    .restart local v0       #pm:Landroid/content/pm/PackageManager;
    :cond_2
    new-instance v1, Ljava/io/File;

    const-string v2, "/system/etc/permissions/com.sec.feature.multiwindow.phone.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    sput-boolean v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sIsPhone:Z

    goto :goto_0
.end method

.method public static isPinup(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 350
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->isMultiWindow(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x80

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isResizable(I)Z
    .locals 2
    .parameter "windowMode"

    .prologue
    .line 346
    invoke-static {p0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->option(I)I

    move-result v0

    const/high16 v1, 0x40

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static mode(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 330
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->mode(I)I

    move-result v0

    return v0
.end method

.method private static option(I)I
    .locals 1
    .parameter "windowMode"

    .prologue
    .line 334
    invoke-static {p0}, Landroid/view/WindowManagerPolicy$WindowModeHelper;->option(I)I

    move-result v0

    return v0
.end method

.method public static setCurrentStatusBarVisibility(Z)V
    .locals 0
    .parameter "isVisible"

    .prologue
    .line 73
    sput-boolean p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    .line 74
    return-void
.end method

.method public static setSplitRect(ILandroid/graphics/Rect;)V
    .locals 2
    .parameter "direction"
    .parameter "rect"

    .prologue
    .line 115
    sget-object v1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v1

    .line 116
    :try_start_0
    sput p0, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    .line 117
    sput-object p1, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    .line 118
    monitor-exit v1

    .line 119
    return-void

    .line 118
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static updateWindowRects()V
    .locals 12

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 153
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 154
    .local v0, fullscreen:Landroid/graphics/Point;
    invoke-static {v0}, Landroid/sec/multiwindow/impl/MultiWindowManager;->getAppDisplaySize(Landroid/graphics/Point;)V

    .line 156
    sget-boolean v10, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarVisibility:Z

    if-eqz v10, :cond_1

    sget v6, Landroid/sec/multiwindow/impl/MultiWindowManager;->sStatusBarHeight:I

    .line 157
    .local v6, realStatusBarHeight:I
    :goto_0
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 158
    .local v2, iDeviceWidth:I
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 159
    .local v1, iDeviceHeight:I
    div-int/lit8 v10, v1, 0x2

    add-int v3, v10, v6

    .line 160
    .local v3, iHeightBoundary:I
    div-int/lit8 v4, v2, 0x2

    .line 162
    .local v4, iWidthBoundary:I
    if-le v2, v1, :cond_2

    move v5, v9

    .line 163
    .local v5, landscape:Z
    :goto_1
    const/4 v7, 0x0

    .line 166
    .local v7, splitHalfWidth:I
    sget-object v10, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRectLock:Ljava/lang/Object;

    monitor-enter v10

    .line 167
    :try_start_0
    sget-object v11, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    if-eqz v11, :cond_0

    .line 168
    sget v11, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    if-ne v11, v9, :cond_4

    .line 169
    if-eqz v5, :cond_3

    .line 170
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v3

    .line 171
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    .line 186
    :cond_0
    :goto_2
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    sget v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sCenterBarInnerPadding:I

    sub-int/2addr v7, v9

    .line 189
    if-eqz v5, :cond_6

    .line 190
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v4, v7

    invoke-direct {v9, v8, v6, v10, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 191
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v4, v7

    add-int v11, v1, v6

    invoke-direct {v9, v8, v3, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 192
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v4, v7

    invoke-direct {v8, v9, v6, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 193
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v4, v7

    add-int v10, v1, v6

    invoke-direct {v8, v9, v3, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    .line 201
    :goto_3
    new-instance v8, Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    .line 202
    sget-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->A:Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 204
    new-instance v8, Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    invoke-direct {v8, v9}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    .line 205
    sget-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->B:Landroid/graphics/Rect;

    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    invoke-virtual {v8, v9}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 206
    return-void

    .end local v1           #iDeviceHeight:I
    .end local v2           #iDeviceWidth:I
    .end local v3           #iHeightBoundary:I
    .end local v4           #iWidthBoundary:I
    .end local v5           #landscape:Z
    .end local v6           #realStatusBarHeight:I
    .end local v7           #splitHalfWidth:I
    :cond_1
    move v6, v8

    .line 156
    goto :goto_0

    .restart local v1       #iDeviceHeight:I
    .restart local v2       #iDeviceWidth:I
    .restart local v3       #iHeightBoundary:I
    .restart local v4       #iWidthBoundary:I
    .restart local v6       #realStatusBarHeight:I
    :cond_2
    move v5, v8

    .line 162
    goto :goto_1

    .line 173
    .restart local v5       #landscape:Z
    .restart local v7       #splitHalfWidth:I
    :cond_3
    :try_start_1
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    .line 174
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 176
    :cond_4
    sget v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitDirection:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_0

    .line 177
    if-eqz v5, :cond_5

    .line 178
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerX()I

    move-result v4

    .line 179
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto :goto_2

    .line 181
    :cond_5
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    .line 182
    sget-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->sSplitRect:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    div-int/lit8 v7, v9, 0x2

    goto/16 :goto_2

    .line 186
    :catchall_0
    move-exception v8

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v8

    .line 195
    :cond_6
    new-instance v9, Landroid/graphics/Rect;

    sub-int v10, v3, v7

    invoke-direct {v9, v8, v6, v4, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->C:Landroid/graphics/Rect;

    .line 196
    new-instance v9, Landroid/graphics/Rect;

    add-int v10, v3, v7

    add-int v11, v1, v6

    invoke-direct {v9, v8, v10, v4, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v9, Landroid/sec/multiwindow/impl/MultiWindowManager;->E:Landroid/graphics/Rect;

    .line 197
    new-instance v8, Landroid/graphics/Rect;

    sub-int v9, v3, v7

    invoke-direct {v8, v4, v6, v2, v9}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->D:Landroid/graphics/Rect;

    .line 198
    new-instance v8, Landroid/graphics/Rect;

    add-int v9, v3, v7

    add-int v10, v1, v6

    invoke-direct {v8, v4, v9, v2, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    sput-object v8, Landroid/sec/multiwindow/impl/MultiWindowManager;->F:Landroid/graphics/Rect;

    goto/16 :goto_3
.end method
