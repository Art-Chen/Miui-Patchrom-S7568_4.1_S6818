.class Lcom/android/settings/fmm/Introduction$1;
.super Ljava/lang/Object;
.source "Introduction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fmm/Introduction;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fmm/Introduction;


# direct methods
.method constructor <init>(Lcom/android/settings/fmm/Introduction;)V
    .locals 0
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 83
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "http://www.samsungdive.cn"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 85
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    #calls: Lcom/android/settings/fmm/Introduction;->isWifiConnected()Z
    invoke-static {v1}, Lcom/android/settings/fmm/Introduction;->access$000(Lcom/android/settings/fmm/Introduction;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1, v0}, Lcom/android/settings/fmm/Introduction;->startActivity(Landroid/content/Intent;)V

    .line 98
    :goto_0
    return-void

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    #calls: Lcom/android/settings/fmm/Introduction;->isNetConnected()Z
    invoke-static {v1}, Lcom/android/settings/fmm/Introduction;->access$100(Lcom/android/settings/fmm/Introduction;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    #calls: Lcom/android/settings/fmm/Introduction;->isBrowserApnInternet()Z
    invoke-static {v1}, Lcom/android/settings/fmm/Introduction;->access$200(Lcom/android/settings/fmm/Introduction;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1, v0}, Lcom/android/settings/fmm/Introduction;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 91
    :cond_1
    const-string v1, "Introduction"

    const-string v2, "SamsungDive cannot connect"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    #calls: Lcom/android/settings/fmm/Introduction;->warnExchangeBrowserApn()V
    invoke-static {v1}, Lcom/android/settings/fmm/Introduction;->access$300(Lcom/android/settings/fmm/Introduction;)V

    goto :goto_0

    .line 96
    :cond_2
    iget-object v1, p0, Lcom/android/settings/fmm/Introduction$1;->this$0:Lcom/android/settings/fmm/Introduction;

    invoke-virtual {v1, v0}, Lcom/android/settings/fmm/Introduction;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method
