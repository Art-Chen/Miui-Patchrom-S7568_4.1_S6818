.class public Lcom/android/server/enterprise/license/LicenseLogService;
.super Landroid/os/Binder;
.source "LicenseLogService.java"

# interfaces
.implements Lcom/android/server/enterprise/EnterpriseServiceCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "LicenseLogService"

.field private static mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Lcom/android/server/enterprise/storage/EdmStorageProvider;

    iget-object v1, p0, Lcom/android/server/enterprise/license/LicenseLogService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    .line 64
    return-void
.end method

.method public static deleteLog(Ljava/lang/String;)Z
    .locals 7
    .parameter "pkgName"

    .prologue
    const/4 v6, -0x1

    .line 191
    const/4 v3, 0x0

    .line 193
    .local v3, ret:Z
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 194
    .local v1, fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v4, "pkgName"

    invoke-virtual {v1, v4, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    sget-object v4, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE_LOG"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I

    move-result v2

    .line 197
    .local v2, result:I
    if-eq v2, v6, :cond_0

    .line 198
    sget-object v4, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v5, "LICENSE_LOG_TIME"

    invoke-virtual {v4, v5, v1}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->removeByFields(Ljava/lang/String;Ljava/util/HashMap;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 200
    if-eq v2, v6, :cond_0

    .line 201
    const/4 v3, 0x1

    .line 206
    .end local v1           #fieldsAndValues:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2           #result:I
    :cond_0
    :goto_0
    return v3

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, e:Ljava/lang/Exception;
    const-string v4, "LicenseLogService"

    const-string v5, "deleteLog() failed"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getLog(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 15
    .parameter "pkgName"

    .prologue
    .line 133
    :try_start_0
    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    .line 134
    .local v9, ret:Landroid/os/Bundle;
    const/4 v12, 0x2

    new-array v0, v12, [Ljava/lang/String;

    .line 135
    .local v0, columns:[Ljava/lang/String;
    const/4 v12, 0x0

    const-string v13, "startTime"

    aput-object v13, v0, v12

    .line 136
    const/4 v12, 0x1

    const-string v13, "endTime"

    aput-object v13, v0, v12

    .line 137
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 138
    .local v2, cvWhere:Landroid/content/ContentValues;
    const-string v12, "pkgName"

    invoke-virtual {v2, v12, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    sget-object v12, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE_LOG_TIME"

    invoke-virtual {v12, v13, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 143
    .local v8, results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    if-eqz v8, :cond_0

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_0

    .line 144
    const/4 v12, 0x0

    invoke-interface {v8, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ContentValues;

    .line 146
    .local v1, cv:Landroid/content/ContentValues;
    const-string v12, "startTime"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    .line 147
    .local v10, startTime:Ljava/lang/Long;
    const-string v12, "endTime"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 150
    .local v4, endTime:Ljava/lang/Long;
    invoke-interface {v8}, Ljava/util/List;->clear()V

    .line 151
    invoke-virtual {v1}, Landroid/content/ContentValues;->clear()V

    .line 152
    const/4 v7, 0x0

    .line 153
    .local v7, keyVal:Landroid/os/Bundle;
    const/4 v12, 0x0

    const-string v13, "id"

    aput-object v13, v0, v12

    .line 154
    const/4 v12, 0x1

    const-string v13, "value"

    aput-object v13, v0, v12

    .line 155
    sget-object v12, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v13, "LICENSE_LOG"

    invoke-virtual {v12, v13, v0, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValuesList(Ljava/lang/String;[Ljava/lang/String;Landroid/content/ContentValues;)Ljava/util/List;

    move-result-object v8

    .line 158
    if-eqz v8, :cond_1

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_1

    .line 159
    const/4 v5, 0x0

    .line 160
    .local v5, id:Ljava/lang/String;
    const/4 v11, 0x0

    .line 161
    .local v11, val:I
    new-instance v7, Landroid/os/Bundle;

    .end local v7           #keyVal:Landroid/os/Bundle;
    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    .line 162
    .restart local v7       #keyVal:Landroid/os/Bundle;
    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 164
    .local v6, it:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 165
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #cv:Landroid/content/ContentValues;
    check-cast v1, Landroid/content/ContentValues;

    .line 166
    .restart local v1       #cv:Landroid/content/ContentValues;
    const-string v12, "id"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 167
    const-string v12, "value"

    invoke-virtual {v1, v12}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v11

    .line 168
    invoke-virtual {v7, v5, v11}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 183
    .end local v0           #columns:[Ljava/lang/String;
    .end local v1           #cv:Landroid/content/ContentValues;
    .end local v2           #cvWhere:Landroid/content/ContentValues;
    .end local v4           #endTime:Ljava/lang/Long;
    .end local v5           #id:Ljava/lang/String;
    .end local v6           #it:Ljava/util/Iterator;
    .end local v7           #keyVal:Landroid/os/Bundle;
    .end local v8           #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .end local v9           #ret:Landroid/os/Bundle;
    .end local v10           #startTime:Ljava/lang/Long;
    .end local v11           #val:I
    :catch_0
    move-exception v3

    .line 184
    .local v3, e:Ljava/lang/Exception;
    const-string v12, "LicenseLogService"

    const-string v13, "getLog() failed"

    invoke-static {v12, v13}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    .end local v3           #e:Ljava/lang/Exception;
    :cond_0
    const/4 v9, 0x0

    :goto_1
    return-object v9

    .line 174
    .restart local v0       #columns:[Ljava/lang/String;
    .restart local v1       #cv:Landroid/content/ContentValues;
    .restart local v2       #cvWhere:Landroid/content/ContentValues;
    .restart local v4       #endTime:Ljava/lang/Long;
    .restart local v7       #keyVal:Landroid/os/Bundle;
    .restart local v8       #results:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    .restart local v9       #ret:Landroid/os/Bundle;
    .restart local v10       #startTime:Ljava/lang/Long;
    :cond_1
    :try_start_1
    const-string v12, "log_start"

    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 175
    const-string v12, "log_end"

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    invoke-virtual {v9, v12, v13, v14}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 176
    const-string v12, "api_call"

    invoke-virtual {v9, v12, v7}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static getPackageNameForUid(I)Ljava/lang/String;
    .locals 5
    .parameter "uid"

    .prologue
    .line 227
    sget-object v2, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v3, "ADMIN"

    const-string v4, "adminName"

    invoke-virtual {v2, p0, v3, v4}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 229
    .local v1, pkgName:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 230
    const/4 v2, 0x0

    .line 233
    :goto_0
    return-object v2

    .line 232
    :cond_0
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 233
    .local v0, compName:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static log(Ljava/lang/String;)V
    .locals 12
    .parameter "apiName"

    .prologue
    .line 67
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 71
    .local v9, uid:I
    :try_start_0
    invoke-static {v9}, Lcom/android/server/enterprise/license/LicenseLogService;->getPackageNameForUid(I)Ljava/lang/String;

    move-result-object v5

    .line 73
    .local v5, pkgName:Ljava/lang/String;
    if-nez v5, :cond_0

    .line 74
    const-string v10, "LicenseLogService"

    const-string v11, "log() is called by non admin"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    .end local v5           #pkgName:Ljava/lang/String;
    :goto_0
    return-void

    .line 78
    .restart local v5       #pkgName:Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 87
    .local v3, cvWhere:Landroid/content/ContentValues;
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 88
    const-string v0, "value"

    .line 89
    .local v0, column:Ljava/lang/String;
    const-string v10, "pkgName"

    invoke-virtual {v3, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 90
    const-string v10, "id"

    invoke-virtual {v3, v10, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    sget-object v10, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "LICENSE_LOG"

    invoke-virtual {v10, v11, v0, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->getValue(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v6

    .line 95
    .local v6, result:Landroid/content/ContentValues;
    if-eqz v6, :cond_1

    .line 98
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 99
    .local v2, cv:Landroid/content/ContentValues;
    const-string v10, "value"

    const-string v11, "value"

    invoke-virtual {v6, v11}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    add-int/lit8 v11, v11, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 101
    sget-object v10, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "LICENSE_LOG"

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z

    .line 104
    invoke-virtual {v3}, Landroid/content/ContentValues;->clear()V

    .line 105
    const-string v10, "pkgName"

    invoke-virtual {v3, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Ljava/sql/Date;-><init>(J)V

    .line 108
    .local v1, current:Ljava/sql/Date;
    invoke-virtual {v1}, Ljava/sql/Date;->getTime()J

    move-result-wide v7

    .line 109
    .local v7, time:J
    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    .line 110
    const-string v10, "endTime"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 111
    sget-object v10, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "LICENSE_LOG_TIME"

    invoke-virtual {v10, v11, v2, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValues(Ljava/lang/String;Landroid/content/ContentValues;Landroid/content/ContentValues;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 126
    .end local v0           #column:Ljava/lang/String;
    .end local v1           #current:Ljava/sql/Date;
    .end local v2           #cv:Landroid/content/ContentValues;
    .end local v3           #cvWhere:Landroid/content/ContentValues;
    .end local v5           #pkgName:Ljava/lang/String;
    .end local v6           #result:Landroid/content/ContentValues;
    .end local v7           #time:J
    :catch_0
    move-exception v4

    .line 127
    .local v4, e:Ljava/lang/Exception;
    const-string v10, "LicenseLogService"

    const-string v11, "log() failed"

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 114
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v0       #column:Ljava/lang/String;
    .restart local v3       #cvWhere:Landroid/content/ContentValues;
    .restart local v5       #pkgName:Ljava/lang/String;
    .restart local v6       #result:Landroid/content/ContentValues;
    :cond_1
    :try_start_1
    sget-object v10, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "LICENSE_LOG"

    invoke-virtual {v10, v11, v3}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z

    .line 117
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    .line 118
    .restart local v2       #cv:Landroid/content/ContentValues;
    const-string v10, "pkgName"

    invoke-virtual {v2, v10, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    new-instance v1, Ljava/sql/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    invoke-direct {v1, v10, v11}, Ljava/sql/Date;-><init>(J)V

    .line 120
    .restart local v1       #current:Ljava/sql/Date;
    invoke-virtual {v1}, Ljava/sql/Date;->getTime()J

    move-result-wide v7

    .line 121
    .restart local v7       #time:J
    const-string v10, "startTime"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 122
    const-string v10, "endTime"

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    invoke-virtual {v2, v10, v11}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 123
    sget-object v10, Lcom/android/server/enterprise/license/LicenseLogService;->mEdmStorageProvider:Lcom/android/server/enterprise/storage/EdmStorageProvider;

    const-string v11, "LICENSE_LOG_TIME"

    invoke-virtual {v10, v11, v2}, Lcom/android/server/enterprise/storage/EdmStorageProvider;->putValuesNoUpdate(Ljava/lang/String;Landroid/content/ContentValues;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method


# virtual methods
.method public onAdminAdded(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 215
    return-void
.end method

.method public onAdminRemoved(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 219
    return-void
.end method

.method public onPreAdminRemoval(I)V
    .locals 0
    .parameter "uid"

    .prologue
    .line 223
    return-void
.end method

.method public systemReady()V
    .locals 0

    .prologue
    .line 211
    return-void
.end method
