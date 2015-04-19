.class Lcom/android/settings/customizedkey/BookmarkPicker$1;
.super Ljava/lang/Thread;
.source "BookmarkPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/customizedkey/BookmarkPicker;->updateListAndAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/customizedkey/BookmarkPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings/customizedkey/BookmarkPicker$1;->this$0:Lcom/android/settings/customizedkey/BookmarkPicker;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 160
    iget-object v3, p0, Lcom/android/settings/customizedkey/BookmarkPicker$1;->this$0:Lcom/android/settings/customizedkey/BookmarkPicker;

    monitor-enter v3

    .line 165
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v1, newResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 168
    .local v0, newAdapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    iget-object v2, p0, Lcom/android/settings/customizedkey/BookmarkPicker$1;->this$0:Lcom/android/settings/customizedkey/BookmarkPicker;

    #calls: Lcom/android/settings/customizedkey/BookmarkPicker;->fillResolveList(Ljava/util/List;)V
    invoke-static {v2, v1}, Lcom/android/settings/customizedkey/BookmarkPicker;->access$000(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/List;)V

    .line 169
    new-instance v2, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    iget-object v4, p0, Lcom/android/settings/customizedkey/BookmarkPicker$1;->this$0:Lcom/android/settings/customizedkey/BookmarkPicker;

    invoke-virtual {v4}, Lcom/android/settings/customizedkey/BookmarkPicker;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 172
    iget-object v2, p0, Lcom/android/settings/customizedkey/BookmarkPicker$1;->this$0:Lcom/android/settings/customizedkey/BookmarkPicker;

    #calls: Lcom/android/settings/customizedkey/BookmarkPicker;->fillAdapterList(Ljava/util/List;Ljava/util/List;)V
    invoke-static {v2, v0, v1}, Lcom/android/settings/customizedkey/BookmarkPicker;->access$100(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/List;Ljava/util/List;)V

    .line 174
    iget-object v2, p0, Lcom/android/settings/customizedkey/BookmarkPicker$1;->this$0:Lcom/android/settings/customizedkey/BookmarkPicker;

    #calls: Lcom/android/settings/customizedkey/BookmarkPicker;->updateAdapterToUseNewLists(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    invoke-static {v2, v0, v1}, Lcom/android/settings/customizedkey/BookmarkPicker;->access$200(Lcom/android/settings/customizedkey/BookmarkPicker;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 175
    monitor-exit v3

    .line 176
    return-void

    .line 175
    .end local v0           #newAdapterList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/util/Map<Ljava/lang/String;*>;>;"
    .end local v1           #newResolveList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ResolveInfo;>;"
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
