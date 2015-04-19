.class Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$3;
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
    .line 1178
    iput-object p1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$3;->this$0:Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "id"

    .prologue
    .line 1180
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;->access$902(Z)Z

    .line 1181
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 1182
    return-void
.end method
