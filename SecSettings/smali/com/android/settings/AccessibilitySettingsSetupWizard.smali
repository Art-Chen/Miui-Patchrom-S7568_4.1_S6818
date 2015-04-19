.class public Lcom/android/settings/AccessibilitySettingsSetupWizard;
.super Landroid/preference/PreferenceActivity;
.source "AccessibilitySettingsSetupWizard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lcom/android/settings/AccessibilitySettingsSetupWizard;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/AccessibilitySettingsSetupWizard;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 2
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 67
    invoke-super {p0, p1, p2, p3, p4}, Landroid/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    .line 70
    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 71
    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 60
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->setResult(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->finish()V

    .line 62
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .parameter "savedInstanceState"

    .prologue
    const v8, 0x7f0b000c

    const v7, 0x7f040001

    const/4 v6, 0x1

    .line 22
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 25
    .local v2, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    .line 26
    .local v1, forFullHD:Z
    const-string v5, "forFullHD"

    invoke-virtual {v2, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-ne v5, v6, :cond_0

    .line 27
    const-string v5, "forFullHD"

    invoke-virtual {v2, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 30
    :cond_0
    if-eqz v1, :cond_4

    .line 31
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getActionBar()Landroid/app/ActionBar;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/ActionBar;->hide()V

    .line 35
    :cond_1
    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->setContentView(I)V

    .line 37
    invoke-virtual {p0, v8}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 39
    instance-of v5, v0, Landroid/widget/Button;

    if-eqz v5, :cond_3

    .line 40
    sget-object v5, Lcom/android/settings/AccessibilitySettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v6, "Next is Button instance"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v0

    .line 41
    check-cast v3, Landroid/widget/Button;

    .line 42
    .local v3, nextBtn:Landroid/widget/Button;
    const-string v5, ""

    invoke-virtual {v3}, Landroid/widget/Button;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 43
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0905bd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 44
    .local v4, original_str:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0202cd

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    const/16 v6, -0xa

    invoke-static {v4, v5, v6}, Lcom/android/settings/Utils;->makeStringWithImage(Ljava/lang/String;Landroid/graphics/drawable/Drawable;I)Landroid/text/SpannableString;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 55
    .end local v0           #button:Landroid/view/View;
    .end local v3           #nextBtn:Landroid/widget/Button;
    .end local v4           #original_str:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 47
    .restart local v0       #button:Landroid/view/View;
    :cond_3
    sget-object v5, Lcom/android/settings/AccessibilitySettingsSetupWizard;->TAG:Ljava/lang/String;

    const-string v6, "Next is LinearLayout instance"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 50
    .end local v0           #button:Landroid/view/View;
    :cond_4
    invoke-virtual {p0, v7}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->setContentView(I)V

    .line 52
    invoke-virtual {p0, v8}, Lcom/android/settings/AccessibilitySettingsSetupWizard;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 53
    .local v0, button:Landroid/widget/Button;
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method public onIsMultiPane()Z
    .locals 2

    .prologue
    .line 77
    const-string v1, "ro.build.characteristics"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, mDeviceType:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 79
    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const/4 v1, 0x0

    .line 82
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v1

    goto :goto_0
.end method
