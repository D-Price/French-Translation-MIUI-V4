.class public Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;
.super Landroid/support/v13/app/FragmentPagerAdapter;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/downloads/ui/DownloadList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mFragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabBar:Lcom/android/providers/downloads/ui/TabBar;

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/android/providers/downloads/ui/TabBar;)V
    .locals 1
    .parameter "activity"
    .parameter "bar"

    .prologue
    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/support/v13/app/FragmentPagerAdapter;-><init>(Landroid/app/FragmentManager;)V

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mFragments:Ljava/util/ArrayList;

    .line 149
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mContext:Landroid/content/Context;

    .line 150
    iput-object p2, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mTabBar:Lcom/android/providers/downloads/ui/TabBar;

    .line 151
    return-void
.end method


# virtual methods
.method public addTab(IILjava/lang/Class;Landroid/os/Bundle;)V
    .locals 5
    .parameter "textResId"
    .parameter "layoutResId"
    .parameter
    .parameter "args"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Class",
            "<*>;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 164
    .local p3, clss:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;

    invoke-direct {v0, p3, p4}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;-><init>(Ljava/lang/Class;Landroid/os/Bundle;)V

    .line 165
    .local v0, info:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mFragments:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mContext:Landroid/content/Context;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;->clss:Ljava/lang/Class;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;->access$500(Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;)Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    #getter for: Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;->args:Landroid/os/Bundle;
    invoke-static {v0}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;->access$600(Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter$TabInfo;)Landroid/os/Bundle;

    move-result-object v4

    invoke-static {v2, v3, v4}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mTabBar:Lcom/android/providers/downloads/ui/TabBar;

    invoke-virtual {v1, p1, p2}, Lcom/android/providers/downloads/ui/TabBar;->addTab(II)V

    .line 168
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->notifyDataSetChanged()V

    .line 169
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Landroid/app/Fragment;
    .locals 1
    .parameter "position"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->mFragments:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Fragment;

    return-object v0
.end method
