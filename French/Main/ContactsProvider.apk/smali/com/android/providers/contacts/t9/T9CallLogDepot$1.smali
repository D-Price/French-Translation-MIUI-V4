.class Lcom/android/providers/contacts/t9/T9CallLogDepot$1;
.super Ljava/lang/Object;
.source "T9CallLogDepot.java"

# interfaces
.implements Lcom/android/providers/contacts/t9/DataCursor$DataProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/contacts/t9/T9CallLogDepot;->getCallLog(Lcom/android/providers/contacts/t9/T9CallLogDepot$Filter;)Landroid/database/Cursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/t9/T9CallLogDepot;

.field final synthetic val$list:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/t9/T9CallLogDepot;Ljava/util/ArrayList;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 627
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->this$0:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    iput-object p2, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->val$list:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public fillWindow(Lcom/android/providers/contacts/t9/DataCursor;ILandroid/database/CursorWindow;)I
    .locals 4
    .parameter "cursor"
    .parameter "startPos"
    .parameter "window"

    .prologue
    .line 653
    move v1, p2

    .local v1, row:I
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    .local v2, rowSize:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 654
    invoke-virtual {p3}, Landroid/database/CursorWindow;->allocRow()Z

    move-result v3

    if-nez v3, :cond_1

    .line 662
    :cond_0
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    return v3

    .line 658
    :cond_1
    iget-object v3, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/T9CallLogItem;

    .line 660
    .local v0, item:Lcom/android/providers/contacts/t9/T9CallLogItem;
    invoke-virtual {p0}, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->getColumnNames()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    invoke-static {p3, v1, v3, v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->fill(Landroid/database/CursorWindow;IILcom/android/providers/contacts/t9/T9CallLogItem;)V

    .line 653
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 648
    sget-object v0, Lmiui/provider/ExtraContacts$T9Query;->COLUMNS:[Ljava/lang/String;

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 643
    const/4 v0, 0x0

    return-object v0
.end method

.method public onClose(Lcom/android/providers/contacts/t9/DataCursor;)V
    .locals 2
    .parameter "cursor"

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->val$list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 636
    iget-object v1, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->this$0:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    monitor-enter v1

    .line 637
    :try_start_0
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9CallLogDepot$1;->this$0:Lcom/android/providers/contacts/t9/T9CallLogDepot;

    #getter for: Lcom/android/providers/contacts/t9/T9CallLogDepot;->mAllCursors:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9CallLogDepot;->access$000(Lcom/android/providers/contacts/t9/T9CallLogDepot;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 638
    monitor-exit v1

    .line 639
    return-void

    .line 638
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public requery(Lcom/android/providers/contacts/t9/DataCursor;)Z
    .locals 1
    .parameter "cursor"

    .prologue
    .line 630
    const/4 v0, 0x0

    return v0
.end method
