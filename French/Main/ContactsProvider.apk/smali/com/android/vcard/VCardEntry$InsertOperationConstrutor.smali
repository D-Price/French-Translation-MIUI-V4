.class Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;
.super Ljava/lang/Object;
.source "VCardEntry.java"

# interfaces
.implements Lcom/android/vcard/VCardEntry$EntryElementIterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vcard/VCardEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InsertOperationConstrutor"
.end annotation


# instance fields
.field private final mBackReferenceIndex:I

.field private final mOperationList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;"
        }
    .end annotation
.end field


# virtual methods
.method public onElement(Lcom/android/vcard/VCardEntry$EntryElement;)Z
    .locals 2
    .parameter "elem"

    .prologue
    .line 1733
    invoke-interface {p1}, Lcom/android/vcard/VCardEntry$EntryElement;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1734
    iget-object v0, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mOperationList:Ljava/util/List;

    iget v1, p0, Lcom/android/vcard/VCardEntry$InsertOperationConstrutor;->mBackReferenceIndex:I

    invoke-interface {p1, v0, v1}, Lcom/android/vcard/VCardEntry$EntryElement;->constructInsertOperation(Ljava/util/List;I)V

    .line 1736
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onElementGroupEnded()V
    .locals 0

    .prologue
    .line 1729
    return-void
.end method

.method public onElementGroupStarted(Lcom/android/vcard/VCardEntry$EntryLabel;)V
    .locals 0
    .parameter "label"

    .prologue
    .line 1725
    return-void
.end method

.method public onIterationEnded()V
    .locals 0

    .prologue
    .line 1721
    return-void
.end method

.method public onIterationStarted()V
    .locals 0

    .prologue
    .line 1717
    return-void
.end method
