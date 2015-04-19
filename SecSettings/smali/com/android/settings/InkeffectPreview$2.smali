.class Lcom/android/settings/InkeffectPreview$2;
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
    .line 140
    iput-object p1, p0, Lcom/android/settings/InkeffectPreview$2;->this$0:Lcom/android/settings/InkeffectPreview;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 142
    iget-object v0, p0, Lcom/android/settings/InkeffectPreview$2;->this$0:Lcom/android/settings/InkeffectPreview;

    invoke-virtual {v0}, Lcom/android/settings/InkeffectPreview;->finish()V

    .line 143
    return-void
.end method
