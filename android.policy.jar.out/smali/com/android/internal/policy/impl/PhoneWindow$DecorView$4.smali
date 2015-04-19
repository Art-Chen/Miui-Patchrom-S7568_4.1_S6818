.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->addSwitchToPreviousSizeButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)V
    .locals 0
    .parameter

    .prologue
    .line 2956
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 2959
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2960
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/PopupWindow;

    move-result-object v4

    monitor-enter v4
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2961
    :try_start_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2962
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getApplicationWindowToken()Landroid/os/IBinder;

    move-result-object v2

    .line 2963
    .local v2, token:Landroid/os/IBinder;
    const/4 v1, 0x0

    .line 2964
    .local v1, screenBottomOffset:I
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/graphics/Rect;

    move-result-object v5

    iget v5, v5, Landroid/graphics/Rect;->bottom:I

    if-ge v3, v5, :cond_0

    .line 2965
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mFrameOffsets:Landroid/graphics/Rect;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Landroid/graphics/Rect;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v5

    sub-int/2addr v3, v5

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mDefaultOffset:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v1, v3

    .line 2967
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v3, v3, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/PopupWindow;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mGravityOfSwitchToPreviousSizeButton:I
    invoke-static {v5}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v5

    iget-object v6, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {v6}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v6

    iget-object v7, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$4;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v7}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v7

    add-int/2addr v7, v1

    invoke-virtual {v3, v2, v5, v6, v7}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/os/IBinder;III)V

    .line 2969
    .end local v1           #screenBottomOffset:I
    .end local v2           #token:Landroid/os/IBinder;
    :cond_1
    monitor-exit v4

    .line 2974
    :cond_2
    :goto_0
    return-void

    .line 2969
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v3
    :try_end_2
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_2 .. :try_end_2} :catch_0

    .line 2971
    :catch_0
    move-exception v0

    .line 2972
    .local v0, e:Landroid/view/WindowManager$BadTokenException;
    invoke-virtual {v0}, Landroid/view/WindowManager$BadTokenException;->printStackTrace()V

    goto :goto_0
.end method
