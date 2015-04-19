.class public Lcom/android/settings/ReadingMode;
.super Landroid/app/ListFragment;
.source "ReadingMode.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ReadingMode$SettingsObserver;,
        Lcom/android/settings/ReadingMode$AlphaComparator;,
        Lcom/android/settings/ReadingMode$AppListAdapter;
    }
.end annotation


# static fields
.field static MAX_READINGMODE:I

.field private static list_view:Landroid/widget/ListView;

.field private static sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;


# instance fields
.field private mActionBarLayout:Landroid/view/View;

.field private mActionBarSwitch:Landroid/widget/Switch;

.field private mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mSavedAppListInfo:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 75
    const/16 v0, 0x14

    sput v0, Lcom/android/settings/ReadingMode;->MAX_READINGMODE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/app/ListFragment;-><init>()V

    .line 310
    return-void
.end method

.method private UpdateSavedReadingMode()V
    .locals 17

    .prologue
    .line 92
    const/4 v11, 0x0

    .line 93
    .local v11, mSavedReadingModeNums:I
    const/4 v2, 0x0

    .line 94
    .local v2, SavedApplist:Ljava/lang/String;
    const/4 v7, 0x0

    .line 95
    .local v7, mAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v8, 0x0

    .line 96
    .local v8, mSavedApplist:[Ljava/lang/String;
    const/4 v10, 0x0

    .line 97
    .local v10, mSavedApplist_Package:[Ljava/lang/String;
    const/4 v9, 0x0

    .line 99
    .local v9, mSavedApplist_Activity:[Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "reading_mode_app_list"

    invoke-static {v14, v15}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 100
    const-string v14, "ReadingMode"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UpdateSavedReadingMode SavedApplist :"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_0

    .line 102
    const-string v14, ";"

    invoke-virtual {v2, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 103
    array-length v11, v8

    .line 106
    :cond_0
    new-array v10, v11, [Ljava/lang/String;

    .line 107
    new-array v9, v11, [Ljava/lang/String;

    .line 108
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, v11, :cond_1

    .line 109
    const/4 v12, 0x0

    .line 110
    .local v12, package_index:I
    aget-object v14, v8, v5

    const/16 v15, 0x2f

    const/16 v16, 0x0

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 111
    aget-object v14, v8, v5

    const/4 v15, 0x0

    invoke-virtual {v14, v15, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    .line 112
    .local v13, package_name:Ljava/lang/String;
    aget-object v14, v8, v5

    add-int/lit8 v15, v12, 0x1

    aget-object v16, v8, v5

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 113
    .local v3, activity_name:Ljava/lang/String;
    aput-object v13, v10, v5

    .line 114
    aput-object v3, v9, v5

    .line 108
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 117
    .end local v3           #activity_name:Ljava/lang/String;
    .end local v12           #package_index:I
    .end local v13           #package_name:Ljava/lang/String;
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-string v14, "android.intent.action.MAIN"

    invoke-direct {v1, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 119
    .local v1, LauncherIntent:Landroid/content/Intent;
    const-string v14, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v14}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 120
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    const/16 v15, 0x20

    invoke-virtual {v14, v1, v15}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v7

    .line 123
    new-instance v4, Lcom/android/settings/ReadingMode$AlphaComparator;

    move-object/from16 v0, p0

    invoke-direct {v4, v0}, Lcom/android/settings/ReadingMode$AlphaComparator;-><init>(Lcom/android/settings/ReadingMode;)V

    .line 124
    .local v4, alphaComparator:Lcom/android/settings/ReadingMode$AlphaComparator;
    invoke-static {v7, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 126
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    .line 128
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->clear()V

    .line 129
    const/4 v5, 0x0

    :goto_1
    if-ge v5, v11, :cond_4

    .line 130
    const/4 v6, 0x0

    .local v6, j:I
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v14

    if-ge v6, v14, :cond_3

    .line 131
    aget-object v15, v10, v5

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    aget-object v15, v9, v5

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/content/pm/ResolveInfo;

    iget-object v14, v14, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v15, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_2

    .line 132
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    const-string v14, "ReadingMode"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "UpdateSavedReadingMode mSavedAppListInfo["

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "]:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 129
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 138
    .end local v6           #j:I
    :cond_4
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ReadingMode;)Landroid/content/pm/PackageManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/ReadingMode;)Landroid/widget/Switch;
    .locals 1
    .parameter "x0"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 10
    .parameter "savedInstanceState"

    .prologue
    const/16 v5, 0x10

    const/4 v9, -0x2

    const/4 v4, 0x0

    .line 149
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v2

    .line 152
    .local v2, activity:Landroid/app/Activity;
    new-instance v0, Landroid/widget/Switch;

    invoke-direct {v0, v2}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getListView()Landroid/widget/ListView;

    move-result-object v0

    sput-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    .line 155
    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getView()Landroid/view/View;

    move-result-object v1

    const v3, 0x1020004

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 157
    instance-of v0, v2, Landroid/preference/PreferenceActivity;

    if-eqz v0, :cond_0

    move-object v7, v2

    .line 158
    check-cast v7, Landroid/preference/PreferenceActivity;

    .line 159
    .local v7, preferenceActivity:Landroid/preference/PreferenceActivity;
    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0f0002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    .line 161
    .local v6, padding:I
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v4, v4, v6, v4}, Landroid/widget/Switch;->setPadding(IIII)V

    .line 162
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v5, v5}, Landroid/app/ActionBar;->setDisplayOptions(II)V

    .line 164
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    new-instance v3, Landroid/app/ActionBar$LayoutParams;

    const/16 v5, 0x15

    invoke-direct {v3, v9, v9, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(III)V

    invoke-virtual {v0, v1, v3}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    .line 168
    invoke-virtual {v2}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    .line 170
    .end local v6           #padding:I
    .end local v7           #preferenceActivity:Landroid/preference/PreferenceActivity;
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 172
    invoke-direct {p0}, Lcom/android/settings/ReadingMode;->UpdateSavedReadingMode()V

    .line 174
    new-instance v0, Lcom/android/settings/ReadingMode$AppListAdapter;

    const v3, 0x7f0400e4

    iget-object v5, p0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/ReadingMode$AppListAdapter;-><init>(Lcom/android/settings/ReadingMode;Landroid/content/Context;IILjava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    .line 176
    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 177
    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v8, v4}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 178
    .local v8, stub:Landroid/graphics/drawable/Drawable;
    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {v0, v8}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 179
    sget-object v0, Lcom/android/settings/ReadingMode;->list_view:Landroid/widget/ListView;

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setSoundEffectsEnabled(Z)V

    .line 180
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/ReadingMode;->setHasOptionsMenu(Z)V

    .line 181
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3
    .parameter "buttonView"
    .parameter "desiredState"

    .prologue
    .line 261
    const-string v0, "ReadingMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged desiredState :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "e_reading_display_mode"

    if-eqz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 264
    return-void

    .line 262
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 87
    invoke-super {p0, p1}, Landroid/app/ListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3
    .parameter "menu"
    .parameter "inflater"

    .prologue
    const/4 v2, 0x0

    .line 185
    invoke-super {p0, p1, p2}, Landroid/app/ListFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 187
    const/4 v0, 0x1

    const v1, 0x7f090e3e

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02014a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 190
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .parameter "inflater"
    .parameter "container"
    .parameter "savedInstanceState"

    .prologue
    .line 142
    const v0, 0x7f0400e2

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v3, 0x1

    .line 195
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v3, :cond_0

    .line 197
    const/4 v2, -0x1

    invoke-static {v2}, Lcom/android/settings/ReadingModeSettings;->newInstance(I)Lcom/android/settings/ReadingModeSettings;

    move-result-object v1

    .line 198
    .local v1, rmf:Lcom/android/settings/ReadingModeSettings;
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 199
    .local v0, ft:Landroid/app/FragmentTransaction;
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getId()I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    .line 200
    const/16 v2, 0x1001

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    .line 201
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    .line 202
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    move v2, v3

    .line 207
    .end local v0           #ft:Landroid/app/FragmentTransaction;
    .end local v1           #rmf:Lcom/android/settings/ReadingModeSettings;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/ListFragment;->onPause()V

    .line 245
    sget-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/ReadingMode$SettingsObserver;->stopObserving()V

    .line 247
    const/4 v0, 0x0

    sput-object v0, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    .line 249
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 212
    invoke-super {p0}, Landroid/app/ListFragment;->onResume()V

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "e_reading_display_mode"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_2

    .line 215
    .local v2, state:Z
    :goto_0
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    invoke-virtual {v3, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 217
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mActionBarLayout:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 220
    :cond_0
    sget-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    if-nez v3, :cond_1

    .line 221
    new-instance v3, Lcom/android/settings/ReadingMode$SettingsObserver;

    new-instance v5, Landroid/os/Handler;

    invoke-direct {v5}, Landroid/os/Handler;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v3, p0, v5, v6}, Lcom/android/settings/ReadingMode$SettingsObserver;-><init>(Lcom/android/settings/ReadingMode;Landroid/os/Handler;Landroid/content/Context;)V

    sput-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    .line 222
    sget-object v3, Lcom/android/settings/ReadingMode;->sSettingsObserver:Lcom/android/settings/ReadingMode$SettingsObserver;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$SettingsObserver;->startObserving()V

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$AppListAdapter;->getCount()I

    move-result v3

    if-eqz v3, :cond_3

    .line 227
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$AppListAdapter;->getCount()I

    move-result v0

    .line 228
    .local v0, AdapterNum:I
    const-string v3, "ReadingMode"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume() AdapterNum.num :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 230
    const-string v5, "ReadingMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume() mAppListAdapter.packageName [ "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, "]"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3, v4}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    iget-object v5, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v5, v4}, Lcom/android/settings/ReadingMode$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/android/settings/ReadingMode$AppListAdapter;->remove(Ljava/lang/Object;)V

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0           #AdapterNum:I
    .end local v1           #i:I
    .end local v2           #state:Z
    :cond_2
    move v2, v4

    .line 214
    goto/16 :goto_0

    .line 235
    .restart local v2       #state:Z
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/ReadingMode;->UpdateSavedReadingMode()V

    .line 236
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    iget-object v4, p0, Lcom/android/settings/ReadingMode;->mSavedAppListInfo:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Lcom/android/settings/ReadingMode$AppListAdapter;->addAll(Ljava/util/Collection;)V

    .line 237
    iget-object v3, p0, Lcom/android/settings/ReadingMode;->mAppListAdapter:Lcom/android/settings/ReadingMode$AppListAdapter;

    invoke-virtual {v3}, Lcom/android/settings/ReadingMode$AppListAdapter;->notifyDataSetChanged()V

    .line 239
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 253
    invoke-super {p0}, Landroid/app/ListFragment;->onStop()V

    .line 254
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/android/settings/ReadingMode;->mActionBarSwitch:Landroid/widget/Switch;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setVisibility(I)V

    .line 257
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/ReadingMode;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 258
    return-void
.end method
