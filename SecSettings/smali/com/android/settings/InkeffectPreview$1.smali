.class Lcom/android/settings/InkeffectPreview$1;
.super Ljava/lang/Object;
.source "InkeffectPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/InkeffectPreview;->updateInkColorList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/InkeffectPreview;


# direct methods
.method constructor <init>(Lcom/android/settings/InkeffectPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/settings/InkeffectPreview$1;->this$0:Lcom/android/settings/InkeffectPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/settings/InkeffectPreview$1;->this$0:Lcom/android/settings/InkeffectPreview;

    invoke-virtual {v0}, Lcom/android/settings/InkeffectPreview;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pen_hovering_ink_effect"

    iget-object v2, p0, Lcom/android/settings/InkeffectPreview$1;->this$0:Lcom/android/settings/InkeffectPreview;

    #getter for: Lcom/android/settings/InkeffectPreview;->mListView:Landroid/widget/ListView;
    invoke-static {v2}, Lcom/android/settings/InkeffectPreview;->access$000(Lcom/android/settings/InkeffectPreview;)Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/ListView;->getCheckedItemPosition()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 136
    iget-object v0, p0, Lcom/android/settings/InkeffectPreview$1;->this$0:Lcom/android/settings/InkeffectPreview;

    invoke-virtual {v0}, Lcom/android/settings/InkeffectPreview;->finish()V

    .line 137
    return-void
.end method
