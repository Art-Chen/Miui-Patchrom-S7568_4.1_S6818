.class Lcom/android/settings/customizedkey/CustomizedKeySettings$1;
.super Ljava/lang/Object;
.source "CustomizedKeySettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/customizedkey/CustomizedKeySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/customizedkey/CustomizedKeySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 208
    iput-object p1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings$1;->this$0:Lcom/android/settings/customizedkey/CustomizedKeySettings;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 211
    packed-switch p2, :pswitch_data_0

    .line 221
    :goto_0
    return-void

    .line 214
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings$1;->this$0:Lcom/android/settings/customizedkey/CustomizedKeySettings;

    #calls: Lcom/android/settings/customizedkey/CustomizedKeySettings;->replaceBookmark()V
    invoke-static {v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->access$000(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V

    goto :goto_0

    .line 217
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings$1;->this$0:Lcom/android/settings/customizedkey/CustomizedKeySettings;

    #calls: Lcom/android/settings/customizedkey/CustomizedKeySettings;->AssignReset()V
    invoke-static {v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->access$100(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V

    goto :goto_0

    .line 211
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
