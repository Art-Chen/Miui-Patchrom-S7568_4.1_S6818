.class public Landroid/drm/mobile1/DrmRightsManager;
.super Ljava/lang/Object;
.source "DrmRightsManager.java"


# static fields
.field private static final DRM_MIMETYPE_MESSAGE:I = 0x1

.field private static final DRM_MIMETYPE_RIGHTS_WBXML:I = 0x4

.field public static final DRM_MIMETYPE_RIGHTS_WBXML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+wbxml"

.field private static final DRM_MIMETYPE_RIGHTS_XML:I = 0x3

.field public static final DRM_MIMETYPE_RIGHTS_XML_STRING:Ljava/lang/String; = "application/vnd.oma.drm.rights+xml"

.field public static final DRM_MIMETYPE_RIGHT_MESSAGE:Ljava/lang/String; = "application/vnd.oma.drm.message"

.field private static final JNI_DRM_FAILURE:I = -0x1

.field private static final JNI_DRM_SUCCESS:I

.field private static singleton:Landroid/drm/mobile1/DrmRightsManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 65
    const/4 v1, 0x0

    sput-object v1, Landroid/drm/mobile1/DrmRightsManager;->singleton:Landroid/drm/mobile1/DrmRightsManager;

    .line 250
    :try_start_0
    const-string v1, "drm1_jni"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0

    .line 255
    .local v0, ule:Ljava/lang/UnsatisfiedLinkError;
    :goto_0
    return-void

    .line 252
    .end local v0           #ule:Ljava/lang/UnsatisfiedLinkError;
    :catch_0
    move-exception v0

    .line 253
    .restart local v0       #ule:Ljava/lang/UnsatisfiedLinkError;
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "WARNING: Could not load libdrm1_jni.so"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 72
    return-void
.end method

.method public static declared-synchronized getInstance()Landroid/drm/mobile1/DrmRightsManager;
    .locals 2

    .prologue
    .line 80
    const-class v1, Landroid/drm/mobile1/DrmRightsManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Landroid/drm/mobile1/DrmRightsManager;->singleton:Landroid/drm/mobile1/DrmRightsManager;

    if-nez v0, :cond_0

    .line 81
    new-instance v0, Landroid/drm/mobile1/DrmRightsManager;

    invoke-direct {v0}, Landroid/drm/mobile1/DrmRightsManager;-><init>()V

    sput-object v0, Landroid/drm/mobile1/DrmRightsManager;->singleton:Landroid/drm/mobile1/DrmRightsManager;

    .line 84
    :cond_0
    sget-object v0, Landroid/drm/mobile1/DrmRightsManager;->singleton:Landroid/drm/mobile1/DrmRightsManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private native nativeDeleteRights(Landroid/drm/mobile1/DrmRights;)I
.end method

.method private native nativeGetNumOfRights()I
.end method

.method private native nativeGetRightsList([Landroid/drm/mobile1/DrmRights;I)I
.end method

.method private native nativeInstallDrmRights(Ljava/io/InputStream;IILandroid/drm/mobile1/DrmRights;)I
.end method

.method private native nativeQueryRights(Landroid/drm/mobile1/DrmRawContent;Landroid/drm/mobile1/DrmRights;)I
.end method


# virtual methods
.method public declared-synchronized deleteRights(Landroid/drm/mobile1/DrmRights;)V
    .locals 2
    .parameter "rights"

    .prologue
    .line 182
    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Landroid/drm/mobile1/DrmRightsManager;->nativeDeleteRights(Landroid/drm/mobile1/DrmRights;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 184
    .local v0, res:I
    const/4 v1, -0x1

    if-ne v1, v0, :cond_0

    .line 186
    :cond_0
    monitor-exit p0

    return-void

    .line 182
    .end local v0           #res:I
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized getRightsList()Ljava/util/List;
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, -0x1

    .line 146
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 149
    .local v3, rightsList:Ljava/util/List;
    invoke-direct {p0}, Landroid/drm/mobile1/DrmRightsManager;->nativeGetNumOfRights()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    .line 151
    .local v1, num:I
    if-ne v6, v1, :cond_1

    move-object v3, v4

    .line 172
    .end local v3           #rightsList:Ljava/util/List;
    :cond_0
    :goto_0
    monitor-exit p0

    return-object v3

    .line 154
    .restart local v3       #rightsList:Ljava/util/List;
    :cond_1
    if-lez v1, :cond_0

    .line 155
    :try_start_1
    new-array v2, v1, [Landroid/drm/mobile1/DrmRights;

    .line 158
    .local v2, rightsArray:[Landroid/drm/mobile1/DrmRights;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 159
    new-instance v5, Landroid/drm/mobile1/DrmRights;

    invoke-direct {v5}, Landroid/drm/mobile1/DrmRights;-><init>()V

    aput-object v5, v2, v0

    .line 158
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 162
    :cond_2
    invoke-direct {p0, v2, v1}, Landroid/drm/mobile1/DrmRightsManager;->nativeGetRightsList([Landroid/drm/mobile1/DrmRights;I)I

    move-result v1

    .line 164
    if-ne v6, v1, :cond_3

    move-object v3, v4

    .line 165
    goto :goto_0

    .line 168
    :cond_3
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_0

    .line 169
    aget-object v4, v2, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 168
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 146
    .end local v0           #i:I
    .end local v1           #num:I
    .end local v2           #rightsArray:[Landroid/drm/mobile1/DrmRights;
    .end local v3           #rightsList:Ljava/util/List;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public declared-synchronized installRights(Ljava/io/InputStream;ILjava/lang/String;)Landroid/drm/mobile1/DrmRights;
    .locals 5
    .parameter "rightsData"
    .parameter "len"
    .parameter "mimeTypeStr"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/drm/mobile1/DrmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    monitor-enter p0

    const/4 v0, 0x0

    .line 98
    .local v0, mimeType:I
    :try_start_0
    const-string v3, "application/vnd.oma.drm.rights+xml"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_1

    .line 99
    const/4 v0, 0x3

    .line 107
    :goto_0
    if-gtz p2, :cond_4

    .line 108
    const/4 v2, 0x0

    .line 118
    :cond_0
    monitor-exit p0

    return-object v2

    .line 100
    :cond_1
    :try_start_1
    const-string v3, "application/vnd.oma.drm.rights+wbxml"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 101
    const/4 v0, 0x4

    goto :goto_0

    .line 102
    :cond_2
    const-string v3, "application/vnd.oma.drm.message"

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 103
    const/4 v0, 0x1

    goto :goto_0

    .line 105
    :cond_3
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "mimeType must be DRM_MIMETYPE_RIGHTS_XML or DRM_MIMETYPE_RIGHTS_WBXML or DRM_MIMETYPE_MESSAGE"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 110
    :cond_4
    :try_start_2
    new-instance v2, Landroid/drm/mobile1/DrmRights;

    invoke-direct {v2}, Landroid/drm/mobile1/DrmRights;-><init>()V

    .line 113
    .local v2, rights:Landroid/drm/mobile1/DrmRights;
    invoke-direct {p0, p1, p2, v0, v2}, Landroid/drm/mobile1/DrmRightsManager;->nativeInstallDrmRights(Ljava/io/InputStream;IILandroid/drm/mobile1/DrmRights;)I

    move-result v1

    .line 115
    .local v1, res:I
    const/4 v3, -0x1

    if-ne v3, v1, :cond_0

    .line 116
    new-instance v3, Landroid/drm/mobile1/DrmException;

    const-string/jumbo v4, "nativeInstallDrmRights() returned JNI_DRM_FAILURE"

    invoke-direct {v3, v4}, Landroid/drm/mobile1/DrmException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public declared-synchronized queryRights(Landroid/drm/mobile1/DrmRawContent;)Landroid/drm/mobile1/DrmRights;
    .locals 3
    .parameter "content"

    .prologue
    .line 129
    monitor-enter p0

    :try_start_0
    new-instance v1, Landroid/drm/mobile1/DrmRights;

    invoke-direct {v1}, Landroid/drm/mobile1/DrmRights;-><init>()V

    .line 132
    .local v1, rights:Landroid/drm/mobile1/DrmRights;
    invoke-direct {p0, p1, v1}, Landroid/drm/mobile1/DrmRightsManager;->nativeQueryRights(Landroid/drm/mobile1/DrmRawContent;Landroid/drm/mobile1/DrmRights;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 134
    .local v0, res:I
    const/4 v2, -0x1

    if-ne v2, v0, :cond_0

    .line 135
    const/4 v1, 0x0

    .line 137
    .end local v1           #rights:Landroid/drm/mobile1/DrmRights;
    :cond_0
    monitor-exit p0

    return-object v1

    .line 129
    .end local v0           #res:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method
