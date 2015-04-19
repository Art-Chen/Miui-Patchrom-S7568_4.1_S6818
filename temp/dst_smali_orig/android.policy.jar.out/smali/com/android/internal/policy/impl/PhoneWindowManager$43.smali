.class Lcom/android/internal/policy/impl/PhoneWindowManager$43;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;->updateReadingMode(Landroid/view/WindowManagerPolicy$WindowState;Landroid/view/WindowManagerPolicy$WindowState;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

.field final synthetic val$titleName:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iput-object p2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->val$titleName:Ljava/lang/CharSequence;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mIsReadingMode:Z
    invoke-static {v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2200(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->val$titleName:Ljava/lang/CharSequence;

    if-eqz v13, :cond_7

    const/4 v2, 0x0

    .local v2, baseActivity:Ljava/lang/String;
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    iget-object v13, v13, Lcom/android/internal/policy/impl/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    .local v10, pm:Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .local v6, info:Landroid/content/pm/ActivityInfo;
    :try_start_0
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->val$titleName:Ljava/lang/CharSequence;

    invoke-virtual {v13}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, names:[Ljava/lang/String;
    array-length v13, v9

    const/4 v14, 0x2

    if-eq v13, v14, :cond_1

    .end local v2           #baseActivity:Ljava/lang/String;
    .end local v6           #info:Landroid/content/pm/ActivityInfo;
    .end local v9           #names:[Ljava/lang/String;
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :cond_0
    :goto_0
    return-void

    .restart local v2       #baseActivity:Ljava/lang/String;
    .restart local v6       #info:Landroid/content/pm/ActivityInfo;
    .restart local v9       #names:[Ljava/lang/String;
    .restart local v10       #pm:Landroid/content/pm/PackageManager;
    :cond_1
    new-instance v7, Landroid/content/Intent;

    const-string v13, "android.intent.action.MAIN"

    invoke-direct {v7, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v7, intent:Landroid/content/Intent;
    const-string v13, "android.intent.category.LAUNCHER"

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    aget-object v13, v9, v13

    invoke-virtual {v7, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    invoke-virtual {v10, v7, v13}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v12

    .local v12, resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v12, :cond_2

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v13, 0x0

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/content/pm/ResolveInfo;

    iget-object v13, v13, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #names:[Ljava/lang/String;
    .end local v12           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_2
    :goto_1
    if-eqz v2, :cond_7

    const-string v13, "WindowManager"

    const-string v14, "This has baseActivity"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeAppList:[Ljava/lang/String;
    invoke-static {v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager;)[Ljava/lang/String;

    move-result-object v13

    if-eqz v13, :cond_7

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingModeAppList:[Ljava/lang/String;
    invoke-static {v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2300(Lcom/android/internal/policy/impl/PhoneWindowManager;)[Ljava/lang/String;

    move-result-object v1

    .local v1, arr$:[Ljava/lang/String;
    array-length v8, v1

    .local v8, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_2
    if-ge v5, v8, :cond_7

    aget-object v0, v1, v5

    .local v0, app:Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    const-string v13, "WindowManager"

    const-string v14, "starting e-reading mode"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x1

    invoke-static {v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setReadingMode(Z)Z

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v14, 0x1

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingStatus:Z
    invoke-static {v13, v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2402(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto :goto_0

    .end local v0           #app:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v5           #i$:I
    .end local v8           #len$:I
    .restart local v7       #intent:Landroid/content/Intent;
    .restart local v9       #names:[Ljava/lang/String;
    .restart local v12       #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :cond_3
    :try_start_1
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x1

    if-le v13, v14, :cond_5

    new-instance v3, Landroid/content/ComponentName;

    const/4 v13, 0x0

    aget-object v13, v9, v13

    const/4 v14, 0x1

    aget-object v14, v9, v14

    invoke-direct {v3, v13, v14}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .local v3, compName:Landroid/content/ComponentName;
    const/4 v13, 0x0

    invoke-virtual {v10, v3, v13}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .local v11, resolveInfo:Landroid/content/pm/ResolveInfo;
    if-eqz v6, :cond_4

    iget-object v13, v6, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    if-eqz v13, :cond_4

    iget-object v13, v6, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v14, 0x0

    aget-object v14, v9, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v14, v14, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v2

    goto/16 :goto_1

    .end local v3           #compName:Landroid/content/ComponentName;
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v11           #resolveInfo:Landroid/content/pm/ResolveInfo;
    :cond_5
    const/4 v2, 0x0

    goto/16 :goto_1

    .end local v7           #intent:Landroid/content/Intent;
    .end local v9           #names:[Ljava/lang/String;
    .end local v12           #resolveInfoList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    :catch_0
    move-exception v4

    .local v4, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v13, "WindowManager"

    const-string v14, "package NameNotFoundException"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .end local v4           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v0       #app:Ljava/lang/String;
    .restart local v1       #arr$:[Ljava/lang/String;
    .local v5, i$:I
    .restart local v8       #len$:I
    :cond_6
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    .end local v0           #app:Ljava/lang/String;
    .end local v1           #arr$:[Ljava/lang/String;
    .end local v2           #baseActivity:Ljava/lang/String;
    .end local v5           #i$:I
    .end local v6           #info:Landroid/content/pm/ActivityInfo;
    .end local v8           #len$:I
    .end local v10           #pm:Landroid/content/pm/PackageManager;
    :cond_7
    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    #getter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingStatus:Z
    invoke-static {v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2400(Lcom/android/internal/policy/impl/PhoneWindowManager;)Z

    move-result v13

    if-eqz v13, :cond_0

    const-string v13, "WindowManager"

    const-string v14, "ending e-reading mode"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v13, 0x0

    invoke-static {v13}, Lcom/android/internal/policy/impl/PhoneWindowManager;->setReadingMode(Z)Z

    iget-object v13, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$43;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    const/4 v14, 0x0

    #setter for: Lcom/android/internal/policy/impl/PhoneWindowManager;->mReadingStatus:Z
    invoke-static {v13, v14}, Lcom/android/internal/policy/impl/PhoneWindowManager;->access$2402(Lcom/android/internal/policy/impl/PhoneWindowManager;Z)Z

    goto/16 :goto_0
.end method
