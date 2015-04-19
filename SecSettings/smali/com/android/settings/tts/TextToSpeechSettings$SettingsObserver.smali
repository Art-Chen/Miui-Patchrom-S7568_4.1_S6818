.class public Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "TextToSpeechSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/tts/TextToSpeechSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingsObserver"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/settings/tts/TextToSpeechSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/tts/TextToSpeechSettings;Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .parameter
    .parameter "handler"
    .parameter "context"

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    .line 558
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 559
    iput-object p3, p0, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;->mContext:Landroid/content/Context;

    .line 560
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 573
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;->this$0:Lcom/android/settings/tts/TextToSpeechSettings;

    #calls: Lcom/android/settings/tts/TextToSpeechSettings;->updateState()V
    invoke-static {v0}, Lcom/android/settings/tts/TextToSpeechSettings;->access$100(Lcom/android/settings/tts/TextToSpeechSettings;)V

    .line 574
    return-void
.end method

.method startObserving()V
    .locals 3

    .prologue
    .line 563
    iget-object v1, p0, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 564
    .local v0, resolver:Landroid/content/ContentResolver;
    const-string v1, "driving_mode_on"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 565
    return-void
.end method

.method stopObserving()V
    .locals 1

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/settings/tts/TextToSpeechSettings$SettingsObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 569
    return-void
.end method
