.class Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;
.super Ljava/lang/Object;
.source "ParentControlLockScreen.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->postOnCheckPasswordResult(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

.field final synthetic val$imm:Landroid/view/inputmethod/InputMethodManager;

.field final synthetic val$success:Z


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;ZLandroid/view/inputmethod/InputMethodManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    iput-boolean p2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->val$success:Z

    iput-object p3, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-boolean v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->val$success:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$700(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v5}, Lcom/android/internal/widget/LockPatternUtils;->saveLockParentControlPassword(Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #calls: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->setFailedCount(I)V
    invoke-static {v2, v4}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$800(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;I)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->val$imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v3, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mLogin:Landroid/widget/EditText;
    invoke-static {v3}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$200(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.NOTIFY_KIDS_TIMEMGR_PINLOCK_CLEAR"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v0, clearIntent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$900(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .local v1, intent:Landroid/content/Intent;
    const-string v2, "com.android.kidstabletsettings"

    const-string v3, "com.android.kidstabletsettings.CreatePinActivity"

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$1000(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$300(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    move-result-object v2

    invoke-interface {v2, v5}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    .end local v0           #clearIntent:Landroid/content/Intent;
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen$3;->this$0:Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;

    #getter for: Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->mPassword:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;->access$1100(Lcom/android/internal/policy/impl/sec/ParentControlLockScreen;)Landroid/widget/EditText;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
