.class Lcom/android/settings/SatelliteView$SatelliteViewView;
.super Landroid/view/View;
.source "SatelliteView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SatelliteView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SatelliteViewView"
.end annotation


# static fields
.field static sx:I

.field static sy:I


# instance fields
.field mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 575
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()I

    move-result v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settings/SatelliteView$SatelliteViewView;->sx:I

    .line 576
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()I

    move-result v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()I

    move-result v1

    sub-int/2addr v0, v1

    sput v0, Lcom/android/settings/SatelliteView$SatelliteViewView;->sy:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 582
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 577
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/SatelliteView$SatelliteViewView;->mState:I

    .line 583
    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/SatelliteView$SatelliteViewView;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 574
    invoke-direct {p0, p1}, Lcom/android/settings/SatelliteView$SatelliteViewView;->updateState(I)V

    return-void
.end method

.method private updateState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 586
    iput p1, p0, Lcom/android/settings/SatelliteView$SatelliteViewView;->mState:I

    .line 587
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    const/high16 v12, 0x3f80

    const-wide/high16 v10, 0x4000

    const/high16 v9, -0x1

    const/high16 v8, 0x41a0

    const/16 v7, 0x9

    .line 608
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    sget v0, Lcom/android/settings/SatelliteView;->mNoOfSat:I

    if-ge v6, v0, :cond_12

    .line 610
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v6

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 612
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v0

    aget v0, v0, v6

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v6

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-double v2, v2

    invoke-static {v2, v3, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1400()I

    move-result v2

    int-to-double v2, v2

    cmpl-double v0, v0, v2

    if-lez v0, :cond_0

    .line 614
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()I

    move-result v1

    aput v1, v0, v6

    .line 615
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()I

    move-result v1

    aput v1, v0, v6

    .line 617
    :cond_0
    const-string v0, "GT-S6818"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 618
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 619
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 620
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v0, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v1

    aget v1, v1, v6

    int-to-float v1, v1

    const/high16 v2, 0x4170

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 622
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 623
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 624
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 625
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 626
    const/16 v0, 0xa

    if-ge v6, v0, :cond_4

    .line 627
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x6

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 647
    :cond_1
    :goto_1
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xff0001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 648
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 649
    const-string v0, "GT-I8268"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "GT-S7898"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 650
    :cond_2
    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v6

    float-to-int v0, v0

    rsub-int v0, v0, 0x258

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x23

    int-to-float v3, v0

    const/high16 v4, 0x4416

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 659
    :goto_2
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 660
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 661
    const-string v0, "GT-S6818"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 662
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4170

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 666
    :goto_3
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 668
    const-string v0, "GT-I8268"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "GT-S7898"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 669
    :cond_3
    if-ge v6, v7, :cond_b

    .line 670
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    const v2, 0x441d8000

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 608
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 629
    :cond_4
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xb

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 632
    :cond_5
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 633
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 634
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v0

    aget v0, v0, v6

    int-to-float v0, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v1

    aget v1, v1, v6

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p1, v0, v1, v8, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 636
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 637
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x4000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 638
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    const/high16 v1, 0x41f0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 639
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 640
    if-ge v6, v7, :cond_6

    .line 641
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xa

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 643
    :cond_6
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1600()[I

    move-result-object v1

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xf

    int-to-float v1, v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1700()[I

    move-result-object v2

    aget v2, v2, v6

    add-int/lit8 v2, v2, 0xd

    int-to-float v2, v2

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 651
    :cond_7
    const-string v0, "GT-I9128"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 652
    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v6

    float-to-int v0, v0

    rsub-int v0, v0, 0x258

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x23

    int-to-float v3, v0

    const/high16 v4, 0x441b

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 653
    :cond_8
    const-string v0, "GT-S6818"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 654
    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v6

    float-to-int v0, v0

    rsub-int v0, v0, 0x17c

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0xd

    add-int/lit8 v0, v0, 0x19

    int-to-float v3, v0

    const/high16 v4, 0x43be

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 656
    :cond_9
    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x5

    int-to-float v1, v0

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1500()[F

    move-result-object v0

    aget v0, v0, v6

    float-to-int v0, v0

    rsub-int v0, v0, 0x3e8

    int-to-float v2, v0

    mul-int/lit8 v0, v6, 0x2

    mul-int/lit8 v0, v0, 0x14

    add-int/lit8 v0, v0, 0x23

    int-to-float v3, v0

    const/high16 v4, 0x447a

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    goto/16 :goto_2

    .line 664
    :cond_a
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/16 :goto_3

    .line 672
    :cond_b
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x441d8000

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 673
    :cond_c
    const-string v0, "GT-I9128"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 674
    if-ge v6, v7, :cond_d

    .line 675
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    const v2, 0x44228000

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 677
    :cond_d
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x44228000

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 678
    :cond_e
    const-string v0, "GT-S6818"

    const-string v1, "ro.product.model"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 679
    const/16 v0, 0xa

    if-ge v6, v0, :cond_f

    .line 680
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x1a

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const/high16 v2, 0x43c8

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 682
    :cond_f
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x1a

    add-int/lit8 v1, v1, 0x6

    int-to-float v1, v1

    const/high16 v2, 0x43c8

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 684
    :cond_10
    if-ge v6, v7, :cond_11

    .line 685
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xf

    int-to-float v1, v1

    const v2, 0x4480c000

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 687
    :cond_11
    add-int/lit8 v0, v6, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    mul-int/lit8 v1, v6, 0x28

    add-int/lit8 v1, v1, 0xa

    int-to-float v1, v1

    const v2, 0x4480c000

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1800()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4

    .line 690
    :cond_12
    return-void
.end method

.method public setPoint(DD)V
    .locals 5
    .parameter "x"
    .parameter "y"

    .prologue
    const-wide/high16 v3, 0x4000

    .line 590
    invoke-static {p1, p2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    invoke-static {p3, p4, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v0, v1

    .line 591
    .local v0, lengthPoint:F
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1400()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    .line 592
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1400()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p1

    float-to-double v3, v0

    div-double p1, v1, v3

    .line 593
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1400()I

    move-result v1

    int-to-double v1, v1

    mul-double/2addr v1, p3

    float-to-double v3, v0

    div-double p3, v1, v3

    .line 595
    :cond_0
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1100()I

    move-result v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    add-double/2addr v1, p1

    double-to-int v1, v1

    sput v1, Lcom/android/settings/SatelliteView$SatelliteViewView;->sx:I

    .line 596
    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1300()I

    move-result v1

    invoke-static {}, Lcom/android/settings/SatelliteView;->access$1200()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-double v1, v1

    sub-double/2addr v1, p3

    double-to-int v1, v1

    sput v1, Lcom/android/settings/SatelliteView$SatelliteViewView;->sy:I

    .line 597
    return-void
.end method
