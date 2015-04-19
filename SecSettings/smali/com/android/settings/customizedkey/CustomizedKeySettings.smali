.class public Lcom/android/settings/customizedkey/CustomizedKeySettings;
.super Landroid/preference/PreferenceActivity;
.source "CustomizedKeySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;
    }
.end annotation


# static fields
.field private static final sProjection:[Ljava/lang/String;


# instance fields
.field private alert:Landroid/app/AlertDialog;

.field private mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

.field private mBookmarksCursor:Landroid/database/Cursor;

.field private mBookmarksObserver:Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

.field private mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

.field private mClearDialogShortcut:C

.field private mEnableCustomisedkeyTwo:Z

.field private mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

.field private mShortcutGroup:Landroid/preference/PreferenceGroup;

.field private mShortcutToPreference:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/android/settings/customizedkey/ShortcutPreference2;",
            ">;"
        }
    .end annotation
.end field

.field private mTitle:Ljava/lang/String;

.field private mUiHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 77
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "shortcut"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "intent"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->sProjection:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 82
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mUiHandler:Landroid/os/Handler;

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mEnableCustomisedkeyTwo:Z

    .line 535
    return-void
.end method

.method private AssignReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 251
    iget-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 253
    .local v0, pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    invoke-virtual {v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 254
    invoke-virtual {v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    iput-char v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    .line 257
    iget-char v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    invoke-direct {p0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->clearShortcut(C)V

    .line 258
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 259
    iput-char v3, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    .line 260
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f090ed8

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 261
    return-void
.end method

.method private SupportCustmisedkeyTwo()Z
    .locals 7

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 525
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ReplaceShortCutCustHwKeyAs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 531
    :goto_0
    return v4

    .line 526
    :cond_0
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v5

    const-string v6, "CscFeature_Setting_ReplaceShortCutCustHwKeyAs"

    invoke-virtual {v5, v6}, Lcom/sec/android/app/CscFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 528
    .local v1, keyDefaultShortcut:Ljava/lang/String;
    const-string v5, ","

    invoke-virtual {v1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 529
    .local v2, keyParsingShorcut:[Ljava/lang/String;
    array-length v5, v2

    div-int/lit8 v5, v5, 0x2

    array-length v6, v2

    rem-int/lit8 v6, v6, 0x2

    add-int v0, v5, v6

    .line 531
    .local v0, MAX_INDEX:I
    if-le v0, v3, :cond_1

    :goto_1
    move v4, v3

    goto :goto_0

    :cond_1
    move v3, v4

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->replaceBookmark()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->AssignReset()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->refreshShortcuts()V

    return-void
.end method

.method private callCustomizedAssignActivity()V
    .locals 4

    .prologue
    const/16 v3, 0x12d

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.CUSTOMIZEDKEYASSIGN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.customizedkey.CustomizedkeyAssign"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 137
    iget-boolean v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mEnableCustomisedkeyTwo:Z

    if-eqz v1, :cond_2

    .line 138
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-virtual {v1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_1

    .line 139
    const-string v1, "keyCode"

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 146
    :cond_0
    :goto_0
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->startActivity(Landroid/content/Intent;)V

    .line 149
    return-void

    .line 140
    :cond_1
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-virtual {v1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_0

    .line 141
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0

    .line 143
    :cond_2
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private clearShortcut(C)V
    .locals 6
    .parameter "shortcut"

    .prologue
    .line 282
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "shortcut=?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 284
    return-void
.end method

.method private createPreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;
    .locals 2
    .parameter "shortcut"

    .prologue
    .line 385
    new-instance v0, Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/customizedkey/ShortcutPreference2;-><init>(Landroid/content/Context;C)V

    .line 386
    .local v0, pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 387
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 388
    return-object v0
.end method

.method private getOrCreatePreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;
    .locals 4
    .parameter "shortcut"

    .prologue
    .line 375
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 376
    .local v0, pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    if-eqz v0, :cond_0

    .line 380
    .end local v0           #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    :goto_0
    return-object v0

    .line 379
    .restart local v0       #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    :cond_0
    const-string v1, "CustomizedKeySettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown shortcut \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\', creating preference anyway"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-direct {p0, p1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->createPreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;

    move-result-object v0

    goto :goto_0
.end method

.method private initShortcutPreferences()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 394
    new-instance v3, Landroid/util/SparseBooleanArray;

    invoke-direct {v3}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 395
    .local v3, shortcutSeen:Landroid/util/SparseBooleanArray;
    const/4 v4, 0x0

    invoke-static {v4}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v0

    .line 403
    .local v0, keyMap:Landroid/view/KeyCharacterMap;
    iget-boolean v4, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mEnableCustomisedkeyTwo:Z

    if-eqz v4, :cond_0

    .line 404
    const/16 v2, 0x2b

    .line 405
    .local v2, shortcut1:C
    invoke-virtual {v3, v2, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 407
    invoke-direct {p0, v2}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->createPreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 411
    .end local v2           #shortcut1:C
    :cond_0
    const/16 v1, 0x2d

    .line 412
    .local v1, shortcut:C
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 414
    invoke-direct {p0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->createPreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 417
    return-void
.end method

.method private declared-synchronized refreshShortcuts()V
    .locals 22

    .prologue
    .line 420
    monitor-enter p0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksCursor:Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 421
    .local v3, c:Landroid/database/Cursor;
    if-nez v3, :cond_1

    .line 522
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 426
    :cond_1
    :try_start_1
    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v18

    if-nez v18, :cond_2

    .line 427
    const-string v18, "CustomizedKeySettings"

    const-string v19, "Could not requery cursor when refreshing shortcuts."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 420
    .end local v3           #c:Landroid/database/Cursor;
    :catchall_0
    move-exception v18

    monitor-exit p0

    throw v18

    .line 436
    .restart local v3       #c:Landroid/database/Cursor;
    :cond_2
    :try_start_2
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 437
    .local v12, noLongerBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    new-instance v11, Landroid/util/SparseBooleanArray;

    invoke-direct {v11}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 438
    .local v11, newBookmarkedShortcuts:Landroid/util/SparseBooleanArray;
    :cond_3
    :goto_1
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v18

    if-eqz v18, :cond_7

    .line 439
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-char v0, v0

    move/from16 v18, v0

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v15

    .line 440
    .local v15, shortcut:C
    if-eqz v15, :cond_3

    .line 442
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mEnableCustomisedkeyTwo:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 444
    const/16 v18, 0x2b

    move/from16 v0, v18

    if-eq v15, v0, :cond_4

    const/16 v18, 0x2d

    move/from16 v0, v18

    if-ne v15, v0, :cond_3

    .line 449
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v15}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getOrCreatePreference(C)Lcom/android/settings/customizedkey/ShortcutPreference2;

    move-result-object v14

    .line 450
    .local v14, pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    move-object/from16 v0, p0

    invoke-static {v0, v3}, Landroid/provider/Settings$Bookmarks;->getTitle(Landroid/content/Context;Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v17

    .line 457
    .local v17, title:Ljava/lang/CharSequence;
    const-string v18, "intent"

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 458
    .local v7, intentColumn:I
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 459
    .local v8, intentUri:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getPackageManager()Landroid/content/pm/PackageManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v13

    .line 461
    .local v13, packageManager:Landroid/content/pm/PackageManager;
    :try_start_3
    invoke-static {v8}, Landroid/content/Intent;->getIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 462
    .local v6, intent:Landroid/content/Intent;
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v13, v6, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 463
    .local v5, info:Landroid/content/pm/ResolveInfo;
    if-eqz v5, :cond_5

    .line 464
    invoke-virtual {v5, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/net/URISyntaxException; {:try_start_3 .. :try_end_3} :catch_0

    move-result-object v17

    .line 470
    .end local v5           #info:Landroid/content/pm/ResolveInfo;
    .end local v6           #intent:Landroid/content/Intent;
    :cond_5
    :goto_2
    :try_start_4
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->setTitle(Ljava/lang/CharSequence;)V

    .line 471
    const v18, 0x7f090680

    const/16 v19, 0x1

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-static {v15}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    move-object/from16 v0, p0

    move/from16 v1, v18

    move-object/from16 v2, v19

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->setSummary(Ljava/lang/CharSequence;)V

    .line 473
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->setHasBookmark(Z)V

    .line 475
    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v15, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 476
    if-eqz v12, :cond_3

    .line 479
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v12, v15, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto/16 :goto_1

    .line 447
    .end local v7           #intentColumn:I
    .end local v8           #intentUri:Ljava/lang/String;
    .end local v13           #packageManager:Landroid/content/pm/PackageManager;
    .end local v14           #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    .end local v17           #title:Ljava/lang/CharSequence;
    :cond_6
    const/16 v18, 0x2d

    move/from16 v0, v18

    if-eq v15, v0, :cond_4

    goto/16 :goto_1

    .line 483
    .end local v15           #shortcut:C
    :cond_7
    if-eqz v12, :cond_9

    .line 484
    invoke-virtual {v12}, Landroid/util/SparseBooleanArray;->size()I

    move-result v18

    add-int/lit8 v4, v18, -0x1

    .local v4, i:I
    :goto_3
    if-ltz v4, :cond_9

    .line 485
    invoke-virtual {v12, v4}, Landroid/util/SparseBooleanArray;->valueAt(I)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 487
    invoke-virtual {v12, v4}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v18

    move/from16 v0, v18

    int-to-char v15, v0

    .line 488
    .restart local v15       #shortcut:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 489
    .restart local v14       #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    if-eqz v14, :cond_8

    .line 490
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-virtual {v14, v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->setHasBookmark(Z)V

    .line 484
    .end local v14           #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    .end local v15           #shortcut:C
    :cond_8
    add-int/lit8 v4, v4, -0x1

    goto :goto_3

    .line 496
    .end local v4           #i:I
    :cond_9
    move-object/from16 v0, p0

    iput-object v11, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarkedShortcuts:Landroid/util/SparseBooleanArray;

    .line 498
    invoke-interface {v3}, Landroid/database/Cursor;->deactivate()V

    .line 501
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mEnableCustomisedkeyTwo:Z

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 502
    const/16 v15, 0x2d

    .line 503
    .restart local v15       #shortcut:C
    const/16 v16, 0x2b

    .line 505
    .local v16, shortcut2:C
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 506
    .local v9, mPref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 509
    .local v10, mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;
    if-eqz v9, :cond_a

    invoke-virtual {v9}, Lcom/android/settings/customizedkey/ShortcutPreference2;->hasBookmark()Z

    move-result v18

    if-nez v18, :cond_a

    .line 512
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->callCustomizedAssignActivity()V

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->finish()V

    goto/16 :goto_0

    .line 515
    :cond_a
    if-eqz v10, :cond_0

    invoke-virtual {v10}, Lcom/android/settings/customizedkey/ShortcutPreference2;->hasBookmark()Z

    move-result v18

    if-nez v18, :cond_0

    .line 518
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->callCustomizedAssignActivity()V

    .line 519
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->finish()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 466
    .end local v9           #mPref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    .end local v10           #mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;
    .end local v16           #shortcut2:C
    .restart local v7       #intentColumn:I
    .restart local v8       #intentUri:Ljava/lang/String;
    .restart local v13       #packageManager:Landroid/content/pm/PackageManager;
    .restart local v14       #pref:Lcom/android/settings/customizedkey/ShortcutPreference2;
    .restart local v17       #title:Ljava/lang/CharSequence;
    :catch_0
    move-exception v18

    goto/16 :goto_2
.end method

.method private replaceBookmark()V
    .locals 3

    .prologue
    .line 242
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/customizedkey/BookmarkPicker;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 243
    const-string v1, "com.android.settings.customizedkey.SHORTCUT"

    iget-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-virtual {v2}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;C)Landroid/content/Intent;

    .line 244
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 246
    return-void
.end method

.method private updateShortcut(CLandroid/content/Intent;)V
    .locals 6
    .parameter "shortcut"
    .parameter "intent"

    .prologue
    .line 371
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, ""

    const-string v3, "@customiezedkey"

    const/4 v5, 0x0

    move-object v1, p2

    move v4, p1

    invoke-static/range {v0 .. v5}, Landroid/provider/Settings$Bookmarks;->add(Landroid/content/ContentResolver;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;CI)Landroid/net/Uri;

    .line 372
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 347
    const/4 v1, -0x1

    if-eq p2, v1, :cond_0

    .line 365
    :goto_0
    return-void

    .line 351
    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 354
    if-nez p3, :cond_1

    .line 355
    const-string v1, "CustomizedKeySettings"

    const-string v2, "Result from bookmark picker does not have an intent."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 359
    :cond_1
    const-string v1, "com.android.settings.customizedkey.SHORTCUT"

    const/4 v2, 0x0

    invoke-virtual {p3, v1, v2}, Landroid/content/Intent;->getCharExtra(Ljava/lang/String;C)C

    move-result v0

    .line 360
    .local v0, shortcut:C
    invoke-direct {p0, v0, p3}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->updateShortcut(CLandroid/content/Intent;)V

    goto :goto_0

    .line 363
    .end local v0           #shortcut:C
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/preference/PreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 273
    iget-char v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    if-lez v0, :cond_0

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 275
    iget-char v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    invoke-direct {p0, v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->clearShortcut(C)V

    .line 277
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 278
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    .line 279
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    const v0, 0x7f07001d

    invoke-virtual {p0, v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->addPreferencesFromResource(I)V

    .line 121
    const-string v0, "shortcut_category2"

    invoke-virtual {p0, v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutGroup:Landroid/preference/PreferenceGroup;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mShortcutToPreference:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mUiHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;-><init>(Lcom/android/settings/customizedkey/CustomizedKeySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksObserver:Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

    .line 124
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->SupportCustmisedkeyTwo()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mEnableCustomisedkeyTwo:Z

    .line 125
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->initShortcutPreferences()V

    .line 126
    sget-object v0, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/customizedkey/CustomizedKeySettings;->sProjection:[Ljava/lang/String;

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksCursor:Landroid/database/Cursor;

    .line 128
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 3
    .parameter "id"

    .prologue
    .line 188
    packed-switch p1, :pswitch_data_0

    .line 225
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 206
    :pswitch_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a007d

    new-instance v2, Lcom/android/settings/customizedkey/CustomizedKeySettings$1;

    invoke-direct {v2, p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings$1;-><init>(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto :goto_0

    .line 188
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 164
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksObserver:Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 166
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 4
    .parameter "preferenceScreen"
    .parameter "preference"

    .prologue
    .line 288
    instance-of v1, p2, Lcom/android/settings/customizedkey/ShortcutPreference2;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 332
    :goto_0
    return v1

    :cond_0
    move-object v0, p2

    .line 292
    check-cast v0, Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 293
    .local v0, sPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;
    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    .line 294
    invoke-virtual {p2}, Landroid/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    .line 295
    iget-boolean v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mEnableCustomisedkeyTwo:Z

    if-eqz v1, :cond_1

    .line 296
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-virtual {v1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    const/16 v2, 0x2b

    if-ne v1, v2, :cond_2

    .line 297
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    .line 302
    :cond_1
    :goto_1
    invoke-virtual {v0}, Lcom/android/settings/customizedkey/ShortcutPreference2;->hasBookmark()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 305
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0a007d

    new-instance v3, Lcom/android/settings/customizedkey/CustomizedKeySettings$2;

    invoke-direct {v3, p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings$2;-><init>(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->alert:Landroid/app/AlertDialog;

    .line 322
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->alert:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 332
    :goto_2
    const/4 v1, 0x1

    goto :goto_0

    .line 298
    :cond_2
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mPref2:Lcom/android/settings/customizedkey/ShortcutPreference2;

    invoke-virtual {v1}, Lcom/android/settings/customizedkey/ShortcutPreference2;->getShortcut()C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_1

    .line 299
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " 2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mTitle:Ljava/lang/String;

    goto :goto_1

    .line 328
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->callCustomizedAssignActivity()V

    goto :goto_2
.end method

.method protected onPrepareDialog(ILandroid/app/Dialog;)V
    .locals 5
    .parameter "id"
    .parameter "dialog"

    .prologue
    .line 230
    packed-switch p1, :pswitch_data_0

    .line 238
    :goto_0
    return-void

    :pswitch_0
    move-object v0, p2

    .line 233
    check-cast v0, Landroid/app/AlertDialog;

    .line 234
    .local v0, alertDialog:Landroid/app/AlertDialog;
    const v1, 0x7f090682

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-char v4, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    aput-object v4, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "state"

    .prologue
    .line 170
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 173
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    .line 174
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    .line 175
    return-void
.end method

.method protected onResume()V
    .locals 4

    .prologue
    .line 154
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/Settings$Bookmarks;->CONTENT_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mBookmarksObserver:Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 157
    invoke-direct {p0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->refreshShortcuts()V

    .line 160
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 182
    const-string v0, "CLEAR_DIALOG_BOOKMARK_TITLE"

    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogBookmarkTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 183
    const-string v0, "CLEAR_DIALOG_SHORTCUT"

    iget-char v1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings;->mClearDialogShortcut:C

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 184
    return-void
.end method
