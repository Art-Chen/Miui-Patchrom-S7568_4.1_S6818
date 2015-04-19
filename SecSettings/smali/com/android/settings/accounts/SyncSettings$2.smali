.class Lcom/android/settings/accounts/SyncSettings$2;
.super Ljava/lang/Object;
.source "SyncSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/SyncSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accounts/SyncSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/SyncSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 114
    iput-object p1, p0, Lcom/android/settings/accounts/SyncSettings$2;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 117
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 118
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "authorities"

    iget-object v2, p0, Lcom/android/settings/accounts/SyncSettings$2;->this$0:Lcom/android/settings/accounts/SyncSettings;

    #getter for: Lcom/android/settings/accounts/SyncSettings;->mAuthorities:[Ljava/lang/String;
    invoke-static {v2}, Lcom/android/settings/accounts/SyncSettings;->access$000(Lcom/android/settings/accounts/SyncSettings;)[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 119
    const/high16 v1, 0x1080

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 120
    iget-object v1, p0, Lcom/android/settings/accounts/SyncSettings$2;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/accounts/SyncSettings;->startActivity(Landroid/content/Intent;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/accounts/SyncSettings$2;->this$0:Lcom/android/settings/accounts/SyncSettings;

    invoke-virtual {v1}, Lcom/android/settings/accounts/SyncSettings;->finish()V

    .line 122
    return-void
.end method
