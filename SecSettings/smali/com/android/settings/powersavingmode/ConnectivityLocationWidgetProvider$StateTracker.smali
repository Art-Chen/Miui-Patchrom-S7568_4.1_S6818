.class abstract Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;
.super Ljava/lang/Object;
.source "ConnectivityLocationWidgetProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "StateTracker"
.end annotation


# instance fields
.field private mActualState:Ljava/lang/Boolean;

.field private mDeferredStateChangeRequestNeeded:Z

.field private mInTransition:Z

.field private mIntendedState:Ljava/lang/Boolean;


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 137
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    .line 141
    iput-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    .line 143
    iput-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 149
    iput-boolean v0, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 137
    invoke-direct {p0}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getActualState(Landroid/content/Context;)I
.end method

.method public final getTriState(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    const/4 v0, 0x5

    .line 255
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v1, :cond_0

    .line 271
    :goto_0
    return v0

    .line 265
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getActualState(Landroid/content/Context;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 267
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 269
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 265
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final isTurningOn()Z
    .locals 1

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract onActualStateChange(Landroid/content/Context;Landroid/content/Intent;)V
.end method

.method protected abstract requestStateChange(Landroid/content/Context;Z)V
.end method

.method protected final setCurrentState(Landroid/content/Context;I)V
    .locals 6
    .parameter "context"
    .parameter "newState"

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 203
    iget-boolean v0, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    .line 204
    .local v0, wasInTransition:Z
    packed-switch p2, :pswitch_data_0

    .line 222
    const-string v1, "ConnectivityLocationWidgetProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCurrentState() : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    if-nez v1, :cond_1

    .line 226
    iget-boolean v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    if-eqz v1, :cond_1

    .line 227
    const-string v1, "ConnectivityLocationWidgetProvider"

    const-string v2, "processing deferred state change"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string v1, "ConnectivityLocationWidgetProvider"

    const-string v2, "... but intended state matches, so no changes."

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_0
    :goto_1
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 238
    :cond_1
    return-void

    .line 206
    :pswitch_0
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    .line 207
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 210
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    .line 211
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 214
    :pswitch_2
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    .line 215
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 218
    :pswitch_3
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    .line 219
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mActualState:Ljava/lang/Boolean;

    goto :goto_0

    .line 231
    :cond_2
    iget-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    .line 232
    iput-boolean v5, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    .line 233
    iget-object v1, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 204
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final toggleState(Landroid/content/Context;Z)V
    .locals 6
    .parameter "context"
    .parameter "isTurnOffAll"

    .prologue
    const/4 v2, 0x1

    .line 157
    invoke-virtual {p0, p1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->getTriState(Landroid/content/Context;)I

    move-result v0

    .line 158
    .local v0, currentState:I
    const/4 v1, 0x0

    .line 159
    .local v1, newState:Z
    packed-switch v0, :pswitch_data_0

    .line 172
    :pswitch_0
    const-string v3, "ConnectivityLocationWidgetProvider"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "toggleState() : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    :goto_0
    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 177
    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    .line 178
    iget-boolean v3, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    if-eqz v3, :cond_3

    .line 183
    iput-boolean v2, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mDeferredStateChangeRequestNeeded:Z

    .line 188
    :goto_1
    return-void

    .line 161
    :pswitch_1
    const/4 v1, 0x0

    .line 162
    goto :goto_0

    .line 164
    :pswitch_2
    const/4 v1, 0x1

    .line 165
    goto :goto_0

    .line 167
    :pswitch_3
    iget-object v3, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    if-eqz v3, :cond_0

    .line 168
    iget-object v3, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mIntendedState:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    move v1, v2

    :goto_2
    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    .line 185
    :cond_3
    iput-boolean v2, p0, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->mInTransition:Z

    .line 186
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/powersavingmode/ConnectivityLocationWidgetProvider$StateTracker;->requestStateChange(Landroid/content/Context;Z)V

    goto :goto_1

    .line 159
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
