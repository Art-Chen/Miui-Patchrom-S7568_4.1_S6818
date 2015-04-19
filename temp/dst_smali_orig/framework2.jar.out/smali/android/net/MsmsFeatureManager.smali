.class public Landroid/net/MsmsFeatureManager;
.super Ljava/lang/Object;
.source "MsmsFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/MsmsFeatureManager$FeatureUser;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MsmsFeatureManager"

.field private static mInstance:Landroid/net/MsmsFeatureManager;


# instance fields
.field private mActiveSim:I

.field private mContext:Landroid/content/Context;

.field private mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

.field private mPhoneCount:I

.field private mRunQueue:[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/List",
            "<",
            "Landroid/net/MsmsFeatureManager$FeatureUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Landroid/net/MsmsFeatureManager;->mInstance:Landroid/net/MsmsFeatureManager;

    return-void
.end method

.method private constructor <init>(ILandroid/content/Context;)V
    .locals 5
    .parameter "phoneCount"
    .parameter "context"

    .prologue
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Landroid/net/MsmsFeatureManager$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3}, Landroid/net/MsmsFeatureManager$1;-><init>(Landroid/net/MsmsFeatureManager;Landroid/os/Handler;)V

    iput-object v2, p0, Landroid/net/MsmsFeatureManager;->mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

    iput p1, p0, Landroid/net/MsmsFeatureManager;->mPhoneCount:I

    new-array v2, p1, [Ljava/util/ArrayList;

    iput-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_0

    iget-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    iput v2, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    iput-object p2, p0, Landroid/net/MsmsFeatureManager;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "multi_sim_data_call"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mDefaultDataPhoneIdObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$000(Landroid/net/MsmsFeatureManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    invoke-direct {p0}, Landroid/net/MsmsFeatureManager;->defaultDataChanged()V

    return-void
.end method

.method private declared-synchronized defaultDataChanged()V
    .locals 7

    .prologue
    monitor-enter p0

    :try_start_0
    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->getDefaultDataPhoneId(Landroid/content/Context;)I

    move-result v0

    .local v0, defaultDataPhoneId:I
    const-string v4, "MsmsFeatureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "defaultDataChanged:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    .local v2, phoneId:I
    :goto_0
    iget v4, p0, Landroid/net/MsmsFeatureManager;->mPhoneCount:I

    if-ge v2, v4, :cond_3

    if-ne v2, v0, :cond_0

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v4, v4, v2

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_2

    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v4, v4, v2

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/MsmsFeatureManager$FeatureUser;

    .local v3, u:Landroid/net/MsmsFeatureManager$FeatureUser;
    iget-boolean v4, v3, Landroid/net/MsmsFeatureManager$FeatureUser;->mIsMainSimFeature:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v4, v4, v2

    invoke-interface {v4, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v4, v4, v0

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .end local v3           #u:Landroid/net/MsmsFeatureManager$FeatureUser;
    :cond_2
    const-string v4, "MsmsFeatureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sorted mRunQueue["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .end local v0           #defaultDataPhoneId:I
    .end local v1           #i:I
    .end local v2           #phoneId:I
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .restart local v0       #defaultDataPhoneId:I
    .restart local v2       #phoneId:I
    :cond_3
    :try_start_1
    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v4, v4, v0

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v4, "MsmsFeatureManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sorted mRunQueue["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v6, v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void
.end method

.method private declared-synchronized evokeFeatureExcept(Landroid/net/MsmsFeatureManager$FeatureUser;)V
    .locals 8
    .parameter "f"

    .prologue
    monitor-enter p0

    :try_start_0
    iget v2, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    .local v2, minSim:I
    const/4 v5, -0x1

    if-eq v2, v5, :cond_1

    iget-object v5, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "connectivity"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v3

    .local v3, service:Landroid/net/IConnectivityManager;
    const-string v5, "MsmsFeatureManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "evoke pending:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v7, v7, v2

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v5, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v5, v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_1

    iget-object v5, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v5, v5, v2

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/MsmsFeatureManager$FeatureUser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, u:Landroid/net/MsmsFeatureManager$FeatureUser;
    if-ne v4, p1, :cond_0

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    :try_start_1
    iget v5, v4, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    iget-object v6, v4, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    iget-object v7, v4, Landroid/net/MsmsFeatureManager$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-interface {v3, v5, v6, v7}, Landroid/net/IConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;Landroid/os/IBinder;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    goto :goto_1

    .end local v0           #b:Landroid/os/IBinder;
    .end local v1           #i:I
    .end local v3           #service:Landroid/net/IConnectivityManager;
    .end local v4           #u:Landroid/net/MsmsFeatureManager$FeatureUser;
    :cond_1
    monitor-exit p0

    return-void

    .end local v2           #minSim:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public static getInstance(Landroid/content/Context;)Landroid/net/MsmsFeatureManager;
    .locals 2
    .parameter "context"

    .prologue
    sget-object v0, Landroid/net/MsmsFeatureManager;->mInstance:Landroid/net/MsmsFeatureManager;

    if-nez v0, :cond_0

    new-instance v0, Landroid/net/MsmsFeatureManager;

    invoke-static {}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    invoke-direct {v0, v1, p0}, Landroid/net/MsmsFeatureManager;-><init>(ILandroid/content/Context;)V

    sput-object v0, Landroid/net/MsmsFeatureManager;->mInstance:Landroid/net/MsmsFeatureManager;

    :cond_0
    sget-object v0, Landroid/net/MsmsFeatureManager;->mInstance:Landroid/net/MsmsFeatureManager;

    return-object v0
.end method

.method private declared-synchronized schedule()Z
    .locals 9

    .prologue
    const/4 v6, 0x0

    monitor-enter p0

    :try_start_0
    iget v3, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    .local v3, oldActiveSim:I
    const/16 v1, 0xa

    .local v1, minPriority:I
    const/4 v2, -0x1

    .local v2, minSim:I
    iget v5, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    iget-object v5, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    iget v7, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    aget-object v5, v5, v7

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    iget v7, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    aget-object v5, v5, v7

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/MsmsFeatureManager$FeatureUser;

    iget v1, v5, Landroid/net/MsmsFeatureManager$FeatureUser;->mPriority:I

    iget v2, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget v5, p0, Landroid/net/MsmsFeatureManager;->mPhoneCount:I

    if-ge v0, v5, :cond_2

    iget-object v5, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v5, v5, v0

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v5, v5, v0

    const/4 v7, 0x0

    invoke-interface {v5, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/net/MsmsFeatureManager$FeatureUser;

    iget v4, v5, Landroid/net/MsmsFeatureManager$FeatureUser;->mPriority:I

    .local v4, priority:I
    if-ge v4, v1, :cond_1

    move v1, v4

    move v2, v0

    .end local v4           #priority:I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const-string v5, "MsmsFeatureManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "schedule:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "=>"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput v2, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    iget v5, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v5, v3, :cond_3

    const/4 v5, 0x1

    :goto_1
    monitor-exit p0

    return v5

    :cond_3
    move v5, v6

    goto :goto_1

    .end local v0           #i:I
    .end local v1           #minPriority:I
    .end local v2           #minSim:I
    .end local v3           #oldActiveSim:I
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method


# virtual methods
.method public declared-synchronized stopUsingFeature(ILjava/lang/String;III)V
    .locals 5
    .parameter "networkType"
    .parameter "feature"
    .parameter "pid"
    .parameter "uid"
    .parameter "phoneId"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "MsmsFeatureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "stopUsingFeature("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v2, v2, p5

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v2, v2, p5

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/MsmsFeatureManager$FeatureUser;

    .local v1, u:Landroid/net/MsmsFeatureManager$FeatureUser;
    iget v2, v1, Landroid/net/MsmsFeatureManager$FeatureUser;->mUid:I

    if-ne p4, v2, :cond_2

    iget v2, v1, Landroid/net/MsmsFeatureManager$FeatureUser;->mPid:I

    if-ne p3, v2, :cond_2

    iget v2, v1, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    if-ne p1, v2, :cond_2

    iget-object v2, v1, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1}, Landroid/net/MsmsFeatureManager$FeatureUser;->unlinkDeathRecipient()V

    iget-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v2, v2, p5

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .end local v1           #u:Landroid/net/MsmsFeatureManager$FeatureUser;
    :cond_0
    const-string v2, "MsmsFeatureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sorted mRunQueue["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v4, v4, p5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/MsmsFeatureManager;->schedule()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_1

    :cond_1
    monitor-exit p0

    return-void

    .restart local v1       #u:Landroid/net/MsmsFeatureManager$FeatureUser;
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0           #i:I
    .end local v1           #u:Landroid/net/MsmsFeatureManager$FeatureUser;
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public declared-synchronized tryStartUsingFeature(ILjava/lang/String;Landroid/os/IBinder;IIIZ)Z
    .locals 12
    .parameter "networkType"
    .parameter "feature"
    .parameter "binder"
    .parameter "pid"
    .parameter "uid"
    .parameter "phoneId"
    .parameter "isMainSimFeature"

    .prologue
    monitor-enter p0

    :try_start_0
    const-string v2, "MsmsFeatureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tryStartUsingFeature("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ltz p6, :cond_0

    iget v2, p0, Landroid/net/MsmsFeatureManager;->mPhoneCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move/from16 v0, p6

    if-lt v0, v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    monitor-exit p0

    return v2

    :cond_1
    const/4 v10, 0x0

    .local v10, i:I
    :goto_1
    :try_start_1
    iget-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v2, v2, p6

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_4

    iget-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v2, v2, p6

    invoke-interface {v2, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/net/MsmsFeatureManager$FeatureUser;

    .local v11, u:Landroid/net/MsmsFeatureManager$FeatureUser;
    iget v2, v11, Landroid/net/MsmsFeatureManager$FeatureUser;->mUid:I

    move/from16 v0, p5

    if-ne v0, v2, :cond_3

    iget v2, v11, Landroid/net/MsmsFeatureManager$FeatureUser;->mPid:I

    move/from16 v0, p4

    if-ne v0, v2, :cond_3

    iget v2, v11, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    if-ne p1, v2, :cond_3

    iget-object v2, v11, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-static {p2, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "MsmsFeatureManager"

    const-string v3, "tryStartUsingFeature duplicate is found"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "MsmsFeatureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sorted mRunQueue["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v4, v4, p6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I

    move/from16 v0, p6

    if-ne v2, v0, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    :cond_3
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .end local v11           #u:Landroid/net/MsmsFeatureManager$FeatureUser;
    :cond_4
    new-instance v1, Landroid/net/MsmsFeatureManager$FeatureUser;

    move-object v2, p0

    move v3, p1

    move-object v4, p2

    move-object v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v1 .. v9}, Landroid/net/MsmsFeatureManager$FeatureUser;-><init>(Landroid/net/MsmsFeatureManager;ILjava/lang/String;Landroid/os/IBinder;IIIZ)V

    .local v1, f:Landroid/net/MsmsFeatureManager$FeatureUser;
    iget-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v2, v2, p6

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v2, v2, p6

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const-string v2, "MsmsFeatureManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sorted mRunQueue["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "] "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/MsmsFeatureManager;->mRunQueue:[Ljava/util/List;

    aget-object v4, v4, p6

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Landroid/net/MsmsFeatureManager;->schedule()Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_5
    iget v2, p0, Landroid/net/MsmsFeatureManager;->mActiveSim:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move/from16 v0, p6

    if-ne v2, v0, :cond_6

    const/4 v2, 0x1

    goto/16 :goto_0

    :cond_6
    const/4 v2, 0x0

    goto/16 :goto_0

    .end local v1           #f:Landroid/net/MsmsFeatureManager$FeatureUser;
    .end local v10           #i:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
