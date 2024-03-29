.class public Lcom/android/providers/downloads/ui/TabBar;
.super Landroid/widget/LinearLayout;
.source "TabBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;
    }
.end annotation


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private mSelectedTabIndex:I

.field private mTabChangedListener:Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/android/providers/downloads/ui/TabBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/providers/downloads/ui/TabBar;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/ui/TabBar;->mSelectedTabIndex:I

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/ui/TabBar;->mSelectedTabIndex:I

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/providers/downloads/ui/TabBar;->mSelectedTabIndex:I

    .line 34
    return-void
.end method


# virtual methods
.method public addTab(II)V
    .locals 4
    .parameter "textResId"
    .parameter "layoutResId"

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TabBar;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    .local v0, inflater:Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p2, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 60
    .local v1, textView:Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(I)V

    .line 61
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/TabBar;->addView(Landroid/view/View;)V

    .line 63
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "view"

    .prologue
    .line 38
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TabBar;->getChildCount()I

    move-result v2

    .line 39
    .local v2, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_2

    .line 40
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/TabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 41
    .local v0, child:Landroid/view/View;
    if-ne v0, p1, :cond_1

    .line 42
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 43
    iput v1, p0, Lcom/android/providers/downloads/ui/TabBar;->mSelectedTabIndex:I

    .line 44
    iget-object v3, p0, Lcom/android/providers/downloads/ui/TabBar;->mTabChangedListener:Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;

    if-eqz v3, :cond_0

    .line 45
    iget-object v3, p0, Lcom/android/providers/downloads/ui/TabBar;->mTabChangedListener:Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;

    invoke-interface {v3, v1}, Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;->onTabChanged(I)V

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 48
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    goto :goto_1

    .line 51
    .end local v0           #child:Landroid/view/View;
    :cond_2
    return-void
.end method

.method public selectTab(I)V
    .locals 5
    .parameter "position"

    .prologue
    .line 66
    const/4 v4, -0x1

    if-eq p1, v4, :cond_1

    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TabBar;->getChildCount()I

    move-result v4

    if-lt p1, v4, :cond_1

    .line 77
    :cond_0
    return-void

    .line 70
    :cond_1
    iput p1, p0, Lcom/android/providers/downloads/ui/TabBar;->mSelectedTabIndex:I

    .line 71
    invoke-virtual {p0}, Lcom/android/providers/downloads/ui/TabBar;->getChildCount()I

    move-result v3

    .line 72
    .local v3, tabCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v3, :cond_0

    .line 73
    invoke-virtual {p0, v1}, Lcom/android/providers/downloads/ui/TabBar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 74
    .local v0, child:Landroid/view/View;
    if-ne v1, p1, :cond_2

    const/4 v2, 0x1

    .line 75
    .local v2, isSelected:Z
    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 72
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    .end local v2           #isSelected:Z
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setTabChangedListener(Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/providers/downloads/ui/TabBar;->mTabChangedListener:Lcom/android/providers/downloads/ui/TabBar$TabChangedListener;

    .line 55
    return-void
.end method
