.class Lcom/android/internal/widget/SPenGestureView$9;
.super Ljava/lang/Object;
.source "SPenGestureView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/SPenGestureView;->addSPenEvent(Landroid/view/MotionEvent;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SPenGestureView;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SPenGestureView;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    .prologue
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsLiveCropThread:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$902(Lcom/android/internal/widget/SPenGestureView;Z)Z

    :try_start_0
    const-string v13, "SPenGesture"

    const-string v14, "mSPenGestureCropDispatchThread run!!"

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    .local v1, boundsOfPath:Landroid/graphics/RectF;
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .local v2, boundsOfSecondPath:Landroid/graphics/RectF;
    new-instance v7, Landroid/os/Handler;

    invoke-direct {v7}, Landroid/os/Handler;-><init>()V

    .local v7, cropImgSaveHandler:Landroid/os/Handler;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v1, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v1, Landroid/graphics/RectF;->right:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3702(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v1, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3802(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v1, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3902(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v1, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4002(Lcom/android/internal/widget/SPenGestureView;I)I

    :cond_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4100(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v13, v2, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/RectF;->right:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_1

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->right:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3702(Lcom/android/internal/widget/SPenGestureView;I)I

    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3802(Lcom/android/internal/widget/SPenGestureView;I)I

    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    cmpg-float v13, v13, v14

    if-gez v13, :cond_3

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3902(Lcom/android/internal/widget/SPenGestureView;I)I

    :cond_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4000(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    iget v14, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v13, v13, v14

    if-lez v13, :cond_4

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4002(Lcom/android/internal/widget/SPenGestureView;I)I

    :cond_4
    :goto_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    add-int/lit8 v14, v14, 0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3702(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    add-int/lit8 v14, v14, -0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3802(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    add-int/lit8 v14, v14, 0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3902(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4000(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    add-int/lit8 v14, v14, -0xa

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4002(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sub-int/2addr v14, v15

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4302(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$4000(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sub-int/2addr v14, v15

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4402(Lcom/android/internal/widget/SPenGestureView;I)I

    const-wide/16 v13, 0x64

    invoke-static {v13, v14}, Ljava/lang/Thread;->sleep(J)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #calls: Lcom/android/internal/widget/SPenGestureView;->GetDefaultDisplayBimap()Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4500(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$4800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4602(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayWidth:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCurrentDisplayHeight:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$4800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4902(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v6, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v6, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v6, canvasForCrop:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mScreenBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5000(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v6, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_5

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4100(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_6

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    sget-object v14, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    :cond_6
    const/4 v13, 0x0

    sget-object v14, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v6, v13, v14}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$4400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5102(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v3, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5100(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v3, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v3, canvasFinal:Landroid/graphics/Canvas;
    new-instance v12, Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4000(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v16

    invoke-direct/range {v12 .. v16}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v12, srcRectForCrop:Landroid/graphics/Rect;
    new-instance v8, Landroid/graphics/Rect;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$4300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$4400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v16

    move/from16 v0, v16

    invoke-direct {v8, v13, v14, v15, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    .local v8, dstRectForCrop:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v3, v13, v12, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v5, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4900(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v5, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v5, canvasForAnimationLine:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3500(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_7

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$3600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    const/4 v14, 0x2

    if-le v13, v14, :cond_a

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5400(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5500(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v14

    const/high16 v15, 0x4100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$5600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5400(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5500(Lcom/android/internal/widget/SPenGestureView;)F

    move-result v14

    const/high16 v15, 0x4080

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$5700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_7
    :goto_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4100(Lcom/android/internal/widget/SPenGestureView;)Z

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_8

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondPathOfCurve:Landroid/graphics/Path;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Path;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mPathPaintWhite:Landroid/graphics/Paint;
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v14

    invoke-virtual {v5, v13, v14}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6000(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$6100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$5600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6000(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$6100(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4080

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$5700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageWidth:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4300(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropImageHeight:I
    invoke-static {v15}, Lcom/android/internal/widget/SPenGestureView;->access$4400(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v15

    sget-object v16, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v14 .. v16}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6202(Lcom/android/internal/widget/SPenGestureView;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    new-instance v4, Landroid/graphics/Canvas;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6200(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    invoke-direct {v4, v13}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .local v4, canvasFinalForAnimation:Landroid/graphics/Canvas;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmap:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v12, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropTempBitmapForAnimation:Landroid/graphics/Bitmap;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$4900(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Bitmap;

    move-result-object v13

    const/4 v14, 0x0

    invoke-virtual {v4, v13, v12, v8, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordXForIntent:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6302(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordXForIntent:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6402(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$3900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordYForIntent:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6502(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$4000(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordYForIntent:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6602(Lcom/android/internal/widget/SPenGestureView;I)I

    const/4 v10, 0x0

    .local v10, i:I
    :goto_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    if-ge v10, v13, :cond_c

    const/4 v11, 0x0

    .local v11, j:I
    :goto_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    if-ge v11, v13, :cond_b

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMatrixForCropping:[[I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6900(Lcom/android/internal/widget/SPenGestureView;)[[I

    move-result-object v13

    aget-object v13, v13, v10

    const/4 v14, -0x1

    aput v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .end local v3           #canvasFinal:Landroid/graphics/Canvas;
    .end local v4           #canvasFinalForAnimation:Landroid/graphics/Canvas;
    .end local v5           #canvasForAnimationLine:Landroid/graphics/Canvas;
    .end local v6           #canvasForCrop:Landroid/graphics/Canvas;
    .end local v8           #dstRectForCrop:Landroid/graphics/Rect;
    .end local v10           #i:I
    .end local v11           #j:I
    .end local v12           #srcRectForCrop:Landroid/graphics/Rect;
    :cond_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->right:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3702(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->left:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3802(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMaxCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3902(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    iget v14, v2, Landroid/graphics/RectF;->top:F

    float-to-int v14, v14

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mMinCoordY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4002(Lcom/android/internal/widget/SPenGestureView;I)I
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .end local v1           #boundsOfPath:Landroid/graphics/RectF;
    .end local v2           #boundsOfSecondPath:Landroid/graphics/RectF;
    .end local v7           #cropImgSaveHandler:Landroid/os/Handler;
    :catch_0
    move-exception v9

    .local v9, e:Ljava/lang/InterruptedException;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$8200(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x2

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-virtual {v9}, Ljava/lang/InterruptedException;->printStackTrace()V

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v13

    invoke-virtual {v13}, Landroid/os/Looper;->quit()V

    .end local v9           #e:Ljava/lang/InterruptedException;
    :goto_4
    return-void

    .restart local v1       #boundsOfPath:Landroid/graphics/RectF;
    .restart local v2       #boundsOfSecondPath:Landroid/graphics/RectF;
    .restart local v3       #canvasFinal:Landroid/graphics/Canvas;
    .restart local v5       #canvasForAnimationLine:Landroid/graphics/Canvas;
    .restart local v6       #canvasForCrop:Landroid/graphics/Canvas;
    .restart local v7       #cropImgSaveHandler:Landroid/os/Handler;
    .restart local v8       #dstRectForCrop:Landroid/graphics/Rect;
    .restart local v12       #srcRectForCrop:Landroid/graphics/Rect;
    :cond_a
    :try_start_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4100

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintWhite:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$5600(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$5800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    int-to-float v13, v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v14}, Lcom/android/internal/widget/SPenGestureView;->access$5900(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v14

    int-to-float v14, v14

    const/high16 v15, 0x4080

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    move-object/from16 v16, v0

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCirclePaintBlackWithoutStroke:Landroid/graphics/Paint;
    invoke-static/range {v16 .. v16}, Lcom/android/internal/widget/SPenGestureView;->access$5700(Lcom/android/internal/widget/SPenGestureView;)Landroid/graphics/Paint;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v5, v13, v14, v15, v0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .restart local v4       #canvasFinalForAnimation:Landroid/graphics/Canvas;
    .restart local v10       #i:I
    .restart local v11       #j:I
    :cond_b
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_2

    .end local v11           #j:I
    :cond_c
    const/4 v10, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayWidthForMatrix:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6800(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    if-ge v10, v13, :cond_e

    const/4 v11, 0x0

    .restart local v11       #j:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mDisplayHeightForMatrix:I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$6700(Lcom/android/internal/widget/SPenGestureView;)I

    move-result v13

    if-ge v11, v13, :cond_d

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mMatrixForCroppingHorizontal:[[I
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$7000(Lcom/android/internal/widget/SPenGestureView;)[[I

    move-result-object v13

    aget-object v13, v13, v10

    const/4 v14, -0x1

    aput v14, v13, v11

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_d
    add-int/lit8 v10, v10, 0x1

    goto :goto_5

    .end local v11           #j:I
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointPrev:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$7102(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointLast:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$7202(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointPrev:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$7302(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointLast:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$7402(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5802(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mFirstIntersectionPointY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5902(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointX:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6002(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, -0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mSecondIntersectionPointY:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$6102(Lcom/android/internal/widget/SPenGestureView;I)I

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/high16 v14, -0x4080

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointXForCircle:F
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5402(Lcom/android/internal/widget/SPenGestureView;F)F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/high16 v14, -0x4080

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mStartPointYForCircle:F
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5502(Lcom/android/internal/widget/SPenGestureView;F)F

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x1

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsablePath:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$3502(Lcom/android/internal/widget/SPenGestureView;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mIsUsableSecondPath:Z
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$4102(Lcom/android/internal/widget/SPenGestureView;Z)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/widget/SPenGestureView;->mNumColsedCurves:I
    invoke-static {v13, v14}, Lcom/android/internal/widget/SPenGestureView;->access$5302(Lcom/android/internal/widget/SPenGestureView;I)I

    new-instance v13, Lcom/android/internal/widget/SPenGestureView$9$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/android/internal/widget/SPenGestureView$9$1;-><init>(Lcom/android/internal/widget/SPenGestureView$9;)V

    const-wide/16 v14, 0x64

    invoke-virtual {v7, v13, v14, v15}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/internal/widget/SPenGestureView$9;->this$0:Lcom/android/internal/widget/SPenGestureView;

    #getter for: Lcom/android/internal/widget/SPenGestureView;->mCropHandler:Landroid/os/Handler;
    invoke-static {v13}, Lcom/android/internal/widget/SPenGestureView;->access$8200(Lcom/android/internal/widget/SPenGestureView;)Landroid/os/Handler;

    move-result-object v13

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Landroid/os/Looper;->loop()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method
