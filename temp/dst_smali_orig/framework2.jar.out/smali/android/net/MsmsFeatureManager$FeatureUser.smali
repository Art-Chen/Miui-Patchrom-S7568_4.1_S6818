.class Landroid/net/MsmsFeatureManager$FeatureUser;
.super Ljava/lang/Object;
.source "MsmsFeatureManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MsmsFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FeatureUser"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/IBinder$DeathRecipient;",
        "Ljava/lang/Comparable",
        "<",
        "Landroid/net/MsmsFeatureManager$FeatureUser;",
        ">;"
    }
.end annotation


# instance fields
.field mBinder:Landroid/os/IBinder;

.field mFeature:Ljava/lang/String;

.field mIsMainSimFeature:Z

.field mNetworkType:I

.field mPhoneId:I

.field mPid:I

.field mPriority:I

.field mUid:I

.field final synthetic this$0:Landroid/net/MsmsFeatureManager;


# direct methods
.method constructor <init>(Landroid/net/MsmsFeatureManager;ILjava/lang/String;Landroid/os/IBinder;IIIZ)V
    .locals 3
    .parameter
    .parameter "type"
    .parameter "feature"
    .parameter "binder"
    .parameter "pid"
    .parameter "uid"
    .parameter "phoneId"
    .parameter "isMainSimFeature"

    .prologue
    iput-object p1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->this$0:Landroid/net/MsmsFeatureManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    iput-object p3, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    iput-object p4, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mBinder:Landroid/os/IBinder;

    iput p5, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mPid:I

    iput p6, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mUid:I

    invoke-direct {p0, p3}, Landroid/net/MsmsFeatureManager$FeatureUser;->getPriority(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mPriority:I

    iput p7, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mPhoneId:I

    iput-boolean p8, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mIsMainSimFeature:Z

    :try_start_0
    iget-object v1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    invoke-virtual {p0}, Landroid/net/MsmsFeatureManager$FeatureUser;->binderDied()V

    goto :goto_0
.end method

.method private getPriority(Ljava/lang/String;)I
    .locals 2
    .parameter "feature"

    .prologue
    const/4 v1, -0x1

    const-string v0, "enableMMS"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "enableWAP"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    goto :goto_0
.end method


# virtual methods
.method public binderDied()V
    .locals 6

    .prologue
    const-string v0, "MsmsFeatureManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MsmsFeatureManager FeatureUser binderDied("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mBinder:Landroid/os/IBinder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->this$0:Landroid/net/MsmsFeatureManager;

    iget v1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    iget-object v2, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    iget v3, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mPid:I

    iget v4, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mUid:I

    iget v5, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mPhoneId:I

    invoke-virtual/range {v0 .. v5}, Landroid/net/MsmsFeatureManager;->stopUsingFeature(ILjava/lang/String;III)V

    return-void
.end method

.method public compareTo(Landroid/net/MsmsFeatureManager$FeatureUser;)I
    .locals 2
    .parameter "another"

    .prologue
    iget v0, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mPriority:I

    iget v1, p1, Landroid/net/MsmsFeatureManager$FeatureUser;->mPriority:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    check-cast p1, Landroid/net/MsmsFeatureManager$FeatureUser;

    .end local p1
    invoke-virtual {p0, p1}, Landroid/net/MsmsFeatureManager$FeatureUser;->compareTo(Landroid/net/MsmsFeatureManager$FeatureUser;)I

    move-result v0

    return v0
.end method

.method public equals(Landroid/net/MsmsFeatureManager$FeatureUser;)Z
    .locals 2
    .parameter "u"

    .prologue
    iget v0, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    iget v1, p1, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    iget-object v1, p1, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mUid:I

    iget v1, p1, Landroid/net/MsmsFeatureManager$FeatureUser;->mUid:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mPid:I

    iget v1, p1, Landroid/net/MsmsFeatureManager$FeatureUser;->mPid:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FeatureUser("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mNetworkType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mFeature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unlinkDeathRecipient()V
    .locals 3

    .prologue
    :try_start_0
    iget-object v1, p0, Landroid/net/MsmsFeatureManager$FeatureUser;->mBinder:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v1, p0, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    .local v0, e:Ljava/util/NoSuchElementException;
    const-string v1, "MsmsFeatureManager"

    const-string v2, "NoSuchElementException while unlinkToDeath"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .end local v0           #e:Ljava/util/NoSuchElementException;
    :catch_1
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    const-string v1, "MsmsFeatureManager"

    const-string v2, "Unexcepted Exception while unlinkToDeath"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
