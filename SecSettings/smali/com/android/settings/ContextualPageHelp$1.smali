.class Lcom/android/settings/ContextualPageHelp$1;
.super Ljava/lang/Object;
.source "ContextualPageHelp.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ContextualPageHelp;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ContextualPageHelp;


# direct methods
.method constructor <init>(Lcom/android/settings/ContextualPageHelp;)V
    .locals 0
    .parameter

    .prologue
    .line 60
    iput-object p1, p0, Lcom/android/settings/ContextualPageHelp$1;->this$0:Lcom/android/settings/ContextualPageHelp;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "view"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp$1;->this$0:Lcom/android/settings/ContextualPageHelp;

    #getter for: Lcom/android/settings/ContextualPageHelp;->launchbtnplay:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/ContextualPageHelp;->access$000(Lcom/android/settings/ContextualPageHelp;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f020410

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 63
    iget-object v1, p0, Lcom/android/settings/ContextualPageHelp$1;->this$0:Lcom/android/settings/ContextualPageHelp;

    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp$1;->this$0:Lcom/android/settings/ContextualPageHelp;

    #getter for: Lcom/android/settings/ContextualPageHelp;->launchimg:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/android/settings/ContextualPageHelp;->access$200(Lcom/android/settings/ContextualPageHelp;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    #setter for: Lcom/android/settings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v1, v0}, Lcom/android/settings/ContextualPageHelp;->access$102(Lcom/android/settings/ContextualPageHelp;Landroid/graphics/drawable/AnimationDrawable;)Landroid/graphics/drawable/AnimationDrawable;

    .line 64
    iget-object v0, p0, Lcom/android/settings/ContextualPageHelp$1;->this$0:Lcom/android/settings/ContextualPageHelp;

    #getter for: Lcom/android/settings/ContextualPageHelp;->mAni1:Landroid/graphics/drawable/AnimationDrawable;
    invoke-static {v0}, Lcom/android/settings/ContextualPageHelp;->access$100(Lcom/android/settings/ContextualPageHelp;)Landroid/graphics/drawable/AnimationDrawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 65
    return-void
.end method
