.class Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;
.super Ljava/lang/Object;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HoldKeyConcept"
.end annotation


# instance fields
.field private mEndKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mHomeKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mKeyComponentsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/HashSet;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mRecentKeyRequestedComponents:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mTopActivity:Landroid/content/ComponentName;

.field final synthetic this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/PhoneWindowManager;)V
    .locals 3
    .parameter

    .prologue
    .line 8625
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->this$0:Lcom/android/internal/policy/impl/PhoneWindowManager;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 8618
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mHomeKeyRequestedComponents:Ljava/util/HashSet;

    .line 8619
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mPowerKeyRequestedComponents:Ljava/util/HashSet;

    .line 8620
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mRecentKeyRequestedComponents:Ljava/util/HashSet;

    .line 8621
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mEndKeyRequestedComponents:Ljava/util/HashSet;

    .line 8622
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    .line 8623
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mTopActivity:Landroid/content/ComponentName;

    .line 8627
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mHomeKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8628
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v1, 0x1a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mPowerKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8629
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    const/16 v1, 0xbb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mRecentKeyRequestedComponents:Ljava/util/HashSet;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8630
    return-void
.end method


# virtual methods
.method public getCurrentTopActivity()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 8692
    monitor-enter p0

    .line 8693
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mTopActivity:Landroid/content/ComponentName;

    monitor-exit p0

    return-object v0

    .line 8694
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSystemKeyEventRequested(I)Z
    .locals 1
    .parameter "keyCode"

    .prologue
    .line 8684
    monitor-enter p0

    .line 8685
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->getCurrentTopActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z

    move-result v0

    monitor-exit p0

    return v0

    .line 8686
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isSystemKeyEventRequested(ILandroid/content/ComponentName;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "componentName"

    .prologue
    .line 8677
    monitor-enter p0

    .line 8678
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 8679
    .local v0, components:Ljava/util/HashSet;
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit p0

    return v1

    .line 8680
    .end local v0           #components:Ljava/util/HashSet;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public requestSystemKeyEvent(ILandroid/content/ComponentName;Z)Z
    .locals 3
    .parameter "keyCode"
    .parameter "componentName"
    .parameter "request"

    .prologue
    .line 8649
    const/16 v1, 0x1a

    if-eq p1, v1, :cond_0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    const/16 v1, 0xbb

    if-eq p1, v1, :cond_0

    .line 8650
    const/4 v1, 0x0

    .line 8661
    :goto_0
    return v1

    .line 8653
    :cond_0
    monitor-enter p0

    .line 8654
    if-eqz p3, :cond_1

    .line 8655
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 8656
    .local v0, components:Ljava/util/HashSet;
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 8661
    :goto_1
    const/4 v1, 0x1

    monitor-exit p0

    goto :goto_0

    .line 8662
    .end local v0           #components:Ljava/util/HashSet;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 8658
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mKeyComponentsMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    .line 8659
    .restart local v0       #components:Ljava/util/HashSet;
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public updateTopActivity(Landroid/content/ComponentName;)V
    .locals 1
    .parameter "componentName"

    .prologue
    .line 8699
    monitor-enter p0

    .line 8700
    :try_start_0
    iput-object p1, p0, Lcom/android/internal/policy/impl/PhoneWindowManager$HoldKeyConcept;->mTopActivity:Landroid/content/ComponentName;

    .line 8701
    monitor-exit p0

    .line 8702
    return-void

    .line 8701
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
