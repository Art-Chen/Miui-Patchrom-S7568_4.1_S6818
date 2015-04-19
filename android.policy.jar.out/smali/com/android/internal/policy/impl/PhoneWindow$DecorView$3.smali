.class Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


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
    .line 2943
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    .line 2945
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsLongClick:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2302(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    .line 2946
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mIsFirstTouch:Z
    invoke-static {v1, v3}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2402(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;Z)Z

    .line 2948
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 2949
    .local v0, mScreenLocation:[I
    invoke-virtual {p1, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2950
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    const/4 v2, 0x0

    aget v2, v0, v2

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mXLocationOfSwitchToPreviousSizeButton:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2602(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    .line 2951
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindow$DecorView$3;->this$1:Lcom/android/internal/policy/impl/PhoneWindow$DecorView;

    aget v2, v0, v3

    #setter for: Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->mYLocationOfSwitchToPreviousSizeButton:I
    invoke-static {v1, v2}, Lcom/android/internal/policy/impl/PhoneWindow$DecorView;->access$2802(Lcom/android/internal/policy/impl/PhoneWindow$DecorView;I)I

    .line 2952
    return v3
.end method
