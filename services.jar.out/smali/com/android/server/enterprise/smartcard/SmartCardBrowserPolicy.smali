.class public Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;
.super Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;
.source "SmartCardBrowserPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static TAG:Ljava/lang/String; = null

.field private static final URL_CREDENTIALS_EXCEPTION_LIST:Ljava/lang/String; = "UrlCredentialsExceptionList"

.field private static final URL_CREDENTIALS_REQUIRED_LIST:Ljava/lang/String; = "UrlCredentialsRequiredList"

.field private static WILD_CARD:Ljava/lang/String;

.field private static mUrlCredentialsState:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCredentialsReqUrls:I

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field private mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-string v0, "SmartCardBrowserPolicy"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    .line 71
    const-string v0, "*"

    sput-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->WILD_CARD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Lcom/sec/enterprise/knox/smartcard/policy/ISmartCardBrowserPolicy$Stub;-><init>()V

    .line 66
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 67
    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mCredentialsReqUrls:I

    .line 75
    iput-object p1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    .line 76
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 77
    return-void
.end method

.method private broadcastIntent()V
    .locals 4

    .prologue
    .line 568
    const/4 v1, 0x0

    .line 569
    .local v1, intent:Landroid/content/Intent;
    iget v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mCredentialsReqUrls:I

    .line 570
    .local v0, credentialsReqUrlsPrev:I
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getCredentialsReqUrlCount()I

    move-result v2

    iput v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mCredentialsReqUrls:I

    .line 572
    if-lez v0, :cond_1

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mCredentialsReqUrls:I

    if-nez v2, :cond_1

    .line 573
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "edm.intent.action.smartcard.browser.authentication"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 574
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.smartcard.authentication.enabled"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 575
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 581
    :cond_0
    :goto_0
    return-void

    .line 576
    :cond_1
    if-nez v0, :cond_0

    iget v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mCredentialsReqUrls:I

    if-lez v2, :cond_0

    .line 577
    new-instance v1, Landroid/content/Intent;

    .end local v1           #intent:Landroid/content/Intent;
    const-string v2, "edm.intent.action.smartcard.browser.authentication"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 578
    .restart local v1       #intent:Landroid/content/Intent;
    const-string v2, "edm.intent.extra.smartcard.authentication.enabled"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 579
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private declared-synchronized clearUrlCredentialsList(II)Z
    .locals 8
    .parameter "callingUid"
    .parameter "stateMask"

    .prologue
    const/4 v6, 0x0

    .line 476
    monitor-enter p0

    const/4 v3, 0x0

    .line 477
    .local v3, list_type:Ljava/lang/String;
    const/4 v4, 0x1

    .line 478
    .local v4, result:Z
    const/4 v1, 0x0

    .line 480
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 501
    :cond_0
    :goto_0
    monitor-exit p0

    return v6

    .line 483
    :cond_1
    const/4 v6, 0x1

    and-int/lit8 v7, p2, 0x1

    if-ne v6, v7, :cond_3

    .line 484
    :try_start_1
    const-string v3, "UrlCredentialsRequiredList"

    .line 490
    :cond_2
    :goto_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map;

    invoke-interface {v6, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 492
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 493
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 476
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v6

    monitor-exit p0

    throw v6

    .line 486
    :cond_3
    const/4 v6, 0x2

    and-int/lit8 v7, p2, 0x2

    if-ne v6, v7, :cond_2

    .line 487
    :try_start_2
    const-string v3, "UrlCredentialsExceptionList"

    goto :goto_1

    .line 497
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 498
    .local v5, url:Ljava/lang/String;
    const/4 v6, 0x0

    invoke-direct {p0, v5, p1, p2, v6}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->setUrlCredentialsState(Ljava/lang/String;IIZ)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    and-int/2addr v4, v6

    goto :goto_3

    .end local v5           #url:Ljava/lang/String;
    :cond_5
    move v6, v4

    .line 501
    goto :goto_0
.end method

.method private declared-synchronized createAdminMap(I)V
    .locals 3
    .parameter "adminUid"

    .prologue
    .line 414
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 415
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 416
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v1, "UrlCredentialsRequiredList"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    const-string v1, "UrlCredentialsExceptionList"

    new-instance v2, Ljava/util/TreeSet;

    invoke-direct {v2}, Ljava/util/TreeSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 418
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    :cond_0
    monitor-exit p0

    return-void

    .line 414
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method private enforcePermission()I
    .locals 2

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_SMARTCARD"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 89
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getCredentialsReqUrlCount()I
    .locals 4

    .prologue
    .line 555
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 556
    .local v0, cvWhere:Landroid/content/ContentValues;
    const-string v2, "credentialsState"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 559
    :try_start_0
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "SmartCardBrowserUrlTable"

    invoke-virtual {v2, v3, v0}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCount(Ljava/lang/String;Landroid/content/ContentValues;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 564
    :goto_0
    return v2

    .line 560
    :catch_0
    move-exception v1

    .line 561
    .local v1, e:Ljava/lang/Exception;
    sget-object v2, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v3, "getCredentialsReqUrlCount() failed"

    invoke-static {v2, v3}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 564
    const/4 v2, -0x1

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 539
    iget-object v2, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, pkgName:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 542
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private declared-synchronized getUrlsCredentialsLists(I)Ljava/util/List;
    .locals 9
    .parameter "stateMask"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 505
    monitor-enter p0

    const/4 v3, 0x0

    .line 506
    .local v3, list_type:Ljava/lang/String;
    const/4 v7, -0x1

    :try_start_0
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 507
    .local v4, uid:Ljava/lang/Integer;
    const/4 v1, 0x0

    .line 508
    .local v1, itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 509
    .local v0, info:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
    const/4 v6, 0x0

    .line 510
    .local v6, url:Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v2, list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;>;"
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    if-eqz v7, :cond_1

    .line 535
    :cond_0
    monitor-exit p0

    return-object v2

    .line 515
    :cond_1
    const/4 v7, 0x1

    and-int/lit8 v8, p1, 0x1

    if-ne v7, v8, :cond_3

    .line 516
    :try_start_1
    const-string v3, "UrlCredentialsRequiredList"

    .line 520
    :cond_2
    :goto_0
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .line 522
    .local v5, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 523
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .end local v4           #uid:Ljava/lang/Integer;
    check-cast v4, Ljava/lang/Integer;

    .line 524
    .restart local v4       #uid:Ljava/lang/Integer;
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 525
    new-instance v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;

    .end local v0           #info:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
    invoke-direct {v0}, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;-><init>()V

    .line 526
    .restart local v0       #info:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {p0, v7}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->adminPackageName:Ljava/lang/String;

    .line 527
    new-instance v8, Ljava/util/ArrayList;

    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v7

    invoke-direct {v8, v7}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v8, v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->entries:Ljava/util/List;

    .line 528
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 529
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .end local v6           #url:Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .line 530
    .restart local v6       #url:Ljava/lang/String;
    iget-object v7, v0, Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;->entries:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    .line 505
    .end local v0           #info:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
    .end local v1           #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v2           #list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;>;"
    .end local v4           #uid:Ljava/lang/Integer;
    .end local v5           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    .end local v6           #url:Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 517
    .restart local v0       #info:Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;
    .restart local v1       #itr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .restart local v2       #list:Ljava/util/List;,"Ljava/util/List<Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;>;"
    .restart local v4       #uid:Ljava/lang/Integer;
    .restart local v6       #url:Ljava/lang/String;
    :cond_3
    const/4 v7, 0x2

    and-int/lit8 v8, p1, 0x2

    if-ne v7, v8, :cond_2

    .line 518
    :try_start_2
    const-string v3, "UrlCredentialsExceptionList"

    goto :goto_0

    .line 532
    .restart local v5       #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_4
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method private isUrlPatternMatch(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .parameter "url"
    .parameter "regex"

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 548
    .local v0, isMatched:Z
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 549
    const/4 v0, 0x1

    .line 551
    :cond_0
    return v0
.end method

.method private declared-synchronized loadUrlCredentialsLists()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    .line 369
    monitor-enter p0

    :try_start_0
    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    sput-object v8, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    .line 371
    iget-object v8, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "ADMIN"

    const-string v10, "adminUid"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v7

    .line 374
    .local v7, uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v8, 0x2

    new-array v1, v8, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "Url"

    aput-object v9, v1, v8

    const/4 v8, 0x1

    const-string v9, "credentialsState"

    aput-object v9, v1, v8

    .line 380
    .local v1, columns:[Ljava/lang/String;
    const/4 v0, 0x0

    .line 381
    .local v0, adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const/4 v2, 0x0

    .line 382
    .local v2, cursor:Landroid/database/Cursor;
    const/4 v6, 0x0

    .line 385
    .local v6, str:Ljava/lang/String;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 386
    .local v5, storedUid:I
    new-instance v0, Ljava/util/HashMap;

    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 387
    .restart local v0       #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    const-string v8, "UrlCredentialsRequiredList"

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    const-string v8, "UrlCredentialsExceptionList"

    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v8, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v9, "SmartCardBrowserUrlTable"

    invoke-virtual {v8, v9, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getCursorByAdmin(Ljava/lang/String;I[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    .line 392
    if-eqz v2, :cond_3

    .line 393
    :cond_0
    :goto_1
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 394
    const-string v8, "Url"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 395
    const-string v8, "credentialsState"

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v2, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 397
    .local v4, state:I
    and-int/lit8 v8, v4, 0x1

    if-ne v11, v8, :cond_1

    .line 399
    const-string v8, "UrlCredentialsRequiredList"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 401
    :cond_1
    and-int/lit8 v8, v4, 0x2

    if-ne v12, v8, :cond_0

    .line 403
    const-string v8, "UrlCredentialsExceptionList"

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    invoke-interface {v8, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 369
    .end local v0           #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .end local v1           #columns:[Ljava/lang/String;
    .end local v2           #cursor:Landroid/database/Cursor;
    .end local v3           #i$:Ljava/util/Iterator;
    .end local v4           #state:I
    .end local v5           #storedUid:I
    .end local v6           #str:Ljava/lang/String;
    .end local v7           #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 406
    .restart local v0       #adminMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/util/Set<Ljava/lang/String;>;>;"
    .restart local v1       #columns:[Ljava/lang/String;
    .restart local v2       #cursor:Landroid/database/Cursor;
    .restart local v3       #i$:Ljava/util/Iterator;
    .restart local v5       #storedUid:I
    .restart local v6       #str:Ljava/lang/String;
    .restart local v7       #uidList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    :try_start_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 408
    :cond_3
    sget-object v8, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v8, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 410
    .end local v5           #storedUid:I
    :cond_4
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized setUrlCredentialsState(Ljava/lang/String;IIZ)Z
    .locals 8
    .parameter "url"
    .parameter "callingUid"
    .parameter "stateMask"
    .parameter "add"

    .prologue
    .line 426
    monitor-enter p0

    const/4 v7, -0x1

    .line 427
    .local v7, state:I
    const/4 v6, 0x1

    .line 429
    .local v6, ret:Z
    :try_start_0
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 430
    const/4 v0, 0x0

    .line 471
    :goto_0
    monitor-exit p0

    return v0

    .line 432
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 434
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SmartCardBrowserUrlTable"

    const-string v3, "Url"

    const-string v5, "credentialsState"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getIntByAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v7

    .line 438
    const/4 v0, -0x1

    if-ne v7, v0, :cond_1

    .line 439
    const/4 v7, 0x0

    .line 441
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->createAdminMap(I)V

    .line 443
    packed-switch p3, :pswitch_data_0

    .line 461
    :goto_1
    if-eqz p4, :cond_4

    .line 462
    or-int/2addr v7, p3

    .line 466
    :goto_2
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 467
    .local v5, cv:Landroid/content/ContentValues;
    const-string v0, "credentialsState"

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v5, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 468
    iget-object v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v1, "SmartCardBrowserUrlTable"

    const-string v3, "Url"

    move v2, p2

    move-object v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesForAdminAndField(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Z

    move-result v6

    move v0, v6

    .line 471
    goto :goto_0

    .line 445
    .end local v5           #cv:Landroid/content/ContentValues;
    :pswitch_0
    if-eqz p4, :cond_2

    .line 446
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UrlCredentialsRequiredList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 426
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 448
    :cond_2
    :try_start_2
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UrlCredentialsRequiredList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 452
    :pswitch_1
    if-eqz p4, :cond_3

    .line 453
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UrlCredentialsExceptionList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 455
    :cond_3
    sget-object v0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "UrlCredentialsExceptionList"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    .line 464
    :cond_4
    xor-int/lit8 v0, p3, -0x1

    and-int/2addr v7, v0

    goto/16 :goto_2

    .line 443
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addUrlsToCredentialsExceptionList(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 185
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v6, "addUrlsToCredentialsExceptionList()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const/4 v3, 0x1

    .line 187
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission()I

    move-result v0

    .line 189
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 190
    const/4 v5, 0x0

    .line 205
    :goto_0
    return v5

    .line 194
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 195
    .local v4, url:Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x1

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->setUrlCredentialsState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v3, v5

    goto :goto_1

    .line 197
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 198
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 199
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v6, "addUrlsToCredentialsExceptionList() failed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 203
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent()V

    move v5, v3

    .line 205
    goto :goto_0
.end method

.method public addUrlsToCredentialsRequiredList(Ljava/util/List;)Z
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v6, "addUrlsToCredentialsRequiredList()"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    const/4 v3, 0x1

    .line 98
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission()I

    move-result v0

    .line 100
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 101
    const/4 v5, 0x0

    .line 116
    :goto_0
    return v5

    .line 105
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 106
    .local v4, url:Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x1

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->setUrlCredentialsState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v3, v5

    goto :goto_1

    .line 108
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 109
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 110
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v6, "addUrlsToCredentialsRequiredList() failed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent()V

    move v5, v3

    .line 116
    goto :goto_0
.end method

.method public clearUrlsFromCredentialsExceptionList()Z
    .locals 5

    .prologue
    .line 239
    sget-object v3, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v4, "clearUrlsFromCredentialsExceptionList()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    const/4 v2, 0x0

    .line 241
    .local v2, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission()I

    move-result v0

    .line 244
    .local v0, callingUid:I
    const/4 v3, 0x2

    :try_start_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->clearUrlCredentialsList(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 250
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent()V

    .line 252
    return v2

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v4, "clearUrlsFromCredentialsExceptionList() failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public clearUrlsFromCredentialsRequiredList()Z
    .locals 5

    .prologue
    .line 150
    sget-object v3, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v4, "clearUrlsFromCredentialsRequiredList()"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    const/4 v2, 0x0

    .line 152
    .local v2, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission()I

    move-result v0

    .line 155
    .local v0, callingUid:I
    const/4 v3, 0x1

    :try_start_0
    invoke-direct {p0, v0, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->clearUrlCredentialsList(II)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 161
    :goto_0
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent()V

    .line 163
    return v2

    .line 156
    :catch_0
    move-exception v1

    .line 157
    .local v1, e:Ljava/lang/Exception;
    sget-object v3, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v4, "clearUrlCredentialsList() failed"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getUrlsCredentialsExceptionLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 259
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getUrlsCredentialsExceptionLists()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    const/4 v1, 0x2

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getUrlsCredentialsLists(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 267
    :goto_0
    return-object v1

    .line 263
    :catch_0
    move-exception v0

    .line 264
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getUrlsCredentialsExceptionLists() failed"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUrlsCredentialsRequiredLists()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/sec/enterprise/knox/smartcard/policy/SmartCardUrlsInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 170
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getUrlsCredentialsRequiredLists()"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    const/4 v1, 0x1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getUrlsCredentialsLists(I)Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 178
    :goto_0
    return-object v1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, e:Ljava/lang/Exception;
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v2, "getUrlsCredentialsRequiredLists() failed"

    invoke-static {v1, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 178
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public declared-synchronized isAuthenticationEnabled()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 329
    monitor-enter p0

    :try_start_0
    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    :cond_0
    :goto_0
    monitor-exit p0

    return v0

    .line 332
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getCredentialsReqUrlCount()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-lez v1, :cond_0

    .line 333
    const/4 v0, 0x1

    goto :goto_0

    .line 329
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isCredentialRequired(Ljava/lang/String;)Z
    .locals 10
    .parameter "url"

    .prologue
    const/4 v8, 0x0

    .line 274
    monitor-enter p0

    :try_start_0
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v9, "isCredentialRequired()"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const/4 v6, 0x0

    .line 276
    .local v6, uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    const/4 v4, 0x0

    .line 277
    .local v4, strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    const/4 v7, -0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 278
    .local v5, uid:Ljava/lang/Integer;
    const/4 v2, 0x0

    .line 279
    .local v2, nextAdmin:Z
    const/4 v3, 0x0

    .line 281
    .local v3, regex:Ljava/lang/String;
    if-nez p1, :cond_0

    move v7, v8

    .line 322
    :goto_0
    monitor-exit p0

    return v7

    .line 284
    :cond_0
    :try_start_1
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    if-eqz v7, :cond_1

    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_1
    move v7, v8

    .line 285
    goto :goto_0

    .line 287
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object p1

    .line 290
    :try_start_2
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 291
    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 292
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/Integer;

    move-object v5, v0

    .line 295
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "UrlCredentialsExceptionList"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 296
    :cond_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 297
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 298
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->WILD_CARD:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isUrlPatternMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 299
    :cond_5
    const/4 v2, 0x1

    .line 304
    :cond_6
    if-eqz v2, :cond_7

    .line 305
    const/4 v2, 0x0

    .line 306
    goto :goto_1

    .line 310
    :cond_7
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mUrlCredentialsState:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    const-string v9, "UrlCredentialsRequiredList"

    invoke-interface {v7, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Set;

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 311
    :cond_8
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 312
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 313
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->WILD_CARD:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-virtual {p1, v3}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_9

    invoke-direct {p0, p1, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isUrlPatternMatch(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result v7

    if-eqz v7, :cond_8

    .line 314
    :cond_9
    const/4 v7, 0x1

    goto/16 :goto_0

    .line 318
    :catch_0
    move-exception v1

    .line 319
    .local v1, e:Ljava/lang/Exception;
    :try_start_3
    sget-object v7, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v9, "isCredentialRequired() failed"

    invoke-static {v7, v9}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .end local v1           #e:Ljava/lang/Exception;
    :cond_a
    move v7, v8

    .line 322
    goto/16 :goto_0

    .line 274
    .end local v2           #nextAdmin:Z
    .end local v3           #regex:Ljava/lang/String;
    .end local v4           #strItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v5           #uid:Ljava/lang/Integer;
    .end local v6           #uidItr:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 350
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 354
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->loadUrlCredentialsLists()V

    .line 355
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent()V

    .line 356
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 361
    return-void
.end method

.method public removeUrlsFromCredentialsExceptionList(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 212
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v7, "removeUrlsFromCredentialsExceptionList()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const/4 v3, 0x1

    .line 214
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission()I

    move-result v0

    .line 216
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 232
    :goto_0
    return v5

    .line 221
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 222
    .local v4, url:Ljava/lang/String;
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->setUrlCredentialsState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v3, v5

    goto :goto_1

    .line 224
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 225
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 226
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v6, "removeUrlsFromCredentialsExceptionList() failed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent()V

    move v5, v3

    .line 232
    goto :goto_0
.end method

.method public removeUrlsFromCredentialsRequiredList(Ljava/util/List;)Z
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, urlList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const/4 v5, 0x0

    .line 123
    sget-object v6, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v7, "removeUrlsFromCredentialsRequiredList()"

    invoke-static {v6, v7}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v3, 0x1

    .line 125
    .local v3, result:Z
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->enforcePermission()I

    move-result v0

    .line 127
    .local v0, callingUid:I
    if-nez p1, :cond_0

    .line 143
    :goto_0
    return v5

    .line 132
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 133
    .local v4, url:Ljava/lang/String;
    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-direct {p0, v4, v0, v5, v6}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->setUrlCredentialsState(Ljava/lang/String;IIZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    and-int/2addr v3, v5

    goto :goto_1

    .line 135
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v4           #url:Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 136
    .local v1, e:Ljava/lang/Exception;
    const/4 v3, 0x0

    .line 137
    sget-object v5, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->TAG:Ljava/lang/String;

    const-string v6, "removeUrlsFromCredentialsRequiredList() failed"

    invoke-static {v5, v6}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    .end local v1           #e:Ljava/lang/Exception;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->broadcastIntent()V

    move v5, v3

    .line 143
    goto :goto_0
.end method

.method public systemReady()V
    .locals 2

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->loadUrlCredentialsLists()V

    .line 342
    invoke-direct {p0}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getCredentialsReqUrlCount()I

    move-result v0

    .line 343
    .local v0, cnt:I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 344
    iput v0, p0, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->mCredentialsReqUrls:I

    .line 345
    :cond_0
    return-void
.end method
