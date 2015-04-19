.class Lcom/android/settings/phoneprofile/PhoneProfileSettings$2;
.super Landroid/os/Handler;
.source "PhoneProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/phoneprofile/PhoneProfileSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V
    .locals 0
    .parameter

    .prologue
    .line 130
    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$2;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 133
    const-string v1, "PhoneProfileSettings"

    const-string v2, "invalidateViews "

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$2;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 135
    .local v0, root:Landroid/view/View;
    if-eqz v0, :cond_0

    .line 136
    iget-object v1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$2;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    invoke-virtual {v1}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->invalidateViews()V

    .line 138
    :cond_0
    return-void
.end method
