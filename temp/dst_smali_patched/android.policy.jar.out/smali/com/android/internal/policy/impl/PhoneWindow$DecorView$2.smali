.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "event"

    .prologue
    const/4 v0, 0x0

    const/4 v5, 0x1

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z

    move-result v1

    if-nez v1, :cond_1

    move v5, v0

    :cond_0
    :goto_0
    return v5

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    .local v6, action:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v7, v1

    .local v7, rowX:I
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v8, v1

    .local v8, rowY:I
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)Z

    move-result v1

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXLocationOfSwitchToPreviousSizeButton:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2600(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    sub-int v2, v7, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2502(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYLocationOfSwitchToPreviousSizeButton:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2800(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    sub-int v2, v8, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2702(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2402(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    :cond_2
    const/4 v1, 0x2

    if-ne v6, v1, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2902(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3102(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    :cond_3
    if-nez v6, :cond_4

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenWidth:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3000(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    sub-int/2addr v1, v7

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXOffsetTouch:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2500(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2902(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mScreenHeight:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3200(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    sub-int/2addr v1, v8

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYOffsetTouch:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2700(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    add-int/2addr v1, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3102(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    iget-object v0, v0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->this$0:Lcom/android/internal/policy/impl/PhoneWindow;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow;->mSwitchToPreviousSizeButton:Landroid/widget/PopupWindow;
    invoke-static {v0}, Lcom/android/internal/policy/impl/PhoneWindow;->access$2100(Lcom/android/internal/policy/impl/PhoneWindow;)Landroid/widget/PopupWindow;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXPosOfSwitchToPreviousSizeButton:I
    invoke-static {v1}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2900(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYPosOfSwitchToPreviousSizeButton:I
    invoke-static {v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3100(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonWidth:I
    invoke-static {v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3300(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mSwitchToPreviousSizeButtonHeight:I
    invoke-static {v4}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$3400(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;)I

    move-result v4

    invoke-virtual/range {v0 .. v5}, Landroid/widget/PopupWindow;->update(IIIIZ)V

    goto/16 :goto_0

    :cond_4
    if-ne v6, v5, :cond_0

    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$2;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z
    invoke-static {v1, v0}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2302(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    move v5, v0

    goto/16 :goto_0
.end method
