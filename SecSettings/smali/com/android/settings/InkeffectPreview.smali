.class public Lcom/android/settings/InkeffectPreview;
.super Landroid/app/Activity;
.source "InkeffectPreview.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static mInkcolorItem:[Ljava/lang/String;


# instance fields
.field private bClick:Z

.field private bRotation:Z

.field private clickInkColor:I

.field private mImageView:Landroid/widget/ImageView;

.field private mInkEffectColor:I

.field private mInkEffectHelptext:Landroid/widget/TextView;

.field mInkEffectdrawble:[I

.field mInkEffectdrawble_h:[I

.field private mListView:Landroid/widget/ListView;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/16 v1, 0x9

    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 47
    iput v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    .line 48
    iput v0, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    .line 49
    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    .line 50
    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    .line 53
    new-array v0, v1, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    .line 65
    new-array v0, v1, [I

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    return-void

    .line 53
    nop

    :array_0
    .array-data 0x4
        0xf0t 0x1t 0x2t 0x7ft
        0xf4t 0x1t 0x2t 0x7ft
        0xf2t 0x1t 0x2t 0x7ft
        0xeat 0x1t 0x2t 0x7ft
        0xe6t 0x1t 0x2t 0x7ft
        0xeet 0x1t 0x2t 0x7ft
        0xf6t 0x1t 0x2t 0x7ft
        0xe8t 0x1t 0x2t 0x7ft
        0xect 0x1t 0x2t 0x7ft
    .end array-data

    .line 65
    :array_1
    .array-data 0x4
        0xf1t 0x1t 0x2t 0x7ft
        0xf5t 0x1t 0x2t 0x7ft
        0xf3t 0x1t 0x2t 0x7ft
        0xebt 0x1t 0x2t 0x7ft
        0xe7t 0x1t 0x2t 0x7ft
        0xeft 0x1t 0x2t 0x7ft
        0xf7t 0x1t 0x2t 0x7ft
        0xe9t 0x1t 0x2t 0x7ft
        0xedt 0x1t 0x2t 0x7ft
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/InkeffectPreview;)Landroid/widget/ListView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 42
    iget-object v0, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    return-object v0
.end method

.method private updateInkColorList()V
    .locals 10

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 94
    const v3, 0x7f04007c

    invoke-virtual {p0, v3}, Lcom/android/settings/InkeffectPreview;->setContentView(I)V

    .line 96
    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/String;

    sput-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    .line 97
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d81

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    .line 98
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d82

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 99
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f090d84

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    .line 100
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090d85

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 101
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v4, 0x4

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090d87

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 102
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090d88

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 103
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v4, 0x6

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090d89

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 104
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/4 v4, 0x7

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090d86

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 106
    sget-object v3, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    const/16 v4, 0x8

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090d8b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 108
    iget-boolean v3, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    if-eqz v3, :cond_1

    .line 109
    iget v3, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    iput v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    .line 112
    :goto_0
    const v3, 0x7f0b0128

    invoke-virtual {p0, v3}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->orientation:I

    if-ne v3, v7, :cond_2

    .line 115
    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    iget v5, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 119
    :goto_1
    const v3, 0x7f0b0152

    invoke-virtual {p0, v3}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectHelptext:Landroid/widget/TextView;

    .line 121
    const v3, 0x7f0b0107

    invoke-virtual {p0, v3}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ListView;

    iput-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    .line 122
    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    new-instance v4, Landroid/widget/ArrayAdapter;

    const v5, 0x7f04007d

    sget-object v6, Lcom/android/settings/InkeffectPreview;->mInkcolorItem:[Ljava/lang/String;

    invoke-direct {v4, p0, v5, v6}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 123
    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v8}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 125
    iget-boolean v3, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    if-eqz v3, :cond_3

    .line 126
    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    iget v4, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    .line 129
    :goto_2
    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 130
    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3, v9}, Landroid/widget/ListView;->setOverScrollMode(I)V

    .line 132
    const v3, 0x7f0b0155

    invoke-virtual {p0, v3}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 133
    .local v1, buttonOk:Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/InkeffectPreview$1;

    invoke-direct {v3, p0}, Lcom/android/settings/InkeffectPreview$1;-><init>(Lcom/android/settings/InkeffectPreview;)V

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 139
    const v3, 0x7f0b0154

    invoke-virtual {p0, v3}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 140
    .local v0, buttonCancel:Landroid/widget/Button;
    new-instance v3, Lcom/android/settings/InkeffectPreview$2;

    invoke-direct {v3, p0}, Lcom/android/settings/InkeffectPreview$2;-><init>(Lcom/android/settings/InkeffectPreview;)V

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    invoke-static {p0}, Lcom/android/settings/Utils;->isTablet(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 147
    const v3, 0x7f090d80

    invoke-virtual {p0, v3}, Lcom/android/settings/InkeffectPreview;->setTitle(I)V

    .line 148
    const v3, 0x7f0b0153

    invoke-virtual {p0, v3}, Lcom/android/settings/InkeffectPreview;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 149
    .local v2, layout:Landroid/widget/LinearLayout;
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 151
    .end local v2           #layout:Landroid/widget/LinearLayout;
    :cond_0
    return-void

    .line 111
    .end local v0           #buttonCancel:Landroid/widget/Button;
    .end local v1           #buttonOk:Landroid/widget/Button;
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "pen_hovering_ink_effect"

    invoke-static {v3, v4, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    goto/16 :goto_0

    .line 117
    :cond_2
    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    iget v5, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectColor:I

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 128
    :cond_3
    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "pen_hovering_ink_effect"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4, v7}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_2
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .parameter "newConfig"

    .prologue
    .line 87
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/InkeffectPreview;->bRotation:Z

    .line 88
    invoke-direct {p0}, Lcom/android/settings/InkeffectPreview;->updateInkColorList()V

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 91
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .parameter "savedInstanceState"

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-direct {p0}, Lcom/android/settings/InkeffectPreview;->updateInkColorList()V

    .line 83
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3
    .parameter "menu"

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 181
    .local v0, inflater:Landroid/view/MenuInflater;
    const v1, 0x7f120002

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 182
    const/4 v1, 0x0

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090134

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 183
    const/4 v1, 0x1

    invoke-interface {p1, v1}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    const v2, 0x7f090524

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 185
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v1

    return v1
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    const/4 v4, 0x1

    .line 158
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v4, :cond_0

    .line 159
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 164
    :goto_0
    const-string v1, "InkeffectPreview"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick position : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 168
    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/InkeffectPreview;->bClick:Z

    .line 169
    iput p3, p0, Lcom/android/settings/InkeffectPreview;->clickInkColor:I

    .line 170
    return-void

    .line 162
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/InkeffectPreview;->mImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview;->mInkEffectdrawble_h:[I

    aget v2, v2, p3

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "InkeffectPreview"

    const-string v2, "could not persist preview setting"

    invoke-static {v1, v2, v0}, Landroid/util/secutil/Log;->secE(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 174
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .parameter "item"

    .prologue
    const/4 v0, 0x1

    .line 190
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 200
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 192
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->finish()V

    goto :goto_0

    .line 196
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pen_hovering_ink_effect"

    iget-object v3, p0, Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;

    invoke-virtual {v3}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v3

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/InkeffectPreview;->finish()V

    goto :goto_0

    .line 190
    :pswitch_data_0
    .packed-switch 0x7f0b046e
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
