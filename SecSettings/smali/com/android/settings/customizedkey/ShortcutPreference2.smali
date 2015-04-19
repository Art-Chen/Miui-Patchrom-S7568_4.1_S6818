.class public Lcom/android/settings/customizedkey/ShortcutPreference2;
.super Landroid/preference/Preference;
.source "ShortcutPreference2.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/preference/Preference;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field private static STRING_ASSIGN_APPLICATION:Ljava/lang/String;

.field private static STRING_NO_SHORTCUT:Ljava/lang/String;

.field private static sDimAlpha:I

.field private static sDimSummaryColor:Landroid/content/res/ColorStateList;

.field private static sDimTitleColor:Landroid/content/res/ColorStateList;

.field private static sRegularSummaryColor:Landroid/content/res/ColorStateList;

.field private static sRegularTitleColor:Landroid/content/res/ColorStateList;

.field private static sStaticVarsLock:Ljava/lang/Object;


# instance fields
.field private mHasBookmark:Z

.field private mShortcut:C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct/range {v0 .. v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->sStaticVarsLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;C)V
    .locals 5
    .parameter "context"
    .parameter "shortcut"

    .prologue
    .line 53
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 55
    sget-object v2, Lcom/android/settings/customizedkey/ShortcutPreference2;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v2

    .line 59
    const v1, 0x7f090ed7

    :try_start_0
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    .line 60
    const v1, 0x7f090ed6

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_NO_SHORTCUT:Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 63
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v3, 0x1010033

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 64
    invoke-virtual {v0}, Landroid/util/TypedValue;->getFloat()F

    move-result v1

    const/high16 v3, 0x437f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    sput v1, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimAlpha:I

    .line 66
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    iput-char p2, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    .line 70
    return-void

    .line 66
    .end local v0           #outValue:Landroid/util/TypedValue;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private SupportCustmisedkeyTwo()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 158
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ReplaceShortCutCustHwKeyAs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 164
    :goto_0
    return v4

    .line 159
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ReplaceShortCutCustHwKeyAs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 161
    .local v1, keyDefaultShortcut:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 162
    .local v2, keyParsingShorcut:[Ljava/lang/String;
    array-length v5, v2

    div-int/lit8 v5, v5, 0x2

    array-length v6, v2

    rem-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    .line 164
    .local v0, MAX_INDEX:I
    if-le v0, v3, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Landroid/preference/Preference;)I
    .locals 2
    .parameter "another"

    .prologue
    .line 148
    instance-of v1, p1, Lcom/android/settings/customizedkey/ShortcutPreference2;

    if-nez v1, :cond_0

    invoke-super {p0, p1}, Landroid/preference/Preference;->compareTo(Landroid/preference/Preference;)I

    move-result v1

    .line 154
    .end local p1
    :goto_0
    return v1

    .line 151
    .restart local p1
    :cond_0
    check-cast p1, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .end local p1
    iget-char v0, p1, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    .line 152
    .local v0, other:C
    iget-char v1, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    invoke-static {v1}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    .line 153
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isDigit(C)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-char v1, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    invoke-static {v1}, Ljava/lang/Character;->isLetter(C)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    goto :goto_0

    .line 154
    :cond_2
    iget-char v1, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    sub-int/2addr v1, v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 34
    check-cast p1, Landroid/preference/Preference;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->compareTo(Landroid/preference/Preference;)I

    move-result v0

    return v0
.end method

.method public getShortcut()C
    .locals 1

    .prologue
    .line 73
    iget-char v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mShortcut:C

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 101
    iget-boolean v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eqz v0, :cond_0

    invoke-super {p0}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_NO_SHORTCUT:Ljava/lang/String;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->STRING_ASSIGN_APPLICATION:Ljava/lang/String;

    goto :goto_0
.end method

.method public hasBookmark()Z
    .locals 1

    .prologue
    .line 84
    iget-boolean v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    return v0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    .line 106
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 108
    const v3, 0x1020016

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 109
    .local v2, titleView:Landroid/widget/TextView;
    const-string v3, "test"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getShortcut = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-direct {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->SupportCustmisedkeyTwo()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v3

    const/16 v4, 0x2b

    if-ne v3, v4, :cond_5

    .line 113
    const-string v3, " 1"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    .line 119
    :cond_0
    :goto_0
    sget-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 120
    :try_start_0
    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_1

    .line 121
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    .line 122
    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    sget v5, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimAlpha:I

    invoke-virtual {v3, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimTitleColor:Landroid/content/res/ColorStateList;

    .line 124
    :cond_1
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-boolean v3, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eqz v3, :cond_6

    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularTitleColor:Landroid/content/res/ColorStateList;

    .line 127
    .local v0, color:Landroid/content/res/ColorStateList;
    :goto_1
    if-eqz v0, :cond_2

    .line 128
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 131
    :cond_2
    const v3, 0x1020010

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 133
    .local v1, summaryView:Landroid/widget/TextView;
    sget-object v4, Lcom/android/settings/customizedkey/ShortcutPreference2;->sStaticVarsLock:Ljava/lang/Object;

    monitor-enter v4

    .line 134
    :try_start_1
    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    if-nez v3, :cond_3

    .line 135
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    .line 136
    sget-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    sget v5, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimAlpha:I

    invoke-virtual {v3, v5}, Landroid/content/res/ColorStateList;->withAlpha(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    sput-object v3, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimSummaryColor:Landroid/content/res/ColorStateList;

    .line 138
    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 140
    iget-boolean v3, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eqz v3, :cond_7

    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->sRegularSummaryColor:Landroid/content/res/ColorStateList;

    .line 141
    :goto_2
    if-eqz v0, :cond_4

    .line 142
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 145
    :cond_4
    return-void

    .line 114
    .end local v0           #color:Landroid/content/res/ColorStateList;
    .end local v1           #summaryView:Landroid/widget/TextView;
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v3

    const/16 v4, 0x2d

    if-ne v3, v4, :cond_0

    .line 115
    const-string v3, " 2"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->append(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 124
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 126
    :cond_6
    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimTitleColor:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 138
    .restart local v0       #color:Landroid/content/res/ColorStateList;
    .restart local v1       #summaryView:Landroid/widget/TextView;
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 140
    :cond_7
    sget-object v0, Lcom/android/settings/customizedkey/ShortcutPreference2;->sDimSummaryColor:Landroid/content/res/ColorStateList;

    goto :goto_2
.end method

.method public setHasBookmark(Z)V
    .locals 1
    .parameter "hasBookmark"

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    if-eq p1, v0, :cond_0

    .line 89
    iput-boolean p1, p0, Lcom/android/settings/customizedkey/ShortcutPreference2;->mHasBookmark:Z

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->notifyChanged()V

    .line 92
    :cond_0
    return-void
.end method
