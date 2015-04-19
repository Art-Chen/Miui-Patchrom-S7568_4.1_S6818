.class final Lcom/android/settings/guide/GuideModeHelper$2;
.super Ljava/lang/Object;
.source "GuideModeHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/guide/GuideModeHelper;->setSettingsListEnabled(ZLandroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$enabled:Z

.field final synthetic val$list:Landroid/widget/ListView;


# direct methods
.method constructor <init>(Landroid/widget/ListView;Z)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 415
    iput-object p1, p0, Lcom/android/settings/guide/GuideModeHelper$2;->val$list:Landroid/widget/ListView;

    iput-boolean p2, p0, Lcom/android/settings/guide/GuideModeHelper$2;->val$enabled:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 418
    iget-object v0, p0, Lcom/android/settings/guide/GuideModeHelper$2;->val$list:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/guide/GuideModeHelper$2;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEnabled(Z)V

    .line 421
    invoke-static {}, Lcom/android/settings/guide/GuideFragment;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/settings/guide/GuideModeHelper$2;->val$list:Landroid/widget/ListView;

    iget-boolean v1, p0, Lcom/android/settings/guide/GuideModeHelper$2;->val$enabled:Z

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFocusable(Z)V

    .line 424
    :cond_0
    return-void
.end method
