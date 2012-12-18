.class Lcom/android/providers/contacts/GlobalSearchSupport$1;
.super Ljava/lang/Object;
.source "GlobalSearchSupport.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/GlobalSearchSupport;->updateEssentialInfo(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/GlobalSearchSupport;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/GlobalSearchSupport;)V
    .locals 0
    .parameter

    .prologue
    .line 235
    iput-object p1, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->this$0:Lcom/android/providers/contacts/GlobalSearchSupport;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 239
    invoke-static {}, Lcom/android/providers/contacts/T9SearchSupport;->getInstance()Lcom/android/providers/contacts/T9SearchSupport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/providers/contacts/T9SearchSupport;->onUpdateSPVisibility()V

    .line 240
    iget-object v0, p0, Lcom/android/providers/contacts/GlobalSearchSupport$1;->this$0:Lcom/android/providers/contacts/GlobalSearchSupport;

    const/4 v1, 0x0

    #setter for: Lcom/android/providers/contacts/GlobalSearchSupport;->mUpdatingEssentialInfo:Z
    invoke-static {v0, v1}, Lcom/android/providers/contacts/GlobalSearchSupport;->access$002(Lcom/android/providers/contacts/GlobalSearchSupport;Z)Z

    .line 241
    return-void
.end method
