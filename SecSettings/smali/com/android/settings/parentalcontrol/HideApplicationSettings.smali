.class public Lcom/android/settings/parentalcontrol/HideApplicationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HideApplicationSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/parentalcontrol/HideApplicationSettings$IconResizer;,
        Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;
    }
.end annotation


# static fields
.field private static final mHiddenPackageStringArray:[Ljava/lang/String;


# instance fields
.field private mAppStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mFilter:Landroid/content/IntentFilter;

.field private mHiddenPackage:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mIPm:Landroid/content/pm/IPackageManager;

.field mIconResizer:Lcom/android/settings/parentalcontrol/HideApplicationSettings$IconResizer;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSharedPrefs:Landroid/content/SharedPreferences;

.field private mSystemAppGroup:Landroid/preference/PreferenceGroup;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 55
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.android.settings"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mHiddenPackageStringArray:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mAppStates:Ljava/util/HashMap;

    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mHiddenPackage:Ljava/util/Set;

    .line 279
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/parentalcontrol/HideApplicationSettings;)Landroid/content/SharedPreferences;
    .locals 1
    .parameter "x0"

    .prologue
    .line 44
    iget-object v0, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    return-object v0
.end method

.method private insertAppInfo(Landroid/preference/PreferenceGroup;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;Z)V
    .locals 9
    .parameter "group"
    .parameter
    .parameter "info"
    .parameter "defaultState"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/preference/PreferenceGroup;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;",
            ">;",
            "Landroid/content/pm/PackageInfo;",
            "Z)V"
        }
    .end annotation

    .prologue
    .local p2, appStateMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;>;"
    const/4 v6, 0x0

    .line 194
    if-eqz p3, :cond_0

    .line 195
    iget-object v5, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    .line 196
    .local v5, pkgName:Ljava/lang/String;
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 197
    .local v4, name:Ljava/lang/String;
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v7, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 198
    .local v3, icon:Landroid/graphics/drawable/Drawable;
    iget-object v7, p3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;

    .line 199
    .local v1, appState:Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;
    if-nez v1, :cond_1

    move v2, p4

    .line 200
    .local v2, enabled:Z
    :goto_0
    new-instance v0, Landroid/preference/CheckBoxPreference;

    invoke-virtual {p0}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/preference/CheckBoxPreference;-><init>(Landroid/content/Context;)V

    .line 201
    .local v0, appPref:Landroid/preference/CheckBoxPreference;
    if-eqz v4, :cond_3

    .end local v4           #name:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v4}, Landroid/preference/CheckBoxPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 202
    iget-object v7, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mIconResizer:Lcom/android/settings/parentalcontrol/HideApplicationSettings$IconResizer;

    invoke-virtual {v7, v3}, Lcom/android/settings/parentalcontrol/HideApplicationSettings$IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/preference/CheckBoxPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 204
    invoke-virtual {v0, v5}, Landroid/preference/CheckBoxPreference;->setKey(Ljava/lang/String;)V

    .line 205
    invoke-virtual {v0, v6}, Landroid/preference/CheckBoxPreference;->setPersistent(Z)V

    .line 206
    invoke-virtual {v0, p0}, Landroid/preference/CheckBoxPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 209
    .end local v0           #appPref:Landroid/preference/CheckBoxPreference;
    .end local v1           #appState:Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;
    .end local v2           #enabled:Z
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #pkgName:Ljava/lang/String;
    :cond_0
    return-void

    .line 199
    .restart local v1       #appState:Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;
    .restart local v3       #icon:Landroid/graphics/drawable/Drawable;
    .restart local v4       #name:Ljava/lang/String;
    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_1
    iget-boolean v7, v1, Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;->enabled:Z

    if-nez v7, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0

    .restart local v0       #appPref:Landroid/preference/CheckBoxPreference;
    .restart local v2       #enabled:Z
    :cond_3
    move-object v4, v5

    .line 201
    goto :goto_1
.end method

.method private refreshApps()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 212
    iget-object v7, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mSystemAppGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v7}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 214
    iget-object v7, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mAppStates:Ljava/util/HashMap;

    invoke-virtual {v7}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    .line 215
    .local v1, firstTime:Z
    new-instance v4, Landroid/content/Intent;

    const-string v7, "android.intent.action.MAIN"

    const/4 v8, 0x0

    invoke-direct {v4, v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 216
    .local v4, mainIntent:Landroid/content/Intent;
    const-string v7, "android.intent.category.LAUNCHER"

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 217
    iget-object v7, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mPm:Landroid/content/pm/PackageManager;

    const/16 v8, 0x200

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 218
    .local v0, apps:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string v7, "ParentalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "app count : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/ResolveInfo;

    .line 221
    .local v6, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-boolean v7, v7, Landroid/content/pm/ActivityInfo;->enabled:Z

    if-nez v7, :cond_1

    .line 222
    const-string v7, "ParentalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "disabled activity so skip it : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 225
    :cond_1
    iget-object v7, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v7}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->isHiddenPkg(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 226
    const-string v7, "ParentalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " hidden activity so skip it : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 232
    :cond_2
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mIPm:Landroid/content/pm/IPackageManager;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-interface {v7, v8, v9, v10}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 238
    .local v3, info:Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_3

    .line 239
    iget-object v7, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mAppStates:Ljava/util/HashMap;

    iget-object v8, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    new-instance v9, Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;

    iget-object v10, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-boolean v10, v10, Landroid/content/pm/ApplicationInfo;->enabled:Z

    invoke-direct {v9, v10}, Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;-><init>(Z)V

    invoke-virtual {v7, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_3
    iget-object v7, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mSystemAppGroup:Landroid/preference/PreferenceGroup;

    iget-object v8, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v7

    if-nez v7, :cond_0

    .line 246
    iget-object v7, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mSystemAppGroup:Landroid/preference/PreferenceGroup;

    iget-object v8, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mAppStates:Ljava/util/HashMap;

    invoke-direct {p0, v7, v8, v3, v11}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->insertAppInfo(Landroid/preference/PreferenceGroup;Ljava/util/HashMap;Landroid/content/pm/PackageInfo;Z)V

    goto/16 :goto_0

    .line 234
    .end local v3           #info:Landroid/content/pm/PackageInfo;
    :catch_0
    move-exception v5

    .line 235
    .local v5, re:Landroid/os/RemoteException;
    const-string v7, "ParentalControl"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v6, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", getPackageInfo is failed"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 248
    .end local v5           #re:Landroid/os/RemoteException;
    .end local v6           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_4
    return-void
.end method


# virtual methods
.method public addHiddenPackage(Ljava/lang/String;)V
    .locals 1
    .parameter "packageName"

    .prologue
    .line 370
    iget-object v0, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mHiddenPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 371
    iget-object v0, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mHiddenPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 373
    :cond_0
    return-void
.end method

.method public doHideApplication(Ljava/lang/String;I)V
    .locals 7
    .parameter "selectedPackage"
    .parameter "value"

    .prologue
    const/4 v6, 0x0

    .line 252
    const-string v3, "ParentalControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "doHideApplication(), value : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    const-string v3, "package"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 256
    .local v0, IPm:Landroid/content/pm/IPackageManager;
    if-lez p2, :cond_0

    const/4 v1, 0x3

    .line 259
    .local v1, newState:I
    :goto_0
    if-lez p2, :cond_1

    .line 260
    const-string v3, "ParentalControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to change enabled state of package to disable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    :goto_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, p1, v1, v3, v4}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 273
    :goto_2
    return-void

    .line 256
    .end local v1           #newState:I
    :cond_0
    const/4 v1, 0x1

    goto :goto_0

    .line 263
    .restart local v1       #newState:I
    :cond_1
    const-string v3, "ParentalControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "try to change enabled state of package to enable "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 268
    :catch_0
    move-exception v2

    .line 269
    .local v2, re:Landroid/os/RemoteException;
    const-string v3, "ParentalControl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to change enabled state of package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public isHiddenPkg(Ljava/lang/String;)Z
    .locals 1
    .parameter "packageName"

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mHiddenPackage:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 377
    const/4 v0, 0x1

    .line 379
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter "savedInstanceState"

    .prologue
    .line 83
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 85
    const v4, 0x7f070033

    invoke-virtual {p0, v4}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->addPreferencesFromResource(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mContext:Landroid/content/Context;

    .line 88
    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.settings.PROTECTION_MODE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mFilter:Landroid/content/IntentFilter;

    .line 89
    new-instance v4, Lcom/android/settings/parentalcontrol/HideApplicationSettings$1;

    invoke-direct {v4, p0}, Lcom/android/settings/parentalcontrol/HideApplicationSettings$1;-><init>(Lcom/android/settings/parentalcontrol/HideApplicationSettings;)V

    iput-object v4, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 98
    const-string v4, "apps_category"

    invoke-virtual {p0, v4}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceGroup;

    iput-object v4, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mSystemAppGroup:Landroid/preference/PreferenceGroup;

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "pref_disable_application"

    const/4 v6, 0x2

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    .line 100
    new-instance v4, Lcom/android/settings/parentalcontrol/HideApplicationSettings$IconResizer;

    invoke-direct {v4, p0}, Lcom/android/settings/parentalcontrol/HideApplicationSettings$IconResizer;-><init>(Lcom/android/settings/parentalcontrol/HideApplicationSettings;)V

    iput-object v4, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mIconResizer:Lcom/android/settings/parentalcontrol/HideApplicationSettings$IconResizer;

    .line 102
    sget-object v0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mHiddenPackageStringArray:[Ljava/lang/String;

    .local v0, arr$:[Ljava/lang/String;
    array-length v2, v0

    .local v2, len$:I
    const/4 v1, 0x0

    .local v1, i$:I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 103
    .local v3, s:Ljava/lang/String;
    invoke-virtual {p0, v3}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->addHiddenPackage(Ljava/lang/String;)V

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 106
    .end local v3           #s:Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 125
    const-string v0, "ParentalControl"

    const-string v1, "onPause() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 130
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 7
    .parameter "preference"
    .parameter "newValue"

    .prologue
    const/4 v4, 0x1

    .line 147
    move-object v3, p2

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 148
    .local v2, state:Z
    const-string v3, "ParentalControl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onPreferenceChange : preference :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", newValue :  "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    instance-of v3, p1, Landroid/preference/CheckBoxPreference;

    if-eqz v3, :cond_0

    .line 152
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, packageName:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mSharedPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 154
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    if-eqz v2, :cond_1

    .line 155
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v5, 0x7f090622

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x7f090621

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x1010355

    invoke-virtual {v3, v5}, Landroid/app/AlertDialog$Builder;->setIconAttribute(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const v5, 0x104000a

    new-instance v6, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;

    invoke-direct {v6, p0, v1, v2}, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;-><init>(Lcom/android/settings/parentalcontrol/HideApplicationSettings;Ljava/lang/String;Z)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    const/high16 v5, 0x104

    new-instance v6, Lcom/android/settings/parentalcontrol/HideApplicationSettings$2;

    invoke-direct {v6, p0, p1}, Lcom/android/settings/parentalcontrol/HideApplicationSettings$2;-><init>(Lcom/android/settings/parentalcontrol/HideApplicationSettings;Landroid/preference/Preference;)V

    invoke-virtual {v3, v5, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 182
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 189
    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    .end local v1           #packageName:Ljava/lang/String;
    :cond_0
    return v4

    .line 179
    .restart local v0       #ed:Landroid/content/SharedPreferences$Editor;
    .restart local v1       #packageName:Ljava/lang/String;
    :cond_1
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 180
    if-eqz v2, :cond_2

    move v3, v4

    :goto_1
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->doHideApplication(Ljava/lang/String;I)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 142
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 110
    const-string v0, "ParentalControl"

    const-string v1, "onResume() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 118
    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mIPm:Landroid/content/pm/IPackageManager;

    .line 119
    invoke-direct {p0}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->refreshApps()V

    .line 121
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 135
    const-string v0, "ParentalControl"

    const-string v1, "onStop() "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    return-void
.end method
