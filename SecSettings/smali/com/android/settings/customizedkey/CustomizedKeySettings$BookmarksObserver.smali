.class Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;
.super Landroid/database/ContentObserver;
.source "CustomizedKeySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/customizedkey/CustomizedKeySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BookmarksObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/customizedkey/CustomizedKeySettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/customizedkey/CustomizedKeySettings;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "handler"

    .prologue
    .line 537
    iput-object p1, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;->this$0:Lcom/android/settings/customizedkey/CustomizedKeySettings;

    .line 538
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 539
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1
    .parameter "selfChange"

    .prologue
    .line 543
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/customizedkey/CustomizedKeySettings$BookmarksObserver;->this$0:Lcom/android/settings/customizedkey/CustomizedKeySettings;

    #calls: Lcom/android/settings/customizedkey/CustomizedKeySettings;->refreshShortcuts()V
    invoke-static {v0}, Lcom/android/settings/customizedkey/CustomizedKeySettings;->access$200(Lcom/android/settings/customizedkey/CustomizedKeySettings;)V

    .line 546
    return-void
.end method
