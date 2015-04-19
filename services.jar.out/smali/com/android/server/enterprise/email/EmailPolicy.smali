.class public Lcom/android/server/enterprise/email/EmailPolicy;
.super Landroid/app/enterprise/IEmailPolicy$Stub;
.source "EmailPolicy.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/enterprise/email/EmailPolicy$1;,
        Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "EmailPolicyService"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

.field mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "ctx"

    .prologue
    .line 81
    invoke-direct {p0}, Landroid/app/enterprise/IEmailPolicy$Stub;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 82
    iput-object p1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 84
    return-void
.end method

.method private enforceEmailPermission()I
    .locals 2

    .prologue
    .line 77
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v0

    const-string v1, "android.permission.sec.MDM_EMAIL"

    invoke-virtual {v0, v1}, Landroid/app/enterprise/EnterpriseDeviceManager;->enforceActiveAdminPermission(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    return v0
.end method

.method private getDefaultValueState(Ljava/lang/String;)Z
    .locals 2
    .parameter "policy"

    .prologue
    .line 300
    const/4 v0, 0x0

    .line 301
    .local v0, ret:Z
    const-string v1, "EmailReqSigSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 302
    const/4 v0, 0x0

    .line 313
    :cond_0
    :goto_0
    return v0

    .line 304
    :cond_1
    const-string v1, "EmailReqEncryptSmime"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 305
    const/4 v0, 0x0

    goto :goto_0

    .line 307
    :cond_2
    const-string v1, "EmailAllowForward"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 308
    const/4 v0, 0x1

    goto :goto_0

    .line 310
    :cond_3
    const-string v1, "EmailAllowHTML"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 311
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private getEDM()Landroid/app/enterprise/EnterpriseDeviceManager;
    .locals 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    if-nez v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string v1, "enterprise_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/enterprise/EnterpriseDeviceManager;

    iput-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEDM:Landroid/app/enterprise/EnterpriseDeviceManager;

    return-object v0
.end method

.method private getPolicyState(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 10
    .parameter "emailAddress"
    .parameter "policy"

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 273
    new-array v0, v6, [Ljava/lang/String;

    .line 274
    .local v0, columns:[Ljava/lang/String;
    aput-object p2, v0, v7

    .line 276
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 277
    .local v1, cvWhere:Landroid/content/ContentValues;
    const-string v5, "EmailAddress"

    invoke-virtual {v1, v5, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget-object v5, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v8, "EmailSettingsTable"

    invoke-virtual {v5, v8, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v4

    .line 282
    .local v4, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 283
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v3

    .line 296
    :goto_0
    return v3

    .line 285
    :cond_1
    const-string v5, "EmailPolicyService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getPolicyState: results = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-direct {p0, p2}, Lcom/android/server/enterprise/email/EmailPolicy;->getDefaultValueState(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    move v3, v6

    .line 290
    .local v3, restricterState:Z
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 291
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 292
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ContentValues;

    invoke-virtual {v5, p2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v3, :cond_4

    const-string v5, "1"

    :goto_2
    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .end local v3           #restricterState:Z
    :cond_3
    move v3, v7

    .line 288
    goto :goto_1

    .line 292
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Landroid/content/ContentValues;>;"
    .restart local v3       #restricterState:Z
    :cond_4
    const-string v5, "0"

    goto :goto_2

    .line 296
    :cond_5
    if-nez v3, :cond_6

    :goto_3
    move v3, v6

    goto :goto_0

    :cond_6
    move v6, v7

    goto :goto_3
.end method

.method private putPolicyState(ILjava/lang/String;ZLjava/lang/String;)Z
    .locals 6
    .parameter "admin"
    .parameter "emailAddress"
    .parameter "state"
    .parameter "policy"

    .prologue
    .line 253
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 254
    :cond_0
    const-string v3, "EmailPolicyService"

    const-string v4, "putPolicyState: Invalid entry"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const/4 v2, 0x0

    .line 269
    :goto_0
    return v2

    .line 258
    :cond_1
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 259
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 260
    const-string v3, "EmailAddress"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    if-eqz p3, :cond_2

    const-string v3, "1"

    :goto_1
    invoke-virtual {v0, p4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 264
    .local v1, cvWhere:Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 265
    const-string v3, "EmailAddress"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "EmailSettingsTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 268
    .local v2, ret:Z
    const-string v3, "EmailPolicyService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "putPolicyState: ret = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 261
    .end local v1           #cvWhere:Landroid/content/ContentValues;
    .end local v2           #ret:Z
    :cond_2
    const-string v3, "0"

    goto :goto_1
.end method

.method private setForcedSMIMECertificate(ILjava/lang/String;Z)Z
    .locals 5
    .parameter "adminUid"
    .parameter "emailAddress"
    .parameter "isForcedCert"

    .prologue
    .line 238
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 239
    .local v0, cv:Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 240
    const-string v3, "EmailAddress"

    invoke-virtual {v0, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    const-string v3, "EmailForceSmimeCert"

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 243
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 244
    .local v1, cvWhere:Landroid/content/ContentValues;
    const-string v3, "adminUid"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 245
    const-string v3, "EmailAddress"

    invoke-virtual {v1, v3, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v4, "EmailSettingsTable"

    invoke-virtual {v3, v4, v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    move-result v2

    .line 248
    .local v2, ret:Z
    return v2
.end method


# virtual methods
.method public getAllowEmailForwarding(Ljava/lang/String;)Z
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 224
    const-string v0, "EmailAllowForward"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAllowHTMLEmail(Ljava/lang/String;)Z
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 233
    const-string v0, "EmailAllowHTML"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getForceSMIMECertificate(Ljava/lang/String;)Z
    .locals 8
    .parameter "emailAddress"

    .prologue
    const/4 v3, 0x0

    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 176
    :cond_0
    const-string v4, "EmailPolicyService"

    const-string v5, "getForceSMIMECertificate: Invalid entry"

    invoke-static {v4, v5}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    :cond_1
    :goto_0
    return v3

    .line 180
    :cond_2
    iget-object v4, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "EmailSettingsTable"

    const-string v6, "EmailAddress"

    const-string v7, "EmailForceSmimeCert"

    invoke-virtual {v4, v5, v6, p1, v7}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getBooleanList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 185
    .local v0, booleanList:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz v0, :cond_1

    .line 186
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    .line 187
    .local v2, isForced:Ljava/lang/Boolean;
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 188
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public getRequireEncryptedSMIMEMessages(Ljava/lang/String;)Z
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 102
    const-string v0, "EmailReqEncryptSmime"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getRequireSignedSMIMEMessages(Ljava/lang/String;)Z
    .locals 1
    .parameter "emailAddress"

    .prologue
    .line 92
    const-string v0, "EmailReqSigSmime"

    invoke-direct {p0, p1, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->getPolicyState(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 326
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 338
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 332
    return-void
.end method

.method public setAllowEmailForwarding(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "emailAddress"
    .parameter "allow"

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    .line 220
    .local v0, adminUid:I
    const-string v1, "EmailAllowForward"

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(ILjava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setAllowHTMLEmail(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "emailAddress"
    .parameter "allow"

    .prologue
    .line 228
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    .line 229
    .local v0, adminUid:I
    const-string v1, "EmailAllowHTML"

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(ILjava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setForceSMIMECertificate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 12
    .parameter "emailAddress"
    .parameter "certPath"
    .parameter "certPassword"

    .prologue
    .line 120
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v8

    .line 122
    .local v8, adminUid:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    :cond_0
    const-string v0, "EmailPolicyService"

    const-string v2, "setForceSMIMECertificate: Invalid entry"

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v11, 0x3

    .line 170
    :goto_0
    return v11

    .line 127
    :cond_1
    const/4 v11, 0x0

    .line 129
    .local v11, result:I
    monitor-enter p0

    .line 131
    :try_start_0
    new-instance v3, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;

    const/4 v0, 0x0

    invoke-direct {v3, p0, v0}, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;-><init>(Lcom/android/server/enterprise/email/EmailPolicy;Lcom/android/server/enterprise/email/EmailPolicy$1;)V

    .line 133
    .local v3, broadcastReceiver:Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;
    new-instance v1, Landroid/content/Intent;

    const-string v0, "com.android.server.enterprise.email.FORCE_SMIME_CERTIFICATE"

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v1, intent:Landroid/content/Intent;
    const-string v0, "email_address"

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 135
    const-string v0, "cert_path"

    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    const-string v0, "cert_password"

    invoke-virtual {v1, v0, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 138
    iget-object v0, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.sec.SMIME_CERTIFICATE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    .line 141
    :goto_1
    iget-boolean v0, v3, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;->mHaveResult:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    .line 144
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 145
    :catch_0
    move-exception v10

    .line 146
    .local v10, ex:Ljava/lang/InterruptedException;
    :try_start_2
    const-string v0, "EmailPolicyService"

    const-string v2, "Exception while waiting for Email\'s response"

    invoke-static {v0, v2, v10}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 168
    .end local v1           #intent:Landroid/content/Intent;
    .end local v3           #broadcastReceiver:Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;
    .end local v10           #ex:Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 150
    .restart local v1       #intent:Landroid/content/Intent;
    .restart local v3       #broadcastReceiver:Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;
    :cond_2
    :try_start_3
    invoke-virtual {v3}, Lcom/android/server/enterprise/email/EmailPolicy$EmailBroadcastReceiver;->getResultCode()I

    move-result v11

    .line 153
    if-gez v11, :cond_5

    .line 154
    const/4 v0, 0x1

    invoke-direct {p0, v8, p1, v0}, Lcom/android/server/enterprise/email/EmailPolicy;->setForcedSMIMECertificate(ILjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v11, -0x1

    .line 156
    :goto_2
    const/4 v0, -0x1

    if-ne v11, v0, :cond_3

    .line 158
    new-instance v9, Ljava/io/File;

    invoke-direct {v9, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 160
    .local v9, certificate:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 161
    invoke-virtual {v9}, Ljava/io/File;->delete()Z

    .line 168
    .end local v9           #certificate:Ljava/io/File;
    :cond_3
    :goto_3
    monitor-exit p0

    goto :goto_0

    .line 154
    :cond_4
    const/4 v11, 0x0

    goto :goto_2

    .line 166
    :cond_5
    const-string v0, "EmailPolicyService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Result code from Email: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/enterprise/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3
.end method

.method public setReleaseSMIMECertificate(Ljava/lang/String;)Z
    .locals 5
    .parameter "emailAddress"

    .prologue
    const/4 v2, 0x0

    .line 197
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    .line 199
    .local v0, adminUid:I
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 200
    :cond_0
    const-string v3, "EmailPolicyService"

    const-string v4, "setReleaseSMIMECertificate: Invalid entry"

    invoke-static {v3, v4}, Lcom/android/server/enterprise/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    :cond_1
    :goto_0
    return v2

    .line 205
    :cond_2
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/enterprise/email/EmailPolicy;->setForcedSMIMECertificate(ILjava/lang/String;Z)Z

    move-result v2

    .line 207
    .local v2, result:Z
    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 209
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.server.enterprise.email.RELEASE_SMIME_CERTIFICATE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 210
    .local v1, intent:Landroid/content/Intent;
    const-string v3, "email_address"

    invoke-virtual {v1, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 212
    iget-object v3, p0, Lcom/android/server/enterprise/email/EmailPolicy;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.sec.SMIME_CERTIFICATE"

    invoke-virtual {v3, v1, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setRequireEncryptedSMIMEMessages(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "emailAddress"
    .parameter "enable"

    .prologue
    .line 96
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    .line 97
    .local v0, adminUid:I
    const-string v1, "EmailReqEncryptSmime"

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(ILjava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public setRequireSignedSMIMEMessages(Ljava/lang/String;Z)Z
    .locals 2
    .parameter "emailAddress"
    .parameter "enable"

    .prologue
    .line 87
    invoke-direct {p0}, Lcom/android/server/enterprise/email/EmailPolicy;->enforceEmailPermission()I

    move-result v0

    .line 88
    .local v0, adminUid:I
    const-string v1, "EmailReqSigSmime"

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/server/enterprise/email/EmailPolicy;->putPolicyState(ILjava/lang/String;ZLjava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 320
    return-void
.end method
