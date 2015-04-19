.class public final Lcom/android/settings/guide/GuideFragment;
.super Landroid/app/Fragment;
.source "GuideFragment.java"

# interfaces
.implements Lcom/android/settings/guide/GuideFragmentCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/guide/GuideFragment$1;,
        Lcom/android/settings/guide/GuideFragment$WrappedEnabler;,
        Lcom/android/settings/guide/GuideFragment$GuideModes;,
        Lcom/android/settings/guide/GuideFragment$SettingsHeader;
    }
.end annotation


# static fields
.field private static sIsInGuideMode:Z


# instance fields
.field private mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

.field private mIsInGuideMode:Z

.field private mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

.field private mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 413
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 49
    sget-object v0, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->NONE:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 415
    return-void
.end method

.method private static completeGuide(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 319
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 320
    return-void
.end method

.method public static deployGuide(Landroid/app/Activity;Landroid/content/Intent;)V
    .locals 10
    .parameter "activity"
    .parameter "intent"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const v7, 0x7f0b0007

    .line 255
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    .line 258
    .local v2, fm:Landroid/app/FragmentManager;
    const-string v5, "GuideFragment"

    invoke-virtual {v2, v5}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    check-cast v3, Lcom/android/settings/guide/GuideFragment;

    .line 262
    .local v3, frag:Lcom/android/settings/guide/GuideFragment;
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    if-eqz v3, :cond_2

    .line 264
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 266
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 268
    .local v4, layout:Landroid/view/ViewGroup;
    if-eqz v4, :cond_0

    .line 270
    const v5, 0x7f0b0007

    :try_start_0
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    :cond_0
    :goto_0
    sput-boolean v8, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    .line 279
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    .line 311
    .end local v4           #layout:Landroid/view/ViewGroup;
    :cond_1
    :goto_1
    return-void

    .line 271
    .restart local v4       #layout:Landroid/view/ViewGroup;
    :catch_0
    move-exception v1

    .line 272
    .local v1, e:Ljava/lang/Exception;
    const-string v5, "GuideFragment"

    const-string v6, "The view of guide_fragment_container not found !!"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 284
    .end local v1           #e:Ljava/lang/Exception;
    .end local v4           #layout:Landroid/view/ViewGroup;
    :cond_2
    if-nez v3, :cond_5

    .line 285
    invoke-static {p1}, Lcom/android/settings/guide/GuideFragment;->newInstance(Landroid/content/Intent;)Lcom/android/settings/guide/GuideFragment;

    move-result-object v3

    .line 287
    if-eqz v3, :cond_4

    .line 289
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;

    move-result-object v4

    .line 291
    .restart local v4       #layout:Landroid/view/ViewGroup;
    if-eqz v4, :cond_3

    .line 292
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 294
    .local v0, container:Landroid/widget/FrameLayout;
    invoke-virtual {v0, v7}, Landroid/widget/FrameLayout;->setId(I)V

    .line 295
    invoke-virtual {v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 298
    .end local v0           #container:Landroid/widget/FrameLayout;
    :cond_3
    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v5

    const-string v6, "GuideFragment"

    invoke-virtual {v5, v7, v3, v6}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 301
    sput-boolean v9, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_1

    .line 303
    .end local v4           #layout:Landroid/view/ViewGroup;
    :cond_4
    sput-boolean v8, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_1

    .line 307
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v5, v6}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 308
    sput-boolean v9, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    goto :goto_1
.end method

.method public static findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;
    .locals 2
    .parameter "activity"

    .prologue
    .line 689
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "GuideFragment"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static findMainView(Landroid/app/Activity;)Landroid/view/ViewGroup;
    .locals 3
    .parameter "activity"

    .prologue
    .line 347
    const/4 v1, 0x0

    .line 349
    .local v1, retval:Landroid/view/ViewGroup;
    instance-of v2, p0, Landroid/app/ListActivity;

    if-eqz v2, :cond_0

    .line 351
    check-cast p0, Landroid/app/ListActivity;

    .end local p0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 353
    .local v0, parent:Landroid/view/ViewParent;
    instance-of v2, v0, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, v0

    .line 354
    check-cast v1, Landroid/view/ViewGroup;

    .line 358
    .end local v0           #parent:Landroid/view/ViewParent;
    :cond_0
    return-object v1
.end method

.method private getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .prologue
    .line 722
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnClickListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V
    .locals 6
    .parameter "savedInstanceState"
    .parameter "mode"

    .prologue
    .line 463
    move-object v3, p2

    .line 465
    .local v3, newMode:Lcom/android/settings/guide/GuideFragment$GuideModes;
    if-nez v3, :cond_0

    .line 467
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromIntent(Landroid/os/Bundle;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    .line 469
    .local v1, guideMode:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/android/settings/guide/GuideModeHelper;->isInGuideMode(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    .line 472
    .local v2, isInSettingsGuide:Z
    invoke-static {v1}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeWiFi(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 473
    if-eqz v2, :cond_2

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 479
    .end local v1           #guideMode:Ljava/lang/String;
    .end local v2           #isInSettingsGuide:Z
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 481
    .local v0, activity:Landroid/app/Activity;
    if-nez v0, :cond_5

    .line 530
    :cond_1
    :goto_1
    return-void

    .line 473
    .end local v0           #activity:Landroid/app/Activity;
    .restart local v1       #guideMode:Ljava/lang/String;
    .restart local v2       #isInSettingsGuide:Z
    :cond_2
    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_0

    .line 474
    :cond_3
    invoke-static {v1}, Lcom/android/settings/guide/GuideModeHelper;->isGuideModeBluetooth(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 475
    if-eqz v2, :cond_4

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    :goto_2
    goto :goto_0

    :cond_4
    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_2

    .line 485
    .end local v1           #guideMode:Ljava/lang/String;
    .end local v2           #isInSettingsGuide:Z
    .restart local v0       #activity:Landroid/app/Activity;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/guide/GuideModeHelper;->isGuideCompleted(Landroid/os/Bundle;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 486
    invoke-static {v0}, Lcom/android/settings/guide/GuideFragment;->completeGuide(Landroid/app/Activity;)V

    goto :goto_1

    .line 490
    :cond_6
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eq v3, v4, :cond_1

    .line 495
    iput-object v3, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    .line 498
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v4, :cond_7

    .line 499
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    .line 500
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    .line 503
    :cond_7
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v4, :cond_1

    .line 504
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    .line 506
    sget-object v4, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$GuideModes:[I

    iget-object v5, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    invoke-virtual {v5}, Lcom/android/settings/guide/GuideFragment$GuideModes;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 528
    :goto_3
    iget-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    goto :goto_1

    .line 508
    :pswitch_0
    new-instance v4, Lcom/android/settings/guide/BtGuider;

    invoke-direct {v4, v0}, Lcom/android/settings/guide/BtGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 512
    :pswitch_1
    new-instance v4, Lcom/android/settings/guide/BtSettingsGuider;

    invoke-direct {v4, v0}, Lcom/android/settings/guide/BtSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 516
    :pswitch_2
    new-instance v4, Lcom/android/settings/guide/WifiGuider;

    invoke-direct {v4, v0}, Lcom/android/settings/guide/WifiGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 520
    :pswitch_3
    new-instance v4, Lcom/android/settings/guide/WifiSettingsGuider;

    invoke-direct {v4, v0}, Lcom/android/settings/guide/WifiSettingsGuider;-><init>(Landroid/app/Activity;)V

    iput-object v4, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    goto :goto_3

    .line 506
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public static isInGuideMode()Z
    .locals 1

    .prologue
    .line 383
    sget-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    return v0
.end method

.method public static isInGuideMode(Landroid/app/Activity;)Z
    .locals 1
    .parameter "parentActivity"

    .prologue
    .line 370
    sget-boolean v0, Lcom/android/settings/guide/GuideFragment;->sIsInGuideMode:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTablet()Z
    .locals 1

    .prologue
    .line 750
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    return v0
.end method

.method private static newInstance(Landroid/content/Intent;)Lcom/android/settings/guide/GuideFragment;
    .locals 3
    .parameter "settingsIntent"

    .prologue
    .line 395
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/guide/GuideModeHelper;->getGuideModeFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 399
    const/4 v1, 0x0

    .line 409
    :goto_0
    return-object v1

    .line 402
    :cond_0
    new-instance v1, Lcom/android/settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/settings/guide/GuideFragment;-><init>()V

    .line 405
    .local v1, f:Lcom/android/settings/guide/GuideFragment;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 406
    .local v0, args:Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 407
    invoke-virtual {v1, v0}, Lcom/android/settings/guide/GuideFragment;->setArguments(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static onApDisableClick(Landroid/content/DialogInterface;ILandroid/app/Activity;)V
    .locals 2
    .parameter "dialog"
    .parameter "which"
    .parameter "activity"

    .prologue
    .line 61
    invoke-static {p2}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v1

    check-cast v1, Lcom/android/settings/guide/GuideFragment;

    invoke-direct {v1}, Lcom/android/settings/guide/GuideFragment;->getDialogOnClickListener()Landroid/content/DialogInterface$OnClickListener;

    move-result-object v0

    .line 64
    .local v0, listener:Landroid/content/DialogInterface$OnClickListener;
    if-eqz v0, :cond_0

    .line 65
    invoke-interface {v0, p0, p1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 67
    :cond_0
    return-void
.end method

.method public static setEnablersForGuide(Landroid/app/Activity;Lcom/android/settings/wifi/WifiEnabler;Lcom/android/settings/bluetooth/BluetoothEnabler;)V
    .locals 3
    .parameter "activity"
    .parameter "mWifiEnabler"
    .parameter "mBluetoothEnabler"

    .prologue
    .line 332
    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "GuideFragment"

    invoke-virtual {v1, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/guide/GuideFragmentCallback;

    move-object v0, v1

    check-cast v0, Lcom/android/settings/guide/GuideFragmentCallback;

    .line 335
    .local v0, guide:Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_0

    .line 336
    invoke-interface {v0, p2, p1}, Lcom/android/settings/guide/GuideFragmentCallback;->setEnablers(Lcom/android/settings/bluetooth/BluetoothEnabler;Lcom/android/settings/wifi/WifiEnabler;)V

    .line 338
    :cond_0
    return-void
.end method

.method public static setSelectedSection(Landroid/app/Activity;Landroid/preference/PreferenceActivity$Header;)Z
    .locals 4
    .parameter "activity"
    .parameter "header"

    .prologue
    .line 79
    const/4 v1, 0x0

    .line 81
    .local v1, retval:Z
    if-eqz p0, :cond_0

    if-nez p1, :cond_1

    .line 82
    :cond_0
    const/4 v2, 0x0

    .line 91
    :goto_0
    return v2

    .line 85
    :cond_1
    invoke-static {p0}, Lcom/android/settings/guide/GuideFragment;->findGuideFragment(Landroid/app/Activity;)Lcom/android/settings/guide/GuideFragmentCallback;

    move-result-object v0

    .line 87
    .local v0, guider:Lcom/android/settings/guide/GuideFragmentCallback;
    if-eqz v0, :cond_2

    .line 88
    iget-wide v2, p1, Landroid/preference/PreferenceActivity$Header;->id:J

    invoke-interface {v0, v2, v3}, Lcom/android/settings/guide/GuideFragmentCallback;->setSelectedSectionId(J)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 91
    goto :goto_0
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyEvent"

    .prologue
    .line 577
    const/4 v1, 0x0

    .line 578
    .local v1, result:Z
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 580
    .local v0, keyCode:I
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eqz v2, :cond_0

    .line 581
    sparse-switch v0, :sswitch_data_0

    .line 591
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_0

    .line 592
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onKey(ILandroid/view/KeyEvent;)Z

    move-result v1

    .line 598
    :cond_0
    :goto_0
    return v1

    .line 587
    :sswitch_0
    const/4 v1, 0x0

    .line 588
    goto :goto_0

    .line 581
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_0
        0x18 -> :sswitch_0
        0x19 -> :sswitch_0
        0xa4 -> :sswitch_0
    .end sparse-switch
.end method

.method public getOnDismissListener()Landroid/content/DialogInterface$OnDismissListener;
    .locals 1

    .prologue
    .line 704
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnDismissListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnKeyListener()Landroid/content/DialogInterface$OnKeyListener;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnKeyListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getOnShowListener()Landroid/content/DialogInterface$OnShowListener;
    .locals 1

    .prologue
    .line 697
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    instance-of v0, v0, Landroid/content/DialogInterface$OnShowListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    check-cast v0, Landroid/content/DialogInterface$OnShowListener;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 431
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 434
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 436
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 437
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 440
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2
    .parameter "activity"

    .prologue
    const/4 v1, 0x0

    .line 444
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 446
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-nez v0, :cond_0

    .line 447
    invoke-static {p1}, Lcom/android/settings/guide/GuideModeHelper;->init(Landroid/content/Context;)V

    .line 449
    invoke-direct {p0, v1, v1}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 451
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 558
    iget-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_0

    .line 559
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 562
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 563
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    const/4 v1, 0x1

    .line 419
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 421
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 422
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    .line 425
    :cond_0
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/GuideFragment;->setHasOptionsMenu(Z)V

    .line 426
    invoke-virtual {p0, v1}, Lcom/android/settings/guide/GuideFragment;->setRetainInstance(Z)V

    .line 427
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 567
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 569
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 570
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->onDestroy()V

    .line 571
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    .line 573
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .parameter "item"

    .prologue
    .line 736
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 737
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onOptionsItemSelected(Landroid/view/MenuItem;)V

    .line 740
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 549
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 551
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 552
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->onPause()V

    .line 554
    :cond_0
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1
    .parameter "menu"

    .prologue
    .line 729
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0, p1}, Lcom/android/settings/guide/GuiderLifecycleListener;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 732
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 534
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 536
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-nez v0, :cond_0

    .line 545
    :goto_0
    return-void

    .line 540
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/guide/GuideFragment;->mIsInGuideMode:Z

    if-eqz v0, :cond_1

    .line 541
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->onResume()V

    goto :goto_0

    .line 543
    :cond_1
    iget-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->finish()V

    goto :goto_0
.end method

.method public setEnablers(Lcom/android/settings/bluetooth/BluetoothEnabler;Lcom/android/settings/wifi/WifiEnabler;)V
    .locals 4
    .parameter "enablerBT"
    .parameter "enablerWiFi"

    .prologue
    .line 605
    new-instance v0, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;

    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    :cond_0
    move-object p2, p1

    .end local p2
    :cond_1
    invoke-direct {v0, v1, p2}, Lcom/android/settings/guide/GuideFragment$WrappedEnabler;-><init>(Lcom/android/settings/guide/GuideFragment$GuideModes;Ljava/lang/Object;)V

    .line 609
    .local v0, enabler:Lcom/android/settings/guide/GuideFragment$WrappedEnabler;
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v1, :cond_2

    .line 610
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1, v0}, Lcom/android/settings/guide/GuiderLifecycleListener;->setEnabler(Lcom/android/settings/guide/GuideFragment$WrappedEnabler;)V

    .line 612
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    iget-object v1, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v1}, Lcom/android/settings/guide/GuiderLifecycleListener;->showHelpDialog()V

    .line 616
    :cond_2
    return-void
.end method

.method public setSelectedSectionId(J)Z
    .locals 1
    .parameter "id"

    .prologue
    .line 622
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v0

    if-nez v0, :cond_0

    .line 623
    const/4 v0, 0x0

    .line 628
    :goto_0
    return v0

    .line 626
    :cond_0
    invoke-static {p1, p2}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->fromId(J)Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    .line 628
    invoke-virtual {p0}, Lcom/android/settings/guide/GuideFragment;->switchGuiderMode()Z

    move-result v0

    goto :goto_0
.end method

.method switchGuiderMode()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 643
    const/4 v0, 0x0

    .line 644
    .local v0, nextMode:Lcom/android/settings/guide/GuideFragment$GuideModes;
    const/4 v1, 0x0

    .line 646
    .local v1, retval:Z
    invoke-static {}, Lcom/android/settings/guide/GuideModeHelper;->isTablet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 647
    const/4 v2, 0x0

    .line 679
    :goto_0
    return v2

    .line 651
    :cond_0
    sget-object v2, Lcom/android/settings/guide/GuideFragment$1;->$SwitchMap$com$android$settings$guide$GuideFragment$SettingsHeader:[I

    iget-object v3, p0, Lcom/android/settings/guide/GuideFragment;->mOpenedHeader:Lcom/android/settings/guide/GuideFragment$SettingsHeader;

    invoke-virtual {v3}, Lcom/android/settings/guide/GuideFragment$SettingsHeader;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 668
    :cond_1
    :goto_1
    if-eqz v0, :cond_3

    .line 669
    invoke-direct {p0, v4, v0}, Lcom/android/settings/guide/GuideFragment;->initFragment(Landroid/os/Bundle;Lcom/android/settings/guide/GuideFragment$GuideModes;)V

    .line 671
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    if-eqz v2, :cond_2

    .line 672
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onCreate(Landroid/os/Bundle;)V

    .line 673
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2, v4}, Lcom/android/settings/guide/GuiderLifecycleListener;->onActivityCreated(Landroid/os/Bundle;)V

    .line 674
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mGuider:Lcom/android/settings/guide/GuiderLifecycleListener;

    invoke-interface {v2}, Lcom/android/settings/guide/GuiderLifecycleListener;->onResume()V

    .line 676
    :cond_2
    const/4 v1, 0x1

    :cond_3
    move v2, v1

    .line 679
    goto :goto_0

    .line 653
    :pswitch_0
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    .line 654
    sget-object v0, Lcom/android/settings/guide/GuideFragment$GuideModes;->WIFI_SETTINGS:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    .line 659
    :pswitch_1
    iget-object v2, p0, Lcom/android/settings/guide/GuideFragment;->mMode:Lcom/android/settings/guide/GuideFragment$GuideModes;

    sget-object v3, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH:Lcom/android/settings/guide/GuideFragment$GuideModes;

    if-ne v2, v3, :cond_1

    .line 660
    sget-object v0, Lcom/android/settings/guide/GuideFragment$GuideModes;->BLUETOOTH_SETTING:Lcom/android/settings/guide/GuideFragment$GuideModes;

    goto :goto_1

    .line 651
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
