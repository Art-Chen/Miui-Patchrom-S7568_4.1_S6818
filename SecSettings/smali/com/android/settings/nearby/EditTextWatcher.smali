.class public Lcom/android/settings/nearby/EditTextWatcher;
.super Ljava/lang/Object;
.source "EditTextWatcher.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private mBeforeText:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCount:I

.field private mDialog:Landroid/app/Dialog;

.field private mStart:I

.field private mToastLength:Landroid/widget/Toast;

.field private mToastSlash:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 14
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    .line 22
    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToastLength:Landroid/widget/Toast;

    .line 24
    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToastSlash:Landroid/widget/Toast;

    .line 26
    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mContext:Landroid/content/Context;

    .line 28
    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mBeforeText:Ljava/lang/String;

    .line 30
    iput v1, p0, Lcom/android/settings/nearby/EditTextWatcher;->mStart:I

    .line 32
    iput v1, p0, Lcom/android/settings/nearby/EditTextWatcher;->mCount:I

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 8
    .parameter "edit"

    .prologue
    const/4 v6, 0x0

    .line 47
    const-string v5, "AllshareSetting"

    const-string v7, "EditTextWatcher: afterTextChanged()"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget-object v5, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    instance-of v5, v5, Landroid/app/AlertDialog;

    if-eqz v5, :cond_3

    .line 49
    const/4 v4, 0x0

    .line 50
    .local v4, spaceNum:I
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 51
    .local v3, length:I
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, deviceName:Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v7, 0x20

    if-ne v5, v7, :cond_0

    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 53
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 58
    :cond_1
    iget-object v5, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    check-cast v5, Landroid/app/AlertDialog;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v7

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    if-lez v5, :cond_4

    if-eq v3, v4, :cond_4

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v7, v5}, Landroid/widget/Button;->setEnabled(Z)V

    .line 61
    const-string v5, "/"

    invoke-virtual {v1, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 62
    const-string v5, "AllshareSetting"

    const-string v7, "EditTextWatcher: Device Name Error: remove all \'/\'"

    invoke-static {v5, v7}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const-string v5, "/"

    const-string v7, ""

    invoke-virtual {v1, v5, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    .local v0, changedName:Ljava/lang/String;
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v5

    invoke-interface {p1, v6, v5}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 66
    invoke-interface {p1, v0}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 67
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v3

    .line 69
    iget-object v5, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToastSlash:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 72
    .end local v0           #changedName:Ljava/lang/String;
    :cond_2
    sget v5, Lcom/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    if-le v3, v5, :cond_3

    .line 73
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: Device Name Limit is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget v7, Lcom/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ". text length: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    iget v5, p0, Lcom/android/settings/nearby/EditTextWatcher;->mCount:I

    if-lez v5, :cond_5

    iget v5, p0, Lcom/android/settings/nearby/EditTextWatcher;->mStart:I

    if-ltz v5, :cond_5

    .line 76
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: start: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/nearby/EditTextWatcher;->mStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", mCount:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/nearby/EditTextWatcher;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    iget v5, p0, Lcom/android/settings/nearby/EditTextWatcher;->mStart:I

    iget v6, p0, Lcom/android/settings/nearby/EditTextWatcher;->mCount:I

    add-int/2addr v5, v6

    add-int/lit8 v5, v5, -0x1

    iget v6, p0, Lcom/android/settings/nearby/EditTextWatcher;->mStart:I

    iget v7, p0, Lcom/android/settings/nearby/EditTextWatcher;->mCount:I

    add-int/2addr v6, v7

    const-string v7, ""

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 82
    :goto_2
    iget-object v5, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToastLength:Landroid/widget/Toast;

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    .line 85
    .end local v1           #deviceName:Ljava/lang/String;
    .end local v2           #i:I
    .end local v3           #length:I
    .end local v4           #spaceNum:I
    :cond_3
    return-void

    .restart local v1       #deviceName:Ljava/lang/String;
    .restart local v2       #i:I
    .restart local v3       #length:I
    .restart local v4       #spaceNum:I
    :cond_4
    move v5, v6

    .line 58
    goto/16 :goto_1

    .line 79
    :cond_5
    const-string v5, "AllshareSetting"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "EditTextWatcher: Invalid value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/nearby/EditTextWatcher;->mStart:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/nearby/EditTextWatcher;->mCount:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 89
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mBeforeText:Ljava/lang/String;

    .line 90
    iput p2, p0, Lcom/android/settings/nearby/EditTextWatcher;->mStart:I

    .line 91
    iput p4, p0, Lcom/android/settings/nearby/EditTextWatcher;->mCount:I

    .line 92
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 97
    return-void
.end method

.method public setDialog(Landroid/app/Dialog;Landroid/content/Context;)V
    .locals 5
    .parameter "dialog"
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 35
    iput-object p1, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    .line 36
    iget-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090be5

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    sget v3, Lcom/android/settings/nearby/NearbySettings;->lengthDeviceNameMax:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p2, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToastLength:Landroid/widget/Toast;

    .line 40
    iget-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090bf7

    invoke-virtual {p2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/nearby/EditTextWatcher;->mToastSlash:Landroid/widget/Toast;

    .line 43
    iput-object p2, p0, Lcom/android/settings/nearby/EditTextWatcher;->mContext:Landroid/content/Context;

    .line 44
    return-void
.end method
