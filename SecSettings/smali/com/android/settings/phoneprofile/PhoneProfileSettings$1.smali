.class Lcom/android/settings/phoneprofile/PhoneProfileSettings$1;
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
    .line 115
    iput-object p1, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$1;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 118
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 126
    :goto_0
    return-void

    .line 120
    :pswitch_0
    const-string v0, "PhoneProfileSettings"

    const-string v1, "EVENT_SERVICE_STATE_CHANGED received "

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    iget-object v0, p0, Lcom/android/settings/phoneprofile/PhoneProfileSettings$1;->this$0:Lcom/android/settings/phoneprofile/PhoneProfileSettings;

    #calls: Lcom/android/settings/phoneprofile/PhoneProfileSettings;->onAirplaneModeChanged()V
    invoke-static {v0}, Lcom/android/settings/phoneprofile/PhoneProfileSettings;->access$000(Lcom/android/settings/phoneprofile/PhoneProfileSettings;)V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method
