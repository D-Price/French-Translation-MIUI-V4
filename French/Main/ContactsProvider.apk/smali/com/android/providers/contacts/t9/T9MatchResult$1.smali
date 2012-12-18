.class final Lcom/android/providers/contacts/t9/T9MatchResult$1;
.super Ljava/lang/Object;
.source "T9MatchResult.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/providers/contacts/t9/T9MatchResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/providers/contacts/t9/T9MatchResult;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/providers/contacts/t9/T9MatchResult;Lcom/android/providers/contacts/t9/T9MatchResult;)I
    .locals 7
    .parameter "lhs"
    .parameter "rhs"

    .prologue
    const/4 v4, 0x1

    const/4 v3, -0x1

    .line 46
    if-ne p1, p2, :cond_1

    .line 47
    const/4 v0, 0x0

    .line 87
    :cond_0
    :goto_0
    return v0

    .line 50
    :cond_1
    invoke-virtual {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9Item;->isContactSPDivider()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 51
    invoke-virtual {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9Item;->isSPItem()Z

    move-result v5

    if-eqz v5, :cond_2

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_2
    move v3, v4

    goto :goto_1

    .line 52
    :cond_3
    invoke-virtual {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9Item;->isContactSPDivider()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 53
    invoke-virtual {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9Item;->isSPItem()Z

    move-result v5

    if-eqz v5, :cond_4

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_4
    move v4, v3

    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9Item;->isSPItem()Z

    move-result v1

    .line 57
    .local v1, isLhsSP:Z
    invoke-virtual {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->getItem()Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/providers/contacts/t9/T9Item;->isSPItem()Z

    move-result v2

    .line 59
    .local v2, isRhsSP:Z
    if-eq v1, v2, :cond_7

    .line 60
    if-eqz v1, :cond_6

    if-nez v2, :cond_6

    :goto_3
    move v0, v4

    goto :goto_0

    :cond_6
    move v4, v3

    goto :goto_3

    .line 64
    :cond_7
    invoke-virtual {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->getMatchLevel()I

    move-result v3

    invoke-virtual {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->getMatchLevel()I

    move-result v4

    sub-int v0, v3, v4

    .line 65
    .local v0, i:I
    if-eqz v0, :cond_8

    .line 66
    neg-int v0, v0

    goto :goto_0

    .line 69
    :cond_8
    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/providers/contacts/t9/T9Item;->mTimesContacted:J

    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/providers/contacts/t9/T9Item;->mTimesContacted:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 70
    if-eqz v0, :cond_9

    .line 71
    neg-int v0, v0

    goto :goto_0

    .line 74
    :cond_9
    invoke-static {}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$100()Ljava/text/Collator;

    move-result-object v3

    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v4

    iget-object v4, v4, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    iget-object v5, v5, Lcom/android/providers/contacts/t9/T9Item;->mDisplayName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 75
    if-nez v0, :cond_0

    .line 79
    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/providers/contacts/t9/T9Item;->mContactId:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 80
    if-nez v0, :cond_0

    .line 83
    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/providers/contacts/t9/T9Item;->mRawContactId:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    .line 84
    if-nez v0, :cond_0

    .line 87
    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p1}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v3

    iget-wide v3, v3, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    #getter for: Lcom/android/providers/contacts/t9/T9MatchResult;->mItem:Lcom/android/providers/contacts/t9/T9Item;
    invoke-static {p2}, Lcom/android/providers/contacts/t9/T9MatchResult;->access$000(Lcom/android/providers/contacts/t9/T9MatchResult;)Lcom/android/providers/contacts/t9/T9Item;

    move-result-object v5

    iget-wide v5, v5, Lcom/android/providers/contacts/t9/T9Item;->mDataId:J

    sub-long/2addr v3, v5

    long-to-int v0, v3

    goto/16 :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 43
    check-cast p1, Lcom/android/providers/contacts/t9/T9MatchResult;

    .end local p1
    check-cast p2, Lcom/android/providers/contacts/t9/T9MatchResult;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/providers/contacts/t9/T9MatchResult$1;->compare(Lcom/android/providers/contacts/t9/T9MatchResult;Lcom/android/providers/contacts/t9/T9MatchResult;)I

    move-result v0

    return v0
.end method
