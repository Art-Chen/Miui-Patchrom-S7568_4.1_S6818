.class public Lcom/android/settings/customizedkey/CustomizedkeyAssign;
.super Landroid/app/Activity;
.source "CustomizedkeyAssign.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field btn_shortcutAssign:Landroid/widget/Button;

.field mKeycode:I

.field txt_shortcutAssign:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 24
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->mKeycode:I

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 47
    iget v0, p0, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->mKeycode:I

    invoke-virtual {p0, v0}, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->startBookmarkPicker(I)V

    .line 48
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 30
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const v1, 0x7f040042

    invoke-virtual {p0, v1}, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->setContentView(I)V

    .line 32
    const v1, 0x7f0b00af

    invoke-virtual {p0, v1}, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->btn_shortcutAssign:Landroid/widget/Button;

    .line 33
    const v1, 0x7f0b00ad

    invoke-virtual {p0, v1}, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->txt_shortcutAssign:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 36
    .local v0, bundle:Landroid/os/Bundle;
    const-string v1, "keyCode"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->mKeycode:I

    .line 38
    iget-object v1, p0, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->btn_shortcutAssign:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public startBookmarkPicker(I)V
    .locals 3
    .parameter "keyCode"

    .prologue
    .line 52
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 53
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "com.android.settings.BOOKMARKPICKER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.customizedkey.BookmarkPicker"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 55
    const-string v1, "keyCode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 56
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->startActivity(Landroid/content/Intent;)V

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/customizedkey/CustomizedkeyAssign;->finish()V

    .line 59
    return-void
.end method
