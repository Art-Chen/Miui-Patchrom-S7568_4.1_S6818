.class Landroid/net/MsmsFeatureManager$1;
.super Landroid/database/ContentObserver;
.source "MsmsFeatureManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MsmsFeatureManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/MsmsFeatureManager;


# direct methods
.method constructor <init>(Landroid/net/MsmsFeatureManager;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 158
    iput-object p1, p0, Landroid/net/MsmsFeatureManager$1;->this$0:Landroid/net/MsmsFeatureManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 161
    iget-object v0, p0, Landroid/net/MsmsFeatureManager$1;->this$0:Landroid/net/MsmsFeatureManager;

    #calls: Landroid/net/MsmsFeatureManager;->defaultDataChanged()V
    invoke-static {v0}, Landroid/net/MsmsFeatureManager;->access$000(Landroid/net/MsmsFeatureManager;)V

    .line 162
    return-void
.end method
