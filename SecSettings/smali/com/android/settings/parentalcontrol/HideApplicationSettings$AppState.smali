.class Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;
.super Ljava/lang/Object;
.source "HideApplicationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/parentalcontrol/HideApplicationSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppState"
.end annotation


# instance fields
.field enabled:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .parameter "enabled"

    .prologue
    .line 66
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-boolean p1, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$AppState;->enabled:Z

    .line 68
    return-void
.end method
