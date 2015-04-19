.class Lcom/android/settings/wifi/SetupWizardWifiScreen$2;
.super Ljava/lang/Object;
.source "SetupWizardWifiScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/SetupWizardWifiScreen;->initializeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/SetupWizardWifiScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 96
    iput-object p1, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/settings/wifi/SetupWizardWifiScreen$2;->this$0:Lcom/android/settings/wifi/SetupWizardWifiScreen;

    invoke-virtual {v0}, Lcom/android/settings/wifi/SetupWizardWifiScreen;->onBackPressed()V

    .line 99
    return-void
.end method
