.class Lcom/android/server/BackupManagerService$EdmFullObserver;
.super Landroid/app/backup/IFullBackupRestoreObserver$Stub;
.source "BackupManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BackupManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EdmFullObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BackupManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/BackupManagerService;)V
    .locals 0
    .parameter

    .prologue
    .line 6180
    iput-object p1, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    invoke-direct {p0}, Landroid/app/backup/IFullBackupRestoreObserver$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/BackupManagerService;Lcom/android/server/BackupManagerService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 6180
    invoke-direct {p0, p1}, Lcom/android/server/BackupManagerService$EdmFullObserver;-><init>(Lcom/android/server/BackupManagerService;)V

    return-void
.end method


# virtual methods
.method public onBackupPackage(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6189
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onBackupPackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6190
    return-void
.end method

.method public onEndBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6194
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onEndBackup"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6195
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    if-eqz v0, :cond_0

    .line 6196
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, -0x2

    #calls: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2400(Lcom/android/server/BackupManagerService;I)V

    .line 6199
    :goto_0
    return-void

    .line 6198
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2400(Lcom/android/server/BackupManagerService;I)V

    goto :goto_0
.end method

.method public onEndRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6213
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onEndRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6214
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupFail:Z

    if-eqz v0, :cond_0

    .line 6215
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, -0x2

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2500(Lcom/android/server/BackupManagerService;I)V

    .line 6218
    :goto_0
    return-void

    .line 6217
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    const/4 v1, 0x0

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v1}, Lcom/android/server/BackupManagerService;->access$2500(Lcom/android/server/BackupManagerService;I)V

    goto :goto_0
.end method

.method public onRestorePackage(Ljava/lang/String;)V
    .locals 2
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6208
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onRestorePackage"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6209
    return-void
.end method

.method public onStartBackup()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6184
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup started"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6185
    return-void
.end method

.method public onStartRestore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 6203
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onStartRestore"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6204
    return-void
.end method

.method public onTimeout()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x2

    .line 6222
    const-string v0, "BackupManagerService"

    const-string v1, "full edm backup onTimeout"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6223
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    iget-boolean v0, v0, Lcom/android/server/BackupManagerService;->isEdmBackupRequest:Z

    if-eqz v0, :cond_0

    .line 6224
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->resetEdmBackupTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/BackupManagerService;->access$2400(Lcom/android/server/BackupManagerService;I)V

    .line 6228
    :goto_0
    return-void

    .line 6226
    :cond_0
    iget-object v0, p0, Lcom/android/server/BackupManagerService$EdmFullObserver;->this$0:Lcom/android/server/BackupManagerService;

    #calls: Lcom/android/server/BackupManagerService;->resetEdmRestoreTags(I)V
    invoke-static {v0, v2}, Lcom/android/server/BackupManagerService;->access$2500(Lcom/android/server/BackupManagerService;I)V

    goto :goto_0
.end method
