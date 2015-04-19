.class public Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;
.super Ljava/lang/Object;
.source "EnhancedWallpaperWidget.java"


# static fields
.field private static lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private static rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

.field private static sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final WALLPAPER_PATH:Ljava/lang/String;

.field private wallpaperObserver:Landroid/os/FileObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->WALLPAPER_PATH:Ljava/lang/String;

    const-string v0, "EnhancedWallpaperWidget"

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    sput-object v1, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget$1;

    const-string v1, "/data/data/com.sec.android.gallery3d/lockscreen_wallpaper.jpg"

    const/4 v2, 0x2

    invoke-direct {v0, p0, v1, v2}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget$1;-><init>(Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->wallpaperObserver:Landroid/os/FileObserver;

    iget-object v0, p0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->wallpaperObserver:Landroid/os/FileObserver;

    invoke-virtual {v0}, Landroid/os/FileObserver;->startWatching()V

    return-void
.end method

.method static synthetic access$002(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method static synthetic access$102(Landroid/graphics/drawable/BitmapDrawable;)Landroid/graphics/drawable/BitmapDrawable;
    .locals 0
    .parameter "x0"

    .prologue
    sput-object p0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object p0
.end method

.method public static getInstance()Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    invoke-direct {v0}, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;-><init>()V

    sput-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    :cond_0
    sget-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->sInstance:Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;

    return-object v0
.end method


# virtual methods
.method public getLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public getRippleLockscreenBackground()Landroid/graphics/drawable/BitmapDrawable;
    .locals 1

    .prologue
    sget-object v0, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-object v0
.end method

.method public setLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "bitmapDrawable"

    .prologue
    sput-object p1, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->lockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method

.method public setRippleLockscreenBackground(Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 0
    .parameter "bitmapDrawable"

    .prologue
    sput-object p1, Lcom/android/internal/policy/impl/sec/EnhancedWallpaperWidget;->rippleLockscreenBackground:Landroid/graphics/drawable/BitmapDrawable;

    return-void
.end method
