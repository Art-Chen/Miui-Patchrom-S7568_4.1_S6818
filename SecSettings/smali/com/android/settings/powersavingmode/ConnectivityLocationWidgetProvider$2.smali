.class Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$2;
.super Ljava/lang/Object;
.source "ConnectivityLocationWidgetProvider.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->mobileDataOffAlert(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;


# direct methods
.method constructor <init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;)V
    .locals 0
    .parameter

    .prologue
    .line 1169
    iput-object p1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$2;->this$0:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3
    .parameter "dialog"
    .parameter "id"

    .prologue
    const/4 v2, 0x0

    .line 1171
    invoke-static {v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->access$902(Z)Z

    .line 1172
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1173
    invoke-static {}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v0

    #calls: Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->getDataState(Landroid/content/Context;)Z
    invoke-static {v0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->access$700(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1174
    invoke-static {}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->access$1000()Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;

    move-result-object v0

    invoke-static {}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->access$800()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->toggleState(Landroid/content/Context;Z)V

    .line 1176
    :cond_0
    return-void
.end method
