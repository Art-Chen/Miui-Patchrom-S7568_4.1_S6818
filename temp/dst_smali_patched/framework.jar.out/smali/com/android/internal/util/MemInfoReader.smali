.class public Lcom/android/internal/util/MemInfoReader;
.super Ljava/lang/Object;
.source "MemInfoReader.java"


# instance fields
.field mBuffer:[B

.field mBuffer2:[B

.field private mCachedSize:J

.field private mFreeSize:J

.field private mLowCachedSize:J

.field private mLowFreeSize:J

.field private mTotalSize:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    return-void
.end method

.method private extractMemValue([BI)J
    .locals 6
    .parameter "buffer"
    .parameter "index"

    .prologue
    const/16 v5, 0x39

    const/16 v4, 0x30

    :goto_0
    array-length v2, p1

    if-ge p2, v2, :cond_2

    aget-byte v2, p1, p2

    const/16 v3, 0xa

    if-eq v2, v3, :cond_2

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_1

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_1

    move v0, p2

    .local v0, start:I
    add-int/lit8 p2, p2, 0x1

    :goto_1
    array-length v2, p1

    if-ge p2, v2, :cond_0

    aget-byte v2, p1, p2

    if-lt v2, v4, :cond_0

    aget-byte v2, p1, p2

    if-gt v2, v5, :cond_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :cond_0
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x0

    sub-int v3, p2, v0

    invoke-direct {v1, p1, v2, v0, v3}, Ljava/lang/String;-><init>([BIII)V

    .local v1, str:Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x400

    mul-long/2addr v2, v4

    .end local v0           #start:I
    .end local v1           #str:Ljava/lang/String;
    :goto_2
    return-wide v2

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const-wide/16 v2, 0x0

    goto :goto_2
.end method

.method private findKeyword([BIILjava/lang/String;)I
    .locals 4
    .parameter "buffer"
    .parameter "index"
    .parameter "bound"
    .parameter "text"

    .prologue
    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, N:I
    const/4 v3, 0x0

    invoke-virtual {p4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .local v1, cFirst:C
    move v2, p2

    .local v2, i:I
    :goto_0
    if-ge v2, p3, :cond_1

    aget-byte v3, p1, v2

    if-ne v3, v1, :cond_0

    invoke-direct {p0, p1, v2, p4}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int v3, v2, v0

    :goto_1
    return v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, -0x1

    goto :goto_1
.end method

.method private matchText([BILjava/lang/String;)Z
    .locals 5
    .parameter "buffer"
    .parameter "index"
    .parameter "text"

    .prologue
    const/4 v2, 0x0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    .local v0, N:I
    add-int v3, p2, v0

    array-length v4, p1

    if-lt v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v0, :cond_2

    add-int v3, p2, v1

    aget-byte v3, p1, v3

    invoke-virtual {p3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v3, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public getCachedSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    return-wide v0
.end method

.method public getFreeSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    return-wide v0
.end method

.method public getLowCachedSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mLowCachedSize:J

    return-wide v0
.end method

.method public getLowFreeSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mLowFreeSize:J

    return-wide v0
.end method

.method public getTotalSize()J
    .locals 2

    .prologue
    iget-wide v0, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    return-wide v0
.end method

.method public readMemInfo()V
    .locals 13

    .prologue
    const-wide/16 v11, 0x4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v7

    .local v7, savedPolicy:Landroid/os/StrictMode$ThreadPolicy;
    const-wide/16 v8, 0x0

    :try_start_0
    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mLowFreeSize:J

    const-wide/16 v8, 0x0

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mLowCachedSize:J

    new-instance v3, Ljava/io/FileInputStream;

    const-string v8, "/proc/meminfo"

    invoke-direct {v3, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v3, is:Ljava/io/FileInputStream;
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v3, v8, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v5

    .local v5, len:I
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    new-instance v4, Ljava/io/FileInputStream;

    const-string v8, "/proc/zoneinfo"

    invoke-direct {v4, v8}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .local v4, is2:Ljava/io/FileInputStream;
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/4 v9, 0x0

    const/16 v10, 0x400

    invoke-virtual {v4, v8, v9, v10}, Ljava/io/FileInputStream;->read([BII)I

    move-result v6

    .local v6, len2:I
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    array-length v0, v8

    .local v0, BUFLEN:I
    const/4 v1, 0x0

    .local v1, count:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v5, :cond_4

    const/4 v8, 0x3

    if-ge v1, v8, :cond_4

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v9, "MemTotal"

    invoke-direct {p0, v8, v2, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    add-int/lit8 v2, v2, 0x8

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mTotalSize:J

    add-int/lit8 v1, v1, 0x1

    :cond_0
    :goto_1
    if-ge v2, v0, :cond_3

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    aget-byte v8, v8, v2

    const/16 v9, 0xa

    if-eq v8, v9, :cond_3

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v9, "MemFree"

    invoke-direct {p0, v8, v2, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    add-int/lit8 v2, v2, 0x7

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mFreeSize:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    const-string v9, "Cached"

    invoke-direct {p0, v8, v2, v9}, Lcom/android/internal/util/MemInfoReader;->matchText([BILjava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    add-int/lit8 v2, v2, 0x6

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mCachedSize:J

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/16 v9, 0x400

    const-string v10, "zone"

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/16 v9, 0x400

    const-string v10, "Normal"

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/16 v9, 0x400

    const-string v10, "nr_free_pages"

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    mul-long/2addr v8, v11

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mLowFreeSize:J

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    const/16 v9, 0x400

    const-string v10, "nr_file_pages"

    invoke-direct {p0, v8, v2, v9, v10}, Lcom/android/internal/util/MemInfoReader;->findKeyword([BIILjava/lang/String;)I

    move-result v2

    if-lez v2, :cond_5

    iget-object v8, p0, Lcom/android/internal/util/MemInfoReader;->mBuffer2:[B

    invoke-direct {p0, v8, v2}, Lcom/android/internal/util/MemInfoReader;->extractMemValue([BI)J

    move-result-wide v8

    mul-long/2addr v8, v11

    iput-wide v8, p0, Lcom/android/internal/util/MemInfoReader;->mLowCachedSize:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_5
    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .end local v0           #BUFLEN:I
    .end local v1           #count:I
    .end local v2           #i:I
    .end local v3           #is:Ljava/io/FileInputStream;
    .end local v4           #is2:Ljava/io/FileInputStream;
    .end local v5           #len:I
    .end local v6           #len2:I
    :goto_2
    return-void

    :catch_0
    move-exception v8

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :catch_1
    move-exception v8

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    goto :goto_2

    :catchall_0
    move-exception v8

    invoke-static {v7}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v8
.end method
