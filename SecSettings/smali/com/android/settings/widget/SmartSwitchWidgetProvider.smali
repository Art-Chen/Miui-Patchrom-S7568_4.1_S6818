.class public Lcom/android/settings/widget/SmartSwitchWidgetProvider;
.super Landroid/appwidget/AppWidgetProvider;
.source "SmartSwitchWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;,
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;,
        Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;
    }
.end annotation


# static fields
.field private static final SMARTALERT_ANIMATION_IMAGE:[I

.field private static final SMARTSTAY_ANIMATION_IMAGE:[I

.field static final THIS_APPWIDGET:Landroid/content/ComponentName;

.field private static sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

.field private static sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;


# instance fields
.field private mAnimationHandler:Landroid/os/Handler;

.field private mAnimationIndex:I

.field private mAnimationType:I

.field private mAnimationView:Landroid/widget/ImageView;

.field private mGuideDialog:Landroid/app/AlertDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 62
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.widget.SmartSwitchWidgetProvider"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    .line 438
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    .line 445
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTALERT_ANIMATION_IMAGE:[I

    return-void

    .line 438
    :array_0
    .array-data 0x4
        0x47t 0x3t 0x2t 0x7ft
        0x48t 0x3t 0x2t 0x7ft
        0x49t 0x3t 0x2t 0x7ft
        0x4at 0x3t 0x2t 0x7ft
    .end array-data

    .line 445
    :array_1
    .array-data 0x4
        0x32t 0x2t 0x2t 0x7ft
        0x33t 0x2t 0x2t 0x7ft
        0x34t 0x2t 0x2t 0x7ft
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0}, Landroid/appwidget/AppWidgetProvider;-><init>()V

    .line 424
    iput-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 432
    iput-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 433
    iput v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 434
    iput v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 502
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$2;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    .line 792
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/SmartSwitchWidgetProvider;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    return-void
.end method

.method static buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;
    .locals 3
    .parameter "context"

    .prologue
    .line 125
    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f040114

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    .line 136
    .local v0, views:Landroid/widget/RemoteViews;
    const v1, 0x7f0b0319

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 138
    const v1, 0x7f0b031d

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 142
    const v1, 0x7f0b0311

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 144
    const v1, 0x7f0b0315

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    .line 147
    invoke-static {v0, p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V

    .line 148
    return-object v0
.end method

.method private static checkController(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 86
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-nez v0, :cond_0

    .line 87
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    .line 89
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->register()V

    .line 91
    :cond_0
    return-void
.end method

.method private static checkObserver(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 77
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-nez v0, :cond_0

    .line 78
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;-><init>(Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    .line 80
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;->startObserving()V

    .line 82
    :cond_0
    return-void
.end method

.method private static getLaunchPendingIntent(Landroid/content/Context;I)Landroid/app/PendingIntent;
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 318
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 319
    const-class v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 320
    const-string v1, "android.intent.category.ALTERNATIVE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "custom:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 322
    invoke-static {p0, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 324
    return-object v0
.end method

.method private static isEnabled(Landroid/content/Context;I)Z
    .locals 5
    .parameter "context"
    .parameter "buttonId"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 264
    if-nez p1, :cond_2

    .line 265
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 268
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v4, "motion_engine"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 271
    .local v1, motionState:I
    if-nez v1, :cond_1

    .line 272
    const-string v2, "SmartSwitchWidgetProvider"

    const-string v4, "Motion is disabled"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 307
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #motionState:I
    :cond_0
    :goto_0
    return v2

    .line 275
    .restart local v0       #cr:Landroid/content/ContentResolver;
    .restart local v1       #motionState:I
    :cond_1
    const-string v4, "motion_pick_up_to_call_out"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 277
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #motionState:I
    :cond_2
    if-ne p1, v2, :cond_3

    .line 278
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 279
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v4, "intelligent_sleep_mode"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 281
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_3
    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 282
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 283
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v4, "voice_input_control"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 285
    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_4
    const/4 v4, 0x3

    if-ne p1, v4, :cond_5

    .line 286
    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    .line 287
    sget-object v2, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v2}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->isEnabled()Z

    move-result v2

    goto :goto_0

    .line 288
    :cond_5
    const/4 v4, 0x4

    if-ne p1, v4, :cond_7

    .line 289
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 292
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v4, "motion_engine"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 295
    .restart local v1       #motionState:I
    if-nez v1, :cond_6

    .line 296
    const-string v2, "SmartSwitchWidgetProvider"

    const-string v4, "Motion is disabled"

    invoke-static {v2, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v3

    .line 297
    goto :goto_0

    .line 299
    :cond_6
    const-string v4, "motion_pick_up"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .line 301
    .end local v0           #cr:Landroid/content/ContentResolver;
    .end local v1           #motionState:I
    :cond_7
    const/4 v4, 0x5

    if-ne p1, v4, :cond_8

    .line 302
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 303
    .restart local v0       #cr:Landroid/content/ContentResolver;
    const-string v4, "psm_switch"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-nez v4, :cond_0

    move v2, v3

    goto :goto_0

    .end local v0           #cr:Landroid/content/ContentResolver;
    :cond_8
    move v2, v3

    .line 307
    goto :goto_0
.end method

.method private showPowerSavingGuideDialog(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 734
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 736
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 739
    :cond_0
    new-instance v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$PowerSavingDialog;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 740
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 741
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 742
    return-void
.end method

.method private showSmartAlertGuideDialog(Landroid/content/Context;)V
    .locals 6
    .parameter "context"

    .prologue
    const/4 v5, 0x0

    .line 576
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 577
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 578
    iput-object v5, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 581
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 583
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0400c1

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 584
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f0b00fe

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 585
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v3, 0x7f0b0100

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 587
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090a8e

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x104000a

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 592
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 594
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 595
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v4, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;

    invoke-direct {v4, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$4;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 605
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v3, :cond_1

    .line 606
    const-string v3, "SmartSwitchWidgetProvider"

    const-string v4, "Start animation..."

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 607
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 608
    const/4 v3, 0x1

    iput v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 609
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    .line 611
    :cond_1
    return-void
.end method

.method private showSmartStayGuideDialog(Landroid/content/Context;)V
    .locals 8
    .parameter "context"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 453
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    .line 454
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 455
    iput-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 458
    :cond_0
    const-string v4, "layout_inflater"

    invoke-virtual {p1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 460
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v4, 0x7f0400c3

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 461
    .local v2, layout:Landroid/view/View;
    const v4, 0x7f0b00fe

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 462
    .local v0, checkBox:Landroid/widget/CheckBox;
    const v4, 0x7f0b0100

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    .line 464
    const v4, 0x7f0b024e

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 465
    .local v3, textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090c23

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 467
    const v4, 0x7f0b024f

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 468
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090c24

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 470
    const v4, 0x7f0b0250

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 471
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090c25

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 473
    const v4, 0x7f0b0251

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .end local v3           #textView:Landroid/widget/TextView;
    check-cast v3, Landroid/widget/TextView;

    .line 474
    .restart local v3       #textView:Landroid/widget/TextView;
    const-string v4, "- "

    const v5, 0x7f090d7c

    invoke-virtual {p1, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090c1d

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5, v6}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 482
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x7d3

    invoke-virtual {v4, v5}, Landroid/view/Window;->setType(I)V

    .line 484
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 485
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    new-instance v5, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$1;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 495
    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v4, :cond_1

    .line 496
    const-string v4, "SmartSwitchWidgetProvider"

    const-string v5, "Start animation..."

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    iput v7, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 498
    iput v7, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    .line 499
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateAnimation()V

    .line 501
    :cond_1
    return-void
.end method

.method private showVoiceCmdGuideDialog(Landroid/content/Context;)V
    .locals 7
    .parameter "context"

    .prologue
    const/4 v6, 0x0

    .line 543
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_0

    .line 544
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 545
    iput-object v6, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 548
    :cond_0
    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 550
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f040041

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 551
    .local v2, layout:Landroid/view/View;
    const v3, 0x7f0b00ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 553
    .local v0, checkBox:Landroid/widget/CheckBox;
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f090ce4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090ce6

    new-instance v5, Lcom/android/settings/widget/SmartSwitchWidgetProvider$3;

    invoke-direct {v5, p0, p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$3;-><init>(Lcom/android/settings/widget/SmartSwitchWidgetProvider;Landroid/content/Context;Landroid/widget/CheckBox;)V

    invoke-virtual {v3, v4, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v4, 0x7f090ce7

    invoke-virtual {v3, v4, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    .line 569
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x7d3

    invoke-virtual {v3, v4}, Landroid/view/Window;->setType(I)V

    .line 571
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mGuideDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 572
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 531
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-nez v0, :cond_1

    .line 535
    :cond_0
    :goto_0
    return-void

    .line 533
    :cond_1
    const-string v0, "SmartSwitchWidgetProvider"

    const-string v1, "Stop animation..."

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object v0, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v1, 0x66

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0
.end method

.method private updateAnimation()V
    .locals 5

    .prologue
    .line 510
    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    if-nez v1, :cond_1

    .line 529
    :cond_0
    :goto_0
    return-void

    .line 512
    :cond_1
    const-string v1, "SmartSwitchWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Change animation : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTSTAY_ANIMATION_IMAGE:[I

    .line 516
    .local v0, animation:[I
    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 517
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->SMARTALERT_ANIMATION_IMAGE:[I

    .line 519
    :cond_2
    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationView:Landroid/widget/ImageView;

    iget v2, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    aget v2, v0, v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 520
    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 521
    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    array-length v2, v0

    rem-int/2addr v1, v2

    iput v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    .line 522
    iget-object v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 523
    invoke-direct {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->stopAnimation()V

    .line 524
    iget-object v3, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationHandler:Landroid/os/Handler;

    const/16 v4, 0x66

    iget v1, p0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->mAnimationIndex:I

    if-nez v1, :cond_3

    const-wide/16 v1, 0x7d0

    :goto_1
    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_3
    const-wide/16 v1, 0x1f4

    goto :goto_1
.end method

.method private static updateButtons(Landroid/widget/RemoteViews;Landroid/content/Context;)V
    .locals 6
    .parameter "views"
    .parameter "context"

    .prologue
    const v5, 0x7f0b0316

    const v4, 0x7f0b0314

    const v1, 0x7f0b0312

    const v3, 0x7f0203c2

    const v2, 0x7f0203c1

    .line 173
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    const v0, 0x7f0203c5

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 176
    invoke-virtual {p0, v4, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 186
    :goto_0
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
    const v0, 0x7f0203cd

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 189
    const v0, 0x7f0b0318

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 226
    :goto_1
    const/4 v0, 0x2

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 227
    const v0, 0x7f0b031a

    const v1, 0x7f0203cf

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 229
    const v0, 0x7f0b031c

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 239
    :goto_2
    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 240
    const v0, 0x7f0b031e

    const v1, 0x7f0203c9

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 242
    const v0, 0x7f0b0320

    invoke-virtual {p0, v0, v3}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 251
    :goto_3
    return-void

    .line 179
    :cond_0
    const v0, 0x7f0203c6

    invoke-virtual {p0, v1, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 181
    invoke-virtual {p0, v4, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_0

    .line 192
    :cond_1
    const v0, 0x7f0203ce

    invoke-virtual {p0, v5, v0}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 194
    const v0, 0x7f0b0318

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_1

    .line 232
    :cond_2
    const v0, 0x7f0b031a

    const v1, 0x7f0203d0

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 234
    const v0, 0x7f0b031c

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_2

    .line 245
    :cond_3
    const v0, 0x7f0b031e

    const v1, 0x7f0203ca

    invoke-virtual {p0, v0, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    .line 247
    const v0, 0x7f0b0320

    invoke-virtual {p0, v0, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto :goto_3
.end method

.method public static updateWidget(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 157
    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 158
    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkController(Landroid/content/Context;)V

    .line 159
    invoke-static {p0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 161
    .local v1, views:Landroid/widget/RemoteViews;
    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v0

    .line 162
    .local v0, gm:Landroid/appwidget/AppWidgetManager;
    sget-object v2, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->THIS_APPWIDGET:Landroid/content/ComponentName;

    invoke-virtual {v0, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    .line 163
    return-void
.end method


# virtual methods
.method public onDisabled(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v1, 0x0

    .line 111
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    if-eqz v0, :cond_0

    .line 112
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;->stopObserving()V

    .line 113
    sput-object v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSettingsObserver:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SettingsObserver;

    .line 115
    :cond_0
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    if-eqz v0, :cond_1

    .line 116
    sget-object v0, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->unregister()V

    .line 117
    sput-object v1, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->sSBeamController:Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;

    .line 119
    :cond_1
    return-void
.end method

.method public onEnabled(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 106
    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->checkObserver(Landroid/content/Context;)V

    .line 107
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 335
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetProvider;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 336
    const-string v7, "SmartSwitchWidgetProvider"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "START onReceive()_intent : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    const-string v7, "android.intent.category.ALTERNATIVE"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->hasCategory(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 339
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 340
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 341
    .local v0, buttonId:I
    invoke-static {p1, v0}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->isEnabled(Landroid/content/Context;I)Z

    move-result v3

    .line 342
    .local v3, enabled:Z
    if-nez v0, :cond_3

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 344
    .local v1, cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_2

    .line 346
    const-string v5, "motion_pick_up_to_call_out"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 419
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_0
    :goto_0
    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->updateWidget(Landroid/content/Context;)V

    .line 420
    .end local v0           #buttonId:I
    .end local v2           #data:Landroid/net/Uri;
    .end local v3           #enabled:Z
    :cond_1
    return-void

    .line 349
    .restart local v0       #buttonId:I
    .restart local v1       #cr:Landroid/content/ContentResolver;
    .restart local v2       #data:Landroid/net/Uri;
    .restart local v3       #enabled:Z
    :cond_2
    const-string v6, "master_motion"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 351
    invoke-static {p1}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 352
    const-string v6, "motion_pick_up_to_call_out"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 355
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_3
    if-ne v0, v5, :cond_6

    .line 356
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 357
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_4

    .line 358
    const-string v5, "intelligent_sleep_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 361
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 363
    .local v4, sharedPrefs:Landroid/content/SharedPreferences;
    const-string v7, "pref_smart_stay_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_5

    .line 365
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showSmartStayGuideDialog(Landroid/content/Context;)V

    .line 367
    :cond_5
    const-string v6, "intelligent_sleep_mode"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 370
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_6
    const/4 v7, 0x2

    if-ne v0, v7, :cond_9

    .line 371
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 372
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_7

    .line 373
    const-string v5, "voice_input_control"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 375
    :cond_7
    const-string v7, "voiceinputcontrol_showNeverAgain"

    invoke-static {v1, v7, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-nez v6, :cond_8

    .line 378
    invoke-direct {p0, p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showVoiceCmdGuideDialog(Landroid/content/Context;)V

    goto :goto_0

    .line 380
    :cond_8
    const-string v6, "voice_input_control"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 383
    .end local v1           #cr:Landroid/content/ContentResolver;
    :cond_9
    const/4 v7, 0x3

    if-ne v0, v7, :cond_b

    .line 384
    if-nez v3, :cond_a

    :goto_1
    invoke-static {v5}, Lcom/android/settings/widget/SmartSwitchWidgetProvider$SBeamController;->toggle(Z)V

    goto :goto_0

    :cond_a
    move v5, v6

    goto :goto_1

    .line 385
    :cond_b
    const/4 v7, 0x4

    if-ne v0, v7, :cond_e

    .line 386
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 387
    .restart local v1       #cr:Landroid/content/ContentResolver;
    if-eqz v3, :cond_c

    .line 389
    const-string v5, "motion_pick_up"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 392
    :cond_c
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 394
    .restart local v4       #sharedPrefs:Landroid/content/SharedPreferences;
    const-string v7, "pref_smart_alert_noti"

    invoke-interface {v4, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-nez v6, :cond_d

    .line 396
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showSmartAlertGuideDialog(Landroid/content/Context;)V

    .line 398
    :cond_d
    const-string v6, "master_motion"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 400
    invoke-static {p1}, Lcom/android/settings/Utils;->turnOnMotionEngine(Landroid/content/Context;)V

    .line 401
    const-string v6, "motion_pick_up"

    invoke-static {v1, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 404
    .end local v1           #cr:Landroid/content/ContentResolver;
    .end local v4           #sharedPrefs:Landroid/content/SharedPreferences;
    :cond_e
    const/4 v5, 0x5

    if-ne v0, v5, :cond_0

    .line 405
    if-eqz v3, :cond_f

    .line 406
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "psm_switch"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 408
    :cond_f
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->showPowerSavingGuideDialog(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method public onUpdate(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;[I)V
    .locals 3
    .parameter "context"
    .parameter "appWidgetManager"
    .parameter "appWidgetIds"

    .prologue
    .line 97
    invoke-static {p1}, Lcom/android/settings/widget/SmartSwitchWidgetProvider;->buildUpdate(Landroid/content/Context;)Landroid/widget/RemoteViews;

    move-result-object v1

    .line 99
    .local v1, view:Landroid/widget/RemoteViews;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v2, p3

    if-ge v0, v2, :cond_0

    .line 100
    aget v2, p3, v0

    invoke-virtual {p2, v2, v1}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(ILandroid/widget/RemoteViews;)V

    .line 99
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method
