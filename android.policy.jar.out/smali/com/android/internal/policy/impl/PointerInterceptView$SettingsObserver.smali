.class Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "PointerInterceptView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PointerInterceptView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PointerInterceptView;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PointerInterceptView;)V
    .locals 1
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    .line 101
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 102
    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 105
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #getter for: Lcom/android/internal/policy/impl/PointerInterceptView;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$000(Lcom/android/internal/policy/impl/PointerInterceptView;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 106
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "finger_air_view"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 109
    const-string v1, "finger_air_view_show_up_indicator"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 112
    iget-object v1, p0, Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #calls: Lcom/android/internal/policy/impl/PointerInterceptView;->updateSetting()V
    invoke-static {v1}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    .line 113
    return-void
.end method

.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 116
    iget-object v0, p0, Lcom/android/internal/policy/impl/PointerInterceptView$SettingsObserver;->this$0:Lcom/android/internal/policy/impl/PointerInterceptView;

    #calls: Lcom/android/internal/policy/impl/PointerInterceptView;->updateSetting()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/PointerInterceptView;->access$100(Lcom/android/internal/policy/impl/PointerInterceptView;)V

    .line 117
    return-void
.end method
