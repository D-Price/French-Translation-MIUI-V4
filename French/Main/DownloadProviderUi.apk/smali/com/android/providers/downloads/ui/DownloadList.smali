.class public Lcom/android/providers/downloads/ui/DownloadList;
.super Landroid/app/Activity;
.source "DownloadList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;
    }
.end annotation


# instance fields
.field private mFilterPackage:Ljava/lang/String;

.field private mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

.field private mTabBar:Lcom/android/providers/downloads/ui/TabBar;

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 131
    return-void
.end method

.method static synthetic access$002(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setFilterPackageName()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/TabBar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabBar:Lcom/android/providers/downloads/ui/TabBar;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mViewPager:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method private setFilterPackageName()V
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadListFragment;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->setFilterPackageName(Ljava/lang/String;)V

    .line 72
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->getItem(I)Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/DownloadListFragment;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/DownloadListFragment;->setFilterPackageName(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method private setupViews()V
    .locals 6

    .prologue
    const v5, 0x7f040006

    const/4 v4, 0x0

    .line 76
    const v0, 0x7f040001

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->setContentView(I)V

    .line 78
    const v0, 0x7f0c0002

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/providers/downloads/ui/TabBar;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabBar:Lcom/android/providers/downloads/ui/TabBar;

    .line 79
    const v0, 0x7f0c0003

    invoke-virtual {p0, v0}, Lcom/android/providers/downloads/ui/DownloadList;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/ViewPager;

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 80
    new-instance v0, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabBar:Lcom/android/providers/downloads/ui/TabBar;

    invoke-direct {v0, p0, v1}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;-><init>(Landroid/app/Activity;Lcom/android/providers/downloads/ui/TabBar;)V

    iput-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    .line 82
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mViewPager:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$2;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$2;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 104
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabBar:Lcom/android/providers/downloads/ui/TabBar;

    new-instance v1, Lcom/android/providers/downloads/ui/DownloadList$3;

    invoke-direct {v1, p0}, Lcom/android/providers/downloads/ui/DownloadList$3;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1}, Lcom/android/providers/downloads/ui/TabBar;->setTabChangedListener(Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;)V

    .line 112
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 114
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 115
    const-string v1, "argument_download_in_process"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 116
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    const v2, 0x7f090042

    const-class v3, Lcom/android/providers/downloads/ui/DownloadListFragment;

    invoke-virtual {v1, v2, v5, v3, v0}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->addTab(IILjava/lang/Class;Landroid/os/Bundle;)V

    .line 121
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabAdapter:Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;

    const v1, 0x7f090043

    const-class v2, Lcom/android/providers/downloads/ui/DownloadListFragment;

    sget-object v3, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v5, v2, v3}, Lcom/android/providers/downloads/ui/DownloadList$TabsAdapter;->addTab(IILjava/lang/Class;Landroid/os/Bundle;)V

    .line 126
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v4}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 127
    iget-object v0, p0, Lcom/android/providers/downloads/ui/DownloadList;->mTabBar:Lcom/android/providers/downloads/ui/TabBar;

    invoke-virtual {v0, v4}, Lcom/android/providers/downloads/ui/TabBar;->selectTab(I)V

    .line 128
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .parameter "icicle"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0, v3}, Lcom/android/providers/downloads/ui/DownloadList;->setFinishOnTouchOutside(Z)V

    .line 48
    invoke-direct {p0}, Lcom/android/providers/downloads/ui/DownloadList;->setupViews()V

    .line 50
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/DownloadList;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    .line 51
    .local v0, actionBar:Landroid/app/ActionBar;
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    .line 52
    invoke-virtual {v0, v2}, Landroid/app/ActionBar;->setDisplayShowTitleEnabled(Z)V

    .line 53
    invoke-virtual {v0, v3}, Landroid/app/ActionBar;->setNavigationMode(I)V

    .line 54
    const/high16 v2, 0x7f07

    const v3, 0x1090009

    invoke-static {p0, v2, v3}, Landroid/widget/ArrayAdapter;->createFromResource(Landroid/content/Context;II)Landroid/widget/ArrayAdapter;

    move-result-object v1

    .line 59
    .local v1, spinnerAdapter:Landroid/widget/SpinnerAdapter;
    new-instance v2, Lcom/android/providers/downloads/ui/DownloadList$1;

    invoke-direct {v2, p0}, Lcom/android/providers/downloads/ui/DownloadList$1;-><init>(Lcom/android/providers/downloads/ui/DownloadList;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V

    .line 68
    return-void
.end method
