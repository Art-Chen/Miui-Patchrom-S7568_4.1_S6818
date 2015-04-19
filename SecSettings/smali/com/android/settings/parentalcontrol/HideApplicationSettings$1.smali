.class Lcom/android/settings/parentalcontrol/HideApplicationSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "HideApplicationSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/parentalcontrol/HideApplicationSettings;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/parentalcontrol/HideApplicationSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/parentalcontrol/HideApplicationSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 89
    iput-object p1, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$1;->this$0:Lcom/android/settings/parentalcontrol/HideApplicationSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .parameter "context"
    .parameter "intent"

    .prologue
    .line 92
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 95
    .local v0, action:Ljava/lang/String;
    return-void
.end method
