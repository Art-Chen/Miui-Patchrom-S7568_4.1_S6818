.class Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AccessibilityWidgetProviderNegativeColor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SettingsBroadcastReceiver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mOrientation:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 267
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 264
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;->mOrientation:I

    .line 268
    iput-object p1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    .line 269
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 283
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 286
    .local v0, orientation:I
    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;->mOrientation:I

    if-eq v1, v0, :cond_0

    .line 287
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor;->updateWidget(Landroid/content/Context;)V

    .line 288
    iput v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;->mOrientation:I

    .line 291
    .end local v0           #orientation:I
    :cond_0
    return-void
.end method

.method registerBroadcastReceiver()V
    .locals 2

    .prologue
    .line 272
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 273
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 274
    iget-object v1, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 275
    return-void
.end method

.method unregisterBroadcastReceiver()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/settings/accessibilitywidget/AccessibilityWidgetProviderNegativeColor$SettingsBroadcastReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 279
    return-void
.end method
