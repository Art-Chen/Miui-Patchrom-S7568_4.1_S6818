.class Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;
.super Ljava/lang/Object;
.source "HideApplicationSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/parentalcontrol/HideApplicationSettings;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/parentalcontrol/HideApplicationSettings;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$state:Z


# direct methods
.method constructor <init>(Lcom/android/settings/parentalcontrol/HideApplicationSettings;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 160
    iput-object p1, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;->this$0:Lcom/android/settings/parentalcontrol/HideApplicationSettings;

    iput-object p2, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;->val$packageName:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;->val$state:Z

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v2, 0x0

    .line 162
    const-string v1, "ParentalControl"

    const-string v3, "showConfirmDialog() : OK is clicked "

    invoke-static {v1, v3}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v3, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;->this$0:Lcom/android/settings/parentalcontrol/HideApplicationSettings;

    iget-object v4, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;->val$packageName:Ljava/lang/String;

    iget-boolean v1, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;->val$state:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v1}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->doHideApplication(Ljava/lang/String;I)V

    .line 164
    iget-object v1, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;->this$0:Lcom/android/settings/parentalcontrol/HideApplicationSettings;

    #getter for: Lcom/android/settings/parentalcontrol/HideApplicationSettings;->mSharedPrefs:Landroid/content/SharedPreferences;
    invoke-static {v1}, Lcom/android/settings/parentalcontrol/HideApplicationSettings;->access$000(Lcom/android/settings/parentalcontrol/HideApplicationSettings;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 165
    .local v0, ed:Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/android/settings/parentalcontrol/HideApplicationSettings$3;->val$packageName:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 166
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 167
    return-void

    .end local v0           #ed:Landroid/content/SharedPreferences$Editor;
    :cond_0
    move v1, v2

    .line 163
    goto :goto_0
.end method
