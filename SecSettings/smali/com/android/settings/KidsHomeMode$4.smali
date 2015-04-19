.class Lcom/android/settings/KidsHomeMode$4;
.super Ljava/lang/Object;
.source "KidsHomeMode.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/KidsHomeMode;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/KidsHomeMode;


# direct methods
.method constructor <init>(Lcom/android/settings/KidsHomeMode;)V
    .locals 0
    .parameter

    .prologue
    .line 265
    iput-object p1, p0, Lcom/android/settings/KidsHomeMode$4;->this$0:Lcom/android/settings/KidsHomeMode;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v3, 0x0

    .line 267
    iget-object v1, p0, Lcom/android/settings/KidsHomeMode$4;->this$0:Lcom/android/settings/KidsHomeMode;

    iget-object v1, v1, Lcom/android/settings/KidsHomeMode;->resolver:Landroid/content/ContentResolver;

    const-string v2, "kids_home_mode"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 268
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.launcher.action.KIDS_HOME_MODE_CHANGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 269
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "kidsmode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 270
    const-string v1, "kidsmode_from"

    const-string v2, "settings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 271
    iget-object v1, p0, Lcom/android/settings/KidsHomeMode$4;->this$0:Lcom/android/settings/KidsHomeMode;

    invoke-virtual {v1}, Lcom/android/settings/KidsHomeMode;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 272
    const-string v1, "KidsHomeMode"

    const-string v2, "onClick 1_1"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method
