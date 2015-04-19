.class Lcom/android/settings/NotificationPanelMenu$4;
.super Ljava/lang/Object;
.source "NotificationPanelMenu.java"

# interfaces
.implements Landroid/view/View$OnDragListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/NotificationPanelMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/NotificationPanelMenu;


# direct methods
.method constructor <init>(Lcom/android/settings/NotificationPanelMenu;)V
    .locals 0
    .parameter

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDrag(Landroid/view/View;Landroid/view/DragEvent;)Z
    .locals 5
    .parameter "v"
    .parameter "event"

    .prologue
    const/high16 v4, 0x3f80

    .line 158
    const/4 v2, 0x1

    .line 159
    .local v2, retVal:Z
    invoke-virtual {p2}, Landroid/view/DragEvent;->getAction()I

    move-result v0

    .line 161
    .local v0, dragEvent:I
    packed-switch v0, :pswitch_data_0

    .line 189
    :cond_0
    :goto_0
    :pswitch_0
    return v2

    .line 163
    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #calls: Lcom/android/settings/NotificationPanelMenu;->changeQuickSettingsByBar(Landroid/view/View;)V
    invoke-static {v3, p1}, Lcom/android/settings/NotificationPanelMenu;->access$600(Lcom/android/settings/NotificationPanelMenu;Landroid/view/View;)V

    .line 164
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #calls: Lcom/android/settings/NotificationPanelMenu;->updateQuickSettingsList()V
    invoke-static {v3}, Lcom/android/settings/NotificationPanelMenu;->access$500(Lcom/android/settings/NotificationPanelMenu;)V

    goto :goto_0

    .line 168
    :pswitch_2
    invoke-virtual {p1, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 172
    :pswitch_3
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 179
    :pswitch_4
    invoke-virtual {p2}, Landroid/view/DragEvent;->getResult()Z

    move-result v1

    .line 180
    .local v1, isNormalEnded:Z
    if-nez v1, :cond_0

    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #getter for: Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/NotificationPanelMenu;->access$100(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getAlpha()F

    move-result v3

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 181
    iget-object v3, p0, Lcom/android/settings/NotificationPanelMenu$4;->this$0:Lcom/android/settings/NotificationPanelMenu;

    #getter for: Lcom/android/settings/NotificationPanelMenu;->mLongClickedView:Landroid/view/View;
    invoke-static {v3}, Lcom/android/settings/NotificationPanelMenu;->access$100(Lcom/android/settings/NotificationPanelMenu;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 161
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
