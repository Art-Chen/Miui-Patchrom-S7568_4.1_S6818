.class public Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;
.super Landroid/app/Activity;
.source "WifiAdvancedSecSetupActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initialize()V
    .locals 4

    .prologue
    .line 42
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 43
    .local v1, frame:Landroid/widget/FrameLayout;
    const v3, 0x7f0b0362

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->setId(I)V

    .line 44
    new-instance v0, Lcom/android/settings/wifi/AdvancedWifiSettings;

    invoke-direct {v0}, Lcom/android/settings/wifi/AdvancedWifiSettings;-><init>()V

    .line 45
    .local v0, advancedWifiSettings:Lcom/android/settings/wifi/AdvancedWifiSettings;
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    .line 46
    .local v2, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 47
    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 48
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .parameter "savedInstanceState"

    .prologue
    .line 34
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    const v0, 0x7f040125

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->setContentView(I)V

    .line 38
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiAdvancedSecSetupActivity;->initialize()V

    .line 39
    return-void
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 52
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 53
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 58
    return-void
.end method
