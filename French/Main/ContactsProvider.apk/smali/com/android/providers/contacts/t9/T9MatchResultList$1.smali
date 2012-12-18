.class Lcom/android/providers/contacts/t9/T9MatchResultList$1;
.super Ljava/util/AbstractList;
.source "T9MatchResultList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/t9/T9MatchResultList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList",
        "<",
        "Lcom/android/providers/contacts/t9/T9MatchResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/contacts/t9/T9MatchResultList;


# direct methods
.method constructor <init>(Lcom/android/providers/contacts/t9/T9MatchResultList;)V
    .locals 0
    .parameter

    .prologue
    .line 32
    iput-object p1, p0, Lcom/android/providers/contacts/t9/T9MatchResultList$1;->this$0:Lcom/android/providers/contacts/t9/T9MatchResultList;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method


# virtual methods
.method public get(I)Lcom/android/providers/contacts/t9/T9MatchResult;
    .locals 1
    .parameter "location"

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList$1;->this$0:Lcom/android/providers/contacts/t9/T9MatchResultList;

    #getter for: Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->access$000(Lcom/android/providers/contacts/t9/T9MatchResultList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/providers/contacts/t9/T9MatchResult;

    return-object v0
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lcom/android/providers/contacts/t9/T9MatchResultList$1;->get(I)Lcom/android/providers/contacts/t9/T9MatchResult;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/providers/contacts/t9/T9MatchResultList$1;->this$0:Lcom/android/providers/contacts/t9/T9MatchResultList;

    #getter for: Lcom/android/providers/contacts/t9/T9MatchResultList;->mList:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/providers/contacts/t9/T9MatchResultList;->access$000(Lcom/android/providers/contacts/t9/T9MatchResultList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
