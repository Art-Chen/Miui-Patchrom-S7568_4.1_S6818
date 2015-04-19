.class public Lcom/android/providers/media/RecommendFace;
.super Ljava/lang/Object;
.source "RecommendFace.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/media/RecommendFace$SimilarPerson;,
        Lcom/android/providers/media/RecommendFace$FaceItem;
    }
.end annotation


# static fields
.field private static CONFIRM_SIMILARITY:I


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFR:I

.field private mFaceCopector:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/android/providers/media/RecommendFace$SimilarPerson;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const/16 v0, 0x1d4c

    sput v0, Lcom/android/providers/media/RecommendFace;->CONFIRM_SIMILARITY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "context"
    .parameter "fr"

    .prologue
    .line 22
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    .line 306
    new-instance v0, Lcom/android/providers/media/RecommendFace$1;

    invoke-direct {v0, p0}, Lcom/android/providers/media/RecommendFace$1;-><init>(Lcom/android/providers/media/RecommendFace;)V

    iput-object v0, p0, Lcom/android/providers/media/RecommendFace;->mFaceCopector:Ljava/util/Comparator;

    .line 23
    iput p2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    .line 24
    iput-object p1, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    .line 25
    return-void
.end method

.method private getGroupSimilarity(I)I
    .locals 9
    .parameter "groupId"

    .prologue
    const/4 v5, 0x1

    const/4 v8, 0x0

    .line 344
    const/4 v7, 0x0

    .line 345
    .local v7, similarity:I
    sget-object v2, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 346
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 347
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "similarity"

    aput-object v3, v2, v8

    const-string v3, "group_id=? and similarity>0"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 349
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    const/4 v2, 0x0

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 354
    :cond_0
    if-eqz v6, :cond_1

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 357
    :cond_1
    return v7

    .line 354
    :catchall_0
    move-exception v2

    if-eqz v6, :cond_2

    .line 355
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2
.end method

.method private getSimilarPersons()Ljava/util/ArrayList;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/media/RecommendFace$SimilarPerson;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 233
    const/4 v7, 0x0

    .line 234
    .local v7, person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 235
    .local v0, cr:Landroid/content/ContentResolver;
    const/4 v9, 0x0

    .line 236
    .local v9, registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    const-string v11, "select _id from persons where _id>1"

    .line 237
    .local v11, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 238
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 240
    .local v6, cursor:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v9           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .local v10, registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    move-object v8, v7

    .line 243
    .end local v7           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .local v8, person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    :goto_0
    :try_start_1
    new-instance v7, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    const/4 v2, 0x0

    invoke-direct {v7, v2}, Lcom/android/providers/media/RecommendFace$SimilarPerson;-><init>(Lcom/android/providers/media/RecommendFace$1;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 244
    .end local v8           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .restart local v7       #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    const/4 v2, 0x0

    :try_start_2
    invoke-interface {v6, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    iput v2, v7, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    .line 245
    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v2

    if-nez v2, :cond_3

    move-object v9, v10

    .line 249
    .end local v10           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v9       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    :cond_0
    if-eqz v6, :cond_1

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 252
    :cond_1
    return-object v9

    .line 249
    :catchall_0
    move-exception v2

    :goto_1
    if-eqz v6, :cond_2

    .line 250
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .line 249
    .end local v7           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .end local v9           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v8       #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .restart local v10       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v9       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    move-object v7, v8

    .end local v8           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .restart local v7       #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    goto :goto_1

    .end local v9           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v10       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    :catchall_2
    move-exception v2

    move-object v9, v10

    .end local v10           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v9       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    goto :goto_1

    .end local v9           #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    .restart local v10       #registeredPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    :cond_3
    move-object v8, v7

    .end local v7           #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    .restart local v8       #person:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    goto :goto_0
.end method

.method private getUnconfirmedGroups()[I
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v2, 0x0

    .line 110
    const/4 v8, 0x0

    .line 111
    .local v8, groups:[I
    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 112
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "select distinct group_id from faces where group_id>0 and recommended_id>1 and person_id=1 and similarity<%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/android/providers/media/RecommendFace;->CONFIRM_SIMILARITY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 113
    .local v11, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 116
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 117
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 118
    .local v6, count:I
    const/4 v9, 0x0

    .line 119
    .local v9, i:I
    new-array v8, v6, [I

    move v10, v9

    .line 121
    .end local v9           #i:I
    .local v10, i:I
    :goto_0
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v10

    .line 122
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 125
    .end local v6           #count:I
    .end local v9           #i:I
    :cond_0
    if-eqz v7, :cond_1

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 128
    :cond_1
    return-object v8

    .line 125
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    .line 126
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .restart local v6       #count:I
    .restart local v9       #i:I
    :cond_3
    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_0
.end method

.method private getUngroupFacesNoRecommend()[Lcom/android/providers/media/RecommendFace$FaceItem;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    const/4 v2, 0x0

    .line 131
    const/4 v8, 0x0

    .line 132
    .local v8, faces:[Lcom/android/providers/media/RecommendFace$FaceItem;
    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 133
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "select _id,face_data from faces where auto_group>0 and group_id=0 and recommended_id=%2$d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/16 v5, 0x64

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v12

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 135
    .local v10, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 136
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 138
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 139
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 140
    .local v6, count:I
    const/4 v9, 0x0

    .line 141
    .local v9, i:I
    new-array v8, v6, [Lcom/android/providers/media/RecommendFace$FaceItem;

    .line 143
    :cond_0
    new-instance v2, Lcom/android/providers/media/RecommendFace$FaceItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/providers/media/RecommendFace$FaceItem;-><init>(Lcom/android/providers/media/RecommendFace;Lcom/android/providers/media/RecommendFace$1;)V

    aput-object v2, v8, v9

    .line 144
    aget-object v2, v8, v9

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    .line 145
    aget-object v2, v8, v9

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    .line 146
    add-int/lit8 v9, v9, 0x1

    .line 147
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 150
    .end local v6           #count:I
    .end local v9           #i:I
    :cond_1
    if-eqz v7, :cond_2

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 153
    :cond_2
    return-object v8

    .line 150
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 151
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getUngroupFacesRecommend()[Lcom/android/providers/media/RecommendFace$FaceItem;
    .locals 12

    .prologue
    const/4 v4, 0x1

    const/4 v11, 0x0

    const/4 v2, 0x0

    .line 157
    const/4 v8, 0x0

    .line 158
    .local v8, faces:[Lcom/android/providers/media/RecommendFace$FaceItem;
    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v3, "select _id,face_data,similarity from faces where auto_group>0 and group_id=0 and recommended_id>1 and similarity<%d"

    new-array v4, v4, [Ljava/lang/Object;

    sget v5, Lcom/android/providers/media/RecommendFace;->CONFIRM_SIMILARITY:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v11

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 160
    .local v10, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v10}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 161
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 163
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_1

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 164
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 165
    .local v6, count:I
    const/4 v9, 0x0

    .line 166
    .local v9, i:I
    new-array v8, v6, [Lcom/android/providers/media/RecommendFace$FaceItem;

    .line 168
    :cond_0
    new-instance v2, Lcom/android/providers/media/RecommendFace$FaceItem;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/providers/media/RecommendFace$FaceItem;-><init>(Lcom/android/providers/media/RecommendFace;Lcom/android/providers/media/RecommendFace$1;)V

    aput-object v2, v8, v9

    .line 169
    aget-object v2, v8, v9

    const/4 v3, 0x0

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    .line 170
    aget-object v2, v8, v9

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    .line 171
    aget-object v2, v8, v9

    const/4 v3, 0x2

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v2, Lcom/android/providers/media/RecommendFace$FaceItem;->mOldScore:I

    .line 172
    add-int/lit8 v9, v9, 0x1

    .line 173
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 176
    .end local v6           #count:I
    .end local v9           #i:I
    :cond_1
    if-eqz v7, :cond_2

    .line 177
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 179
    :cond_2
    return-object v8

    .line 176
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 177
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private getUnrecommendGroups()[I
    .locals 12

    .prologue
    const/4 v2, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    .local v8, groups:[I
    iget-object v3, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 90
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v11, "select distinct group_id from faces where group_id>0 and recommended_id=1"

    .line 91
    .local v11, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .local v1, uri:Landroid/net/Uri;
    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    .line 92
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 94
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 95
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 96
    .local v6, count:I
    const/4 v9, 0x0

    .line 97
    .local v9, i:I
    new-array v8, v6, [I

    move v10, v9

    .line 99
    .end local v9           #i:I
    .local v10, i:I
    :goto_0
    add-int/lit8 v9, v10, 0x1

    .end local v10           #i:I
    .restart local v9       #i:I
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v10

    .line 100
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_3

    .line 103
    .end local v6           #count:I
    .end local v9           #i:I
    :cond_0
    if-eqz v7, :cond_1

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_1
    return-object v8

    .line 103
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    .line 104
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v2

    .restart local v6       #count:I
    .restart local v9       #i:I
    :cond_3
    move v10, v9

    .end local v9           #i:I
    .restart local v10       #i:I
    goto :goto_0
.end method

.method private loadGroup(I)I
    .locals 13
    .parameter "groupId"

    .prologue
    const/4 v5, 0x1

    const/4 v12, 0x0

    .line 33
    const/4 v8, 0x0

    .line 34
    .local v8, faceDataIndex:[I
    const/4 v6, 0x0

    .line 35
    .local v6, count:I
    const/4 v9, 0x0

    .line 36
    .local v9, group:I
    sget-object v2, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v3, "limit"

    const/16 v4, 0x1e

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 37
    .local v1, uri:Landroid/net/Uri;
    iget-object v2, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 38
    .local v0, cr:Landroid/content/ContentResolver;
    new-array v2, v5, [Ljava/lang/String;

    const-string v3, "face_data"

    aput-object v3, v2, v12

    const-string v3, "group_id=?"

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v12

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 40
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    .line 42
    new-array v8, v6, [I

    .line 43
    const/4 v10, 0x0

    .local v10, i:I
    move v11, v10

    .line 45
    .end local v10           #i:I
    .local v11, i:I
    :goto_0
    add-int/lit8 v10, v11, 0x1

    .end local v11           #i:I
    .restart local v10       #i:I
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v8, v11

    .line 46
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 50
    .end local v10           #i:I
    :cond_0
    if-eqz v7, :cond_1

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 53
    :cond_1
    if-lez v6, :cond_2

    .line 54
    iget v2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v2, v8, v6, v12}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v9

    .line 55
    :cond_2
    return v9

    .line 50
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_3

    .line 51
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    .restart local v10       #i:I
    :cond_4
    move v11, v10

    .end local v10           #i:I
    .restart local v11       #i:I
    goto :goto_0
.end method

.method private loadGroupKey(I)I
    .locals 12
    .parameter "personId"

    .prologue
    .line 59
    const/4 v9, 0x0

    .line 60
    .local v9, faceDataIndex:[I
    const/4 v6, 0x0

    .line 61
    .local v6, count:I
    const/4 v10, 0x0

    .line 62
    .local v10, group:I
    iget-object v2, p0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 63
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v2, "select face_data from faces where person_id=%1$d"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .line 64
    .local v11, sql:Ljava/lang/String;
    sget-object v2, Lcom/android/providers/media/FaceScanner;->RAW_SQL_PERSON_DB:Landroid/net/Uri;

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 65
    .local v1, uri:Landroid/net/Uri;
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 67
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_0

    :try_start_0
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    const/16 v2, 0x1e

    new-array v9, v2, [I

    move v7, v6

    .line 70
    .end local v6           #count:I
    .local v7, count:I
    :goto_0
    add-int/lit8 v6, v7, 0x1

    .end local v7           #count:I
    .restart local v6       #count:I
    const/4 v2, 0x0

    invoke-interface {v8, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    aput v2, v9, v7

    .line 71
    const/16 v2, 0x1e

    if-ge v6, v2, :cond_0

    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_4

    .line 75
    :cond_0
    if-eqz v8, :cond_1

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_1
    if-lez v6, :cond_2

    .line 79
    iget v2, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v3, 0x1

    invoke-static {v2, v9, v6, v3}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v10

    .line 80
    :cond_2
    return v10

    .line 75
    :catchall_0
    move-exception v2

    if-eqz v8, :cond_3

    .line 76
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2

    :cond_4
    move v7, v6

    .end local v6           #count:I
    .restart local v7       #count:I
    goto :goto_0
.end method

.method private unloadGroup(I)V
    .locals 1
    .parameter "group"

    .prologue
    .line 84
    if-lez p1, :cond_0

    .line 85
    iget v0, p0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v0, p1}, Lcom/android/providers/media/NativeApi;->unLoadGroup(II)V

    .line 86
    :cond_0
    return-void
.end method


# virtual methods
.method public getRecomendedId(I)[I
    .locals 18
    .parameter "faceId"

    .prologue
    .line 260
    const/4 v14, 0x3

    .line 261
    .local v14, recomendedCount:I
    const/4 v12, 0x0

    .line 262
    .local v12, personCount:I
    const/4 v13, 0x0

    .line 263
    .local v13, personIds:[I
    const/4 v3, 0x1

    new-array v8, v3, [I

    .line 264
    .local v8, faceData:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 265
    .local v1, cr:Landroid/content/ContentResolver;
    const-string v3, "select face_data from faces where _id=%1$d and auto_group>0"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 266
    .local v17, sql:Ljava/lang/String;
    sget-object v3, Lcom/android/providers/media/FaceScanner;->RAW_SQL_MAIN_DB:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v3

    move-object/from16 v0, v17

    invoke-virtual {v3, v0}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 267
    .local v2, uri:Landroid/net/Uri;
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 269
    .local v7, cursor:Landroid/database/Cursor;
    if-eqz v7, :cond_0

    :try_start_0
    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    aput v4, v8, v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_0
    if-eqz v7, :cond_1

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 276
    :cond_1
    const/4 v3, 0x0

    aget v3, v8, v3

    if-gez v3, :cond_3

    .line 277
    const/4 v3, 0x0

    .line 303
    :goto_0
    return-object v3

    .line 273
    :catchall_0
    move-exception v3

    if-eqz v7, :cond_2

    .line 274
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    throw v3

    .line 278
    :cond_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {v3, v8, v4, v5}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v9

    .line 279
    .local v9, group:I
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getSimilarPersons()Ljava/util/ArrayList;

    move-result-object v16

    .line 280
    .local v16, similarPersons:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/providers/media/RecommendFace$SimilarPerson;>;"
    if-eqz v16, :cond_4

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_4

    .line 281
    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 285
    const/4 v15, 0x0

    .line 286
    .local v15, similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    const/4 v10, 0x0

    .line 287
    .local v10, groupKey:I
    const/4 v11, 0x0

    .local v11, i:I
    :goto_1
    if-ge v11, v12, :cond_5

    .line 288
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    check-cast v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    .line 289
    .restart local v15       #similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    iget v3, v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    move-object/from16 v0, p0

    invoke-direct {v0, v3}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v10

    .line 290
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v3, v10, v9}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v3

    iput v3, v15, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mScore:I

    .line 291
    move-object/from16 v0, p0

    invoke-direct {v0, v10}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    .line 287
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 283
    .end local v10           #groupKey:I
    .end local v11           #i:I
    .end local v15           #similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    .line 293
    .restart local v10       #groupKey:I
    .restart local v11       #i:I
    .restart local v15       #similarPerson:Lcom/android/providers/media/RecommendFace$SimilarPerson;
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    .line 294
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/providers/media/RecommendFace;->mFaceCopector:Ljava/util/Comparator;

    move-object/from16 v0, v16

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 295
    if-le v12, v14, :cond_6

    .line 296
    :goto_2
    if-lez v14, :cond_7

    .line 297
    new-array v13, v14, [I

    .line 298
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v14, :cond_7

    .line 299
    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;

    iget v3, v3, Lcom/android/providers/media/RecommendFace$SimilarPerson;->mPersonId:I

    aput v3, v13, v11

    .line 298
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    move v14, v12

    .line 295
    goto :goto_2

    :cond_7
    move-object v3, v13

    .line 303
    goto :goto_0
.end method

.method public recomendFaces(II)V
    .locals 17
    .parameter "faceId"
    .parameter "personId"

    .prologue
    .line 182
    move-object/from16 v0, p0

    move/from16 v1, p2

    invoke-direct {v0, v1}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v6

    .line 183
    .local v6, groupKey:I
    const/4 v5, 0x0

    .line 184
    .local v5, group:I
    const/4 v9, 0x0

    .line 185
    .local v9, score:I
    new-instance v11, Landroid/content/ContentValues;

    invoke-direct {v11}, Landroid/content/ContentValues;-><init>()V

    .line 186
    .local v11, values:Landroid/content/ContentValues;
    if-nez v6, :cond_0

    .line 230
    :goto_0
    return-void

    .line 189
    :cond_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 190
    .local v2, cr:Landroid/content/ContentResolver;
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUnrecommendGroups()[I

    move-result-object v7

    .line 191
    .local v7, groups:[I
    if-eqz v7, :cond_3

    .line 192
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    array-length v12, v7

    if-ge v8, v12, :cond_3

    .line 193
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 194
    const/4 v9, 0x0

    .line 195
    aget v12, v7, v8

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/RecommendFace;->loadGroup(I)I

    move-result v5

    .line 196
    if-eqz v5, :cond_2

    .line 197
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v12, v6, v5}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v9

    .line 198
    const/16 v12, 0x157c

    if-le v9, v12, :cond_1

    .line 199
    const-string v12, "recommended_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 200
    const-string v12, "similarity"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 201
    sget-object v12, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string v13, "group_id=? and person_id=?"

    const/4 v14, 0x2

    new-array v14, v14, [Ljava/lang/String;

    const/4 v15, 0x0

    aget v16, v7, v8

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    const/4 v15, 0x1

    const/16 v16, 0x1

    invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-virtual {v2, v12, v11, v13, v14}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 203
    :cond_1
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    .line 192
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 209
    .end local v8           #i:I
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUngroupFacesNoRecommend()[Lcom/android/providers/media/RecommendFace$FaceItem;

    move-result-object v4

    .line 210
    .local v4, faces:[Lcom/android/providers/media/RecommendFace$FaceItem;
    if-eqz v4, :cond_6

    .line 211
    const/4 v12, 0x1

    new-array v3, v12, [I

    .line 212
    .local v3, faceData:[I
    const/4 v10, 0x0

    .line 213
    .local v10, uri:Landroid/net/Uri;
    const/4 v8, 0x0

    .restart local v8       #i:I
    :goto_2
    array-length v12, v4

    if-ge v8, v12, :cond_6

    .line 214
    invoke-virtual {v11}, Landroid/content/ContentValues;->clear()V

    .line 215
    const/4 v12, 0x0

    aget-object v13, v4, v8

    iget v13, v13, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    aput v13, v3, v12

    .line 216
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    const/4 v13, 0x1

    const/4 v14, 0x0

    invoke-static {v12, v3, v13, v14}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v5

    .line 217
    if-eqz v5, :cond_5

    .line 218
    move-object/from16 v0, p0

    iget v12, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    invoke-static {v12, v6, v5}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v9

    .line 219
    const/16 v12, 0x157c

    if-le v9, v12, :cond_4

    .line 220
    const-string v12, "recommended_id"

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 221
    const-string v12, "similarity"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v12, v13}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 222
    sget-object v12, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    aget-object v13, v4, v8

    iget v13, v13, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    int-to-long v13, v13

    invoke-static {v12, v13, v14}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v10

    .line 223
    const-string v12, "recommended_id=?"

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/String;

    const/4 v14, 0x0

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-virtual {v2, v10, v11, v12, v13}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 225
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v5}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    .line 213
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 229
    .end local v3           #faceData:[I
    .end local v8           #i:I
    .end local v10           #uri:Landroid/net/Uri;
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v6}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    goto/16 :goto_0
.end method

.method public recomendUnconfirmedFaces(Ljava/util/ArrayList;)V
    .locals 27
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 361
    .local p1, newPersonList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v22

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ge v0, v1, :cond_1

    .line 428
    :cond_0
    return-void

    .line 363
    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUnconfirmedGroups()[I

    move-result-object v20

    .line 364
    .local v20, unConfirmedGrouped:[I
    invoke-direct/range {p0 .. p0}, Lcom/android/providers/media/RecommendFace;->getUngroupFacesRecommend()[Lcom/android/providers/media/RecommendFace$FaceItem;

    move-result-object v19

    .line 365
    .local v19, unConfirmedFaces:[Lcom/android/providers/media/RecommendFace$FaceItem;
    new-instance v21, Landroid/content/ContentValues;

    invoke-direct/range {v21 .. v21}, Landroid/content/ContentValues;-><init>()V

    .line 366
    .local v21, values:Landroid/content/ContentValues;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/providers/media/RecommendFace;->mContext:Landroid/content/Context;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 367
    .local v5, cr:Landroid/content/ContentResolver;
    const/4 v8, 0x0

    .line 368
    .local v8, group:I
    const/4 v12, 0x0

    .line 369
    .local v12, key:I
    const/4 v14, 0x0

    .line 370
    .local v14, maxScore:I
    const/16 v17, 0x0

    .line 371
    .local v17, recommendId:I
    const/4 v15, 0x0

    .line 372
    .local v15, oldScore:I
    const/16 v18, 0x0

    .line 373
    .local v18, score:I
    if-eqz v20, :cond_5

    .line 374
    move-object/from16 v4, v20

    .local v4, arr$:[I
    array-length v13, v4

    .local v13, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .local v11, i$:I
    :goto_0
    if-ge v11, v13, :cond_5

    aget v9, v4, v11

    .line 375
    .local v9, groupId:I
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 376
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/providers/media/RecommendFace;->loadGroup(I)I

    move-result v8

    .line 377
    const/4 v12, 0x0

    .line 378
    const/4 v14, 0x0

    .line 379
    move-object/from16 v0, p0

    invoke-direct {v0, v9}, Lcom/android/providers/media/RecommendFace;->getGroupSimilarity(I)I

    move-result v15

    .line 380
    const/16 v17, 0x0

    .line 381
    const/16 v18, 0x0

    .line 382
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11           #i$:I
    .local v10, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 383
    .local v16, personId:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v12

    .line 384
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v12, v8}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v18

    .line 385
    move/from16 v0, v18

    if-le v0, v14, :cond_2

    .line 386
    move/from16 v14, v18

    .line 387
    move/from16 v17, v16

    .line 389
    :cond_2
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    goto :goto_1

    .line 391
    .end local v16           #personId:I
    :cond_3
    if-le v14, v15, :cond_4

    const/16 v22, 0x157c

    move/from16 v0, v22

    if-le v14, v0, :cond_4

    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_4

    .line 392
    const-string v22, "recommended_id"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 393
    const-string v22, "similarity"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 394
    sget-object v22, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string v23, "group_id=? and person_id=? and recommended_id<>?"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 396
    :cond_4
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    .line 374
    add-int/lit8 v10, v11, 0x1

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_0

    .line 400
    .end local v4           #arr$:[I
    .end local v9           #groupId:I
    .end local v11           #i$:I
    .end local v13           #len$:I
    :cond_5
    if-eqz v19, :cond_0

    .line 401
    invoke-virtual/range {v21 .. v21}, Landroid/content/ContentValues;->clear()V

    .line 402
    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v7, v0, [I

    .line 403
    .local v7, faceData:[I
    move-object/from16 v4, v19

    .local v4, arr$:[Lcom/android/providers/media/RecommendFace$FaceItem;
    array-length v13, v4

    .restart local v13       #len$:I
    const/4 v10, 0x0

    .restart local v10       #i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    :goto_2
    if-ge v11, v13, :cond_0

    aget-object v6, v4, v11

    .line 404
    .local v6, face:Lcom/android/providers/media/RecommendFace$FaceItem;
    const/16 v22, 0x0

    iget v0, v6, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceData:I

    move/from16 v23, v0

    aput v23, v7, v22

    .line 405
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    move/from16 v22, v0

    const/16 v23, 0x1

    const/16 v24, 0x0

    move/from16 v0, v22

    move/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v7, v1, v2}, Lcom/android/providers/media/NativeApi;->loadGroup(I[IIZ)I

    move-result v8

    .line 406
    const/4 v12, 0x0

    .line 407
    const/4 v14, 0x0

    .line 408
    const/16 v17, 0x0

    .line 409
    const/16 v18, 0x0

    .line 410
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .end local v11           #i$:I
    .local v10, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/Integer;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Integer;->intValue()I

    move-result v16

    .line 411
    .restart local v16       #personId:I
    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/providers/media/RecommendFace;->loadGroupKey(I)I

    move-result v12

    .line 412
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/providers/media/RecommendFace;->mFR:I

    move/from16 v22, v0

    move/from16 v0, v22

    invoke-static {v0, v12, v8}, Lcom/android/providers/media/NativeApi;->groupMatch(III)I

    move-result v18

    .line 413
    move/from16 v0, v18

    if-le v0, v14, :cond_6

    .line 414
    move/from16 v14, v18

    .line 415
    move/from16 v17, v16

    .line 417
    :cond_6
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    goto :goto_3

    .line 419
    .end local v16           #personId:I
    :cond_7
    iget v0, v6, Lcom/android/providers/media/RecommendFace$FaceItem;->mOldScore:I

    move/from16 v22, v0

    move/from16 v0, v22

    if-le v14, v0, :cond_8

    const/16 v22, 0x157c

    move/from16 v0, v22

    if-le v14, v0, :cond_8

    const/16 v22, 0x1

    move/from16 v0, v17

    move/from16 v1, v22

    if-le v0, v1, :cond_8

    .line 420
    const-string v22, "recommended_id"

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 421
    const-string v22, "similarity"

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    invoke-virtual/range {v21 .. v23}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 422
    sget-object v22, Lcom/android/providers/media/Columns;->FACES_URI:Landroid/net/Uri;

    const-string v23, "_id=? and person_id=? and recommended_id<>?"

    const/16 v24, 0x3

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    iget v0, v6, Lcom/android/providers/media/RecommendFace$FaceItem;->mFaceId:I

    move/from16 v26, v0

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x1

    const/16 v26, 0x1

    invoke-static/range {v26 .. v26}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    const/16 v25, 0x2

    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v26

    aput-object v26, v24, v25

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    move-object/from16 v2, v23

    move-object/from16 v3, v24

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 424
    :cond_8
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/android/providers/media/RecommendFace;->unloadGroup(I)V

    .line 403
    add-int/lit8 v10, v11, 0x1

    .local v10, i$:I
    move v11, v10

    .end local v10           #i$:I
    .restart local v11       #i$:I
    goto/16 :goto_2
.end method
