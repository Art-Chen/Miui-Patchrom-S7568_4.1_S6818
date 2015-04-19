.class Lcom/android/settings/widget/SmartNetworkWidgetProvider$1;
.super Landroid/database/ContentObserver;
.source "SmartNetworkWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/SmartNetworkWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/SmartNetworkWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/SmartNetworkWidgetProvider;Landroid/os/Handler;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 56
    iput-object p1, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/settings/widget/SmartNetworkWidgetProvider;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3
    .parameter "selfChange"

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/settings/widget/SmartNetworkWidgetProvider;

    iget-object v1, p0, Lcom/android/settings/widget/SmartNetworkWidgetProvider$1;->this$0:Lcom/android/settings/widget/SmartNetworkWidgetProvider;

    iget-object v1, v1, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->context:Landroid/content/Context;

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/SmartNetworkWidgetProvider;->updateView(Landroid/content/Context;I)V

    .line 60
    return-void
.end method
