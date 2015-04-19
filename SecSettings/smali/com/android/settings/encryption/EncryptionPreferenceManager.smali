.class public Lcom/android/settings/encryption/EncryptionPreferenceManager;
.super Ljava/lang/Object;
.source "EncryptionPreferenceManager.java"


# static fields
.field private static final DIR_ENCRYPTION:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDem:Landroid/dirEncryption/DirEncryptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    const-string v0, "ro.sec.fle.encryption"

    const-string v1, "false"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->DIR_ENCRYPTION:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x0

    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    .line 20
    iput-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 23
    iput-object p1, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    .line 24
    new-instance v0, Landroid/dirEncryption/DirEncryptionManager;

    iget-object v1, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/dirEncryption/DirEncryptionManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    .line 25
    return-void
.end method


# virtual methods
.method public isSDcardEncryptionPossible()Z
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->DIR_ENCRYPTION:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/encryption/EncryptionPreferenceManager;->mDem:Landroid/dirEncryption/DirEncryptionManager;

    invoke-virtual {v0}, Landroid/dirEncryption/DirEncryptionManager;->isExternalSDRemovable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
